<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Varsity | Home</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="{{ asset('storage/img/favicon.ico') }}" type="image/x-icon">

    <!-- Font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap -->
    <link href="{{ asset('css/bootstrap.css') }}" rel="stylesheet">
    <!-- Slick slider -->
    <link rel="stylesheet" type="text/css" href=" {{ asset('css/slick.css') }}">
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="{{ asset('css/jquery.fancybox.css') }}" type="text/css" media="screen" />
    <!-- Theme color -->
    <link id="switcher" href=" {{ asset('css/theme-color/default-theme.css') }}" rel="stylesheet">

    <!-- Main style sheet -->
    <link href="   {{ asset('css/style.css') }}" rel="stylesheet">


    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,400italic,300,300italic,500,700' rel='stylesheet' type='text/css'>

</head>

<body>

    <!--START SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#">
        <i class="fa fa-angle-up"></i>
    </a>
    <!-- END SCROLL TOP BUTTON -->
    <!-- header -->
    @include('components.font-end.header')
    <!-- end header-->
   @include('components.font-end.navbar')

    <!-- Start search box -->
    <div id="mu-search">
        <div class="mu-search-area">
            <button class="mu-search-close"><span class="fa fa-close"></span></button>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <form class="mu-search-form">
                            <input type="search" placeholder="Type Your Keyword(s) & Hit Enter">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End search box -->
    <!-- Start Slider -->
    <section id="mu-slider">
        <!-- Start single slider item -->
        <div class="mu-slider-single">
            <div class="mu-slider-img">
                <figure>
                    <img src=" {{ asset('storage/img/slider/1.jpg') }}" alt="img">
                </figure>
            </div>
            <div class="mu-slider-content">
                <h4>Welcome To Varsity</h4>
                <span></span>
                <h2>We Will Help You To Learn</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor amet error eius reiciendis eum sint unde eveniet deserunt est debitis corporis temporibus recusandae accusamus.</p>
                <a href="#" class="mu-read-more-btn">Read More</a>
            </div>
        </div>
        <!-- Start single slider item -->
        <!-- Start single slider item -->
        <div class="mu-slider-single">
            <div class="mu-slider-img">
                <figure>
                    <img src="{{ asset('storage/img/slider/2.jpg') }}" alt="img">
                </figure>
            </div>
            <div class="mu-slider-content">
                <h4>Premiumu Quality Free Template</h4>
                <span></span>
                <h2>Best Education Template Ever</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor amet error eius reiciendis eum sint unde eveniet deserunt est debitis corporis temporibus recusandae accusamus.</p>
                <a href="#" class="mu-read-more-btn">Read More</a>
            </div>
        </div>
        <!-- Start single slider item -->
        <!-- Start single slider item -->
        <div class="mu-slider-single">
            <div class="mu-slider-img">
                <figure>
                    <img src="{{ asset('storage/img/slider/3.jpg') }}" alt="img">
                </figure>
            </div>
            <div class="mu-slider-content">
                <h4>Exclusivly For Education</h4>
                <span></span>
                <h2>Education For Everyone</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor amet error eius reiciendis eum sint unde eveniet deserunt est debitis corporis temporibus recusandae accusamus.</p>
                <a href="#" class="mu-read-more-btn">Read More</a>
            </div>
        </div>
        <!-- Start single slider item -->
    </section>
    <!-- End Slider -->



    <!-- Start about us counter -->
    <section id="mu-abtus-counter">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mu-abtus-counter-area">
                        <div class="row">
                            <!-- Start counter item -->
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="mu-abtus-counter-single">
                                    <span class="fa fa-book"></span>
                                    <h4 class="counter">568</h4>
                                    <p>Subjects</p>
                                </div>
                            </div>
                            <!-- End counter item -->
                            <!-- Start counter item -->
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="mu-abtus-counter-single">
                                    <span class="fa fa-users"></span>
                                    <h4 class="counter">3500</h4>
                                    <p>Students</p>
                                </div>
                            </div>
                            <!-- End counter item -->
                            <!-- Start counter item -->
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="mu-abtus-counter-single">
                                    <span class="fa fa-flask"></span>
                                    <h4 class="counter">65</h4>
                                    <p>Modern Lab</p>
                                </div>
                            </div>
                            <!-- End counter item -->
                            <!-- Start counter item -->
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="mu-abtus-counter-single no-border">
                                    <span class="fa fa-user-secret"></span>
                                    <h4 class="counter">250</h4>
                                    <p>Teachers</p>
                                </div>
                            </div>
                            <!-- End counter item -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End about us counter -->

    <!-- Start testimonial -->
