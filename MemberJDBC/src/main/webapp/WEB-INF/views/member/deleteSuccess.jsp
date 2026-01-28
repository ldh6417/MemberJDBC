<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 삭제 완료</title>

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
	text-align: center;
	background: #ffffff;
	padding: 45px 40px;
	border-radius: 12px;
	box-shadow: 0 5px 15px rgba(0,0,0,0.1);
	max-width: 420px;
	width: 90%;
}

.icon-box {
	font-size: 46px;
	margin-bottom: 15px;
}

h2 {
	font-size: 22px;
	color: #333;
	margin-bottom: 12px;
}

p {
	color: #666;
	font-size: 14px;
	margin-bottom: 28px;
	line-height: 1.6;
}

.btn-area {
	display: flex;
	flex-direction: column;
	gap: 12px;
}

.btn {
	padding: 12px;
	border-radius: 6px;
	text-decoration: none;
	font-size: 14px;
	transition: 0.3s;
	text-align: center;
}

.btn-main {
	background: #4a90e2;
	color: white;
}

.btn-main:hover {
	background: #357abd;
}

.btn-login {
	background: #27ae60;
	color: white;
}

.btn-login:hover {
	background: #219150;
}
</style>
</head>
<body>

<div class="result-container">

	<div class="icon-box">🗑️</div>

	<h2>회원 삭제 완료</h2>

	<p>
		회원 정보가 정상적으로 삭제되었습니다.<br>
		그동안 이용해주셔서 감사합니다.
	</p>

	<div class="btn-area">
		<a href="/" class="btn btn-main">메인 페이지</a>
		<a href="/member/login" class="btn btn-login">로그인 화면</a>
	</div>

</div>

</body>
</html>
f