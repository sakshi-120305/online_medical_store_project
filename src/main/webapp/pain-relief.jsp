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
    <h2>Pain relief</h2>
    <p>Find medicines for pain relief in our store.</p>
</header>

<div class="container">
   <!-- Medicine Item 1 -->
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Aceclo.jpg" alt="Aceclo">
  </div>
  <div class="medicine-name">Aceclo</div>
  <div class="medicine-description">Reduces inflammation, pain, and swelling</div>
  <div class="medicine-price">RS.25</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Aceclo', 25.00, 'images/Aceclo.jpg')">Add to Cart</button>
</div>

<!-- Medicine Item 2 -->
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Acemiz 200 SR.jpg" alt="Acemiz 200 SR">
  </div>
  <div class="medicine-name">Acemiz 200 SR</div>
  <div class="medicine-description">Use for relief of back pain, muscle strains</div>
  <div class="medicine-price">RS.50</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Acemiz 200 SR', 50.00, 'images/Acemiz 200 SR.jpg')">Add to Cart</button>
</div>

<!-- Medicine Item 3 -->
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Reactin 50.jpg" alt="Reactin 50">
  </div>
  <div class="medicine-name">Reactin 50</div>
  <div class="medicine-description">Relieve pain associated with muscle, dental pain</div>
  <div class="medicine-price">RS.15</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Reactin 50', 15.00, 'images/Reactin 50.jpg')">Add to Cart</button>
</div>

<!-- Medicine Item 4 -->
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Etholee TH.jpg" alt="Etorlee TH">
  </div>
  <div class="medicine-name">Etorlee TH</div>
  <div class="medicine-description">Managing pain resulting from muscle spasms</div>
  <div class="medicine-price">RS.5</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Etorlee TH', 5.00, 'images/Etholee TH.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Reactin 100 SR.jpg" alt="Reactin 100 SR">
  </div>
  <div class="medicine-name">Reactin 100 SR</div>
  <div class="medicine-description">Treat swelling, stiffness, and joint pain</div>
  <div class="medicine-price">RS.30</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Reactin 100 SR', 30.00, 'images/Reactin 100 SR.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/aclocet.SP.jpg" alt="aclocet.SP">
  </div>
  <div class="medicine-name">aclocet.SP</div>
  <div class="medicine-description">Reduce pain & inflammation due to bone or soft tissue injury</div>
  <div class="medicine-price">RS.40</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('aclocet.SP', 40.00, 'images/aclocet.SP.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/thiocolchicoside-4mg.jpg.jpg" alt="thiocolchicoside-4mg">
  </div>
  <div class="medicine-name">Thiocolchicoside 4mg</div>
  <div class="medicine-description">Reduces swelling in the body, muscle stiffness</div>
  <div class="medicine-price">RS.100</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Thiocolchicoside 4mg', 100.00, 'images/thiocolchicoside-4mg.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Omnigel.jpg" alt="Omnigel">
  </div>
  <div class="medicine-name">Omnigel</div>
  <div class="medicine-description">Pain relief from acute back pain, neck pain, and joint pain</div>
  <div class="medicine-price">RS.70</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Omnigel', 70.00, 'images/Omnigel.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/volini gel.jpg" alt="volini gel">
  </div>
  <div class="medicine-name">volini gel</div>
  <div class="medicine-description">Help with muscle pain, cramps, knee pain and back pain</div>
  <div class="medicine-price">RS.70</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('volini gel', 70.00, 'images/volini gel.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Moov spray.jpg" alt="Moov spray">
  </div>
  <div class="medicine-name">Moov spray</div>
  <div class="medicine-description">Relief from muscle pain, neck & backache, inflammation</div>
  <div class="medicine-price">RS.100</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Moov spray', 100.00, 'images/Moov spray.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Diclo Spray.jpg" alt="Diclo Spray">
  </div>
  <div class="medicine-name">Diclo Spray</div>
  <div class="medicine-description">Reduce pain & inflammation in muscle pain, back pain</div>
  <div class="medicine-price">RS.80</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Diclo Spray', 80.00, 'images/Diclo Spray.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/iodex Balm.jpg" alt="iodex Balm">
  </div>
  <div class="medicine-name">iodex Balm</div>
  <div class="medicine-description">Pain relief, inflammation reduction, swelling relief, headache relief</div>
  <div class="medicine-price">RS.96</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('iodex Balm', 96.00, 'images/iodex Balm.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Amrutanjan Balm.jpg" alt="Amrutanjan Balm">
  </div>
  <div class="medicine-name">Amrutanjan Balm</div>
  <div class="medicine-description">Relief from headaches, nasal congestion, cough & cold, body pain</div>
  <div class="medicine-price">RS.45</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Amrutanjan Balm', 45.00, 'images/Amrutanjan Balm.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Zandu Balm.jpg" alt="Zandu Balm">
  </div>
  <div class="medicine-name">Zandu Balm</div>
  <div class="medicine-description">Treat headaches, body aches, cold, and nasal congestion</div>
  <div class="medicine-price">RS.45</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Zandu Balm', 45.00, 'images/Zandu Balm.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Ortho Oil.jpg" alt="Ortho Oil">
  </div>
  <div class="medicine-name">Ortho Oil</div>
  <div class="medicine-description">Relief from knee pain, back pain, elbow pain, shoulder pain, joint pain</div>
  <div class="medicine-price">RS.150</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Ortho Oil', 150.00, 'images/Ortho Oil.jpg')">Add to Cart</button>
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
