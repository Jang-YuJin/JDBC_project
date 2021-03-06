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
    
	String code = request.getParameter("code");//이 페이지 들어오기 전에 보내준 code
	String[] separationCode = code.split("_");//[0]에는 upperCode, [1]에는 subCode, [2]에는 숫자
	
	List<ProductDTO> codeList = dao.getProductList(code);//이 페이지에 해당하는 상품의 List가 1개만 있을 것임
	
	
	List<ReviewDTO> pageCnt = dao.getReviewList(code);//마지막 페이지 계산하려고 만든 list
	int lastPage = pageCnt.size() % 5 == 0 ? pageCnt.size() / 5 : pageCnt.size() / 5 + 1;//마지막 페이지 계산
	

	Integer nowPage;
	if(request.getParameter("nowPage") == null){
		nowPage = 1;
	}else{
		nowPage = Integer.valueOf(request.getParameter("nowPage"));
		if(nowPage <= 1){
			nowPage = 1;
		}else if(nowPage >= lastPage){
			nowPage = lastPage;
		}
	}
	System.out.println("nowPage : " + nowPage);
	
	List<ReviewDTO> dto = dao.getReviewList(code, nowPage);//리뷰조회에서 보여지는 list
	System.out.println("dto.size() : " + dto.size());

    %>
    <c:set var="productCode" value="<%= codeList %>"></c:set>
    <c:set var="separationCode" value="<%= separationCode %>"></c:set>
    <c:set var="nowPage" value="<%= nowPage %>"></c:set>
    <c:set var="code" value="<%= code %>"></c:set>
    <c:set var="dto" value="<%= dto %>"></c:set>
    <c:set var="lastPage" value="<%= lastPage %>"></c:set>
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
				<c:forEach var="dto" items="${ dto }">
					<tr>
						<td class="title"><a href="#">${ dto.title }</a></td>
						<td class="writer">${ dto.id }</td>
						<td class="writeD">${ dto.write_date }</td>
					</tr>
				</c:forEach>
			</table>
			<div class="tablePage"><a class="preBtn" href="shopdetail.jsp?nowPage=${ nowPage - 1 }&code=${ code }">이전</a> ${ nowPage } / ${ lastPage } <a class="nextBtn" href="shopdetail.jsp?nowPage=${ nowPage + 1 }&code=${ code }">다음</a></div>
	        <a class="writeBtn" href="#">리뷰작성</a>
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