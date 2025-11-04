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
            width: 100px;
            height: 100px;
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
  </div>
  <header>
    <h2>Vitamins</h2>
    <p>Find medicines for vitamins & nutrition in our store.</p>
</header>

<div class="container">
   <!-- Medicine Item 1 -->
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/becosules.jpg" alt="Becosules">
  </div>
  <div class="medicine-name">Becosules</div>
  <div class="medicine-description">Helps to repair tissue, manage sore tongue</div>
  <div class="medicine-price">RS.30</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Becosules', 30.00, 'images/becosules.jpg')">Add to Cart</button>
</div>

<!-- Medicine Item 2 -->
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/vitamin c.jpg" alt="Vitamin C">
  </div>
  <div class="medicine-name">Vitamin C</div>
  <div class="medicine-description">Helps in boosting immunity, and heart health.</div>
  <div class="medicine-price">RS.15</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Vitamin C', 15.00, 'images/vitamin c.jpg')">Add to Cart</button>
</div>

<!-- Medicine Item 3 -->
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/vitamin E.jpg" alt="vitamin E">
  </div>
  <div class="medicine-name">Vitamin E</div>
  <div class="medicine-description">Nourishing hands and nails, energizing the body.</div>
  <div class="medicine-price">RS.35</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Vitamin E', 35.00, 'images/vitamin E.jpg')">Add to Cart</button>
</div>

<!-- Medicine Item 4 -->
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Gymsee.jpg" alt="Gymsee">
  </div>
  <div class="medicine-name">Gymsee</div>
  <div class="medicine-description">Treatment of calcium deficiency.</div>
  <div class="medicine-price">RS.95</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Gymsee', 95.00, 'images/Gymsee.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/cholecalciferol.jpg" alt="cholecalciferol">
  </div>
  <div class="medicine-name">Cholecalciferol Tab.</div>
  <div class="medicine-description">To treat vitamin D deficiency.</div>
  <div class="medicine-price">RS.50</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Cholecalciferol Tab.', 50.00, 'images/cholecalciferol.jpg')">Add to Cart</button>
</div>
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/cholecalciferol-capsules.jpg" alt="cholecalciferol-capsules">
  </div>
  <div class="medicine-name">Cholecalciferol Cap.</div>
  <div class="medicine-description">Treat vitamin D deficiency, bone strength</div>
  <div class="medicine-price">RS.50</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Cholecalciferol Cap.', 50.00, 'images/cholecalciferol-capsules.jpg')">Add to Cart</button>
</div>
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/calcium & vitamin D3 syrup.jpg" alt="calcium & vitamin D3 syrup">
  </div>
  <div class="medicine-name">Calcium + Vitamin D3 Syrup</div>
  <div class="medicine-description">Treat vitamin D and calcium deficiency</div>
  <div class="medicine-price">RS.80</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Calcium + Vitamin D3 Syrup', 80.00, 'images/calcium & vitamin D3 syrup.jpg')">Add to Cart</button>
</div>
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/multivitamin syrup.jpg" alt="multivitamin syrup">
  </div>
  <div class="medicine-name">Multivitamin Syrup</div>
  <div class="medicine-description">Prevention of vitamin deficiencies, fill in nutritional gaps</div>
  <div class="medicine-price">RS.90</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Multivitamin Syrup', 90.00, 'images/multivitamin syrup.jpg')">Add to Cart</button>
</div>
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/lycopene.jpg" alt="Lycopene">
  </div>
  <div class="medicine-name">Lycopene</div>
  <div class="medicine-description">Better skin moisturization, skin texture, reduce hair loss</div>
  <div class="medicine-price">RS.90</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Lycopene', 90.00, 'images/lycopene.jpg')">Add to Cart</button>
</div>
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/oxymine red cap.jpg" alt="oxymine red cap">
  </div>
  <div class="medicine-name">Oxymine Red Cap</div>
  <div class="medicine-description">Treat iron deficiency, anaemia, and folic acid deficiency</div>
  <div class="medicine-price">RS.60</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Oxymine Red Cap', 60.00, 'images/oxymine red cap.jpg')">Add to Cart</button>
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
