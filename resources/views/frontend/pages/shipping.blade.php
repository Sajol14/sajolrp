@extends('frontend.layouts.master')

@section('title','KFS || Shipping')

@section('main-content')

	<!-- Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="bread-inner">
						<ul class="bread-list">
                            <li><a href="{{route('home')}}">Home<i class="ti-arrow-right"></i></a></li>
							<li class="active"><a href="{{route('shipping')}}">Shipping</a></li>
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
							<p>
                                Basically, Incoterms indicate three things. (1) Who arranges for transport and the carrier. (2) Who pays for transport. (3) Where/when does title (ownership) of goods transfer from seller to buyer. Consequently, shipping terms tell where costs are transferred and where the risk is transferred from the shipper to the consignee. Therefore, shipping terms are NOT optional. Even when they are not stipulated or mentioned, both parties have expectations about the shipping. Ignoring the shipping terms only invites confusion at best and legal trouble at worst. Every sale, every quote, and every international contract here goods are exchanged must have Incoterms.
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
