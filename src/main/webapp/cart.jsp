<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>ONLINE MEDICAL STORE &mdash; </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/style.css">

  
</head>

<body>

  <div class="site-wrap">


    <div class="site-navbar py-2">

      
      <div class="container">
        <div class="d-flex align-items-center justify-content-between">
          <div class="logo">
            <div class="site-logo">
              <a href="index.jsp" class="js-logo-clone">  <img src="icon/logo.png">&nbsp;SHOBHANAND</a>
            </div>
          </div>
          <div class="main-nav d-none d-lg-block">
            <nav class="site-navigation text-right text-md-center" role="navigation">
              <ul class="site-menu js-clone-nav d-none d-lg-block">
                <li ><a href="index.jsp">Home</a></li>
                <li><a href="shop.jsp">Store</a></li>
                <li><a href="categories.jsp">Categories</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <li><a href="login.jsp">Login</a></li>
              </ul>
            </nav>
          </div>
          <div class="icons">
            
              <a href="cart.jsp" class="icons-btn d-inline-block bag">
                <img src="icon/shopping-cart.png" alt="Shopping Cart Icon">
                <span class="icon-shopping-bag"></span>
                <span class="number">0</span>
            </a>
            <a href="#" class="site-menu-toggle js-menu-toggle ml-3 d-inline-block d-lg-none"><span
                class="icon-menu"></span></a>
          </div>
        </div>
      </div>
    </div>
    <div class="site-section">
      <div class="container" style="margin-top:80px">
        <div class="row mb-5">
          <form class="col-md-12" method="post">
            <div class="site-blocks-table">
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th class="product-thumbnail">Image</th>
                    <th class="product-name">Product</th>
                    <th class="product-price">Price</th>
                    <th class="product-quantity">Quantity</th>
                    <th class="product-total">Total</th>
                    <th class="product-remove">Remove</th>
                  </tr>
                </thead>
                <tbody id="cart-items">
                  <!-- Cart items will be dynamically added here -->
                </tbody>
              </table>
            </div>
          </form>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="row mb-5">
              <div class="col-md-6 mb-3 mb-md-0">
                <button class="btn btn-primary btn-md btn-block" onclick="updateCart()">Update Cart</button>
              </div>
              <div class="col-md-6">
                <a href="shop.jsp"><button class="btn btn-primary btn-md btn-block">Continue Shopping</a></button>
              </div>
            </div>
            
          </div>
          <div class="col-md-6 pl-5">
            <div class="row justify-content-end">
              <div class="col-md-7">
                <div class="row">
                  <div class="col-md-12 text-right border-bottom mb-5">
                    <h3 class="text-black h4 text-uppercase">Cart Totals</h3>
                  </div>
                </div>
                <div class="row mb-3">
                  <div class="col-md-6">
                    <span class="text-black">Subtotal</span>
                  </div>
                  <div class="col-md-6 text-right">
                    <strong class="text-black" id="subtotal">0</strong>
                  </div>
                </div>
                <div class="row mb-5">
                  <div class="col-md-6">
                    <span class="text-black">Total</span>
                  </div>
                  <div class="col-md-6 text-right">
                    <strong class="text-black" id="total">0</strong>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <button class="btn btn-primary btn-lg btn-block" onclick="window.location='checkout.jsp'">Proceed To Checkout</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  
    
 <div class="site-section bg-secondary bg-image">
      <div class="container">
        <div class="row align-items-stretch">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <a href="#" class="banner-1 h-100 d-flex">
              <div class="banner-1-inner align-self-center">
                <h2>Owner</h2>
                <p> Shobhanand Generic Medical Store Gala No 26 Bhaji Market Nagthane Tal & Dist Satara-415519</p>
                <p>Siddhesh Sawant</br>
                  Mob No - 9890290332
                </p>
              </div>
            </a>
          </div>
          <div class="col-lg-6 mb-5 mb-lg-0">
            <a href="#" class="banner-1 h-100 d-flex" >
              <div class="banner-1-inner ml-auto  align-self-center">
                <h2>Dealer</h2>
                <p>Goodwill Pharma<br>Shop no.6,opposite to rest house,near market yard Koregoan.<br>Mob.no. 9156890820.<br><br>SMS Pharma And Distributors<br>
                  384.1B.Plot no.83,1st floor,Shahupuri,Satara.<br>Mob.no. 9422309158. 
                  
                </p>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>


    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">

            <div class="block-7">
              <h3 class="footer-heading mb-4">About Us</h3>
              <p>Welcome to Shobhanand Generic Medical Store, your trusted partner in health and wellness. we offer a comprehensive range of prescription medications,
                over-the- counter products, wellness supplements, and healthcare essentials to meet all your needs.</p>

            </div>

          </div>
          <div class="col-lg-3 mx-auto mb-5 mb-lg-0">
            <h3 class="footer-heading mb-4">Quick Links</h3>
            <ul class="list-unstyled">
              <li><a href="pain-relief.jsp">Pain relief</a></li>
              <li><a href="blood-pressure.jsp">Blood Pressure</a></li>
              <li><a href="vitamins.jsp"> Vitamins</a></li>
              <li><a href="Diabetes-Care.jsp">Diabetes</a></li>
            </ul>
          </div>

          <div class="col-md-6 col-lg-3">
            <div class="block-5 mb-5">
              <h3 class="footer-heading mb-4">Contact Info</h3>
              <ul class="list-unstyled">
                <li class="address"><img src="icon/location.png">&nbsp;Gala No 26, Bhaji Market&nbsp;Nagthane ,Tal & Dist Satara-415519</li>
                <li class="phone"><img src="icon/call.png"><a href="tel://23923929210">&nbsp;9890290332</a></li>
  
                <li class="email">
                  <a href="mailto:youremail@example.com">
                  <img src="icon/email.png">&nbsp;sawant93@gmail.com</a>
               </li>
               <ul class="list-unstyled connect-links">
                <li><a href="https://instagram.com/yourprofile" target="_blank"><i class="fab fa-instagram"></i><img src="icon/instagram.png" alt="Email Icon" > Follow us on Instagram</a></li>
                <li><a href="https://wa.me/yourphonenumber" target="_blank"><i class="fab fa-whatsapp"></i><img src="icon/whatsapp.png" alt="Email Icon" > Chat on WhatsApp</a></li>
            </ul>
              </ul>
            </div>
  
  
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
               <script>document.write(new Date().getFullYear());</script>"© Shobhanand Generic Medical Store, All Rights Reserved. Your Trusted Partner in Health and Wellness."
             </p>
          </div>

        </div>
      </div>
    </footer>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/aos@2.3.1/dist/aos.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/main.js"></script>

</body>

</html>