<%@page import="project.shopController.ShopController"%>
<%@page import="project.shopModel.ProductDTO"%>
<%@page import="java.util.List"%>
<%@page import="project.shopService.ShopDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="asset/header.css">
<link rel="stylesheet" href="asset/promotionImg.css">
<link rel="stylesheet" href="asset/listImage.css">
<link rel="stylesheet" href="asset/footerStyle.css">

<meta charset="UTF-8">
<title>BANANAMILK</title>
</head>
<%
	ShopDAO dao = new ShopDAO();
	List<ProductDTO> list = dao.getProductList();
	ShopController controller = new ShopController();
	List<String> upperCode = controller.getUpperCode(list);
	List<String> subCode = controller.getSubCode(list);
	List<String> numCode = controller.getNumCode(list);
%>
<c:set var="productList" value="<%= list %>"></c:set>
<c:set var="productUpperCode" value="<%= upperCode %>"></c:set>
<c:set var="productSubCode" value="<%= subCode %>"></c:set>
<c:set var="productNumCode" value="<%= numCode %>"></c:set>

<body>
	<header>
		<div id="headerContainer">
			<div id="headerLogo"><a href="index.jsp"><img src="asset/logo240x36B.png"></a></div>
			<div id="headerRight">
				<div id="headerMenu">
					<a href="#">로그인</a> | 
					<a href="member/join.jsp">회원가입</a> | 
					<a href="#">마이페이지</a> | 
					<a href="#">장바구니 | 
					<a href="#">주문조회</a></div>
				<div id="searchContainer">
					<form>
						<input id="searchBlock" type="text" name="search">
						<input id="searchBtn" type="submit" value="검색">
					</form>
				</div>
			</div>
		</div>
	</header>

	<nav>
		<ul id="navi">
			<li><a href="index.jsp">HOME</a></li>
			<li><a href="shoplist.jsp?upperCategory=outer">OUTER</a></li>
			<li><a href="shoplist.jsp?upperCategory=top">TOP</a></li>
			<li><a href="shoplist.jsp?upperCategory=bottom">BOTTOM</a></li>
			<li><a href="shoplist.jsp?upperCategory=bag">BAG</a></li>
			<li><a href="shoplist.jsp?upperCategory=shoes">SHOES</a></li>
		</ul>
	</nav>

	<section>
		<a href="#"><div id="promotion"></div></a>
	</section>

	<section class="listImageContainer">
		<c:forEach var="i" begin="1" end="4">
			<div>
				<a href="shopdetail.jsp?code=${ productUpperCode[i] }_${ productSubCode[i] }_${ productNumCode[i] }"><div class="image" style="background-image: url('./asset/img/${ productUpperCode[i] }/${ productList[i].representative }')"></div></a>
				<a href="shopdetail.jsp?code=${ productUpperCode[4 + i] }_${ productSubCode[4 + i] }_${ productNumCode[4 + i] }"><div class="image" style="background-image: url('./asset/img/${ productUpperCode[4 + i] }/${ productList[4 + i].representative }')"></div></a>
				<a href="shopdetail.jsp?code=${ productUpperCode[8 + i] }_${ productSubCode[8 + i] }_${ productNumCode[8 + i] }"><div class="image" style="background-image: url('./asset/img/${ productUpperCode[8 + i] }/${ productList[8 + i].representative }')"></div></a>
			</div>
		</c:forEach>
	</section>

	<footer>
		<div id="intro">
			ⓒBANANAMILK<br> 
			대표자 : 장유진<br> 
			청주시 청원구 오창과학단지<br>
			043-1234-1234
		</div>
		<div id="info">
			영업시간<br> 
			평일 09:00 ~ 18:00<br> 
			토요일 09:00 ~ 15:00<br> 
			<a href="#">입점</a>
		</div>
	</footer>
</body>
</html>