@include('components.font-end.feedback')
    <!-- End testimonial -->

    <!-- Start features section -->
    <section id="mu-features">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="mu-features-area">
                        <!-- Start Title -->
                        <div class="mu-title">
                            <h2>Our Features</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio ipsa ea maxime mollitia, vitae voluptates, quod at, saepe reprehenderit totam aliquam architecto fugiat sunt animi!</p>
                        </div>
                        <!-- End Title -->
                        <!-- Start features content -->
                        <div class="mu-features-content">
                            <div class="row">
                                <div class="col-lg-4 col-md-4  col-sm-6">
                                    <div class="mu-single-feature">
                                        <span class="fa fa-book"></span>
                                        <h4>Professional Courses</h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus non dolorem excepturi libero itaque sint labore similique maxime natus eum.</p>
                                        <a href="#">Read More</a>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="mu-single-feature">
                                        <span class="fa fa-users"></span>
                                        <h4>Expert Teachers</h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus non dolorem excepturi libero itaque sint labore similique maxime natus eum.</p>
                                        <a href="#">Read More</a>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="mu-single-feature">
                                        <span class="fa fa-laptop"></span>
                                        <h4>Online Learning</h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus non dolorem excepturi libero itaque sint labore similique maxime natus eum.</p>
                                        <a href="#">Read More</a>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="mu-single-feature">
                                        <span class="fa fa-microphone"></span>
                                        <h4>Audio Lessons</h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus non dolorem excepturi libero itaque sint labore similique maxime natus eum.</p>
                                        <a href="#">Read More</a>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="mu-single-feature">
                                        <span class="fa fa-film"></span>
                                        <h4>Video Lessons</h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus non dolorem excepturi libero itaque sint labore similique maxime natus eum.</p>
                                        <a href="#">Read More</a>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="mu-single-feature">
                                        <span class="fa fa-certificate"></span>
                                        <h4>Professional Certificate</h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus non dolorem excepturi libero itaque sint labore similique maxime natus eum.</p>
                                        <a href="#">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End features content -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End features section -->

    <!-- Start latest news section -->
