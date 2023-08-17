@extends('layouts.app')
@section('title', 'Detail Travel')


@section('content')

<main>
    <section class="section-pakettravel-header"></section>
    <section class="sectiom-pakettravel-content " >
        <div class="container">
            <div class="row">
                <div class="col p-0 ml-4 ml-lg-0">
                    <nav>
                        <ol class=" breadcrumb ">
                            <li class="breadcrumb-item ">
                                Home
                            </li>
                            <li class="breadcrumb-item active ">
                                Paket Travel
                            </li>
                        </ol>
                    </nav>
                </div>
            </div>
            <div class="row section-pakettravel-travel justify-content-center">
                @foreach ($items as $item)
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <div class="card-travel text-center d-flex flex-column" style="background-image: url('{{ $item->galleries->count() ? Storage::url($item->galleries->first()->image) : '' }}');">

                        <div class="travel-country">
                            {{ $item->location }}
                        </div>
                        <div class="travel-location">
                            {{ $item->title }}
                        </div>
                        <div class="travel-button mt-auto">
                            <a href="{{ route('detail', $item->slug) }}" class="btn btn-travel-details px-4">View Details</a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection
