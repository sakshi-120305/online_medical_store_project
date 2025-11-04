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
            width: 200x;
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
    <h2>Blood Pressure</h2>
    <p>Find medicines for blood pressure in our store.</p>
</header>

<div class="container">
  <!-- Medicine Item 1 -->
  <div class="medicine-card">
    <a href="shop-single.jsp">
      <div class="medicine-image">
        <img src="images/amlodipine-5mg-tablet.jpg" alt="amlodipine-5mg">
      </div>
    </a>
    <div class="medicine-name">Amlodipine-5mg</div>
    <div class="medicine-description">Reduce blood pressure and improve blood flow.</div>
    <div class="medicine-price">RS.10</div>
    <button class="add-to-cart" onclick="addToCartAndNavigate('Amlodipine-5mg', 10.00, 'images/amlodipine-5mg-tablet.jpg')">Add to Cart</button>
  </div>

  <!-- Medicine Item 2 -->
  <div class="medicine-card">
    <a href="shop-single.jsp">
      <div class="medicine-image">
        <img src="images/amlodipine-2.5mg.jpg" alt="amlodipine-2.5mg">
      </div>
    </a>
    <div class="medicine-name">Amlodipine-2.5mg</div>
    <div class="medicine-description">Manage hypertension and chest pain.</div>
    <div class="medicine-price">RS.10</div>
    <button class="add-to-cart" onclick="addToCartAndNavigate('Amlodipine-2.5mg', 10.00, 'images/amlodipine-2.5mg.jpg')">Add to Cart</button>
  </div>

  <!-- Medicine Item 3 -->
  <div class="medicine-card">
    <a href="shop-single.jsp">
      <div class="medicine-image">
        <img src="images/amlodipine-5mg-atenolol-50.jpg" alt="amlodipine-5mg-atenolol-50">
      </div>
    </a>
    <div class="medicine-name">Amlodipine+Atenolol</div>
    <div class="medicine-description">Lower BP and heart rate, and alleviate chest pain.</div>
    <div class="medicine-price">RS.15</div>
    <button class="add-to-cart" onclick="addToCartAndNavigate('Amlodipine+Atenolol', 15.00, 'images/amlodipine-5mg-atenolol-50.jpg')">Add to Cart</button>
  </div>

  <!-- Medicine Item 4 -->
  <div class="medicine-card">
    <a href="shop-single.jsp">
      <div class="medicine-image">
        <img src="images/atenolol-25.jpg" alt="atenolol-25">
      </div>
    </a>
    <div class="medicine-name">Atenolol-25mg</div>
    <div class="medicine-description">Control irregular heart rhythms slowing heart rate.</div>
    <div class="medicine-price">RS.10</div>
    <button class="add-to-cart" onclick="addToCartAndNavigate('Atenolol-25mg', 10.00, 'images/atenolol-25.jpg')">Add to Cart</button>
  </div>

  <!-- Medicine Item 5 -->
  <div class="medicine-card">
    <a href="shop-single.jsp">
      <div class="medicine-image">
        <img src="images/Atenolol-50.jpg" alt="Atenolol-50mg">
      </div>
    </a>
    <div class="medicine-name">Atenolol-50mg</div>
    <div class="medicine-description">Reduce force of heart muscle contractions.</div>
    <div class="medicine-price">RS.15</div>
    <button class="add-to-cart" onclick="addToCartAndNavigate('Atenolol-50mg', 15.00, 'images/Atenolol-50.jpg')">Add to Cart</button>
