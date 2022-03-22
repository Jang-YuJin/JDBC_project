<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="asset/header.css">
<link rel="stylesheet" href="asset/listImage.css">
<link rel="stylesheet" href="asset/footerStyle.css">
<link rel="stylesheet" href="asset/verticalMenu.css">
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

	<div id="content">
        <section id="vMenu">
            <div>
                <div>OUTER</div>
                <ul>
                    <li>자켓</li>
                    <li>코트</li>
                    <li>패딩</li>
                    <li>점퍼</li>
                </ul>
            </div>
            <div>
                <div>TOP</div>
                <ul>
                    <li>반팔</li>
                    <li>긴팔</li>
                    <li>후드티</li>
                    <li>스웻셔츠</li>
                    <li>셔츠</li>
                </ul>
            </div>
            <div>
                <div>BOTTOM</div>
                <ul>
                    <li>데님</li>
                    <li>슬랙스</li>
                    <li>숏팬츠</li>
                    <li>스커트</li>
                    <li>조거</li>
                </ul>
            </div>
            <div>
                <div>BAGS</div>
                <ul>
                    <li>백팩</li>
                    <li>크로스백</li>
                    <li>에코백</li>
                    <li>숄더백</li>
                    <li>토드백</li>
                </ul>
            </div>
            <div>
                <div>SHOES</div>
                <ul>
                    <li>운동화</li>
                    <li>로퍼</li>
                    <li>부츠</li>
                    <li>샌들</li>
                    <li>구두</li>
                </ul>
            </div>
        </section>
        
        <section id="imgContainer">
            <div class="listImageContainer">
                <div>
                    <div>
                        <div class="image">이미지</div>
                        <div>상품명</div>
                        <div>가격</div>
                    </div>
                    <div>
                        <div class="image">이미지</div>
                        <div>상품명</div>
                        <div>가격</div>
                    </div><div>
                        <div class="image">이미지</div>
                        <div>상품명</div>
                        <div>가격</div>
                    </div>
                </div>
                <div>
                    <div>
                        <div class="image">이미지</div>
                        <div>상품명</div>
                        <div>가격</div>
                    </div><div>
                        <div class="image">이미지</div>
                        <div>상품명</div>
                        <div>가격</div>
                    </div><div>
                        <div class="image">이미지</div>
                        <div>상품명</div>
                        <div>가격</div>
                    </div>
                </div>
                <div>
                    <div>
                        <div class="image">이미지</div>
                        <div>상품명</div>
                        <div>가격</div>
                    </div><div>
                        <div class="image">이미지</div>
                        <div>상품명</div>
                        <div>가격</div>
                    </div><div>
                        <div class="image">이미지</div>
                        <div>상품명</div>
                        <div>가격</div>
                    </div>
                </div>
                <div>
                    <div>
                        <div class="image">이미지</div>
                        <div>상품명</div>
                        <div>가격</div>
                    </div><div>
                        <div class="image">이미지</div>
                        <div>상품명</div>
                        <div>가격</div>
                    </div><div>
                        <div class="image">이미지</div>
                        <div>상품명</div>
                        <div>가격</div>
                    </div>
                </div>
            </div>
        </section>
    </div>

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