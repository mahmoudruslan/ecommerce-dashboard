<body id="page-top" @if (app()->getLocale() == 'ar') style="direction: rtl;" @endif>

    <!-- Page Wrapper -->
    <div id="wrapper">
        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center"
                href="{{ route('admin.dashboard') }}">
                <div class="sidebar-brand-icon">
                    {{-- <i class="fas fa-laugh-wink"></i> --}}
                    <img style="width: 70px;" src="{{asset('images/logo/white-lolooo.png')}}">
                </div>
                <div class="sidebar-brand-text mx-3">{{ __('Ecommerce Dashboard') }}</div>
            </a>
            <!-- Divider -->
            <hr class="sidebar-divider">
            <!-- Heading -->
            <div class="sidebar-heading">
                {{__('Pages')}}
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            @if (count(App\Models\Customer::where('status', 'not active')->get()) > 0)
            <li class="nav-item">
                <a class="nav-link collapsed" href="{{route('customers.documentation')}}" >
                    <span class="badge badge-danger badge-counter">{{count(App\Models\Customer::where('status', 'not active')->get())}}</span>
                    <i class="fas fa-bell fa-fw"></i>
                    
                    <span>{{__('Unverified accounts')}}</span>
                </a>
            </li>
            @endif
        

            <!-- admins -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseadmin"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>{{ __('Admins') }}</span>
                </a>
                <div id="collapseadmin" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="{{ route('admin.admins.index') }}">{{ __('Admins') }}</a>
                        <a class="collapse-item" href="{{ route('admin.admins.create') }}">{{ __('Add Admins') }}</a>
                    </div>
                </div>
            </li>

            <!-- categories -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsecategory"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>{{ __('Categories') }}</span>
                </a>
                <div id="collapsecategory" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item"
                            href="{{ route('admin.categories.index') }}">{{ __('Categories') }}</a>
                        <a class="collapse-item"
                            href="{{ route('admin.categories.create') }}">{{ __('Add Category') }}</a>
                    </div>
                </div>
            </li>


                        <!-- inner categories -->
                        <li class="nav-item">
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseinnercategory"
                                aria-expanded="true" aria-controls="collapseTwo">
                                <i class="fas fa-fw fa-folder"></i>
                                <span>{{ __('Inner Categories') }}</span>
                            </a>
                            <div id="collapseinnercategory" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                                <div class="bg-white py-2 collapse-inner rounded">
                                    <a class="collapse-item"
                                        href="{{ route('admin.inner_categories.index') }}">{{ __('Inner Categories') }}</a>
                                    <a class="collapse-item"
                                        href="{{ route('admin.inner_categories.create') }}">{{ __('Add Inner Category') }}</a>
                                </div>
                            </div>
                        </li>
            <!-- Products -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseproduct"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>{{ __('Products') }}</span>
                </a>
                <div id="collapseproduct" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="{{ route('admin.products.index') }}">{{ __('Products') }}</a>
                        <a class="collapse-item"
                            href="{{ route('admin.products.create') }}">{{ __('Add Products') }}</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>{{__('Orders')}}</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">{{__('Orders')}}</h6>
                        <a class="collapse-item" href="{{route('admin.orders.index')}}">{{__('Orders')}}</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                {{__('Settings')}}
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            {{-- <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-bell fa-fw"></i>
                    <span>{{__('Notifications')}}</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="{{route('admin.messages.index')}}">{{__('Notifications')}}</a>
                        <a class="collapse-item" href="{{route('admin.messages.create')}}">{{__('Add Notifications')}}</a>
                    </div>
                </div>
            </li> --}}

            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-ad fa-fw"></i>
                    <span>{{__('Ads')}}</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="{{route('admin.ads.index')}}">{{__('Ads')}}</a>
                        <a class="collapse-item" href="{{route('admin.ads.create')}}">{{__('Add ads')}}</a>
                    </div>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCustomer"
                    aria-expanded="true" aria-controls="collapseCustomer">
                    <i class="fas fa-users fa-fw"></i>
                    <span>{{__('Customers')}}</span>
                </a>
                <div id="collapseCustomer" class="collapse" aria-labelledby="headingPages"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="{{route('customers.index')}}">{{__('Customers')}}</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
