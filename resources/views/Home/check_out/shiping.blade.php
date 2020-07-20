@extends('Home.master')
@section('maincontent')
<section class="checkout-section spad">
    <div class="container">
        {{-- <form class="checkout-form" action="{{url('/shipping-adress/store')}}" method="post" >
            @csrf --}}
        <form class="checkout-form" action="{{url('/pay')}}" method="post" >
            <input type="hidden" value="{{ csrf_token() }}" name="_token" />
            <div class="row">
                <div class="col-lg-6">
       
                    <h4>Biiling Details</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            <label for="fir"> Name<span>*</span></label>
                            <input type="text" id="fir"name="name">
                        </div>
                   
                
                      
                        <div class="col-lg-12">
                            <label for="street"> Address<span>*</span></label>
                            <input type="text" id="street" class="street-first"name="address">
                          
                        </div>
                      
                  
                        <div class="col-lg-6">
                            <label for="email">Email Address<span>*</span></label>
                            <input type="text" id="email"name="email">
                        </div>
                        <div class="col-lg-6">
                            <label for="phone">Phone<span>*</span></label>
                            <input type="text" id="phone"name="phone">
                        </div>
                      
                    </div>
                </div>
                <div class="col-lg-6">
                 
                    <div class="place-order">
                        <h4>Your Order</h4>
                        <div class="order-total">
                            <ul class="order-table">
                                <li>Total <span>{{Session::get('sum')}}</span></li>
                         
                            </ul>
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="order-btn">
                <button name="submit" type="submit" class="site-btn place-btn">Place Order</button>
            </div>
        </form>
    </div>
</section>

@endsection

