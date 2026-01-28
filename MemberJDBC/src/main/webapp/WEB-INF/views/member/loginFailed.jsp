<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 실패</title>

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
	padding: 50px 40px;
	border-radius: 12px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
	max-width: 400px;
	width: 90%;
}

.icon-box {
	font-size: 45px;
	margin-bottom: 18px;
}

h2 {
	font-size: 22px;
	margin-bottom: 12px;
	color: #333;
}

p {
	color: #666;
	line-height: 1.5;
	margin-bottom: 25px;
	font-size: 14px;
}

.btn-login {
	display: inline-block;
	padding: 12px 30px;
	background: #4a90e2;
	color: white;
	text-decoration: none;
	font-size: 14px;
	border-radius: 6px;
	transition: 0.3s;
	margin-bottom: 18px;
}

.btn-login:hover {
	background: #357abd;
}

.signup-text {
	font-size: 13px;
	color: #666;
}

.signup-text a {
	color: #4a90e2;
	text-decoration: none;
	font-weight: bold;
	margin-left: 4px;
}

.signup-text a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>

	<div class="result-container">

		<div class="icon-box">❌</div>

		<h2>로그인 실패</h2>

		<p>
			아이디 또는 비밀번호가 올바르지 않습니다.<br> 다시 확인해주세요.
		</p>

		<a href="/member/login" class="btn-login">다시 로그인</a>

		<div class="signup-text">
			회원이 아니십니까? <a href="/member/insert">회원가입</a>
		</div>

	</div>

</body>
</html>
