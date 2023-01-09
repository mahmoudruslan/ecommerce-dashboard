@extends('layouts.admin.master')
@section('title')
    {{ __('Products') }}
@endsection
@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">{{ __('Products') }}</h1>
        <p class="mb-4"></p>
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            @if (Session::has('success'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ __(Session::get('success')) }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif
            @if (Session::has('error'))
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                {{ __(Session::get('error')) }}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        @endif
            <input type="hidden" id="lang" value="{{app()->getLocale()}}">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered text-center yajra-datatable" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th class="text-center">{{ __('#') }}</th>
                                <th class="text-center">{{ __('Name') }}</th>
                                {{-- <th class="text-center">{{ __('Price') }}</th> --}}
                                {{-- <th class="text-center">{{ __('Discount Price') }}</th> --}}
                                <th class="text-center w-25">{{ __('Details') }}</th>
                                {{-- <th class="text-center">{{ __('Amount') }}</th> --}}
                                <th class="text-center">{{ __('Actions') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('js')
<script type="text/javascript">
    $(function() {
        var lang = $('#lang').val();
        var table = $('.yajra-datatable').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{ route('admin.products.index') }}",
            columns: [
                {
                    data: 'DT_RowIndex',
                    name: 'DT_RowIndex'
                },
                {
                    data: 'name_' + lang,
                    name: 'name_' + lang
                },
                // {
                //     data: 'price',
                //     name: 'price'
                // },
                // {
                //     data: 'discount_price',
                //     name: 'discount_price'
                // },
                {
                    data: 'details_' + lang,
                    name: 'details_' + lang
                },
                // {
                //     data: 'amount',
                //     name: 'amount'
                // },
                {
                    data: 'action',
                    name: 'action',
                    orderable: true,
                    searchable: true
                },
            ]
        });

    });
</script>
@endsection
