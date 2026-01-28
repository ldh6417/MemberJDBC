<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기 결과</title>

<style>
body {
	background: #f5f6f8;
	font-family: Arial, sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.result-container {
	background: white;
	padding: 40px;
	border-radius: 12px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
	text-align: center;
	width: 360px;
}

h2 {
	margin-bottom: 20px;
	color: #333;
}

.result-text {
	font-size: 15px;
	color: #444;
	margin-bottom: 25px;
}

.btn {
	display: inline-block;
	padding: 10px 22px;
	background: #4a90e2;
	color: white;
	border-radius: 6px;
	text-decoration: none;
	transition: 0.3s;
}

.btn:hover {
	background: #357abd;
}
</style>
</head>
<body>

	<div class="result-container">

		<h2>아이디 찾기 결과</h2>

		<c:choose>

			<c:when test="${findMember != null}">
				<div class="result-text">
					회원님의 아이디는 <strong>${findMember.ID}</strong> 입니다.
				</div>
			</c:when>

			<c:otherwise>
				<div class="result-text">일치하는 회원 정보가 없습니다.</div>
			</c:otherwise>

		</c:choose>

		<a href="/member/login" class="btn">로그인 화면</a>

	</div>

</body>
</html>
