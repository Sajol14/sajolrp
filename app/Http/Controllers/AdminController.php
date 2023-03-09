<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use Illuminate\Http\Request;
use App\Models\Settings;
use App\User;
use App\Rules\MatchOldPassword;
use Hash;
use Carbon\Carbon;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;
use Spatie\Activitylog\Models\Activity;
class AdminController extends Controller
{
    public function index(){
    $products = Cart::orderByRaw('SUM(quantity) DESC')->groupBy('product_id')->selectRaw('*, sum(quantity) as total_quantity')->paginate(12);
     return view('backend.index',compact('products'));
    }

    public function profile(){
        $profile=Auth()->user();
        // return $profile;
        return view('backend.users.profile')->with('profile',$profile);
    }

    public function profileUpdate(Request $request,$id){
        // return $request->all();
        $user=User::findOrFail($id);
        $data=$request->all();
        if ($request->hasFile('photo')){
            File::delete(public_path("images/user/$user->photo"));
            $image = $request->file('photo');
            $image_name = "photo-".uniqid().'.'.$image->getClientOriginalExtension();
            $loc = public_path("images/user").'/'.$image_name;
            Image::make($image)->save($loc);
            $data['photo'] = $image_name;
        }
        $status=$user->fill($data)->save();
        if($status){
            request()->session()->flash('success','Successfully updated your profile');
        }
        else{
            request()->session()->flash('error','Please try again!');
        }
        return redirect()->back();
    }

    public function settings(){
        $data=Settings::first();
        return view('backend.setting')->with('data',$data);
    }

    public function settingsUpdate(Request $request){
        // return $request->all();
        $this->validate($request,[
            'short_des'=>'required|string',
            'description'=>'required|string',
            'address'=>'required|string',
            'email'=>'required|email',
            'phone'=>'required|string',
        ]);
        $data=$request->all();
        $settings=Settings::first();
        if ($request->hasFile('photo')){
            File::delete(public_path("images/$settings->photo"));
            $image = $request->file('photo');
            $image_name = "photo-".uniqid().'.'.$image->getClientOriginalExtension();
            $loc = public_path("images").'/'.$image_name;
            Image::make($image)->save($loc);
            $data['photo'] = $image_name;
        }
        if ($request->hasFile('logo')){
            File::delete(public_path("images/$settings->logo"));
            $image = $request->file('logo');
            $image_name = "logo-".uniqid().'.'.$image->getClientOriginalExtension();
            $loc = public_path("images").'/'.$image_name;
            Image::make($image)->save($loc);
            $data['logo'] = $image_name;
        }
        $status=$settings->fill($data)->save();
        if($status){
            request()->session()->flash('success','Setting successfully updated');
        }
        else{
            request()->session()->flash('error','Please try again');
        }
        return redirect()->route('admin');
    }

    public function changePassword(){
        return view('backend.layouts.changePassword');
    }
    public function changPasswordStore(Request $request)
    {
        $request->validate([
            'current_password' => ['required', new MatchOldPassword],
            'new_password' => ['required'],
            'new_confirm_password' => ['same:new_password'],
        ]);

        User::find(auth()->user()->id)->update(['password'=> Hash::make($request->new_password)]);

        return redirect()->route('admin')->with('success','Password successfully changed');
    }

}
