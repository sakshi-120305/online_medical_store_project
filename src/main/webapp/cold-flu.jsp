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
    <h2>Cold Flu & Cough</h2>
    <p>Find products for cold flu & cough in our store.</p>
</header>

<div class="container">
    <!-- Medicine Item 1 -->
    <div class="medicine-card">
        <div class="medicine-image">
            <img src="images/crocin.jpg" alt="crocin">
        </div>
        <div class="medicine-name">Crocin</div>
        <div class="medicine-description">Reduce fever and treat mild to moderate pain</div>
        <div class="medicine-price">RS.25</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Crocin', 25.00, 'images/crocin.jpg')">Add to Cart</button>
    </div>
    
    <!-- Medicine Item 2 -->
    <div class="medicine-card">
        <div class="medicine-image">
            <img src="images/Cheston Cold.jpg" alt="Cheston Cold">
        </div>
        <div class="medicine-name">Cheston Cold</div>
        <div class="medicine-description">Reducing nasal congestion, promoting easier breathing</div>
        <div class="medicine-price">RS.40</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Cheston Cold', 40.00, 'images/Cheston Cold.jpg')">Add to Cart</button>
    </div>
    
    <!-- Medicine Item 3 -->
    <div class="medicine-card">
        <div class="medicine-image">
            <img src="images/Nicip Cold & Flu.jpg" alt="Nicip Cold & Flu">
        </div>
        <div class="medicine-name">Nicip Cold & Flu</div>
        <div class="medicine-description">Treat common cold, sneezing, runny nose, fever</div>
        <div class="medicine-price">RS.40</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Nicip Cold & Flu', 40.00, 'images/Nicip Cold & Flu.jpg')">Add to Cart</button>
    </div>
    
    <!-- Medicine Item 4 -->
    <div class="medicine-card">
        <div class="medicine-image">
            <img src="images/paracetamol-500.jpg" alt="Paracetamol-500">
        </div>
        <div class="medicine-name">Paracetamol-500</div>
        <div class="medicine-description">Can help with pain and fever, cold or flu symptoms</div>
        <div class="medicine-price">RS.10</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Paracetamol-500', 10.00, 'images/paracetamol-500.jpg')">Add to Cart</button>
    </div>
    
    <div class="medicine-card">
        <div class="medicine-image">
            <img src="images/rifaxiheal-550.jpg" alt="Rifaxiheal-550">
        </div>
        <div class="medicine-name">Rifaxiheal-550</div>
        <div class="medicine-description">Treat common cold, headache, and fever</div>
        <div class="medicine-price">RS.45</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Rifaxiheal-550', 450.00, 'images/rifaxiheal-550.jpg')">Add to Cart</button>
    </div>
    
    <div class="medicine-card">
        <div class="medicine-image">
            <img src="images/Vicks Action 500.jpg" alt="Vicks Action 500">
        </div>
        <div class="medicine-name">Vicks Action 500</div>
        <div class="medicine-description">Treat body ache, headache, fever, sneezing</div>
        <div class="medicine-price">RS.20</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Vicks Action 500', 20.00, 'images/Vicks Action 500.jpg')">Add to Cart</button>
    </div>
    
    <div class="medicine-card">
        <div class="medicine-image">
            <img src="images/Coldcap-Capsule.jpg" alt="Coldcap-Capsule">
        </div>
        <div class="medicine-name">Coldcap-Capsule</div>
        <div class="medicine-description">Treat headache, runny nose, cold, fever</div>
        <div class="medicine-price">RS.40</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Coldcap-Capsule', 40.00, 'images/Coldcap-Capsule.jpg')">Add to Cart</button>
    </div>
    
    <div class="medicine-card">
        <div class="medicine-image">
            <img src="images/cetirizine-tablet.jpg" alt="Cetirizine-tablet">
        </div>
        <div class="medicine-name">Cetirizine-tablet</div>
        <div class="medicine-description">Treat fever, itchy nose or throat</div>
        <div class="medicine-price">RS.10</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Cetirizine-tablet', 10.00, 'images/cetirizine-tablet.jpg')">Add to Cart</button>
    </div>
    
    <div class="medicine-card">
        <div class="medicine-image">
            <img src="images/alkof capsule.jpg" alt="Alkof capsule">
        </div>
        <div class="medicine-name">Alkof capsule</div>
        <div class="medicine-description">Treat dry cough, swelling eyes, nose</div>
        <div class="medicine-price">RS.50</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Alkof capsule', 50.00, 'images/alkof capsule.jpg')">Add to Cart</button>
    </div>
    
    <div class="medicine-card">
        <div class="medicine-image">
            <img src="images/Vicks VapoRub.jpg" alt="Vicks VapoRub">
        </div>
        <div class="medicine-name">Vicks VapoRub</div>
        <div class="medicine-description">Cough and cold relief, body ache, headache</div>
        <div class="medicine-price">RS.109</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Vicks VapoRub', 109.00, 'images/Vicks VapoRub.jpg')">Add to Cart</button>
    </div>
    
    <div class="medicine-card">
        <div class="medicine-image">
            <img src="images/vicks-babyrub.jpg" alt="vicks-babyrub.">
        </div>
        <div class="medicine-name">vicks-babyrub.</div>
        <div class="medicine-description">Relaxing a restless baby with a soothing massage</div>
        <div class="medicine-price">RS.50</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('vicks-babyrub.', 50.00, 'images/vicks-babyrub.jpg')">Add to Cart</button>
    </div>
    
    <div class="medicine-card">
        <div class="medicine-image">
            <img src="images/Alkof orange syrup.jpg" alt="Alkof orange syrup">
        </div>
        <div class="medicine-name">Alkof orange syrup</div>
        <div class="medicine-description">Treat cough with mucus, & watery eyes</div>
        <div class="medicine-price">RS.50</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Alkof orange syrup', 50.00, 'images/Alkof orange syrup.jpg')">Add to Cart</button>
    </div>
    
    <div class="medicine-card">
        <div class="medicine-image">
            <img src="images/Alkof DX syrup.jpg" alt="Alkof DX syrup">
        </div>
        <div class="medicine-name">Alkof DX syrup</div>
        <div class="medicine-description">Treat cough due to runny nose, throat irritation</div>
        <div class="medicine-price">RS.70</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Alkof DX syrup', 70.00, 'images/Alkof DX syrup.jpg')">Add to Cart</button>
    </div>
    
    <div class="medicine-card">
        <div class="medicine-image">
            <img src="images/Alkof plus syrup.jpg" alt="Alkof plus syrup">
        </div>
        <div class="medicine-name">Alkof plus syrup</div>
        <div class="medicine-description">Thins mucus in nose, makes easier to cough out</div>
        <div class="medicine-price">RS.60</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Alkof plus syrup', 60.00, 'images/Alkof plus syrup.jpg')">Add to Cart</button>
    </div>
    
    <div class="medicine-card">
        <div class="medicine-image">
            <img src="images/Ayusas cough syrup.jpg" alt="Ayusas cough syrup">
        </div>
        <div class="medicine-name">Ayusas cough syrup</div>
        <div class="medicine-description">Treat dry & wet coughs</div>
        <div class="medicine-price">RS.90</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Ayusas cough syrup', 90.00, 'images/Ayusas cough syrup.jpg')">Add to Cart</button>
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
