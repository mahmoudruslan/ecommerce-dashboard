                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <meta name="csrf-token" content="{{ csrf_token() }}" />

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>
                        <form id="form" action="" method="">
                            @csrf
                            <li class="nav-item dropdown no-arrow mx-1">
                                <input type="hidden" name="id" id="message_id"
                                    value="{{ $last_message_id ?? '' }}">
                                <a id="save" class="nav-link dropdown-toggle" href="#" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-bell fa-fw"></i>
                                    <!-- Counter - Alerts -->
                                    @if ($last_message_id > $last_seen_message_id)
                                        <span id="span"
                                            class="badge badge-danger badge-counter">{{ $viewed_message_number }}</span>
                                    @endif

                                </a>
                                <!-- Dropdown - Alerts -->
                                <div class="dropdown-list dropdown-menu dropdown-menu-left shadow animated--grow-in"
                                    aria-labelledby="alertsDropdown">
                                    <h6 class="dropdown-header">
                                        {{ __('Notifications') }}
                                    </h6>
                                    @if (isset($messages))
                                        @forelse ($messages as $message)
                                            <a class="dropdown-item d-flex align-items-center" href="#">
                                                <div class="mr-3">
                                                    <div class="icon-circle bg-warning">
                                                        <i class="fas fa-exclamation-triangle text-white"></i>
                                                    </div>
                                                </div>
                                                <div style="overflow-wrap: anywhere;">
                                                    <div class="small text-gray-500">{{ $message->created_at }}</div>
                                                    <span class="font-weight-bold">{{ __($message->content) }}
                                                    </span>
                                                </div>
                                            </a>
                                        @empty
                                            <h6 class="text-gray-500 text-center mt-3">
                                                {{ __('There are no notifications') }}
                                            </h6>
                                        @endforelse
                                        @if (count($messages) > 7)
                                            <a style="text-decoration: none;text-align: center"
                                                class="dropdown-item align-items-center"
                                                href="{{ route('admin.messages.index') }}">
                                                <h6 class="text-gray-500">
                                                    {{ __('View All') }}
                                                </h6>
                                            </a>
                                        @endif
                                    @endif
                                </div>
                            </li>
                        </form>
                        <li class="nav-item dropdown no-arrow mx-1">
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav mr-auto">
                                    @foreach (LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                                        <li class="nav-item">
                                            <a rel="alternate" hreflang="{{ $localeCode }}" class="nav-link"
                                                href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}">
                                                @if($properties['native'] == 'العربية')
                                                <img style="max-width: 40px;max-height: 40px" src="{{asset('images/logo/Saudi-Arabia-Flag.ico')}}">
                                                @else
                                                <img style="max-width: 40px;max-height: 40px" src="{{asset('images/logo/english-Flag-1.ico')}}">

                                                @endif
                                            </a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </li>
                        <!-- Nav Item - Alerts -->

                        <div class="topbar-divider d-none d-sm-block"></div>
                        @if (Route::has('login'))
                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                @auth
                                    <a class="nav-link dropdown-toggle" href="{{ url('/home') }}" id="userDropdown"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span
                                            class="mr-2 d-none d-lg-inline text-gray-600 small">{{ Auth::user()->name }}</span>
                                        <img class="img-profile rounded-circle"
                                            src="{{ asset('backend/img/undraw_profile.svg') }}">
                                    </a>
                                @endauth

                                <!-- Dropdown - User Information -->
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                    aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="{{ route('admin.admins.edit', Auth::user()->id) }}">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        {{ __('Profile') }}
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <form class="insubmit" id="logout-form" action="{{ route('logout') }}" method="POST">
                                        @csrf
                                        <button type="submit" data-target="#logoutModal" class="dropdown-item onklickdisabled" >
                                            <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                            {{ __('Logout') }}
                                        </button>
                                    </form>
                                </div>
                            </li>
                        @endif
                        <!-- Nav Item - Messages -->
                        @if (!Auth::check())
                            <li class="nav-item">
                                <a class="h5 mb-0 text-gray-800 nav-link" href="{{ route('login') }}">login</a>
                            </li>
                            <li class="nav-item">
                                <a class="h5 mb-0 text-gray-800 nav-link" href="{{ route('register') }}">register</a>
                            </li>
                        @endif
                    </ul>

                </nav>
                <!-- End of Topbar -->
