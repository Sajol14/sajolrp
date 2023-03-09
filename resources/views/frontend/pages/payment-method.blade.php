@extends('frontend.layouts.master')

@section('title','KFS || Payment Method')

@section('main-content')

	<!-- Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="bread-inner">
						<ul class="bread-list">
                            <li><a href="{{route('home')}}">Home<i class="ti-arrow-right"></i></a></li>
							<li class="active"><a href="{{route('payment-method')}}">Payment Method</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Breadcrumbs -->

	<!-- Payment method -->
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
                                Payment terms are important to understand how much money may be available to a business when deciding on future projects, such as expansion, renovation, new lines of products or advertisement campaigns. These terms can outline regular installment payments, which may help balance needed capital for daily and monthly expenses. Business owners may also experience less stress related to payments and income if they understand more about their monthly cash flow.
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
	<!-- End Payment method -->


{{--	@include('frontend.layouts.newsletter')--}}
@endsection
