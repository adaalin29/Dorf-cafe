<footer id="footer">
    <div class = "container">
        <div class = "footer-container">
            <div class = "footer-logo">
                <a href = "/"><img class = "footer-mobile" src = "images/footer-logo.png"></a>
            </div>
            <ul class = "footer-menu">
                <li class = "li-element"><a class = "footer-element" href = "/">Home</a></li>
                <li class = "li-element"><a class = "footer-element" href = "about-us">{{ __('site.about-us') }}</a></li>
                <li class = "li-element"><a class = "footer-element" href = "/menu">{{ __('site.menu') }}</a></li>
            </ul>
            <ul class = "footer-menu">
                <li class = "li-element"><a class = "footer-element" href = "gallery">{{ __('site.gallery') }}</a></li>
                <li class = "li-element"><a class = "footer-element" href = "events">{{ __('site.events') }}</a></li>
                <li class = "li-element"><a class = "footer-element" href = "contact">{{ __('site.contact') }}</a></li>
            </ul>
            <div class = "footer-contact">
                <div class = "footer-contact-element">{{ __('site.phone') }}: {{setting('site.phone-number')}}</div>
                <div class = "footer-contact-element"><a href = "mailto:samyeuler@dorfcafe-horben.de">samyeuler@dorfcafe-horben.de</a></div>
                <div class = "footer-contact-element">samyeuler@dorfcafe-horben.de</div>
                <div class = "footer-contact-element">{!! __('site.weekdays') !!}</div>
                <div class = "footer-contact-element">{!! __('site.weekends') !!}</div>
            </div>
        </div>
        <div class = "social-container">
            <div class = "social-media">
                <div class = "social-media-item social-media-item-modif"><a href = "{{setting('site.tripadvisor')}}"><img class = "footer-image-da" src = "images/tripadvisor.svg"></a></div>
                <div class = "social-media-item"><a href = "{{setting('site.instagram-link')}}"><img class = "footer-image-da" src = "images/instagramm.svg"></a></div>
                
            </div>
            <div class = "social-coppy">{!!$copy->content!!}</div>
        {{-- <div class = "social-coppy desktop-hidden">{!!$copy->content!!}</div --}}
        </div>
    </div>
 </footer>