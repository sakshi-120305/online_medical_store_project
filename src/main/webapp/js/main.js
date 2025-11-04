 AOS.init({
 	duration: 800,
 	easing: 'slide',
 	once: true
 });

jQuery(document).ready(function($) {

	"use strict";

	var slider = function() {
		$('.nonloop-block-3').owlCarousel({
	    center: false,
	    items: 1,
	    loop: true,
	    smartSpeed: 700,
			stagePadding: 15,
	    margin: 20,
	    autoplay: true,
	    nav: true,
			navText: ['<span class="icon-arrow_back">', '<span class="icon-arrow_forward">'],
	    responsive:{
        600:{
        	margin: 20,
          items: 2
        },
        1000:{
        	margin: 20,
          items: 3
        },
        1200:{
        	margin: 20,
          items: 3
        }
	    }
		});
	};
	slider();


	var siteMenuClone = function() {

		$('<div class="site-mobile-menu"></div>').prependTo('.site-wrap');

		$('<div class="site-mobile-menu-header"></div>').prependTo('.site-mobile-menu');
		$('<div class="site-mobile-menu-close "></div>').prependTo('.site-mobile-menu-header');
		$('<div class="site-mobile-menu-logo"></div>').prependTo('.site-mobile-menu-header');

		$('<div class="site-mobile-menu-body"></div>').appendTo('.site-mobile-menu');

		

		$('.js-logo-clone').clone().appendTo('.site-mobile-menu-logo');

		$('<span class="ion-ios-close js-menu-toggle"></div>').prependTo('.site-mobile-menu-close');
		

		$('.js-clone-nav').each(function() {
			var $this = $(this);
			$this.clone().attr('class', 'site-nav-wrap').appendTo('.site-mobile-menu-body');
		});


		setTimeout(function() {
			
			var counter = 0;
      $('.site-mobile-menu .has-children').each(function(){
        var $this = $(this);
        
        $this.prepend('<span class="arrow-collapse collapsed">');

        $this.find('.arrow-collapse').attr({
          'data-toggle' : 'collapse',
          'data-target' : '#collapseItem' + counter,
        });

        $this.find('> ul').attr({
          'class' : 'collapse',
          'id' : 'collapseItem' + counter,
        });

        counter++;

      });

    }, 1000);

		$('body').on('click', '.arrow-collapse', function(e) {
      var $this = $(this);
      if ( $this.closest('li').find('.collapse').hasClass('show') ) {
        $this.removeClass('active');
      } else {
        $this.addClass('active');
      }
      e.preventDefault();  
      
    });

		$(window).resize(function() {
			var $this = $(this),
				w = $this.width();

			if ( w > 768 ) {
				if ( $('body').hasClass('offcanvas-menu') ) {
					$('body').removeClass('offcanvas-menu');
				}
			}
		})

		$('body').on('click', '.js-menu-toggle', function(e) {
			var $this = $(this);
			e.preventDefault();

			if ( $('body').hasClass('offcanvas-menu') ) {
				$('body').removeClass('offcanvas-menu');
				$this.removeClass('active');
			} else {
				$('body').addClass('offcanvas-menu');
				$this.addClass('active');
			}
		}) 

		// click outisde offcanvas
		$(document).mouseup(function(e) {
	    var container = $(".site-mobile-menu");
	    if (!container.is(e.target) && container.has(e.target).length === 0) {
	      if ( $('body').hasClass('offcanvas-menu') ) {
					$('body').removeClass('offcanvas-menu');
				}
	    }
		});
	}; 
	siteMenuClone();


	var sitePlusMinus = function() {
		$('.js-btn-minus').on('click', function(e){
			e.preventDefault();
			if ( $(this).closest('.input-group').find('.form-control').val() != 0  ) {
				$(this).closest('.input-group').find('.form-control').val(parseInt($(this).closest('.input-group').find('.form-control').val()) - 1);
			} else {
				$(this).closest('.input-group').find('.form-control').val(parseInt(0));
			}
		});
		$('.js-btn-plus').on('click', function(e){
			e.preventDefault();
			$(this).closest('.input-group').find('.form-control').val(parseInt($(this).closest('.input-group').find('.form-control').val()) + 1);
		});
	};
	sitePlusMinus();


	var siteSliderRange = function() {
    $( "#slider-range" ).slider({
      range: true,
      min: 0,
      max: 500,
      values: [ 75, 300 ],
      slide: function( event, ui ) {
        $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
      }
    });
    $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
      " - $" + $( "#slider-range" ).slider( "values", 1 ) );
	};
	siteSliderRange();


	var siteMagnificPopup = function() {
		$('.image-popup').magnificPopup({
	    type: 'image',
	    closeOnContentClick: true,
	    closeBtnInside: false,
	    fixedContentPos: true,
	    mainClass: 'mfp-no-margins mfp-with-zoom', // class to remove default margin from left and right side
	     gallery: {
	      enabled: true,
	      navigateByImgClick: true,
	      preload: [0,1] // Will preload 0 - before current, and 1 after the current image
	    },
	    image: {
	      verticalFit: true
	    },
	    zoom: {
	      enabled: true,
	      duration: 300 // don't foget to change the duration also in CSS
	    }
	  });

	  $('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
	    disableOn: 700,
	    type: 'iframe',
	    mainClass: 'mfp-fade',
	    removalDelay: 160,
	    preloader: false,

	    fixedContentPos: false
	  });
	};
	siteMagnificPopup();

	var searchShow = function() {
		// alert();
		var searchWrap = $('.search-wrap');
		$('.js-search-open').on('click', function(e) {
			e.preventDefault();
			searchWrap.addClass('active');
			setTimeout(function() {
				searchWrap.find('.form-control').focus();
			}, 300);
		});
		$('.js-search-close').on('click', function(e) {
			e.preventDefault();
			searchWrap.removeClass('active');
		})
	};
	searchShow();

});