</div>
    <!-- Medicine Item 1 -->

    <div class="medicine-card">
      <a href="shop-single.jsp"> <div class="medicine-image">
            <img src="images/telmisartan-20-mg.jpg" alt="telmisartan-20-mg">
        </div></a>
        <div class="medicine-name">Telmisartan-20</div>
        <div class="medicine-description">Treat kidney damage risk of heart attack,stroke</div>
        <div class="medicine-price">RS.16</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Telmisartan-20', 16.00, 'images/telmisartan-20-mg.jpg')">Add to Cart</button>
    </div>
    <div class="medicine-card">
      <a href="shop-single.jsp"> <div class="medicine-image">
            <img src="images/telmisartan-40-mg.jpg" alt="telmisartan-40">
        </div></a>
        <div class="medicine-name">Telmisartan-40</div>
        <div class="medicine-description">Reduce the risk of heart disease,kidney damage.</div>
        <div class="medicine-price">RS.25</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Telmisartan-40', 25.00, 'images/telmisartan-40-mg.jpg')">Add to Cart</button>
    </div>
    <div class="medicine-card">
      <a href="shop-single.jsp"> <div class="medicine-image">
            <img src="images/telmaH 40_12.5.jpg" alt="telmaH 40_12.5">
        </div></a>
        <div class="medicine-name">TelmaH 40/12.5</div>
        <div class="medicine-description">Manage fluid retention and reduce cardiovascular risk.</div>
        <div class="medicine-price">RS.30</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('TelmaH 40/12.5', 30.00, 'images/telmaH 40_12.5.jpg')">Add to Cart</button>
    </div>
    <div class="medicine-card">
      <a href="shop-single.jsp"> <div class="medicine-image">
            <img src="images/telma-am-40-5.jpg" alt="telma-am-40-5">
        </div></a>
        <div class="medicine-name">Telma-AM-40/5</div>
        <div class="medicine-description">Treat high BP,relax & widen the blood vessels.</div>
        <div class="medicine-price">RS.35</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Telma-AM-40/5', 35.00, 'images/telma-am-40-5.jpg')">Add to Cart</button>
    </div>
    <div class="medicine-card">
      <a href="shop-single.jsp"> <div class="medicine-image">
            <img src="images/telmisartan 40+cilnidipine10.jpg" alt="telmisartan 40+cilnidipine10">
        </div></a>
        <div class="medicine-name">Telmisartan+Cilnidipine</div>
        <div class="medicine-description">Relax blood vessels and lower blood pressure.</div>
        <div class="medicine-price">RS.45</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Telmisartan+Cilnidipine', 45.00, 'images/telmisartan 40+cilnidipine10.jpg')">Add to Cart</button>
    </div>
    <div class="medicine-card">
      <a href="shop-single.jsp"> <div class="medicine-image">
            <img src="images/telma CT 40-12.5.jpg" alt="telma CT 40/12.5">
        </div></a>
        <div class="medicine-name">Telma CT 40/12.5</div>
        <div class="medicine-description">Eliminate excess sodium & water relax vessels</div>
        <div class="medicine-price">RS.40</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Telma CT 40/12.5', 40.00, 'images/telma CT 40-12.5.jpg')">Add to Cart</button>
    </div>
    <div class="medicine-card">
      <a href="shop-single.jsp"> <div class="medicine-image">
            <img src="images/Telma-CT-40-6.25.jpg" alt="Telma-CT-40/6.25">
        </div></a>
        <div class="medicine-name">Telma-CT-40/6.25</div>
        <div class="medicine-description">Reduces fluid retention and decreases blood volume.</div>
        <div class="medicine-price">RS.30</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Telma-CT-40/6.25', 30.00, 'images/Telma-CT-40-6.25.jpg')">Add to Cart</button>
    </div>
    <div class="medicine-card">
      <a href="shop-single.jsp"> <div class="medicine-image">
            <img src="images/Olmesaran20.jpg" alt="Olmesaran20">
        </div></a>
        <div class="medicine-name">Olmesartan20</div>
        <div class="medicine-description">Reducing heart stroke,and kidney problems.</div>
        <div class="medicine-price">RS.45</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Olmesartan20', 45.00, 'images/Olmesaran20.jpg')">Add to Cart</button>
    </div>
    <div class="medicine-card">
      <a href="shop-single.jsp"> <div class="medicine-image">
            <img src="images/Olmesaran40.jpg" alt="olmesartan40">
        </div></a>
        <div class="medicine-name">Olmesartan40</div>
        <div class="medicine-description">Reduces hypertension kidney disease.</div>
        <div class="medicine-price">RS.60</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Olmesartan40', 60.00, 'images/Olmesaran40.jpg')">Add to Cart</button>
    </div>
    <div class="medicine-card">
      <a href="shop-single.jsp"> <div class="medicine-image">
            <img src="images/Olmetrol-AM-40-5.jpg" alt="Olmetrol-AM-40/5">
        </div></a>
        <div class="medicine-name">Olmetrol-AM-40/5</div>
        <div class="medicine-description">Relax and widen blood vessels lowering BP.</div>
        <div class="medicine-price">RS.65</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Olmetrol-AM-40/5', 65.00, 'images/Olmetrol-AM-40-5.jpg')">Add to Cart</button>
    </div>
    <div class="medicine-card">
      <a href="shop-single.jsp"> <div class="medicine-image">
            <img src="images/Olme-H-20.jpg" alt="Olme-H-20">
        </div></a>
        <div class="medicine-name">Olme-H-20</div>
        <div class="medicine-description">Reduce BP risk of heart attack & kidney problems.</div>
        <div class="medicine-price">RS.70</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Olme-H-20', 70.00, 'images/Olme-H-20.jpg')">Add to Cart</button>
    </div>
    <div class="medicine-card">
      <a href="shop-single.jsp"> <div class="medicine-image">
            <img src="images/Meto AM-50-5.jpg" alt="Meto AM-50/5">
        </div></a>
        <div class="medicine-name">Meto AM-50/5</div>
        <div class="medicine-description">improve blood flow reduces force of heart contractions</div>
        <div class="medicine-price">RS.30</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Meto AM-50/5', 30.00, 'images/Meto AM-50-5.jpg')">Add to Cart</button> 
    </div>
    <div class="medicine-card">
      <a href="shop-single.jsp"> <div class="medicine-image">
            <img src="images/metoprolol50.jpg" alt="Metoprolol50">
        </div></a>
        <div class="medicine-name">Metoprolol50</div>
        <div class="medicine-description">control hypertension,heart attacks,and arrhythmias.</div>
        <div class="medicine-price">RS.25</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Metoprolol50', 25.00, 'images/metoprolol50.jpg')">Add to Cart</button>
    </div>
    <div class="medicine-card">
      <a href="shop-single.jsp"> <div class="medicine-image">
            <img src="images/Olidax-AM-20.jpg" alt="Olidax-AM-20">
        </div></a>
        <div class="medicine-name">Olidax-AM-20</div>
        <div class="medicine-description">Reduce workload on the heart improving blood flow</div>
        <div class="medicine-price">RS.70</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Olidax-AM-20', 70.00, 'images/Olidax-AM-20.jpg')">Add to Cart</button>
    </div>
    <div class="medicine-card">
      <a href="shop-single.jsp"> <div class="medicine-image">
            <img src="images/hydrochlorothiazide12-5mg.jpg" alt="hydrochlorothiazide12-5mg">
        </div></a>
        <div class="medicine-name">Hychlorzide12.5</div>
        <div class="medicine-description">Helps eliminate excess salt and water,lowers BP</div>
        <div class="medicine-price">RS.10</div>
        <button class="add-to-cart" onclick="addToCartAndNavigate('Hychlorzide12.5', 10.00, 'images/hydrochlorothiazide12-5mg.jpg')">Add to Cart</button>
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
