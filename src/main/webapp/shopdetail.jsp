<%@page import="project.shopModel.ReviewDTO"%>
<%@page import="project.shopService.ShopDAO"%>
<%@page import="project.shopModel.ProductDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
    <head>
        <link rel="stylesheet" href="asset/header.css">
        <link rel="stylesheet" href="asset/shopDetail.css">
        <link rel="stylesheet" href="asset/footerStyle.css">
        
        <meta charset="UTF-8">
        <title>BANANAMILK</title>
    </head>
    <%
    ShopDAO dao = new ShopDAO();
    
	String code = request.getParameter("code");
	String[] separationCode = code.split("_");//[0]에는 upperCode, [1]에는 subCode, [2]에는 숫자
	
	List<ProductDTO> codeList = dao.getProductList(code);

	List<ReviewDTO> dto = dao.getReviewList(code);
    %>
    <c:set var="productCode" value="<%= codeList %>"></c:set>
    <c:set var="separationCode" value="<%= separationCode %>"></c:set>
    <c:set var="review" value="<%= dto %>"></c:set>
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
	        <div id="imgTitle" style="background-image: url('./asset/img/${ separationCode[0] }/${ productCode[0].representative }')"></div>
	        
	        <div id="imgDesc">
	            <div id="productName">
	                ${ productCode[0].name }
	            </div>
	            <div id="productPrice">
	                ${ productCode[0].price }원
	            </div>
	            <div id="productBtn">
	                <a id="purchase" href="#"><div>구매하기</div></a>
	                <a  id="shoppingBasket" href="#"><div>장바구니</div></a>
	            </div>
	        </div>
	    </section>
	
		<section id="imgDetail" style="background-image: url('${ productCode[0].details }')">
		</section>

		<section id="reviewContainer">
			<table class="tableList">
				<tr>
					<th colspan="3">리뷰</th>
				</tr>
				<tr>
					<th class="title">제목</th>
					<th class="writer">작성자</th>
					<th class="writeD">작성일</th>
				</tr>
				<c:forEach var="i" begin="0" end="4" step="1">
					<tr>
						<td class="title">${ review[i].title }</td>
						<td class="writer">${ review[i].id }</td>
						<td class="writeD">${ review[i].write_date }</td>
					</tr>
				</c:forEach>
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