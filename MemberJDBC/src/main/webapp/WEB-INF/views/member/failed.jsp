<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 실패</title>

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
	box-shadow: 0 5px 15px rgba(0,0,0,0.1);
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
	background: #e74c3c;
	color: white;
	text-decoration: none;
	font-size: 14px;
	border-radius: 6px;
	transition: 0.3s;
}

.btn:hover {
	background: #c0392b;
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

	<div class="icon-box">❌</div>

	<h2>회원가입 실패</h2>

	<p>
		회원가입 처리 중 오류가 발생했습니다.<br>
		입력 내용을 다시 확인해주세요.
	</p>

	<div class="btn-area">
		<a href="/member/signup" class="btn">다시 시도</a>
		<a href="/" class="btn btn-main">메인</a>
	</div>

</div>

</body>
</html>
