<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
if (session == null) {
    throw new Exception("Session not found. Please log in.");
}
%>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>ONLINE MEDICAL STORE &mdash;</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">


  

 
  <style>
  
  
 /* User Profile Container */
.user-profile {
    display: flex;
    flex-direction: column; /* Stack elements vertically */
    align-items: flex-end;
    position: absolute;
   
    top: 10px;
    right: 20px;
    font-size: 16px;
}

/* Welcome Text */
.welcome-text {
    font-weight: bold;
    color: #333;
    margin-top: 5px;
    margin-bottom: 8px;
}

/* Profile & Logout Buttons */
.profile-btn, .logout-btn {
      background-color: #42f6ea;
       color: black;
    padding: 10px 18px;
    text-decoration: none;
    font-weight: bold;
    border-radius: 25px;
    transition: background 0.3s ease;
    display: inline-block;
    text-align: center;
    border: none;
    cursor: pointer;
    margin-top: 5px;
}

/* Hover Effect (Same as "Shop Now" Button) */
.profile-btn:hover, .logout-btn:hover {
    background: transparent;
          color: #51eaea;
}

/* Profile Dropdown */
.profile-dropdown {
    position: relative;
    
}

/* Profile Details Dropdown */
#profileDetails {
    display: none;
    width: 250px;
    background-color: #ffffff;
    border-radius: 18px;
    padding: 15px;
    border: 1px solid #ddd;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    position: absolute;
    top: 40px;
    right: 0;
    z-index: 1000;
    transition: opacity 0.3s ease, transform 0.3s ease;
    opacity: 0;
    transform: translateY(-10px);
    text-align: left;
}

/* Show Dropdown */
.profile-dropdown.active #profileDetails {
    display: block;
    opacity: 1;
    transform: translateY(0);
}

/* Profile Details Styling */
#profileDetails h3 {
    margin-top: 0;
    font-size: 18px;
    color: #333;
}

#profileDetails p {
    margin: 8px 0;
    color: #555;
    font-size: 14px;
}

#profileDetails a {
    display: block;
    margin-top: 12px;
    text-align: center;
}
 
  
  </style>

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
                <li class="active"><a href="index.jsp">Home</a></li>
                <li><a href="shop.jsp">Store</a></li>
                <li><a href="categories.jsp">Categories</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <li><a href="login.jsp">Login</a></li>
              </ul>
            </nav>
 <%@ page import="model.User" %>
<%
    // Retrieve user session
    User user = (User) session.getAttribute("user");
    
    if (user == null) {
        response.sendRedirect("login.jsp?error=Session expired, please log in again.");
        return;
    }

    String name = user.getName();
    String email = user.getEmail();
    String role = user.getRole().toLowerCase();
%>

<!-- User Profile Section -->
<div class="user-profile">
    <span class="welcome-text">Welcome, <%= name %></span>

    <!-- Profile & Logout Buttons -->
    <div class="profile-dropdown" onclick="toggleProfile()">
        <button class="profile-btn">👤 Profile</button>
        <div id="profileDetails">
            <h3>Your Profile</h3>
            <p><strong>Name:</strong> <%= name %></p>
            <p><strong>Email:</strong> <%= email %></p>
            <p><strong>Role:</strong> <%= role %></p>
            <a href="LogoutServlet" class="logout-btn">Logout</a>
        </div>
    </div>
</div>