document.addEventListener('DOMContentLoaded', () => {
    // ✅ Ensure cart count remains consistent across all pages
    updateCartCount();
    updateCart();
    updateOrderSummary();
    setupPagination();
});

// ✅ Ensure cart count updates on all pages
function updateCartCount() {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    const cartCountElement = document.querySelector('.icons-btn .number');

    if (cartCountElement) {
        const totalCount = cart.reduce((sum, item) => sum + item.quantity, 0);
        cartCountElement.textContent = totalCount;
    }
}

// ✅ Update the cart display and save to localStorage
function updateCart() {
    const cartItemsContainer = document.getElementById('cart-items');
    if (!cartItemsContainer) return;

    cartItemsContainer.innerHTML = '';
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    let subtotal = 0;

    cart.forEach((item, index) => {
        const total = item.price * item.quantity;
        subtotal += total;

        const row = document.createElement('tr');
        row.innerHTML = `
            <td class="product-thumbnail"><img src="${item.image}" alt="${item.product}" class="img-fluid"></td>
            <td class="product-name"><h2 class="h5 text-black">${item.product}</h2></td>
            <td>${item.price}</td>
            <td>
                <div class="input-group mb-3" style="max-width: 120px;">
                    <div class="input-group-prepend">
                        <button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
                    </div>
                    <input type="text" class="form-control text-center" value="${item.quantity}">
                    <div class="input-group-append">
                        <button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
                    </div>
                </div>
            </td>
            <td>${total}</td>
            <td><a href="#" class="btn btn-primary height-auto btn-sm remove-item">X</a></td>
        `;

        // Attach event listeners for quantity updates and removal
        row.querySelector('.js-btn-minus').addEventListener('click', () => updateQuantity(index, Math.max(1, item.quantity - 1)));
        row.querySelector('.js-btn-plus').addEventListener('click', () => updateQuantity(index, item.quantity + 1));
        row.querySelector('.remove-item').addEventListener('click', (e) => {
            e.preventDefault();
            removeFromCart(index);
        });

        cartItemsContainer.appendChild(row);
    });

    document.getElementById('subtotal').textContent = subtotal;
    document.getElementById('total').textContent = subtotal;

    updateCartCount();
}

