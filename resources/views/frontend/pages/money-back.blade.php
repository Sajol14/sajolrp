@extends('frontend.layouts.master')

@section('title','KFS || Money Back')

@section('main-content')

	<!-- Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="bread-inner">
						<ul class="bread-list">
                            <li><a href="{{route('home')}}">Home<i class="ti-arrow-right"></i></a></li>
							<li class="active"><a href="{{route('money-back')}}">Money Back</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Breadcrumbs -->

	<!-- Money Back -->
	<section class="about-us section">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-12">
						<div class="about-content">
							@php
								$settings=DB::table('settings')->get();
							@endphp
							<h3>Welcome To <span>Kids Fashion Shop</span></h3>
							<p>
                                For product items ordered via Shopee are eligible for a Return/Refund within 15 days from when the item was delivered, only if any of the following conditions are met: Item delivered is defective (you'd have to return the item for a refund) Wrong item is delivered (you'd have to return the item for a refund)
                            </p>
						</div>
					</div>
					<div class="col-lg-6 col-12">
						<div class="about-img overlay">
							<img src="@foreach($settings as $data) {{asset('images/')}}/{{$data->photo}} @endforeach" alt="@foreach($settings as $data) {{$data->photo}} @endforeach">
						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- End Money Back -->


{{--	@include('frontend.layouts.newsletter')--}}
@endsection
