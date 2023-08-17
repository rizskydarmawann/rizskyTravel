@extends('layouts.auth')

@section('content')
<main class="login-container">
    <div class="container">
        <div class="row page-login d-flex align-items-center">
            <div class="section-left col-12 col-md-6">
                <h1>We explore the new<br> life much better</h1>
                <img src="{{ url('frontend/images/login-images.png') }}" alt="" class="w-75 d-none d-sm-flex">
            </div>
            <div class="section-right col-12 col-md-4">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center">
                            <img src="{{ url('frontend/images/logo.png') }}" alt="" class="w-50 mb-4">
                        </div>
                        <form method="POST" action="{{ route('register') }}">
                            @csrf
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="name" class="form-control @error('name') is-invalid @enderror" id="name" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>
                                @error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
				<div class="form-group">
                                <label for="username">Usernme</label>
                                <input type="username" class="form-control @error('username') is-invalid @enderror" id="username" name="username" value="{{ old('username') }}" required autocomplete="username" autofocus>
                                @error('username')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>

				<div class="form-group">
                                <label for="email">E-mail Address</label>
                                <input type="email" class="form-control @error('email') is-invalid @enderror" id="email" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                                @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>

                            <div class="form-group ">
                                <label for="password ">Password</label>
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
                                @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            </div>
 				<div class="form-group ">
                                <label for="password-confirm">Confirm Password</label>
                                <input id="password-confirm" type="password" class="form-control @error('password-confirm') is-invalid @enderror" name="password_confirmation" required autocomplete="new-password">
                                @error('password-confirm')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            </div>




                            <button type="submit " class="btn btn-login btn-block ">Register</button>


                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

@endsection