@include('components.font-end.news')
    <!-- End latest news section -->

    <!-- Start our teacher -->
    <section id="mu-our-teacher">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mu-our-teacher-area">
                        <!-- begain title -->
                        <div class="mu-title">
                            <h2>Our Teachers</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa, repudiandae, suscipit repellat minus molestiae ea.</p>
                        </div>
                        <!-- end title -->
                        <!-- begain our teacher content -->
                        <div class="mu-our-teacher-content">
                            <div class="row">
                                <div class="col-lg-3 col-md-3  col-sm-6">
                                    <div class="mu-our-teacher-single">
                                        <figure class="mu-our-teacher-img">
                                            <img src="{{ asset('storage/img/teachers/teacher-01.jpg') }}" alt="teacher img">
                                            <div class="mu-our-teacher-social">
                                                <a href="#"><span class="fa fa-facebook"></span></a>
                                                <a href="#"><span class="fa fa-twitter"></span></a>
                                                <a href="#"><span class="fa fa-linkedin"></span></a>
                                                <a href="#"><span class="fa fa-google-plus"></span></a>
                                            </div>
                                        </figure>
                                        <div class="mu-ourteacher-single-content">
                                            <h4>Rebeca Michel</h4>
                                            <span>Math Teacher</span>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique quod pariatur recusandae odio dignissimos. Eligendi.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6">
                                    <div class="mu-our-teacher-single">
                                        <figure class="mu-our-teacher-img">
                                            <img src="{{ asset('storage/img/teachers/teacher-02.jpg') }}" alt="teacher img">
                                            <div class="mu-our-teacher-social">
                                                <a href="#"><span class="fa fa-facebook"></span></a>
                                                <a href="#"><span class="fa fa-twitter"></span></a>
                                                <a href="#"><span class="fa fa-linkedin"></span></a>
                                                <a href="#"><span class="fa fa-google-plus"></span></a>
                                            </div>
                                        </figure>
                                        <div class="mu-ourteacher-single-content">
                                            <h4>James Hein</h4>
                                            <span>Physics Teacher</span>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique quod pariatur recusandae odio dignissimos. Eligendi.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6">
                                    <div class="mu-our-teacher-single">
                                        <figure class="mu-our-teacher-img">
                                            <img src="{{ asset('storage/img/teachers/teacher-03.jpg') }}" alt="teacher img">
                                            <div class="mu-our-teacher-social">
                                                <a href="#"><span class="fa fa-facebook"></span></a>
                                                <a href="#"><span class="fa fa-twitter"></span></a>
                                                <a href="#"><span class="fa fa-linkedin"></span></a>
                                                <a href="#"><span class="fa fa-google-plus"></span></a>
                                            </div>
                                        </figure>
                                        <div class="mu-ourteacher-single-content">
                                            <h4>Brian Dean</h4>
                                            <span>English Teacher</span>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique quod pariatur recusandae odio dignissimos. Eligendi.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6">
                                    <div class="mu-our-teacher-single">
                                        <figure class="mu-our-teacher-img">
                                            <img src="{{ asset('storage/img/teachers/teacher-04.jpg') }}" alt="teacher img">
                                            <div class="mu-our-teacher-social">
                                                <a href="#"><span class="fa fa-facebook"></span></a>
                                                <a href="#"><span class="fa fa-twitter"></span></a>
                                                <a href="#"><span class="fa fa-linkedin"></span></a>
                                                <a href="#"><span class="fa fa-google-plus"></span></a>
                                            </div>
                                        </figure>
                                        <div class="mu-ourteacher-single-content">
                                            <h4>John Doe</h4>
                                            <span>Biology Teacher</span>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique quod pariatur recusandae odio dignissimos. Eligendi.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End our teacher content -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End our teacher -->

    <!-- Start footer -->
    <footer id="mu-footer">
        <!-- start footer top -->
        <div class="mu-footer-top">
            <div class="container">
                <div class="mu-footer-top-area">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3">
                            <div class="mu-footer-widget">
                                <h4>Information</h4>
                                <ul>
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="">Features</a></li>
                                    <li><a href="">Course</a></li>
                                    <li><a href="">Event</a></li>
                                    <li><a href="">Sitemap</a></li>
                                    <li><a href="">Term Of Use</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3">
                            <div class="mu-footer-widget">
                                <h4>Student Help</h4>
                                <ul>
                                    <li><a href="">Get Started</a></li>
                                    <li><a href="#">My Questions</a></li>
                                    <li><a href="">Download Files</a></li>
                                    <li><a href="">Latest Course</a></li>
                                    <li><a href="">Academic News</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3">
                            <div class="mu-footer-widget">
                                <h4>News letter</h4>
                                <p>Get latest update, news & academic offers</p>
                                <form class="mu-subscribe-form">
                                    <input type="email" placeholder="Type your Email">
                                    <button class="mu-subscribe-btn" type="submit">Subscribe!</button>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3">
                            <div class="mu-footer-widget">
                                <h4>Contact</h4>
                                <address>
                  <p>P.O. Box 320, Ross, California 9495, USA</p>
                  <p>Phone: (415) 453-1568 </p>
                  <p>Website: www.markups.io</p>
                  <p>Email: info@markups.io</p>
                </address>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end footer top -->
        <!-- start footer bottom -->
        <div class="mu-footer-bottom">
            <div class="container">
                <div class="mu-footer-bottom-area">
                    <p>
                        {{ date('Y'); }} 
                  &copy; All Right Reserved. Designed by <a href="https://waziri.vercel.app/" rel="nofollow">Waziri</a></p>
                </div>
            </div>
        </div>
        <!-- end footer bottom -->
    </footer>
    <!-- End footer -->

    <!-- jQuery library -->
    <script src="{{ asset('js/jquery.min.js') }} "></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src=" {{ asset('js/bootstrap.js') }}"></script>
    <!-- Slick slider -->
    <script type="text/javascript" src="{{ asset('js/slick.js') }}" defer></script>
    <!-- Counter -->
    <script type="text/javascript" src="{{ asset('js/waypoints.js') }}"></script>
    <script type="text/javascript" src="{{ asset('js/jquery.counterup.js') }}"></script>
    <!-- Mixit slider -->
    <script type="text/javascript" src=" {{ asset('js/jquery.mixitup.js') }}"></script>
    <!-- Add fancyBox -->
    <script type="text/javascript" src=" {{ asset('js/jquery.fancybox.pack.js') }} "></script>


    <!-- Custom js -->
    <script src="{{ asset('js/custom.js') }}"></script>
<script>
    $(document).ready(function() {
  var $navbar = $("#mNavbar");
  
  AdjustHeader(); // Incase the user loads the page from halfway down (or something);
  $(window).scroll(function() {
      AdjustHeader();
  });
  
  function AdjustHeader(){
    if ($(window).scrollTop() > 60) {
      if (!$navbar.hasClass("navbar-fixed-top")) {
        $navbar.addClass("navbar-fixed-top");
      }
    } else {
      $navbar.removeClass("navbar-fixed-top");
    }
  }
});
</script>
</body>

</html>