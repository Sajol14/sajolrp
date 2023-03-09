@extends('frontend.layouts.master')

@section('title','KFS || Terms & Condition')

@section('main-content')

	<!-- Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="bread-inner">
						<ul class="bread-list">
							<li><a href="{{route('home')}}">Home<i class="ti-arrow-right"></i></a></li>
							<li class="active"><a href="{{route('terms-condition')}}">Terms & Condition</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Breadcrumbs -->

	<!-- About Us -->
	<section class="about-us section">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-12">
						<div class="about-content">
							@php
								$settings=DB::table('settings')->get();
							@endphp
							<h3>Welcome To <span>Kids Fashion Shop</span></h3>
							<p>Terms and Conditions
                                1. INTRODUCTION

                                Welcome to Daraz.com.bd also hereby known as “we", "us" or "Daraz". We are an online marketplace and these are the terms and conditions governing your access and use of Daraz along with its related sub-domains, sites, mobile app, services and tools (the "Site"). By using the Site, you hereby accept these terms and conditions (including the linked information herein) and represent that you agree to comply with these terms and conditions (the "User Agreement"). This User Agreement is deemed effective upon your use of the Site which signifies your acceptance of these terms. If you do not agree to be bound by this User Agreement please do not access, register with or use this Site. This Site is owned and operated by Daraz Bangladesh Limited, a company incorporated under the Companies Act, 1994, (Registration Number: 117773/14).

                                The Site reserves the right to change, modify, add, or remove portions of these Terms and Conditions at any time without any prior notification. Changes will be effective when posted on the Site with no other notice provided. Please check these Terms and Conditions regularly for updates. Your continued use of the Site following the posting of changes to Terms and Conditions of use constitutes your acceptance of those changes.
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
	<!-- End About Us -->


{{--	@include('frontend.layouts.newsletter')--}}
@endsection
