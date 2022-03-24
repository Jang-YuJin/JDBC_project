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
                <div><a class="upper" href="#">OUTER</a></div>
                <ul>
                    <li><a class="sub" href="#">자켓</a></li>
                    <li><a class="sub" href="#">코트</a></li>
                    <li><a class="sub" href="#">패딩</a></li>
                    <li><a class="sub" href="#">점퍼</a></li>
                </ul>
            </div>
            <div>
                <div><a class="upper" href="#">TOP</a></div>
                <ul>
                    <li><a class="sub" href="#">반팔</a></li>
                    <li><a class="sub" href="#">긴팔</a></li>
                    <li><a class="sub" href="#">후드티</a></li>
                    <li><a class="sub" href="#">맨투맨</a></li>
                    <li><a class="sub" href="#">셔츠</a></li>
                </ul>
            </div>
            <div>
                <div><a class="upper" href="#">BOTTOM</a></div>
                <ul>
                    <li><a class="sub" href="#">데님</a></li>
                    <li><a class="sub" href="#">슬랙스</a></li>
                    <li><a class="sub" href="#">숏팬츠</a></li>
                    <li><a class="sub" href="#">스커트</a></li>
                    <li><a class="sub" href="#">조거</a></li>
                </ul>
            </div>
            <div>
                <div><a class="upper" href="#">BAGS</a></div>
                <ul>
                    <li><a class="sub" href="#">백팩</a></li>
                    <li><a class="sub" href="#">크로스백</a></li>
                    <li><a class="sub" href="#">에코백</a></li>
                    <li><a class="sub" href="#">숄더백</a></li>
                    <li><a class="sub" href="#">토드백</a></li>
                </ul>
            </div>
            <div>
                <div><a class="upper" href="#">SHOES</a></div>
                <ul>
                    <li><a class="sub" href="#">운동화</a></li>
                    <li><a class="sub" href="#">로퍼</a></li>
                    <li><a class="sub" href="#">부츠</a></li>
                    <li><a class="sub" href="#">샌들</a></li>
                    <li><a class="sub" href="#">구두</a></li>
                </ul>
            </div>
        </section>
        
        <section id="imgContainer">
            <div class="listImageContainer">
                <div>
                    <a class="product" href="#">
                        <div class="image"></div>
                        <div>상품명</div>
                        <div>가격</div>
                    </a>
                    <a class="product" href="#">
                        <div class="image"></div>
                        <div>상품명</div>
                        <div>가격</div>
                    </a>
                    <a class="product" href="#">
                        <div class="image"></div>
                        <div>상품명</div>
                        <div>가격</div>
                    </a>
                </div>
                <div>
                    <a class="product" href="#">
                        <div class="image"></div>
                        <div>상품명</div>
                        <div>가격</div>
                    </a>
                    <a class="product" href="#">
                        <div class="image"></div>
                        <div>상품명</div>
                        <div>가격</div>
                    </a>
                    <a class="product" href="#">
                        <div class="image"></div>
                        <div>상품명</div>
                        <div>가격</div>
                    </a>
                </div>
                <div>
                    <a class="product" href="#">
                        <div class="image"></div>
                        <div>상품명</div>
                        <div>가격</div>
                    </a>
                    <a class="product" href="#">
                        <div class="image"></div>
                        <div>상품명</div>
                        <div>가격</div>
                    </a>
                    <a class="product" href="#">
                        <div class="image"></div>
                        <div>상품명</div>
                        <div>가격</div>
                    </a>
                </div>
                <div>
                    <a class="product" href="#">
                        <div class="image"></div>
                        <div>상품명</div>
                        <div>가격</div>
                    </a>
                    <a class="product" href="#">
                        <div class="image"></div>
                        <div>상품명</div>
                        <div>가격</div>
                    </a>
                    <a class="product" href="#">
                        <div class="image"></div>
                        <div>상품명</div>
                        <div>가격</div>
                    </a>
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