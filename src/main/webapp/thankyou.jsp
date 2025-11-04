<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Order Confirmation | ONLINE MEDICAL STORE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/style.css">
  <style>
    .order-details {
      background: #f8f9fa;
      padding: 20px;
      border-radius: 5px;
      margin-top: 30px;
    }
    .order-success-icon {
      font-size: 80px;
      color: #28a745;
    }
  </style>
</head>

<body>
  <div class="site-wrap">
    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0">
            <a href="index.jsp">Home</a> 
            <span class="mx-2 mb-0">/</span> 
            <strong class="text-black">Order Confirmation</strong>
          </div>
        </div>
      </div>
    </div>
    
    <div class="site-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-8 text-center">
            <div class="order-success-icon">✓</div>
            <h2 class="display-3 text-black">Thank you!</h2>
            <p class="lead mb-4">Your order was successfully completed.</p>
            
          
            
            <div class="mt-5">
              <p>We've sent the order confirmation to your WhatsApp number.</p>
              <div class="d-flex justify-content-center gap-3 mt-4">
                <a href="shop.jsp" class="btn btn-md height-auto px-4 py-3 btn-primary" onclick="clearCart()">
                  Back to Store</a>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
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
  document.addEventListener("DOMContentLoaded", function () {
    const backBtn = document.getElementById("back-to-store");
    if (backBtn) {
      backBtn.addEventListener("click", function () {
        clearCart(); // This uses the function you already defined
      });
    }
  });
</script>

</body>
</html>