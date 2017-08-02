<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<link rel='stylesheet' href='assets/css/bootstrap.min.css'>
<link rel='stylesheet' href='assets/css/owl.carousel.min.css'>
<link rel='stylesheet' href='assets/css/animated.css'>
<link rel='stylesheet' href='assets/css/font-awesome.css'>
<link rel='stylesheet' href='assets/css/ui.css'>
<link rel='stylesheet' href='assets/css/jquery.mmenu.all.css'>
<link rel='stylesheet' href='assets/css/flaticon.css'>
<link rel='stylesheet' href='assets/css/style.css'>
<link
	href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i;Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles.css">


<div class="header-container">
	<header class="header header-style5">
		<div class="header-mid">
			<div class="container">
				<div class="header-mid-left">
					<span class="register-or-login">Welcome to <a href="#">SuperMarket</a></span>
				</div>
				<div class="header-mid-right">
					<div class="header-mid-right-content">
						<a href="#"> <i class="flaticon-check-square"></i> Check Out
						</a>
					</div>
					<div class="header-mid-right-content">
						<a href="#"> <i class="flaticon-like"></i> My Wishlist
						</a>
					</div>
					<div class="header-mid-right-content money-select-menu">
						<div class="money-select">
							<div class="money select">LKR</div>
							<div class="money-dropdown">
								<div class="money">LKR</div>
								<!-- <div class="money">USD</div> -->
							</div>
							<i class="fa fa-caret-down"></i>
						</div>
					</div>
					<div class="header-mid-right-content country-select-menu">
						<div class="country-select">
							<div class="country select">
								<img src="assets/images/flag.jpg" alt="flag" width="24"
									height="17"> English
							</div>
							<div class="country-dropdown">
								<div class="country">
									<img src="assets/images/flag2.jpg" alt="flag" width="24"
										height="17"> Hungary
								</div>
								<div class="country">
									<img src="assets/images/flag3.jpg" alt="flag" width="24"
										height="17"> German
								</div>
								<div class="country">
									<img src="assets/images/flag4.jpg" alt="flag" width="24"
										height="17"> French
								</div>
								<div class="country">
									<img src="assets/images/flag5.jpg" alt="flag" width="24"
										height="17"> Canada
								</div>
								<div class="country">
									<img src="assets/images/flag6.jpg" alt="flag" width="24"
										height="17"> Australia
								</div>
							</div>
							<i class="fa fa-caret-down"></i>
						</div>

					</div>
				</div>
			</div>
		</div>

		<div class="header-bottom">
			<div class="container">
				<div class="row">
					<div class="header-bottom-left col-sm-3">
						<h1 class="logo">
							<a href="index.html"> <img src="assets/images/logo4.png"
								alt="logo">
							</a>
						</h1>
					</div>
					<div class="header-bottom-center col-sm-6">
						<div class="header-search">
							<form action="form.php" class="form form-search-header">
								<input type="text" placeholder="Search here..."> <select
									name="show-categories" id="show-categories">
									<option value="all">All Categories</option>
									<option value="Automovie & Motorcyle">GROCERY</option>
									<option value="Electronics">GEN. MERCHANDISE</option>
									<option value="Sport & Outdoors">MEAT FRESH & FROZEN</option>
									<option value="Handbags">DAIRY & FROZEN</option>
									<option value="Fashion">VEGETABLES & FRUITS</option>
									<option value="camera & usb">PHARMACY & DRUGS</option>
									<option value="smartphone & headphone">LIQUOR & ARRACK</option>
									<option value="SUNDRIES">SUNDRIES</option>
									<option value="DISNEY">DISNEY</option>
									<option value="Handbags">TOBACCO</option>
									<option value="Fashion">HAMPERS</option>
									<option value="camera & usb">BOOKS</option>
									<option value="smartphone & headphone">OTHERS</option>
								</select>
								<button class="button-search">Search</button>
							</form>
						</div>
					</div>
					<div class="header-bottom-right col-sm-3">
						<div class="header-bottom-right-content cart-menu-relative">
							<div class="cart-menu">
								<a href="${pageContext.request.contextPath}/shoppingCart"
									class="link-top"> <span class="text-bold">Basket</span>
									<p class="cart-amount">6</p>
								</a>
							</div>
							<div class="cart-hover">
								<div class="cart-hover-title">
									Your Products <span>Prices</span>
								</div>
								<ul class="list-hover-cart">
									<li class="hover-cart-item"><a href="#"
										class="img-hover-cart"> <img
											src="assets/images/img-hover-cart.jpg" alt="img-hover-cart"
											width="75" height="89"> <span
											class="delete-product-hover-cart"><i
												class="fa fa-times-circle" aria-hidden="true"></i></span>
									</a>
										<div class="text-hover-cart">
											<p class="name-hover-cart">Men's Skagen Watch</p>
											<p class="version-hover-cart">
												Vesion <span>2.0</span>
											</p>
											<p class="quanlity-hover-cart">
												Quanlity: <span>1</span>
											</p>
										</div>
										<div class="price-hover-cart">$150</div></li>
								</ul>
								<div class="subtotal-hover-cart">
									Subtotal <span>$150</span>
								</div>
								<div class="button-cart-hover">
									<a href="#" class="go-to-cart button">Go to cart</a> <a
										href="#" class="check-out button orange">Check Out</a>
								</div>
							</div>
						</div>
						<div class="header-bottom-right-content my-supermarket">
							<div class="supermarket">
								<h4 class="my-acc">
									<a class="link-top" href="#"> <span class="text-bold"><i
											class="flaticon-user-outline"></i>My Account</span>
									</a>
								</h4>
							</div>
							<div class="hover-supermarket">
								<c:if test="${pageContext.request.userPrincipal.name != null}">
						        Hello <a
										href="${pageContext.request.contextPath}/accountInfo">
										${pageContext.request.userPrincipal.name} </a>
						         &nbsp;|&nbsp;
						           <a href="${pageContext.request.contextPath}/logout">Logout</a>

								</c:if>
								<c:if test="${pageContext.request.userPrincipal.name == null}">
									<a href="${pageContext.request.contextPath}/login"
										class="singin-super">Sing in</a>
								</c:if>
								<p class="register">
									New Customer! <a href="#">Register Here</a>
								</p>
								<div class="my-acc-element">
									<h5 class="title-element">Account Home</h5>
									<ul class="market-list">
										<li class="market-list-item"><a href="#">dashboard</a></li>
										<li class="market-list-item"><a href="#">Messages /
												Tickets</a></li>
										<li class="market-list-item"><a href="#">Help & FA’Q</a></li>
									</ul>
								</div>
								<div class="my-acc-element">
									<h5 class="title-element">Orders</h5>
									<ul class="market-list">
										<li class="market-list-item"><a href="#">Order Status</a></li>
										<li class="market-list-item"><a href="#">Find invoice</a></li>
									</ul>
								</div>
								<div class="my-acc-element">
									<h5 class="title-element">Options</h5>
									<ul class="market-list">
										<li class="market-list-item"><a href="#">Account
												Settings</a></li>
										<li class="market-list-item"><a href="#">Address Book</a></li>
										<li class="market-list-item"><a href="#">Subscriptions</a></li>
									</ul>
								</div>
								<div class="my-acc-element">
									<h5 class="title-element">Warranty / Returns</h5>
									<ul class="market-list">
										<li class="market-list-item"><a href="#">Returns an
												iteam</a></li>
										<li class="market-list-item"><a href="#">Check Return
												Status</a></li>
									</ul>
								</div>
								<div class="my-acc-element">
									<h5 class="title-element">Options</h5>
									<ul class="market-list">
										<li class="market-list-item"><a href="#">Gift Cards</a></li>
										<li class="market-list-item"><a href="#">Watch List</a></li>
										<li class="market-list-item"><a href="#">My
												Collections</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="menu-primary">
			<div class="container">
				<div class="nav-element">
					<a href="#primary-navigation"
						class="menu-button primary-navigation-button"> <span
						class="flaticon-bars"></span>Main Menu
					</a>
					<nav id="primary-navigation" class="site-navigation main-menu">
						<ul id="primary-menu" class="menu">
							<li class="menu-item has-childrent item-home"><a
								href="${pageContext.request.contextPath}/"><i
									class="flaticon-home"></i></a></li>
							<li class="menu-item"><a
								href="${pageContext.request.contextPath}/productList">New
									Arrival</a></li>
							<li class="menu-item"><a href="#">Deals</a></li>
							<li class="menu-item has-childrent"><a href="#">Shop</a>
								<ul class="sub-menu">
									<li class="menu-item"><a href="categories-grid.html">Categories
											Grid 1</a></li>
									<li class="menu-item"><a
										href="category-grid-right-sidebar.html">Categories Grid 1
											Right Sidebar</a></li>
									<li class="menu-item"><a href="categories-grid2.html">Categories
											Grid 2</a></li>
									<li class="menu-item"><a
										href="categories-grid2-right-sidebar.html">Categories Grid
											2 Right Sidebar</a></li>
									<li class="menu-item"><a href="categories-grid3.html">Categories
											Grid 3</a></li>
									<li class="menu-item"><a href="categories-list1.html">Categories
											List 1</a></li>
									<li class="menu-item"><a
										href="categories-list1-right-sidebar.html">Categories List
											1 Right Sidebar</a></li>
									<li class="menu-item"><a href="categories-list2.html">Categories
											List 2</a></li>
									<li class="menu-item"><a
										href="categories-list2-right-sidebar.html">Categories List
											2 Right Sidebar</a></li>
								</ul></li>
							<li class="menu-item has-childrent"><a href="#">Pages</a>
								<ul class="sub-menu">
									<li class="menu-item"><a href="blogpost.html">Blog
											Post</a></li>
									<li class="menu-item"><a href="product-detail.html">Product
											Detail</a></li>
									<li class="menu-item"><a href="shopping-carrt.html">Cart</a></li>
									<li class="menu-item"><a href="checkout.html">Check
											Out</a></li>
									<li class="menu-item"><a href="contact.html">Contact
											Us</a></li>
									<li class="menu-item"><a href="about.html">About US</a></li>
								</ul></li>
							<security:authorize
								access="hasAnyRole('ROLE_MANAGER','ROLE_EMPLOYEE')">
								<li class="menu-item"><a
									href="${pageContext.request.contextPath}/orderList">Order(s)
										List</a></li>
							</security:authorize>
							<security:authorize
								access="hasAnyRole('ROLE_MANAGER')">
								<li class="menu-item"><a
									href="${pageContext.request.contextPath}/product">New
										Product Add</a></li>
							</security:authorize>
						</ul>
					</nav>
				</div>

			</div>
		</div>
	</header>
</div>

<script type='text/javascript' src='assets/js/jquery.min.js'></script>
<script type='text/javascript' src='assets/js/bootstrap.min.js'></script>
<script type='text/javascript' src='assets/js/wow.min.js'></script>
<script type='text/javascript' src='assets/js/owl.carousel.min.js'></script>
<script type='text/javascript' src='assets/js/jquery.appear.min.js'></script>
<script type='text/javascript' src='assets/js/jquery.countTo.js'></script>
<script type='text/javascript' src='assets/js/ui.js'></script>
<script type='text/javascript' src='assets/js/jquery.bxslider.min.js'></script>
<script type='text/javascript' src='assets/js/jquery.mmenu.all.min.js'></script>
<script type='text/javascript' src='assets/js/chosen.jquery.min.js'></script>
<script type='text/javascript' src='assets/js/jquery.countdown.js'></script>
<script type='text/javascript' src='assets/js/frontend.js'></script>