<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <link rel="stylesheet" href="asset/header.css">
        <link rel="stylesheet" href="asset/shopDetail.css">
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
                    <li><a href="index.jsp">HOME</a></li>
					<li><a href="shoplist.jsp?upperCategory=outer">OUTER</a></li>
					<li><a href="shoplist.jsp?upperCategory=top">TOP</a></li>
					<li><a href="shoplist.jsp?upperCategory=bottom">BOTTOM</a></li>
					<li><a href="shoplist.jsp?upperCategory=bag">BAG</a></li>
					<li><a href="shoplist.jsp?upperCategory=shoes">SHOES</a></li>
                </ul>
            </nav>
    
    <section id="top">
        <div id="imgTitle">
            제품 대표 이미지
        </div>
        
        <div id="imgDesc">
            <div id="productName">
                제품명
            </div>
            <div id="productPrice">
                가격
            </div>
            <div id="productBtn">
                <a id="purchase" href="#"><div>구매하기</div></a>
                <a  id="shoppingBasket" href="#"><div>장바구니</div></a>
            </div>
        </div>
    </section>
	
	<section id="imgDetail">
		제품 상세 이미지
	</section>

	<section id="reviewContainer">
		<table class="tableList">
			<tr>
				<th colspan="2">리뷰</th>
			</tr>
			<tr>
				<td>1</td>
				<td>리뷰입니다.</td>
			</tr>
			<tr>
				<td>2</td>
				<td>리뷰입니다.</td>
			</tr>
			<tr>
				<td>3</td>
				<td>리뷰입니다.</td>
			</tr>
			<tr>
				<td>4</td>
				<td>리뷰입니다.</td>
			</tr>
			<tr>
				<td>5</td>
				<td>리뷰입니다.</td>
			</tr>
		</table>
		<div class="tablePage"><a class="preBtn" href="#">이전</a> 1 / 3 <a class="nextBtn" href="#">다음</a></div>
        <a class="wrtieBtn" href="#">리뷰작성</a>
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