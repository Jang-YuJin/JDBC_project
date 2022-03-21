<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<li><a href="index.html">HOME</a></li>
			<li><a href="#">OUTER</a></li>
			<li><a href="#">TOP</a></li>
			<li><a href="#">BOTTOM</a></li>
			<li><a href="#">BAGS</a></li>
			<li><a href="#">SHOES</a></li>
		</ul>
	</nav>

	<section>
		<div id="promotion">프로모션 이미지</div>
	</section>

	<section class="listImageContainer">
		<div><div class="image">이미지</div>
		<div class="image">이미지</div>
		<div class="image">이미지</div></div>
		<div><div class="image">이미지</div>
		<div class="image">이미지</div>
		<div class="image">이미지</div></div>
		<div><div class="image">이미지</div>
		<div class="image">이미지</div>
		<div class="image">이미지</div></div>
        <div><div class="image">이미지</div>
		<div class="image">이미지</div>
		<div class="image">이미지</div></div>
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