<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>

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
	font-size: 50px;
	margin-bottom: 20px;
}

h2 {
	font-size: 22px;
	margin-bottom: 15px;
	color: #333;
}

p {
	color: #666;
	line-height: 1.5;
	margin-bottom: 30px;
	font-size: 14px;
}

.btn-area {
	display: flex;
	gap: 10px;
	justify-content: center;
}

.btn {
	display: inline-block;
	padding: 12px 25px;
	background: #4a90e2;
	color: white;
	text-decoration: none;
	font-size: 14px;
	border-radius: 6px;
	transition: 0.3s;
}

.btn:hover {
	background: #357abd;
}

.btn-main {
	background: #ddd;
	color: #333;
}

.btn-main:hover {
	background: #ccc;
}
</style>
</head>
<body>

	<div class="result-container">

		<div class="icon-box">✅</div>

		<h2>회원가입 완료</h2>

		<p>
			회원가입이 정상적으로 처리되었습니다.<br> 로그인 후 서비스를 이용해주세요.
		</p>

		<div class="btn-area">
			<a href="/member/login" class="btn">로그인</a> <a href="/"
				class="btn btn-main">메인</a>
		</div>

	</div>

</body>
</html>