// ✅ Add an item to the cart
function addToCart(product, price, image) {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    const cartItem = cart.find(item => item.product === product);

    if (cartItem) {
        cartItem.quantity++;
    } else {
        cart.push({ product, price, image, quantity: 1 });
    }

    localStorage.setItem('cart', JSON.stringify(cart));
    updateCart();
}

// ✅ Ensure addToCartAndNavigate is globally accessible
window.addToCartAndNavigate = function (product, price, image) {
  console.log("Adding to cart:", product, price, image); // Debugging log
  addToCart(product, price, image); // Call addToCart function
  window.location.href = 'cart.jsp'; // Navigate to cart page
};

// ✅ Remove an item from the cart
function removeFromCart(index) {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    cart.splice(index, 1);
    localStorage.setItem('cart', JSON.stringify(cart));
    updateCart();
}

// ✅ Update quantity and save to localStorage
function updateQuantity(index, quantity) {
    if (quantity < 1) return;
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    cart[index].quantity = parseInt(quantity) || 1;
    localStorage.setItem('cart', JSON.stringify(cart));
    updateCart();
}
// ✅ Function to update the order summary on the checkout page
function updateOrderSummary() {
  const orderItemsContainer = document.querySelector(".site-block-order-table tbody");

  if (!orderItemsContainer) return;

  orderItemsContainer.innerHTML = ""; // Clear existing content
  let cart = JSON.parse(localStorage.getItem('cart')) || [];
  let subtotal = 0;

  cart.forEach(item => {
      const itemTotal = item.price * item.quantity;
      subtotal += itemTotal;

      const itemRow = `<tr>
                          <td>${item.product} <strong class="mx-2">x</strong> ${item.quantity}</td>
                          <td>RS.${itemTotal.toFixed(2)}</td>
                       </tr>`;
      orderItemsContainer.insertAdjacentHTML("beforeend", itemRow);
  });

  // ✅ Add subtotal & total rows
  orderItemsContainer.insertAdjacentHTML("beforeend", `
      <tr>
          <td class="text-black font-weight-bold"><strong>Cart Subtotal</strong></td>
          <td class="text-black">RS.${subtotal.toFixed(2)}</td>
      </tr>
      <tr>
          <td class="text-black font-weight-bold"><strong>Order Total</strong></td>
          <td class="text-black font-weight-bold"><strong>RS.${subtotal.toFixed(2)}</strong></td>
      </tr>
  `);
}

function clearCart() {
  localStorage.removeItem("cart"); // ✅ Clear the cart
  console.log("Cart has been emptied!"); // Debugging log
}

// ✅ Pagination logic without extra classes
function setupPagination() {
    const totalPages = 3;
    let currentPage = getCurrentPage();

    function getCurrentPage() {
        const path = window.location.pathname;
        if (path.includes("shop2.jsp")) return 3;
        if (path.includes("shop1.jsp")) return 2;
        return 1;
    }

    function updateActivePage() {
        const paginationItems = document.querySelectorAll(".pagination li");
        if (paginationItems.length > 0) {
            paginationItems.forEach(li => li.classList.remove("active"));
            const activeItem = document.querySelector(`.pagination li:nth-child(${currentPage + 1})`);
            if (activeItem) activeItem.classList.add("active");
        }
    }

    const prevButton = document.getElementById('prev');
    const nextButton = document.getElementById('next');

    if (prevButton) {
        prevButton.addEventListener('click', function () {
            if (currentPage > 1) {
                currentPage--;
                window.location.href = `shop${currentPage === 1 ? '' : currentPage - 1}.jsp`;
            }
        });
    }

    if (nextButton) {
        nextButton.addEventListener('click', function () {
            if (currentPage < totalPages) {
                currentPage++;
                window.location.href = `shop${currentPage === 1 ? '' : currentPage - 1}.jsp`;
            }
        });
    }

    updateActivePage();
}


