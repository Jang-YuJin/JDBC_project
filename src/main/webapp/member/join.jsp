<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<div>
			<span><img src="../asset/logo240x36B.png"></span>
		</div>
	</header>
	
	<section>
		<div>회원가입</div>
		<form action="#">
			이름
			<input type="text" name="name">
			아이디
			<input type="text" name="id">
			비밀번호
			<input type="password" name="pw">
			비밀번호 확인
			<input type="password" name="pw_ch">
			이메일
			<input type="text" name="email">
			약관동의
			<input type="submit" value="확인">
		</form>
	</section>
</body>
</html>