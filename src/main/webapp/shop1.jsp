<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>ONLINE MEDICAL STORE &mdash;</title>
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

      <div id="search-form-container" style="display: none; position: absolute; top: 100%; right: 10px; background: #fff; padding: 10px; border: 1px solid #ccc; z-index: 1000;">
  <form action="SearchServlet" method="get">
    <input type="text" name="query" placeholder="Search products..." required>
    <button type="submit">Search</button>
  </form>
</div>

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
                <li><a href="index.jsp">Home</a></li>
                <li class="active"><a href="shop.jsp">Store</a></li>
                <li><a href="categories.jsp">Categories</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <li><a href="login.jsp">Login</a></li>
              </ul>
            </nav>
          </div>
          <div class="icons">
            <a href="#" class="icons-btn d-inline-block js-search-open"><span class="icon-search"></span>
              <img src="icon/search-icon.png" alt="Search Icon"></a>
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

    <div class="bg-light py-3">
      <div class="container" style="margin-top:100px">
        <div class="row">
          <div class="col-md-12 mb-0"><a href="index.jsp">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Store</strong></div>
        </div>
      </div>
    </div>
        <div class="row">
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
            <img src="images/Methimazole.jpg" alt="Methimazole" style="width: 200px; height: 200px;">
            <h3 class="text-dark">Methimazole</h3>
            <p class="price">RS.40 </p>
            <button class="buy-now" onclick="addToCartAndNavigate('Methimazole', 40.00, 'images/Methimazole.jpg')">Add to Cart</button>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
            <img src="images/Olidax-AM-20.jpg" alt="Olidax-AM-20" style="width: 200px; height: 200px;"> 
            <h3 class="text-dark">Olidax-AM-20</h3>
            <p class="price">RS.70</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Olidax-AM-20', 70.00, 'images/Olidax-AM-20.jpg')">Add to Cart</button>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
             <img src="images/Omnigel.jpg" alt="Omnigel" style="width: 200px; height: 200px;">
            <h3 class="text-dark">Omnigel</h3>
            <p class="price">RS.70</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Omnigel', 70.00, 'images/Omnigel.jpg')">Add to Cart</button>
            
          </div>
    
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
    
            <img src="images/multivitamin syrup.jpg" alt="Multivitamin Syrup" style="width: 200px; height: 200px;">
            <h3 class="text-dark">Multivitamin Syrup</h3>
            <p class="price">RS.90</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Multivitamin Syrup', 90.00, 'images/multivitamin syrup.jpg')">Add to Cart</button>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
           <img src="images/Vicks VapoRub.jpg" alt="Vicks VapoRub"style="width: 200px; height: 200px;">
            <h3 class="text-dark">Vicks VapoRub</h3>
            <p class="price">RS.109</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Vicks VapoRub', 109.00, 'images/Vicks VapoRub.jpg')">Add to Cart</button>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
            <img src="images/Savlon cream.jpg" alt="Savlon cream"style="width: 200px; height: 200px;"> 
            <h3 class="text-dark">Savlon cream</h3>
            <p class="price">RS.50</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Savlon cream', 50.00, 'images/Savlon cream.jpg')">Add to Cart</button>
          </div>

          <div class="col-sm-6 col-lg-4 text-center item mb-4">
           
            <img src="images/metformin-850-mg.jpg" alt="Metformin-850-mg"style="width: 200px; height: 200px;">
            <h3 class="text-dark">Metformin-850-mg</h3>
            <p class="price">RS.25</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Metformin-850-mg', 25.00, 'images/metformin-850-mg.jpg')">Add to Cart</button>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
            <img src="images/ciplox-d-eye-drop.jpg" alt="ciplox-eye-drop"style="width: 260px; height: 200px;">
            <h3 class="text-dark">Ciplox-d-eye-drop</h3>
            <p class="price">RS.50</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Ciplox-d-eye-drop', 50.00, 'images/ciplox-d-eye-drop.jpg')">Add to Cart</button>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
           <img src="images/pedia-drips.jpg" alt="Medical-devices-injection"style="width: 200px; height: 200px;">
            <h3 class="text-dark">Pedia-drips</h3>
            <p class="price">RS.60</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Pedia-drips', 60.00, 'images/pedia-drips.jpg')">Add to Cart</button>
          </div>
          
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
          
           <img src="images/Clean & Clear.jpg" alt="Clean & Clear"style="width: 200px; height: 200px;">
            <h3 class="text-dark">Clean & Clear</h3>
            <p class="price">RS.95</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Clean & Clear', 95.00, 'images/Clean & Clear.jpg')">Add to Cart</button>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
            <img src="images/omee MPS syrup.jpg" alt="omee MPS syrup"style="width: 200px; height: 200px;">
            <h3 class="text-dark">omee MPS syrup</h3>
            <p class="price">RS.70</p>
            <button class="buy-now" onclick="addToCartAndNavigate('omee MPS syrup', 70.00, 'images/omee MPS syrup.jpg')">Add to Cart</button>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
           
           <img src="images/Sanitizer.jpg" alt="Sanitizer"style="width: 200px; height: 200px;">
            <h3 class="text-dark">Sanitizer</h3>
            <p class="price">RS.40</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Sanitizer', 40.00, 'images/Sanitizer.jpg')">Add to Cart</button>
          </div>
        </div>
        <div class="row mt-5">
          <div class="col-md-12 text-center">
            <div class="site-block-27">
              <ul >
                <li><a href="#" id="prev">&lt;</a></li>
                <li ><a href="shop.jsp">1</a></li>
                <li class="active"><a href="shop1.jsp">2</a></li>
                <li><a href="shop2.jsp">3</a></li>
                <li><a href="#" id="next">&gt;</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>

    
    <div class="site-section bg-secondary bg-image" style="background-image: url('images/bg_2.jpg');">
      <div class="container">
        <div class="row align-items-stretch">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('images/bg_1.jpg');">
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
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>
  <script>
  document.querySelector(".js-search-open").addEventListener("click", function (e) {
    e.preventDefault();
    var form = document.getElementById("search-form-container");
    form.style.display = (form.style.display === "none") ? "block" : "none";
  });
</script>

</body>

</html>