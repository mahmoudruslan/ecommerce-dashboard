@extends('layouts.admin.master')
@section('title')
    {{ __('Category Details') }}
@endsection
@section('style')
    <style>
        .pt-10 {
            padding-top: 5rem;
        }
    </style>
@endsection
@section('content')
    <!-- Nested Row within Card Body -->
    <div class="row">
        <div class="p-5  col-lg-6">
            <a style="margin-left: 20px" href="{{ route('admin.inner_categories.index') }}" class="btn btn-secondary btn-icon-split">
                <span class="icon text-white-50">
                    <i class="fas fa-arrow-right"></i>
                </span>
                <span class="text">{{ __('Inner Categories') }}</span>
            </a>
            <br><br>
            <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">{{ __('Category Details') }}</h1>
            </div>
            <table class="table table-striped">
                <tbody>

                    <tr>
                        <th scope="row">{{ __('Name') }}</th>
                        <td>{{ $inner_category['name_' . app()->getLocale()] }}</td>
                    </tr>
                    <tr>
                        <th scope="row">{{ __('Category') }}</th>
                        <td>{{ $inner_category->category['name_' . app()->getLocale()] }}</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="col-lg-5 pt-10 p-4"><img style="width: 90%; max-height: 90%;"
                src="{{ asset('images/categories/' . $inner_category->photo) }}"></div>
    </div>
@endsection
