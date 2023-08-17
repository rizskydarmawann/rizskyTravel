@extends('layouts.app')
@section('title')
RIZSKY TRAVEL
@endsection
@section('content')

<!-- header -->
<header class="text-center">
    <h1>
        Explore The Beautiful <br>World As Easy One Click
    </h1>
    <p class="mt-3">
        You will see beautiful <br> moment you never see before
    </p>
    <a href="#popular" class="btn btn-get-started px-4 mt-4">
        Get Started
    </a>
</header>
<!-- akhir header -->

<!-- statistik -->
<main>
    <div class="container">
        <section class="row section-stats justify-content-center" id="stats">
            <div class="col-3 col-md-2 stats-detail">
                <h2>20K</h2>
                <P>Members</P>
            </div>
            <div class="col-3 col-md-2 stats-detail">
                <h2>12</h2>
                <P>Countries</P>
            </div>
            <div class="col-3 col-md-2 stats-detail">
                <h2>3K</h2>
                <P>Hotels</P>
            </div>
            <div class="col-3 col-md-2 stats-detail">
                <h2>72</h2>
                <P>Partners</P>
            </div>
        </section>
    </div>
    <!-- popular -->
    <section class="section-popular" id="popular">
        <div class="container">
            <div class="row">
                <div class="col text-center section-popular-heading">
                    <h2>Wisata Popular</h2>
                    <p>
                        Something that you never try
                        <br />
                        before in this world
                    </p>
                </div>
            </div>
        </div>
    </section>
    <!-- popular content -->

    <section class="sectiom-popular-content" id="popularContent">
        <div class="container">
            <div class="row section-popular-travel justify-content-center">
                @foreach ($items as $item)
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <div class="card-travel text-center d-flex flex-column item" style="background-image: url('{{ $item->galleries->count() ? Storage::url($item->galleries->first()->image) : '' }}')">
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
    <!-- network -->
    <section class="section-network" id="network">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h2>Our Networks</h2>
                    <p>Companies are trusted us<br> more than just a trip</p>
                </div>
                <div class="col-md-8 text-center">
                    <img src="frontend/images/partner1.png" class="img-partner" alt="logo partner">
                </div>
            </div>
        </div>
    </section>
    <section class="section-testimonial-heading" id="testimonialHeading">
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <h2>They Are Loving Us</h2>
                    <p>Moments were giving them
                        <br>the best experience
                    </p>
                </div>
            </div>
        </div>
    </section>
    <section class="section-testimonial-content" id="testimonialContent">
        <div class="container">
            <div class="row">
                <div class="owl-carousel">
                    <div class="col-sm-10">
                        <div class="card card-testimonial text-center">
                            <div class="testimonial-content">
                                <img src="frontend/images/testimonial1.png" alt="user" class="mb-4 px-5 pt-2 srounded-circle">
                                <h3 class="mb-4">Angga Rizsky</h3>
                                <p class="testimonial">“ It was glorious and I could not stop to say wohooo for every single moment Dankeeeeee “</p>
                            </div>
                            <hr>
                            <p class="trip-to mt-3">
                                Trip to Ubud
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-10">
                        <div class="card card-testimonial text-center">
                            <div class="testimonial-content">
                                <img src="frontend/images/testimonial1.png" alt="user" class="mb-4 px-5 pt-2 srounded-circle">
                                <h3 class="mb-4">Angga Rizsky</h3>
                                <p class="testimonial">“ It was glorious and I could not stop to say wohooo for every single moment Dankeeeeee “</p>
                            </div>
                            <hr>
                            <p class="trip-to mt-3">
                                Trip to Ubud
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-10">
                        <div class="card card-testimonial text-center">
                            <div class="testimonial-content">
                                <img src="frontend/images/testimonial1.png" alt="user" class="mb-4 px-5 pt-2 srounded-circle">
                                <h3 class="mb-4">Angga Rizsky</h3>
                                <p class="testimonial">“ It was glorious and I could not stop to say wohooo for every single moment Dankeeeeee “</p>
                            </div>
                            <hr>
                            <p class="trip-to mt-3">
                                Trip to Ubud
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-10">
                        <div class="card card-testimonial text-center">
                            <div class="testimonial-content">
                                <img src="frontend/images/testimonial1.png" alt="user" class="mb-4 px-5 pt-2 srounded-circle">
                                <h3 class="mb-4">Angga Rizsky</h3>
                                <p class="testimonial">“ It was glorious and I could not stop to say wohooo for every single moment Dankeeeeee “</p>
                            </div>
                            <hr>
                            <p class="trip-to mt-3">
                                Trip to Ubud
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 text-center">
                    <a href="#" class="btn btn-need-help px-4 mt-4 mx-1">I Need Help</a>
                    <a href="{{ route('register') }}" class="btn btn-get-started px-4 mt-4 mx-1">Get Started</a>
                </div>
            </div>
        </div>
    </section>
</main>
@endsection

@push('home-script')
<script>
    $(document).ready(function() {
        $(".owl-carousel").owlCarousel({
            items: 3,
            loop: true,
            margin: -10,
            responsiveClass: true,
            responsive: {
                0: {
                    items: 2,
                    nav: true
                },
                600: {
                    items: 2,
                    nav: false
                },
                1000: {
                    items: 2,
                    nav: true,
                    loop: false
                },
                1366: {
                    items: 3,
                    nav: true,
                    loop: false
                }
            }
        });
    });
</script>
@endpush