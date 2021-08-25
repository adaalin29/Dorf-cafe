@extends('parts.template') @section('content')
<div class="banner-custom"></div>
<div class="container">
    @if(count($categorii)<4) <div class="gallery-categories">
        @foreach($categorii as $category)
        <div class="gallery-category" category_id={{$category->id}}>{{$category->name}}</div>
        @endforeach
</div>
<div class="gallery-categories-swiper desktop-hidden">
    <div class="swiper-container">
        <div class="swiper-wrapper">
            @foreach($categorii as $category)
            <div class="swiper-slide">
                <div class="gallery-category swiper-category" category_id={{$category->id}}>{{$category->name}}</div>
            </div>
            @endforeach
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination swiper-pagination-gallery"></div>
    </div>
</div>
@else
<div class="gallery-categories-swiper">
    <div class="swiper-container">
        <div class="swiper-wrapper">
            @foreach($categorii as $category)
            <div class="swiper-slide">
                <div class="gallery-category swiper-category" category_id={{$category->id}}>{{$category->name}}</div>
            </div>
            @endforeach
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
    </div>
</div>

@endif
<div class="gallery-container-events">
   @foreach($gallery as $gal)
        @foreach($gal['image'] as $item)
        <a class="fancybox-width" item_category={{$gal->category_id}} data-fancybox="gallery"
            href="{{ route('thumb', ['width:1920',($item)]) }}">
            <div class="gallery-item-events"><img class="full-width full-height image-object-fit"
                    src="{{ route('thumb', ['width:800',($item)]) }}"></div>
        </a>
        @endforeach
   @endforeach
   <i aria-hidden="true" class = "hidden-elements"></i>
<i aria-hidden="true" class = "hidden-elements"></i>
<i aria-hidden="true" class = "hidden-elements"></i>
</div>
</div>
@endsection

@push('scripts')
<script>
    $(document).ready(function () {
        $('.gallery-category').click(function () {
            $('.gallery-category').removeClass('gallery-title-active');
            $(this).toggleClass('gallery-title-active');
            var categorie_curenta = $(this).attr('category_id');
            $(".fancybox-width").hide();
            $(".fancybox-width[item_category=" + categorie_curenta + "]").fadeIn("slow");
        });
    });
</script>
@endpush