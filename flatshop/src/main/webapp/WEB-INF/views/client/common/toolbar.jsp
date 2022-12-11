<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body id="home">
	<div class="toolbar">
		<div class="sorter">
			<div class="view-mode">
				<a href="#" class="list"> List </a> <a href="#" class="grid active">
					Grid </a>
			</div>

			<form action="search" method="get">
				<div class="sort-by">
					Sort By Price: <select name="sort" onchange="this.form.submit()">
						<option
							<c:if test="${sort eq 'default'}">
						selected="selected"
						</c:if>
							value="default">Default</option>
						<option
							<c:if test="${sort eq 'ASC'}">
						selected="selected"
						</c:if>
							value="ASC">ASC</option>
						<option
							<c:if test="${sort eq 'DESC'}">
						selected="selected"
						</c:if>
							value="DESC">DESC</option>
					</select> <input type="hidden" value="${categoryId}" name="categoryId" /> <input
						type="hidden" value="${pricing}" name="pricing" /> <input
						type="hidden" value="${text}" name="text" /> <input type="hidden"
						name="pageIndex" value="${pageIndex}" />
				</div>
			</form>
			<div class="limiter">
				<form action="search" method="get">
					Show : <select name="pageSize" onchange="this.form.submit()">
						<option
							<c:if test="${pageSize == 3}">
						selected="selected"
						</c:if>
							value="3">3</option>
						<option
							<c:if test="${pageSize == 6}">
						selected="selected"
						</c:if>
							value="6">6</option>
						<option
							<c:if test="${pageSize == 9}">
						selected="selected"
						</c:if>
							value="9">9</option>
					</select> <input type="hidden" value="${categoryId}" name="categoryId" /> <input
						type="hidden" value="${pricing}" name="pricing" /> <input
						type="hidden" value="${text}" name="text" />
				</form>
			</div>
			<form class="pricing" action="search" method="get">
				<select name="pricing" onchange='this.form.submit()'>
					<option
						<c:if test="${pricing eq 'default'}">
										selected="selected"
										</c:if>
						value="default">Find by price</option>
					<option
						<c:if test="${pricing eq 'under50'}">
										selected="selected"
										</c:if>
						value="under50">under 50 dollars</option>
					<option
						<c:if test="${pricing eq '50to70'}">
										selected="selected"
										</c:if>
						value="50to70">50 dollars to 70 dollars</option>
					<option
						<c:if test="${pricing eq 'greaterthan70'}">
										selected="selected"
										</c:if>
						value="greaterthan70">greater than 70 dollars</option>
					<input type="hidden" name="categoryId" value="${categoryId}" />
					<input type="hidden" name="text" value="${text}" />
				</select>
			</form>
		</div>
		<div class="pager">
			<a
				href="search?pricing=${pricing}&text=${text}&pageIndex=${i-1}&categoryId=${categoryId}&pageSize=${pageSize}"
				class="prev-page"> <i class="fa fa-angle-left"> </i>
			</a>
			<c:forEach begin="0" end="${totalPage - 1}" var="i">

				<a
					href="search?pricing=${pricing}&text=${text}&pageIndex=${i}&categoryId=${categoryId}&pageSize=${pageSize}"
					<c:if test="${pageIndex == i}">
				class="active"
			</c:if>>
					${i+1} </a>

			</c:forEach>
			<a
				href="search?pricing=${pricing}&text=${text}&pageIndex=${i+1}&categoryId=${categoryId}&pageSize=${pageSize}"
				class="next-page"> <i class="fa fa-angle-right"> </i>
			</a>

		</div>
	</div>
</body>
</html>