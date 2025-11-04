<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>ONLINE MEDICAL STORE &mdash;</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
  
 <link rel="stylesheet" href="css/categories.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aos@2.3.1/dist/aos.css">
 

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
              <a href="index.jsp" class="js-logo-clone" style="font-size: 20px;">
                <img src="icon/logo.png" height="40" width="40">&nbsp;SHOBHANAND
            </a>
            </div>
          </div>
          <div class="main-nav d-none d-lg-block">
            <nav class="site-navigation text-right text-md-center" role="navigation">
              <ul class="site-menu js-clone-nav d-none d-lg-block">
                <li ><a href="index.jsp">Home</a></li>
                <li><a href="shop.jsp">Store</a></li>
                <li class="active"><a href="categories.jsp">Categories</a></li>
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
  </div>
  <div class="bg-light py-3">
    <div class="container" style="margin-top:150px">
      <div class="row">
        <div class="col-md-12 mb-0"><a href="index.jsp">Home</a> <span class="mx-2 mb-0">/</span>
           <strong class="text-black">Categories</strong><h2>Product Categories</h2></div>
       
      </div>
    </div>
  </div>
    <main>
        
        <div class="categories">
            <div class="category">
                <a href="Thyroid.jsp">
                 <img src="images/thyroid.jpg" alt="Thyroid">
                    <h3>Thyroid</h3>
                    <button class="view-btn">View Products</button>
                  </a>
            </div>
            
                <div class="category">
                    <a href="blood-pressure.jsp">
                        <img src="images/blood-pressure.jpg" alt="Blood Pressure">
                        <h3>Blood Pressure</h3>
                        <button class="view-btn">View Products</button>
                    </a>
                </div>
        
            <div class="category">
                <a href="pain-relief.jsp">
                    <img src="images/pain-relief.jpg" alt="Pain Relief">
                    <h3>Pain Relief</h3>
                    <button class="view-btn">View Products</button>
                </a>
            </div>
            <div class="category">
                <a href="vitamins.jsp">
                    <img src="images/vitamins.jpg" alt="Vitamins">
                    <h3>Vitamins</h3>
                    <button class="view-btn">View Products</button>
                </a>
            </div>
            <div class="category">
                <a href="cold-flu.jsp">
                    <img src="images/cold-flu.jpg" alt="Cold & Flu">
                    <h3>Cold & Flu</h3>
                    <button class="view-btn">View Products</button>
                </a>
            </div>
            <div class="category">
                <a href="first-aid.jsp">
                    <img src="images/first-aid.jpg" alt="First Aid">
                    <h3>First Aid</h3>
                    <button class="view-btn">View Products</button>
                </a>
            </div>
            <div class="category">
              <a href="Diabetes-Care.jsp">
                  <img src="images/Diabetes-Care.jpg" alt="Diabetes Care">
                  <h3>Diabetes Care</h3>
                  <button class="view-btn">View Products</button>
              </a>
          </div>
          <div class="category">
            <a href="Eye-&-Ear-Care.jsp">
                <img src="images/Eye-&-Ear-Care.jpg" alt="Eye & Ear Care">
                <h3>Eye & Ear Care</h3>
                <button class="view-btn">View Products</button>
            </a>
        </div>
        <div class="category">
          <a href="Surgical Supplies.jsp">
              <img src="images/Surgical-Supplies.jpg" alt="Surgical Supplies">
              <h3>Surgical Supplies</h3>
              <button class="view-btn">View Products</button>
          </a>
      </div>
            
            <div class="category">
                <a href="personal-care.jsp">
                    <img src="images/personal-care.jpg" alt="Personal Care">
                    <h3>Personal Care</h3>
                    <button class="view-btn">View Products</button>
                </a>
            </div>
            <div class="category">
              <a href="antacid.jsp">
                  <img src="images/antacid.jpeg" alt="antacid">
                  <h3>Antacids</h3>
                  <button class="view-btn">View Products</button>
              </a>
          </div>
            <div class="category">
                <a href="Cleaning.jsp">
                    <img src="images/Cleaning.jpg" alt="Cleaning">
                    <h3>Cleaning </h3>
                    <button class="view-btn">View Products</button>
                </a>
            </div>
        </div>
    </main>
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
<script>
  document.querySelector(".js-search-open").addEventListener("click", function (e) {
    e.preventDefault();
    var form = document.getElementById("search-form-container");
    form.style.display = (form.style.display === "none") ? "block" : "none";
  });
</script>
 </body>
 </html>
