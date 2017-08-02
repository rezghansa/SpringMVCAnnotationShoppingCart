<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>e Shop Online</title>

</head>
<body>

	<jsp:include page="_header.jsp" />

	<fmt:setLocale value="en_US" scope="session" />
	<div class="main-content categories categories-grid1" style="background-color: #F5F5F5" data-background-color="#F5F5F5">
        <div class="container">
            <div class="categories-page">
                <div class="row">
                    <div class="content col-md-9 has-sidebar-left">
                        <div class="banner-categories-grid">
                            <img src="assets/images/bn-blog.jpg" alt="banner" height="175" width="868">
                        </div>
                        <div class="categories-grid">
                            <div class="breadcrumb-sidebar">
                                <div class="breadcrumb-wrap">
                                    <nav class="breadcrumb-trail breadcrumbs">
                                        <ul class="trail-items">
                                            <li class="trail-item trail-begin">
                                                <a href="#"><span>Home</span></a>
                                            </li>
                                            <li class="trail-item trail-end">
                                                <span>Electronic</span>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="panel-categories">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="view-categories">
                                            <div class="click-grid color-active">
                                                <i class="flaticon-four-grid-layout-design-interface-symbol"></i>
                                            </div>
                                            <div class="click-list">
                                                <i class="flaticon-squares-gallery-grid-layout-interface-symbol"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="select-categories">
                                            <div class="select-categories-content">
                                                <span>Short by</span>
                                                <select name="position">
                                                    <option value="position1">Position</option>
                                                    <option value="position2">Position 2</option>
                                                </select>
                                            </div>
                                            <div class="select-categories-content">
                                                <span>Show</span>
                                                <select name="show">
                                                    <option value="show1">6</option>
                                                    <option value="show2">Show all</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <c:if test="${paginationProducts.totalPages > 1}">
                                    <div class="col-md-3">
                                        <div class="page-nav">
                                        <c:forEach items="${paginationProducts.navigationPages}" var="page">
                                        <c:if test="${page != -1 }">
                                           <div class="page-nav-item">
                                            <a href="productList?page=${page}" class="nav-item">${page}</a>
                                            </div>
                                         </c:if>
                                         <c:if test="${page == -1 }">
											<div class="page-nav-item"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
										</c:if>
										</c:forEach>
                                            
                                        </div>
                                    </div>
                                    </c:if>
                                </div>
                            </div>
                            <div class="products-categories">
                                <c:forEach items="${paginationProducts.list}" var="prodInfo">
									<div class="product-box">
										<div class="product-box-content">
											<figure class="img-product">
												<img
													src="${pageContext.request.contextPath}/productImage?code=${prodInfo.code}"
													alt="product${prodInfo.code}" height="207" width="175">
												<a href="#" class="flaticon-search"></a>
											</figure>
											<div class="product-box-text">
												<a href="#" class="product-name"> ${prodInfo.name}</a> <a href="#"
													class="write">${prodInfo.code} Write Your Review
													${prodInfo.name}</a>
												<p class="product-cost">
													<fmt:formatNumber value="${prodInfo.price}"  type="currency" currencySymbol="LKR" />
												</p>
												<p class="desc-product">${prodInfo.name}</p>
												<div class="product-box-bottom">
													<a
														href="${pageContext.request.contextPath}/buyProduct?code=${prodInfo.code}"
														class="add-to-cart"><i class="flaticon-commerce"></i>Add To
														Cart</a> <a href="#" class="wishlist"><i class="flaticon-like"></i></a>
													<a href="#" class="refresh-product"><i class="flaticon-arrows"></i></a>
												</div>
												<!-- For Manager edit Product -->
												<security:authorize access="hasRole('ROLE_MANAGER')">
													<li><a style="color: red;"
														href="${pageContext.request.contextPath}/product?code=${prodInfo.code}">
															Edit Product</a></li>
												</security:authorize>
											</div>
							
										</div>
									</div>
								</c:forEach>
                            </div>
                            <div class="panel-categories">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="view-categories">
                                            <div class="click-grid color-active">
                                                <i class="flaticon-four-grid-layout-design-interface-symbol"></i>
                                            </div>
                                            <div class="click-list">
                                                <i class="flaticon-squares-gallery-grid-layout-interface-symbol"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="select-categories">
                                            <div class="select-categories-content">
                                                <span>Short by</span>
                                                <select name="position">
                                                    <option value="position1">Position</option>
                                                    <option value="position2">Position 2</option>
                                                </select>
                                            </div>
                                            <div class="select-categories-content">
                                                <span>Show</span>
                                                <select name="show">
                                                    <option value="show1">6</option>
                                                    <option value="show2">Show all</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <c:if test="${paginationProducts.totalPages > 1}">
                                    <div class="col-md-3">
                                        <div class="page-nav">
                                        <c:forEach items="${paginationProducts.navigationPages}" var="page">
                                        <c:if test="${page != -1 }">
                                           <div class="page-nav-item active">
                                            <a href="productList?page=${page}" class="nav-item">${page}</a>
                                            </div>
                                         </c:if>
                                         <c:if test="${page == -1 }">
											<div class="page-nav-item"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
											</c:if>
										</c:forEach>
                                            
                                        </div>
                                    </div>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar col-md-3">
                        <div class="breadcrumb-sidebar">
                            <div class="breadcrumb-wrap">
                                <nav class="breadcrumb-trail breadcrumbs">
                                    <ul class="trail-items">
                                        <li class="trail-item trail-begin">
                                            <a href="#"><span>Home</span></a>
                                        </li>
                                        <li class="trail-item trail-end">
                                            <span>Electronic</span>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="sidebar-categories">
                            <div class="shop-sidebar">
                                <div class="sidebar-title">Shop By</div>
                                <div class="shop-sidebar-content">
                                    <div class="categories-sidebar">
                                        <div class="sidebar-title-section">Categories</div>
                                        <div class="categories-checkbox">
                                            <ul class="categories-list-wrap">
                                                <li><input type="checkbox" value="Smartphone & Mp3 Player"><label>Smartphone & Mp3 Player</label></li>
                                                <li><input type="checkbox" value="Network & Computer"><label>Network & Computer</label></li>
                                                <li><input type="checkbox" value="Batteries & Chargers"><label>Batteries & Chargers</label></li>
                                                <li><input type="checkbox" value="Headphone & Headset"><label>Headphone & Headset</label></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="price-sidebar">
                                        <div class="sidebar-title-section">Price</div>
                                        <div class="price-filter">
                                            <div class="slider-range ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
                                                <div class="filter-top">
                                                    <span class="amount">$1</span>
                                                    <span class="amount2">$150</span>
                                                    <a class="button orange" href="#">Search</a>
                                                </div>
                                                <div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 0%; width: 100%;"></div>
                                                <span tabindex="0" class="ui-slider-handle ui-state-default ui-corner-all" style="left: 0%;">
                                            <span class="amount">$1</span>
                                        </span>
                                                <span tabindex="0" class="ui-slider-handle ui-state-default ui-corner-all" style="left: 100%;">
                                        <span class="amount2">$150</span>
                                    </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="manufacture-sidebar">
                                        <div class="sidebar-title-section">Manufacture</div>
                                        <div class="categories-checkbox">
                                            <ul class="brands">
                                                <li><input type="checkbox" value="Ercol"><label>Ercol</label></li>
                                                <li><input type="checkbox" value="Duresta"><label>Duresta</label></li>
                                                <li><input type="checkbox" value="G Plan"><label>G Plan</label><br>
                                                <li><input type="checkbox" value="Parker Knoll"><label>Parker Knoll</label></li>
                                                <li><input type="checkbox" value="Collins & Hayes"><label>Collins & Hayes</label></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="color-sidebar">
                                        <div class="sidebar-title-section">Color</div>
                                        <div class="color-sidebar-content">
                                            <div class="box-color box-color-orange"></div>
                                            <span>(3)</span>
                                        </div>
                                        <div class="color-sidebar-content">
                                            <div class="box-color box-color-brown"></div>
                                            <span>(3)</span>
                                        </div>
                                        <div class="color-sidebar-content">
                                            <div class="box-color box-color-red"></div>
                                            <span>(4)</span>
                                        </div>
                                        <div class="color-sidebar-content">
                                            <div class="box-color box-color-black"></div>
                                            <span>(5)</span>
                                        </div>
                                        <div class="color-sidebar-content">
                                            <div class="box-color box-color-white">CYAL</div>
                                            <span>(2)</span>
                                        </div>
                                        <div class="color-sidebar-content">
                                            <div class="box-color box-color-cyan"></div>
                                            <span>(2)</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="compare-sidebar">
                                <div class="sidebar-title">Compare Products</div>
                                <div class="compare-sidebar-content">You Have No Item Compare</div>
                            </div>
                            <div class="bestseller-sidebar">
                                <div class="sidebar-title">Bestseller Products</div>
                                <div class="bestseller-sidebar">
                                    <ul class="bestseller-list">
                                        <li class="bestseller-item">
                                            <a href="#"><img src="assets/images/sb-cat1.jpg" alt="sb" height="130" width="112"></a>
                                            <div class="bestseller-content">
                                                <a href="#" class="bestseller-text">Washing Machine Pro</a>
                                                <span>$1000.00</span>
                                            </div>
                                        </li>
                                        <li class="bestseller-item">
                                            <a href="#"><img src="assets/images/sb-cat2.jpg" alt="sb" height="130" width="112"></a>
                                            <div class="bestseller-content">
                                                <a href="#" class="bestseller-text">Washing Machine Pro</a>
                                                <span>$1000.00</span>
                                            </div>
                                        </li>
                                        <li class="bestseller-item">
                                            <a href="#"><img src="assets/images/sb-cat3.jpg" alt="sb" height="130" width="112"></a>
                                            <div class="bestseller-content">
                                                <a href="#" class="bestseller-text">Washing Machine Pro</a>
                                                <span>$1000.00</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tag-sidebar">
                                <div class="sidebar-title-section">Popular Tags</div>
                                <ul class="tag-list-sidebar">
                                    <li class="tag-sidebar-item"><a href="#">Mobile</a></li>
                                    <li class="tag-sidebar-item"><a href="#">Adss</a></li>
                                    <li class="tag-sidebar-item"><a href="#">Masem</a></li>
                                    <li class="tag-sidebar-item"><a href="#">Mudd</a></li>
                                    <li class="tag-sidebar-item"><a href="#">Atimo</a></li>
                                </ul>
                                <a href="#" class="view-all-tags">View All Tags<i class="fa fa-caret-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section-icon-box">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="icon-box style1">
                                <div class="row">
                                    <div class="col-md-4">
                                        <i class="flaticon-umbrella"></i>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="icon-box-content">
                                            <h4>Buyer Protection</h4>
                                            <p>Secure payments
                                                Guaranteed refunds
                                                Escrow protection on every oder</p>
                                            <a href="#">Read More<i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="icon-box style1">
                                <div class="row">
                                    <div class="col-md-4">
                                        <i class="flaticon-return-of-investment"></i>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="icon-box-content">
                                            <h4>RETURN & EXCHANGE</h4>
                                            <p>Wholesale products from certified
                                                Worldwide shipping
                                                Low prices from US $0.1</p>
                                            <a href="#">Read More<i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="icon-box style1">
                                <div class="row">
                                    <div class="col-md-4">
                                        <i class="flaticon-transport"></i>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="icon-box-content">
                                            <h4>FREE DELIVERY</h4>
                                            <p>Wholesale products from certified
                                                Worldwide shipping
                                                Low prices from US $0.1</p>
                                            <a href="#">Read More<i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
	<jsp:include page="_footer.jsp" />

</body>
</html>