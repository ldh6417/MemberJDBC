<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>

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
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
	max-width: 420px;
	width: 90%;
}

.icon-box {
	font-size: 45px;
	margin-bottom: 15px;
}

h2 {
	font-size: 22px;
	color: #333;
	margin-bottom: 10px;
}

p {
	color: #666;
	font-size: 14px;
	margin-bottom: 25px;
}

.info-box {
	background: #f1f3f5;
	padding: 15px;
	border-radius: 8px;
	text-align: left;
	margin-bottom: 25px;
	font-size: 14px;
}

.info-box div {
	margin-bottom: 6px;
	color: #333;
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
	width: 100%;
	box-sizing: border-box;
	border: none;
	cursor: pointer;
}

.btn-main {
	background: #4a90e2;
	color: white;
}

.btn-main:hover {
	background: #357abd;
}

.btn-edit {
	background: #27ae60;
	color: white;
}

.btn-edit:hover {
	background: #219150;
}

.btn-delete {
	background: #e74c3c;
	color: white;
}

.btn-delete:hover {
	background: #c0392b;
}

.btn-list {
	background: #9b59b6;
	color: white;
}

.btn-list:hover {
	background: #8e44ad;
}

.btn-logout {
	background: #ddd;
	color: #333;
}

.btn-logout:hover {
	background: #ccc;
}
</style>
</head>
<body>

	<div class="result-container">

		<div class="icon-box">✅</div>

		<h2>로그인 성공</h2>

		<p>환영합니다! 로그인한 회원 정보입니다.</p>

		<div class="info-box">
			<div>
				<strong>이름 :</strong> ${loginMember.name}
			</div>
			<div>
				<strong>아이디 :</strong> ${loginMember.ID}
			</div>
			<div>
				<strong>비밀번호 :</strong> ${loginMember.password}
			</div>
		</div>

		<div class="btn-area">

			<a href="/" class="btn btn-main">메인 페이지</a> <a
				href="/member/update?name=${loginMember.name}&ID=${loginMember.ID}&password=${loginMember.password}"
				class="btn btn-edit"> 정보 수정하기 </a>

			<form action="/member/delete" method="post">
				<input type="hidden" name="ID" value="${loginMember.ID}">
				<button type="submit" class="btn btn-delete">아이디 삭제하기</button>
			</form>

			<a href="/member/list" class="btn btn-list">회원 리스트 보기</a> <a
				href="/member/login" class="btn btn-logout">로그인 화면 돌아가기</a>

		</div>

	</div>

</body>
</html>
