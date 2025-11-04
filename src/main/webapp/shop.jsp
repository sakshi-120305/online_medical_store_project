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
            
            <img src="images/Levotiroxina.jpg" alt="Levotiroxina" style="width: 200px; height: 200px;">
            <h3 class="text-dark">Levotiroxina</h3>
            <p class="price">RS.50 </p>
            <button class="buy-now" onclick="addToCartAndNavigate('Levotiroxina', 50.00, 'images/Levotiroxina.jpg')">Add to Cart</button>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
            <img src="images/atenolol-25.jpg" alt="atenolol-25" style="width: 200px; height: 200px;"> 
            <h3 class="text-dark">Atenolol-25</h3>
            <p class="price">RS.10</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Atenolol-25', 10.00, 'images/atenolol-25.jpg')">Add to Cart</button>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
             <img src="images/volini gel.jpg" alt="volini gel" style="width: 200px; height: 200px;">
            <h3 class="text-dark">volini gel</h3>
            <p class="price">RS.70</p>
            <button class="buy-now" onclick="addToCartAndNavigate('volini gel', 70.00, 'images/volini gel.jpg')">Add to Cart</button>
            
          </div>
    
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
    
            <img src="images/vitamin c.jpg" alt="vitamin c" style="width: 200px; height: 200px;">
            <h3 class="text-dark">vitamin c</h3>
            <p class="price">RS.15</p>
            <button class="buy-now" onclick="addToCartAndNavigate('vitamin c', 15.00, 'images/vitamin c.jpg')">Add to Cart</button>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
           <img src="images/paracetamol-500.jpg" alt="paracetamol-500"style="width: 200px; height: 200px;">
            <h3 class="text-dark">paracetamol-500</h3>
            <p class="price">RS.10</p>
            <button class="buy-now" onclick="addToCartAndNavigate('paracetamol-500', 10.00, 'images/paracetamol-500.jpg')">Add to Cart</button>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
            
            <img src="images/cipladine-cream,jpg.jpg" alt="cipladine-cream,jpg"style="width: 200px; height: 200px;">            <h3 class="text-dark">Cipladine Cream</h3>
            <p class="price">RS.30</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Cipladine Cream', 30.00, 'images/cipladine-cream,jpg.jpg')">Add to Cart</button>
          </div>

          <div class="col-sm-6 col-lg-4 text-center item mb-4">
           
            <img src="images/Reepag-1.jpg" alt="Reepag-1"style="width: 200px; height: 200px;">
            <h3 class="text-dark">Reepag-1</h3>
            <p class="price">RS.70</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Reepag-1', 70.00, 'images/Reepag-1.jpg')">Add to Cart</button>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
            <img src="images/ciplox-eye-drop.jpg" alt="ciplox-eye-drop"style="width: 200px; height: 200px;">
            <h3 class="text-dark">Ciplox-eye-drop</h3>
            <p class="price">RS.40</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Ciplox-eye-drop', 40.00, 'images/ciplox-eye-drop.jpg')">Add to Cart</button>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
           <img src="images/medical-devices-injection.jpg" alt="Medical-devices-injection"style="width: 200px; height: 200px;">
            <h3 class="text-dark">Medical-devices-injection</h3>
            <p class="price">RS.10</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Medical-devices-injection', 10.00, 'images/medical-devices-injection.jpg')">Add to Cart</button>
          </div>
          
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
          
           <img src="images/Boroplus.jpg" alt="Boroplus"style="width: 200px; height: 200px;">
            <h3 class="text-dark">Boroplus</h3>
            <p class="price">RS.50</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Boroplus', 50.00, 'images/Boroplus.jpg')">Add to Cart</button>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
            <img src="images/esmo 20.jpg" alt="esmo 20"style="width: 200px; height: 200px;">
            <h3 class="text-dark">Esmo 20</h3>
            <p class="price">RS.22</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Esmo 20', 22.00, 'images/esmo 20.jpg')">Add to Cart</button>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
           
           <img src="images/Dettol.jpg" alt="Dettol"style="width: 200px; height: 200px;">
            <h3 class="text-dark">Dettol</h3>
            <p class="price">RS.60</p>
            <button class="buy-now" onclick="addToCartAndNavigate('Dettol', 60.00, 'images/Dettol.jpg')">Add to Cart</button>
          </div>
        </div>
        <div class="row mt-5">
          <div class="col-md-12 text-center">
            <div class="site-block-27">
              <ul >
                <li><a href="#" id="prev">&lt;</a></li>
                <li class="active"><a href="shop.jsp">1</a></li>
                <li><a href="shop1.jsp">2</a></li>
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