@extends('backend.layouts.master')
@section('title','E-SHOP || DASHBOARD')
@section('main-content')
<div class="container-fluid">
    @include('backend.layouts.notification')
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
      <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    </div>

    <!-- Content Row -->
    <div class="row">

      <!-- Category -->
      <div class="col-xl-4 col-md-6 mb-4">
        <div class="card border-left-primary bg-primary shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-white text-uppercase mb-1">Category</div>
                <div class="h5 mb-0 font-weight-bold text-white">{{\App\Models\Category::countActiveCategory()}}</div>
              </div>
              <div class="col-auto">
                <i class="fas fa-sitemap fa-2x text-gray-300"></i>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Products -->
      <div class="col-xl-4 col-md-6 mb-4">
        <div class="card border-left-success bg-success shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-white text-uppercase mb-1">Products</div>
                <div class="h5 mb-0 font-weight-bold text-white">{{\App\Models\Product::countActiveProduct()}}</div>
              </div>
              <div class="col-auto">
                <i class="fas fa-cubes fa-2x text-gray-300"></i>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Order -->
      <div class="col-xl-4 col-md-6 mb-4">
        <div class="card border-left-danger bg-danger shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-white text-uppercase mb-1">Order</div>
                <div class="row no-gutters align-items-center">
                  <div class="col-auto">
                    <div class="h5 mb-0 mr-3 font-weight-bold text-white">{{\App\Models\Order::countActiveOrder()}}</div>
                  </div>

                </div>
              </div>
              <div class="col-auto">
                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="product-dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>S.N.</th>
                    <th>Title</th>
                    <th>Sell Quantity</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>S.N.</th>
                    <th>Title</th>
                    <th>Sell Quantity</th>
                </tr>
                </tfoot>
                <tbody>

                @foreach($products as $key => $product)
                    <tr>
                        <td>{{++$key}}</td>
                        <td>{{$product->product->title}}</td>
                        <td>{{$product['total_quantity']}}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
            <span style="float:right">{{$products->links()}}</span>

        </div>
    </div>
</div>
@endsection

@push('scripts')

@endpush
