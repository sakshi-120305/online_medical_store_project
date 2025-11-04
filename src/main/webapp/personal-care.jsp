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
    <h2>Personal care</h2>
    <p>Find products for personal care in our store.</p>
</header>

<div class="container">
   <!-- Medicine Item 1 -->
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Vasline.jpg" alt="Vasline">
  </div>
  <div class="medicine-name">Vasline</div>
  <div class="medicine-description">Vasline petroleum jelly 20 g</div>
  <div class="medicine-price">RS.10</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Vasline', 10.00, 'images/Vasline.jpg')">Add to Cart</button>
</div>

<!-- Medicine Item 2 -->
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Nivia Bodylotion.jpg" alt="Nivia Bodylotion">
  </div>
  <div class="medicine-name">Nivea Body lotion</div>
  <div class="medicine-description">Nivea body milk 50 ml</div>
  <div class="medicine-price">RS.49</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Nivea Body lotion', 49.00, 'images/Nivia Bodylotion.jpg')">Add to Cart</button>
</div>

<!-- Medicine Item 3 -->
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Nivia Lipbalm.jpg" alt="Nivia Lipbalm">
  </div>
  <div class="medicine-name">Nivea Lip balm</div>
  <div class="medicine-description">4.8 g lipbalm in stick</div>
  <div class="medicine-price">RS.176</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Nivea Lip balm', 176.00, 'images/Nivia Lipbalm.jpg')">Add to Cart</button>
</div>

<!-- Medicine Item 4 -->
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Nivia Rollon.jpg" alt="Nivia Rollon">
  </div>
  <div class="medicine-name">Nivea Rollon</div>
  <div class="medicine-description">50 ml Rollon in Bottle</div>
  <div class="medicine-price">RS.161</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Nivea Rollon', 161.00, 'images/Nivia Rollon.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Clean & Clear.jpg" alt="Clean & Clear">
  </div>
  <div class="medicine-name">Clean & Clear</div>
  <div class="medicine-description">50 ml Facewash in Bottle</div>
  <div class="medicine-price">RS.95</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Clean & Clear', 95.00, 'images/Clean & Clear.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Himalaya Facewash.jpg" alt="Himalaya Facewash">
  </div>
  <div class="medicine-name">Himalaya Facewash</div>
  <div class="medicine-description">100 ml Facewash in Tube</div>
  <div class="medicine-price">RS.149</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Himalaya Facewash', 149.00, 'images/Himalaya Facewash.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Alovera Gel.jpg" alt="Alovera Gel">
  </div>
  <div class="medicine-name">Alovera Gel</div>
  <div class="medicine-description">100 ml Gel in Jar</div>
  <div class="medicine-price">RS.65</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Alovera Gel', 65.00, 'images/Alovera Gel.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/purifying-neem-pack.jpg" alt="purifying-neem-pack">
  </div>
  <div class="medicine-name">Neem Facepack</div>
  <div class="medicine-description">100 ml Facepack in Tube</div>
  <div class="medicine-price">RS.85</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Neem Facepack', 85.00, 'images/purifying-neem-pack.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Scrub.jpg" alt="Scrub">
  </div>
  <div class="medicine-name">Everyouth Scrub</div>
  <div class="medicine-description">8 gm scrub in sachet</div>
  <div class="medicine-price">RS.15</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Everyouth Scrub', 15.00, 'images/Scrub.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Joy Bodylotion.jpg" alt="Joy Bodylotion">
  </div>
  <div class="medicine-name">Joy Body lotion</div>
  <div class="medicine-description">100 ml Body lotion in Bottle</div>
  <div class="medicine-price">RS.92</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Joy Body lotion', 92.00, 'images/Joy Bodylotion.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Boroplus.jpg" alt="Boroplus">
  </div>
  <div class="medicine-name">Boroplus</div>
  <div class="medicine-description">80 ml cream in tube</div>
  <div class="medicine-price">RS.123</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Boroplus', 123.00, 'images/Boroplus.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/AcneStar.jpg" alt="AcneStar">
  </div>
  <div class="medicine-name">AcneStar</div>
  <div class="medicine-description">50 ml Facewash in tube</div>
  <div class="medicine-price">RS.150</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('AcneStar', 150.00, 'images/AcneStar.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Skinshine.jpg" alt="Skinshine">
  </div>
  <div class="medicine-name">Skinshine</div>
  <div class="medicine-description">30 g cream in tube</div>
  <div class="medicine-price">RS.265</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Skinshine', 265.00, 'images/Skinshine.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Skinshine Soap.jpg" alt="Skinshine Soap">
  </div>
  <div class="medicine-name">Skinshine Soap</div>
  <div class="medicine-description">75 g soap in box</div>
  <div class="medicine-price">RS.85</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Skinshine Soap', 85.00, 'images/Skinshine Soap.jpg')">Add to Cart</button>
</div>

<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Veet.jpg" alt="Veet">
  </div>
  <div class="medicine-name">Veet</div>
  <div class="medicine-description">50 g cream in tube</div>
  <div class="medicine-price">RS.159</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Veet', 159.00, 'images/Veet.jpg')">Add to Cart</button>
</div>
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Garnier facewash.jpg" alt="Garnier facewash">
  </div>
  <div class="medicine-name">Garnier facewash</div>
  <div class="medicine-description">100 g Facewash in tube</div>
  <div class="medicine-price">RS.235</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Garnier facewash', 235.00, 'images/Garnier facewash.jpg')">Add to Cart</button>
</div>
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Mens shaving cream.jpg" alt="Mens shaving cream">
  </div>
  <div class="medicine-name">Shaving cream</div>
  <div class="medicine-description">50 g cream in Bottle</div>
  <div class="medicine-price">RS.90</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Shaving cream', 90.00, 'images/Mens shaving cream.jpg')">Add to Cart</button>
</div>
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Keshking Hair oil.jpg" alt="Keshking Hair oil">
  </div>
  <div class="medicine-name">Keshking Hair oil</div>
  <div class="medicine-description">300 ml Hair oil in Bottle</div>
  <div class="medicine-price">RS.175</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Keshking Hair oil', 175.00, 'images/Keshking Hair oil.jpg')">Add to Cart</button>
</div>
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Indulekha.jpg" alt="Indulekha">
  </div>
  <div class="medicine-name">Indulekha</div>
  <div class="medicine-description">300 ml Hair oil in Bottle</div>
  <div class="medicine-price">RS.365</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Indulekha', 365.00, 'images/Indulekha.jpg')">Add to Cart</button>
</div>
<div class="medicine-card">
  <div class="medicine-image">
      <img src="images/Tissue.jpg.webp" alt="Tissue">
  </div>
  <div class="medicine-name">Tissue Paper</div>
  <div class="medicine-description">12 Tissues in one pack</div>
  <div class="medicine-price">RS.55</div>
  <button class="add-to-cart" onclick="addToCartAndNavigate('Tissue Paper', 55.00, 'images/Tissue.jpg.webp')">Add to Cart</button>
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
