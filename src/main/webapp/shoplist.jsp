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
<link rel="stylesheet" href="asset/listImage.css">
<link rel="stylesheet" href="asset/footerStyle.css">
<link rel="stylesheet" href="asset/verticalMenu.css">
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
	
	//여기서부터
	String upper = request.getParameter("upperCategory");
	System.out.println("upper : " + upper);
	String sub = request.getParameter("subCategory");
	String code = "";
	if(!"".equals(upper) && upper != null){
		code += upper;
	}
	if(!"".equals(sub) && sub != null){
		code += ("_" + sub);
	}
	//여기까지 메소드로 만들지 고민 좀...
	
	List<ProductDTO> codeList = dao.getProductList(code);
%>
<c:set var="productList" value="<%= list %>"></c:set>
<c:set var="productUpperCode" value="<%= upperCode %>"></c:set>
<c:set var="productSubCode" value="<%= subCode %>"></c:set>
<c:set var="productNumCode" value="<%= numCode %>"></c:set>
<c:set var="upper" value="<%= upper %>"></c:set>
<c:set var="sub" value="<%= sub %>"></c:set>
<c:set var="productCode" value="<%= codeList %>"></c:set>
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

	<div id="content">
        <section id="vMenu">
            <div>
                <div><a class="upper" href="shoplist.jsp?upperCategory=outer">OUTER</a></div>
                <ul>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=outer&subCategory=jk">자켓</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=outer&subCategory=ct">코트</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=outer&subCategory=pd">패딩</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=outer&subCategory=jp">점퍼</a></li>
                </ul>
            </div>
            <div>
                <div><a class="upper" href="shoplist.jsp?upperCategory=top">TOP</a></div>
                <ul>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=top&subCategory=ss">반팔</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=top&subCategory=ls">긴팔</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=top&subCategory=hd">후드티</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=top&subCategory=mm">맨투맨</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=top&subCategory=sh">셔츠</a></li>
                </ul>
            </div>
            <div>
                <div><a class="upper" href="shoplist.jsp?upperCategory=bottom">BOTTOM</a></div>
                <ul>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=bottom&subCategory=dn">데님</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=bottom&subCategory=sl">슬랙스</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=bottom&subCategory=sp">숏팬츠</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=bottom&subCategory=sk">스커트</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=bottom&subCategory=jg">조거</a></li>
                </ul>
            </div>
            <div>
                <div><a class="upper" href="shoplist.jsp?upperCategory=bag">BAG</a></div>
                <ul>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=bag&subCategory=bp">백팩</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=bag&subCategory=cb">크로스백</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=bag&subCategory=ec">에코백</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=bag&subCategory=sb">숄더백</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=bag&subCategory=td">토드백</a></li>
                </ul>
            </div>
            <div>
                <div><a class="upper" href="shoplist.jsp?upperCategory=shoes">SHOES</a></div>
                <ul>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=shoes&subCategory=sn">운동화</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=shoes&subCategory=lp">로퍼</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=shoes&subCategory=bt">부츠</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=shoes&subCategory=sd">샌들</a></li>
                    <li><a class="sub" href="shoplist.jsp?upperCategory=shoes&subCategory=hl">구두</a></li>
                </ul>
            </div>
        </section>
        
        <section id="imgContainer">
            <div class="listImageContainer">
            	<c:forEach var="i" begin="0" end="3" step="1">
	                <div>
		                <c:forEach var="k" begin="${ (i * 3) + 1 }" end="${ (i + 1) * 3 }" step="1">
		                    <a class="product" href="shopdetail.jsp?code=${ productCode[k].code }">
		                        <div class="image" style="background-image: url('./asset/img/${ upper }/${ productCode[k].representative }')"></div>
		                        <div>${ productCode[k].name }</div>
		                        <div>${ productCode[k].price }원</div>
		                    </a>
		                </c:forEach>
	                </div>
                </c:forEach>
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