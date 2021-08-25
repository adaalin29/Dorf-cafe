<header id="header">
    <div class="container">
        <div class="menu-container chestie-mobile">
            <div class = "header-social">
                    <div class = "social-media-item header-social-media "><a href = "{{setting('site.tripadvisor')}}"><img class = "footer-image-da header-social-media-item" @if(Request::path() == '/')  src = "images/tripadvisor.svg" @else src = "images/tripadvisor-black.svg" @endif></a></div>
                    <div class = "social-media-item "><a href = "{{setting('site.instagram-link')}}"><img class = "footer-image-da header-social-media-item" @if(Request::path() == '/') src = "images/instagramm.svg" @else src = "images/instagramm-black.svg" @endif></a></div>
                    <div @if(Request::path()=='/') class = "social-lang" @else class = "social-lang-black" @endif><a @if(Request::path() == "/") class = "social-lang-href" @else class = "social-lang-href-black" @endif href = "locale/de">De</a>/<a @if(Request::path() == "/") class = "social-lang-href" @else class = "social-lang-href-black" @endif href = "locale/en">EN</a></div>
            </div>
            <div class = "header-logo mobile-hidden @if(Request::path() == '/') dispari @endif"><a href = ""><img src = "/images/logo-albastru.svg"></a></div>
            <div class="menu-header" onclick="changeMenu(this)" style="display:flex;align-items:center;">
                <div class='bars'>
                    <div class="bar1 @if(Request::path() == "/") index-bars @endif"></div>
                    <div class="bar2 @if(Request::path() == "/") index-bars @endif"></div>
                    <div class="bar3 @if(Request::path() == "/") index-bars @endif"></div>
                </div>
                <div class="mobile-hidden header-menu-text @if(Request::path() == "/") index-menu-text @endif">MENU</div>
            </div>
        </div>
    </div>

    <div class="sidenav">
        <div class="close-sidenav" onclick="closeNav()"><img src="images/close.png"></div>
        <div class="header-menu-container">
            <ul class="header-ul">
                <li class="header-li @if(Request::path() == "/") header-li-selected  @endif">
                    <a href="">Home</a>
                    <div class = "arrow-mobile"><img src = "images/arrow.svg"></div>
                </li>
                <li class="header-li @if(Request::path() == "about-us") header-li-selected  @endif">
                    <a href="/about-us">{{ __('site.about-us') }}</a>
                    <div class = "arrow-mobile"><img src = "images/arrow.svg"></div>
                    
                </li>
                <li class="header-li @if(Request::path() == "menu") header-li-selected  @endif">
                    <a href="/menu">{{ __('site.menu') }}</a>
                    <div class = "arrow-mobile"><img src = "images/arrow.svg"></div>
                </li>
                <li class="header-li @if(Request::path() == "gallery") header-li-selected  @endif">
                    <a href="/gallery">{{ __('site.gallery') }}</a>
                    <div class = "arrow-mobile"><img src = "images/arrow.svg"></div>
                </li>
                <li class="header-li @if(Request::path() == "catering") header-li-selected  @endif">
                    <a href="/events">{{ __('site.catering') }}</a>
                    <div class = "arrow-mobile"><img src = "images/arrow.svg"></div>
                </li>
                <li class="header-li @if(Request::path() == "contact") header-li-selected  @endif">
                    <a href="/contact">{{ __('site.contact') }}</a>
                    <div class = "arrow-mobile"><img src = "images/arrow.svg"></div>
                </li>
            </ul>
            <div class = "header-contact">
                    <div class = "header-contact-element">{{ __('site.phone') }}: {{setting('site.phone-number')}}</div>
                    <div class = "header-contact-element">{!! __('site.weekdays') !!}</div>
                    <div class = "header-contact-element">{!! __('site.weekends') !!}</div>
            </div>
        </div>
    </div>
</header>