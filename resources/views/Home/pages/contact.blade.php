@extends('Home.master')
@section('maincontent')
		    <!-- Map Section Begin -->
            <div class="map spad">
                <div class="container">
                    <div class="map-inner">
                        <!-- <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d48158.305462977965!2d-74.13283844036356!3d41.02757295168286!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2e440473470d7%3A0xcaf503ca2ee57958!2sSaddle%20River%2C%20NJ%2007458%2C%20USA!5e0!3m2!1sen!2sbd!4v1575917275626!5m2!1sen!2sbd"
                            height="610" style="border:0" allowfullscreen="">
                        </iframe> -->
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58373.85930282704!2d90.34326844825617!3d23.8766296388549!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c5d05e7074dd%3A0xd1c58803049f00c7!2sUttara%2C%20Dhaka!5e0!3m2!1sen!2sbd!4v1595220731533!5m2!1sen!2sbd" height="610" style="border:0" allowfullscreen=""></iframe>
                        <div class="icon">
                            <i class="fa fa-map-marker"></i>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Map Section Begin -->
        
            <!-- Contact Section Begin -->
            <section class="contact-section spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="contact-title">
                                <h4>Contacts Us</h4>
                                <p>Contrary to popular belief, Lorem Ipsum is simply random text. It has roots in a piece of
                                    classical Latin literature from 45 BC, maki years old.</p>
                            </div>
                            <div class="contact-widget">
                                <div class="cw-item">
                                    <div class="ci-icon">
                                        <i class="ti-location-pin"></i>
                                    </div>
                                    <div class="ci-text">
                                        <span>Address:</span>
                                        <p>60-49 Road 11378 New York</p>
                                    </div>
                                </div>
                                <div class="cw-item">
                                    <div class="ci-icon">
                                        <i class="ti-mobile"></i>
                                    </div>
                                    <div class="ci-text">
                                        <span>Phone:</span>
                                        <p>+65 11.188.888</p>
                                    </div>
                                </div>
                                <div class="cw-item">
                                    <div class="ci-icon">
                                        <i class="ti-email"></i>
                                    </div>
                                    <div class="ci-text">
                                        <span>Email:</span>
                                        <p>hellocolorlib@gmail.com</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 offset-lg-1">
                            <div class="contact-form">
                                <div class="leave-comment">
                                    <h4>Leave A Comment</h4>
                                    <p>Our staff will call back later and answer your questions.</p>
                                    <form action="#" class="comment-form">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <input type="text" placeholder="Your name">
                                            </div>
                                            <div class="col-lg-6">
                                                <input type="text" placeholder="Your email">
                                            </div>
                                            <div class="col-lg-12">
                                                <textarea placeholder="Your message"></textarea>
                                                <button type="submit" class="site-btn">Send message</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Contact Section End -->
@endsection