<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>ONLINE MEDICAL STORE &mdash;</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">


  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aos@2.3.1/dist/aos.css">
  
  <link rel="stylesheet" href="css/style.css">

  <link rel="stylesheet" href="css/categories.css">
  <style>
        body {
            font-family: Arial, sans-serif;
            background-color: white;
            margin-top: 160px; 
            padding: 0;
            animation: fadeIn 1s ease-in-out;
        }
        header {
            background-color:#42f6ea;
            color: black;
            padding: 10px;
            text-align: center;
            animation: slideDown 1s ease-out;
        }
        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }
        .medicine-card {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 15px;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            transform: scale(1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            opacity: 0;
            animation: fadeIn 1.5s forwards ease-in;
        }
        .medicine-card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .medicine-image img {
            width: 200px;
            height: 200px;
            object-fit: cover;
            border-radius: 5px;
            margin-bottom: 10px;
            transition: transform 0.3s ease;
        }
        .medicine-card:hover .medicine-image img {
            transform: scale(1.1);
        }
        .medicine-name {
            font-size: 18px;
            font-weight: bold;
            margin: 5px 0;
        }
        .medicine-description {
            color: #555;
            font-size: 14px;
            margin-bottom: 10px;
        }
        .medicine-price {
            color: black;
            font-weight: bold;
        }
        .add-to-cart {
            background-color: #42f6ea;
            color: black;
            border: none;
            padding: 5px 10px;
            border-radius: 3px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }
        .add-to-cart:hover {
          background: transparent;
          color: #51eaea;
        }
        
        /* Animations */
        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
        @keyframes slideDown {
            0% {
                transform: translateY(-20px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }
        @keyframes slideUp {
            0% {
                transform: translateY(20px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }
</style>

</head>

<body>
  <div class="site-wrap">


    <div class="site-navbar py-2">

     
      <div class="container">
        <div class="d-flex align-items-center justify-content-between">
          <div class="logo">
            <div class="site-logo">
              <a href="index.jsp" class="js-logo-clone" style="font-size: 18px;">
                <img src="icon/logo.png" height="40" width="40">&nbsp;SHOBHANAND
            </a>
            </div>
          </div>
          <div class="main-nav d-none d-lg-block">
            <nav class="site-navigation text-right text-md-center" role="navigation">
              <ul class="site-menu js-clone-nav d-none d-lg-block">
                <li><a href="index.jsp">Home</a></li>
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
  </div>
  <header>
    <h2>Cleaning</h2>
    <p>Find products for cleaning in our store.</p>
</header>

<div class="container">
    <!-- Medicine Item 1 -->
    <div class="medicine-card">
      <div class="medicine-image">
          <img src="images/lizol.jpg" alt="Lizol">
      </div>
      <div class="medicine-name">Lizol</div>
      <div class="medicine-description">To clean and disinfect floors of the home. </div>
      <div class="medicine-price">RS.60</div>
      <button class="add-to-cart" onclick="addToCartAndNavigate('Lizol', 60.00, 'images/lizol.jpg')">Add to Cart</button>
  </div>
  
  <!-- Medicine Item 2 -->
  <div class="medicine-card">
      <div class="medicine-image">
          <img src="images/harpic.jpg" alt="Harpic">
      </div>
      <div class="medicine-name">Harpic</div>
      <div class="medicine-description">To clean toilets, bathrooms, and drains. </div>
      <div class="medicine-price">RS.44</div>
      <button class="add-to-cart" onclick="addToCartAndNavigate('Harpic', 44.00, 'images/harpic.jpg')">Add to Cart</button>
  </div>
  
  <!-- Medicine Item 3 -->
  <div class="medicine-card">
      <div class="medicine-image">
          <img src="images/harpic-bathroom-cleaner.jpg" alt="Harpic-bathroom-cleaner">
      </div>
      <div class="medicine-name">Harpic-bathroom-cleaner</div>
      <div class="medicine-description">Bathroom floor cleaner</div>
      <div class="medicine-price">RS.65</div>
      <button class="add-to-cart" onclick="addToCartAndNavigate('Harpic-bathroom-cleaner', 65.00, 'images/harpic-bathroom-cleaner.jpg')">Add to Cart</button>
  </div>
  
  <!-- Medicine Item 4 -->
  <div class="medicine-card">
      <div class="medicine-image">
          <img src="images/Dettol.jpg" alt="Dettol Handwash">
      </div>
      <div class="medicine-name">Dettol Handwash</div>
      <div class="medicine-description">clean hands,remove germs.</div>
      <div class="medicine-price">RS.65</div>
      <button class="add-to-cart" onclick="addToCartAndNavigate('Dettol Handwash', 65.00, 'images/Dettol.jpg')">Add to Cart</button>
  </div>
  <div class="medicine-card">
      <div class="medicine-image">
          <img src="images/dettol liquid.jpg" alt="Dettol Liquid">
      </div>
      <div class="medicine-name">Dettol Liquid</div>
      <div class="medicine-description">wound cleansing and disinfection and antiseptic.</div>
      <div class="medicine-price">RS.80</div>
      <button class="add-to-cart" onclick="addToCartAndNavigate('Dettol Liquid', 80.00, 'images/dettol liquid.jpg')">Add to Cart</button>
  </div>
  <div class="medicine-card">
      <div class="medicine-image">
          <img src="images/Colin.jpg" alt="Colin">
      </div>
      <div class="medicine-name">Colin</div>
      <div class="medicine-description">Clean glass,mirrors,car windows.</div>
      <div class="medicine-price">RS.55</div>
      <button class="add-to-cart" onclick="addToCartAndNavigate('Colin', 55.00, 'images/Colin.jpg')">Add to Cart</button>
   </div>
   <div class="medicine-card">
    <div class="medicine-image">
        <img src="images/Sanitizer.jpg" alt="Sanitizer">
    </div>
    <div class="medicine-name">Sanitizer</div>
    <div class="medicine-description">Reduce the number of germs on hands.</div>
    <div class="medicine-price">RS.40</div>
    <button class="add-to-cart" onclick="addToCartAndNavigate('Sanitizer', 40.00, 'images/Sanitizer.jpg')">Add to Cart</button>
</div>
<div class="medicine-card">
    <div class="medicine-image">
        <img src="images/Liquid-phenyl.jpg" alt="Liquid-phenyl">
    </div>
    <div class="medicine-name">Liquid-phenyl</div>
    <div class="medicine-description">Clean floors, toilets, and other surfaces.</div>
    <div class="medicine-price">RS.60</div>
    <button class="add-to-cart" onclick="addToCartAndNavigate('Liquid-phenyl', 60.00, 'images/Liquid-phenyl.jpg')">Add to Cart</button>
</div>
<div class="medicine-card">
    <div class="medicine-image">
        <img src="images/Air freshner.jpg" alt="Air freshner">
    </div>
    <div class="medicine-name">Air freshner</div>
    <div class="medicine-description">Remove perceived unpleasant odours</div>
    <div class="medicine-price">RS.125</div>
    <button class="add-to-cart" onclick="addToCartAndNavigate('Air freshner', 125.00, 'images/Air freshner.jpg')">Add to Cart</button>
</div>
<div class="medicine-card">
    <div class="medicine-image">
        <img src="images/Comfort.jpg" alt="Comfort">
    </div>
    <div class="medicine-name">Comfort</div>
    <div class="medicine-description">Make clothes smell good, feel soft, look shiny.</div>
    <div class="medicine-price">RS.75</div>
    <button class="add-to-cart" onclick="addToCartAndNavigate('Comfort', 75.00, 'images/Comfort.jpg')">Add to Cart</button>
</div>

    <a href="cart.jsp" class="btn btn-primary">Go to Cart</a>
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
   </div>
  </div>
</footer>
<!-- Include jQuery from CDN -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Include AOS JavaScript from CDN -->
<script src="https://cdn.jsdelivr.net/npm/aos@2.3.1/dist/aos.js"></script>
<script>
  // Initialize AOS
  AOS.init();
</script>

<!-- Include your main.js script after jQuery and AOS -->
<script src="js/main.js" defer></script>
</body>
</html>
