<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Dashboard | Klorofil - Free Bootstrap Dashboard Template</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/vendor/bootstrap/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/vendor/font-awesome/css/font-awesome.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/vendor/linearicons/style.css'/>">
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/vendor/chartist/css/chartist-custom.css'/>">
<!-- MAIN CSS -->
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/css/main.css'/>">
<link rel="stylesheet"
	href="<c:url value='../resource/admin/assets/css/demo.css'/>">
<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
	rel="stylesheet">

<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="<c:url value='../resource/admin/assets/img/apple-icon.png'/>">
<link rel="icon" type="image/png" sizes="96x96"
	href="<c:url value='../resource/admin/assets/img/favicon.png'/>">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>
<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<%@include file="../common/header.jsp"%>
		<jsp:include page="../common/category.jsp" />
		<!-- MAIN -->
		<!-- MAIN CONTENT -->
		<form action="product-delete" method="get">
			<div class="main">
				<div class="main-content">
					<div class="container-fluid">
						<!-- OVERVIEW -->
						<div class="panel panel-headline">
							<div class="panel-body">
								<form action="productdetail-list" method="get">
									<div class="row">
										<div class="col-md-12">
											<div class="panel">
												<div class="panel-heading">
													<h3 class="panel-title">PRODUCT DETAIL LIST</h3>
												</div>
												<div class="panel-body no-padding">
													<table class="table" style="margin: auto;">
														<thead>
															<tr>
																
																<th>ID</th>
																<th>Product Name</th>
																<th>Color</th>
																<th>Size</th>
																<th>Quantity</th>
																<th>Date</th>
																<th style="width: 10%;">Image</th>
																<th>Edit</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${details}" var="detail">
																<tr>
																	
																	<td style="vertical-align: middle;">${detail.getDetailId()}</td>
																	<td style="vertical-align: middle;">${ProductName}</td>
																	<td style="vertical-align: middle;">
																	<c:if test="${detail.getColorId() == '1'}">Red</c:if>
																	<c:if test="${detail.getColorId() == '2'}">White</c:if>
																	<c:if test="${detail.getColorId() == '3'}">Black</c:if>
																	</td>
																	<td style="vertical-align: middle;">
																	<c:if test="${detail.getSizeId() == '1'}">S</c:if>
																	<c:if test="${detail.getSizeId() == '2'}">M</c:if>
																	<c:if test="${detail.getSizeId() == '3'}">L</c:if>
																	<c:if test="${detail.getSizeId() == '4'}">XL</c:if>
																	<c:if test="${detail.getSizeId() == '5'}">XXL</c:if>
																	</td>
																	<td style="vertical-align: middle;">${detail.getQuantity()}</td>
																	<td style="vertical-align: middle;">${detail.getDate()}</td>
																	<td style="vertical-align: middle;">
																	<img
																		style="width: 70%;" src="../download?image=${detail.getImage()}"></td>
																	<td style="vertical-align: middle;"><a href="productdetail-list?productId=${detail.getProductId()}&productName=${ProductName}">
																			<span class="label label-warning"
																			style="font-size: 15px;">Update</span>
																	</a></td>
																	<input type=hidden name="ID" value=${detail.getProductId()}/>
																</tr>
															</c:forEach>
														</tbody>
													</table>
												</div>
											</div>
											<nav aria-label="Page navigation example"
												style="margin-top: -30px;">
											<%-- 	<ul class="pagination">
													<c:forEach begin="0" end="${totalPage-1}" var="i">
													<li class="page-item">
													<a class="page-link" href="productdetail-list?pageIndex=${i}&productId=${ID}"
														<c:if test="${pageIndex == i}">
														style="background-color: #F0AD4E; color: white;"
														</c:if>
														>${i+1}</a></li>
													</c:forEach>
												</ul> --%>
											</nav>
										</div>
										<div id="headline-chart" class="ct-chart"></div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- END OVERVIEW -->
				</div>
				<!-- END MAIN CONTENT -->
			</div>
		</form>
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">
					&copy; 2017 <a href="https://www.themeineed.com" target="_blank">Theme
						I Need</a>. All Rights Reserved.
				</p>
			</div>
		</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script>
            let userSelection = document.getElementsByClassName('checkbox');
            let checkAll = document.getElementById('checkAll')


            checkAll.addEventListener('click', () => {
                if (checkAll.checked == true) {
                    for (let i = 1; i <= userSelection.length; i++) {
                        document.getElementById(i).checked = true
                    }
                } else {
                    for (let i = 1; i <= userSelection.length; i++) {
                        document.getElementById(i).checked = false
                    }
                }

            })
   </script>
</body>
</body>
</html>