<script>
function toggleProfile() {
    let dropdown = document.querySelector(".profile-dropdown");
    dropdown.classList.toggle("active");
}
</script>
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

    <div class="site-blocks-cover" style="background-image: url('images/welcome.jpg');">
      <div class="container">
        <div class="row">
          <div class="col-lg-7 mx-auto order-lg-2 align-self-center">
            <div class="site-block-cover-content text-center">
              <h2 class="sub-title">Effective Medicine, New Medicine Everyday</h2>
              <h1>Welcome To Shobhanand Generic Medicine Store</h1>
              <p>
                <a href="shop.jsp" class="btn btn-primary px-5 py-3">Shop Now</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row align-items-stretch section-overlap">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap bg-primary h-100">
              <a href="#" class="h-100">
                <h5 >"Your Health, Our Priority"</h5>
                <p>
                  <strong>One-stop solution for all your medical needs. Affordable prices, certified products, and hassle-free delivery.</strong>
                </p>
              </a>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap h-100">
              <a href="#" class="h-100">
                <h5>"Your Trusted Online Pharmacy"</h5>
                <p>
                  <strong>Shop medicines, health essentials, and wellness products from the comfort of your home. Fast delivery, genuine products, and expert care!</strong>
                </p>
              </a>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap bg-warning h-100">
              <a href="#" class="h-100">
                <h5>"Fast and reliable delivery"</h5>
                <p>
                  <strong>Order your medicines and health essentials with just a click. Experience hassle-free, same-day delivery you can trust.</strong>
                </p>
              </a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="title-section text-center col-12">
            <h2 class="text-uppercase">Popular Products</h2>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
            <a href="amlodipine.jsp"> <img src="images/amlodipine-5mg-tablet.jpg" alt="Image" style="width: 300px; height: 300px;"></a>
            <h3 class="text-dark"><a href="amlodipine.jsp">Amlodipine-5mg</a></h3>
            <p class="price">RS.10</p>
            <a href="amlodipine.jsp" class="buy-now">Buy Now</a>
            
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
            <a href="Metformin-250mg.jsp"> <img src="images/metformin-250mg.jpg" alt="Image" style="width: 300px; height: 300px;"></a>
            <h3 class="text-dark"><a href="Metformin-250mg.jsp">Metformin-250mg</a></h3>
            <p class="price">RS.10</p>
            <a href="Metformin-250mg.jsp" class="buy-now">Buy Now</a>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
            <a href="Alkof orange syrup.jsp"> <img src="images/Alkof orange syrup.jpg" alt="Image" style="width: 300px; height: 300px;"></a>
            <h3 class="text-dark"><a href="Alkof orange syrup.jsp">Alkof orange syrup</a></h3>
            <p class="price">RS.50</p>
            <a href="Alkof orange syrup.jsp" class="buy-now">Buy Now</a>
          </div>

          <div class="col-sm-6 col-lg-4 text-center item mb-4">

            <a href="Omee Capsule.jsp"> <img src="images/Omee-Capsule.jpg" alt="Image" style="width: 300px; height: 300px;" ></a>
            <h3 class="text-dark"><a href="Omee Capsule.jsp">Omee Capsule</a></h3>
            <p class="price"> RS.40</p>
           <a href="Omee Capsule.jsp" class="buy-now">Buy Now</a>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
            <a href="Thyroxine sodium 50 mcg.jsp"> <img src="images/Thyroxine Sodium 50 Mcg.jpg" alt="Image" style="width: 300px; height: 300px;"> </a>
            <h3 class="text-dark"><a href="Thyroxine sodium 50 mcg.jsp">Thyroxine sodium 50 mcg</a></h3>
            <p class="price">RS.50</p>
            <a href="Thyroxine sodium 50 mcg.jsp" class="buy-now">Buy Now</a>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4">
            <a href="Olme-H-20.jsp">  <img src="images/Olme-H-20.jpg" alt="Image" style="width: 300px; height: 300px;"></a>
            <h3 class="text-dark"><a href="Olme-H-20.jsp">Olme-H-20</a></h3>
            <p class="price">RS.60</p>
            <a href="Olme-H-20.jsp" class="buy-now">Buy Now</a>
          </div>
        </div>
        <div class="row mt-5">
          <div class="col-12 text-center">
            <a href="categories.jsp" class="btn btn-primary px-4 py-3">View All Products</a>
          </div>
        </div>
      </div>
    </div>

    
    <div class="site-section bg-light">
      <div class="container">
        <div class="row">
          <div class="title-section text-center col-12">
            <h2 class="text-uppercase">New Products</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 block-3 products-wrap">
            <div class="nonloop-block-3 owl-carousel">

              <div class="text-center item mb-4">
                <a href="moxi D eyedrop.jsp">  <img src="images/moxi D eyedrop.jpg" alt="Image" style="width: 300px; height: 300px;"></a>
                <h3 class="text-dark"><a href="moxi D eyedrop.jsp">Moxi D eyedrop</a></h3>
                <p class="price">RS.50</p>
               <a href="moxi D eyedrop.jsp" class="buy-now">Buy Now</a>
              </div>

              <div class="text-center item mb-4">
                <a href="Digital thermometer.jsp"> <img src="images/Digital thermometer.jpg" alt="Image" style="width: 300px; height: 300px;"></a>
                <h3 class="text-dark"><a href="Digital thermometer.jsp">Digital thermometer</a></h3>
                <p class="price">RS.50</p>
                <a href="Digital thermometer.jsp" class="buy-now">Buy Now</a>
              </div>

              <div class="text-center item mb-4">
                <a href="vitamin E Capsule.jsp"> <img src="images/vitamin E.jpg" alt="Image" style="width: 300px; height: 300px;"></a>
                <h3 class="text-dark"><a href="vitamin E Capsule.jsp">vitamin E Capsule</a></h3>
                <p class="price">RS.35</p>
                <a href="vitamin E Capsule.jsp"  class="buy-now">Buy Now</a>
                
              </div>

              <div class="text-center item mb-4">
                <a href="vicks-babyrub.jsp"> <img src="images/vicks-babyrub.jpg" alt="Image" style="width: 300px; height: 300px;"></a>
                <h3 class="text-dark"><a href="vicks-babyrub.jsp">vicks-babyrub</a></h3>
                <p class="price">RS.50</p>
               <a href="vicks-babyrub.jsp" class="buy-now">Buy Now</a>
              </div>
              <div class="text-center item mb-4">
                <a href="Nivea Bodylotion.jsp"> <img src="images/Nivia Bodylotion.jpg" alt="Image" style="width: 300px; height: 300px;"></a>
                <h3 class="text-dark"><a href="Nivea Bodylotion.jsp">Nivea Bodylotion</a></h3>
                <p class="price">RS.85</p>
                <a href="Nivea Bodylotion.jsp" class="buy-now">Buy Now</a>
              </div>
              <div class="text-center item mb-4">
                <a href="Ayusas.jsp"> <img src="images/Ayusas cough syrup.jpg" alt="Image" style="width: 300px; height: 300px;"></a>
                <h3 class="text-dark"><a href="Ayusas.jsp">Ayusas cough syrup</a></h3>
                <p class="price">RS.90</p>
                <a href="Ayusas.jsp" class="buy-now">Buy Now</a>
              </div>
              <div class="text-center item mb-4">
                <a href="N95.jsp"> <img src="images/N95 mask.jpg" alt="Image" style="width: 300px; height: 300px;"></a>
                <h3 class="text-dark"><a href="N95.jsp">N95 mask</a></h3>
                <p class="price">RS.20</p>
               <a href="N95.jsp" class="buy-now">Buy Now</a>
               
              </div>
              <div class="text-center item mb-4">
                <a href="Dettol liquid.jsp"> <img src="images/dettol liquid.jpg" alt="Image" style="width: 300px; height: 300px;"></a>
                <h3 class="text-dark"><a href="Dettol liquid.jsp">Dettol liquid</a></h3>
                <p class="price">RS.80</p>
                <a href="Dettol liquid.jsp" class="buy-now">Buy Now</a>
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