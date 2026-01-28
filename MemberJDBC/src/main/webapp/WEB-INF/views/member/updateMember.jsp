<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>

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

.container {
	background: #ffffff;
	padding: 40px;
	border-radius: 12px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
	width: 420px;
}

h2 {
	text-align: center;
	margin-bottom: 25px;
	color: #333;
}

.form-group {
	margin-bottom: 15px;
}

label {
	font-size: 13px;
	color: #555;
	display: block;
	margin-bottom: 5px;
}

input {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 6px;
	font-size: 14px;
}

input:focus {
	border-color: #4a90e2;
	outline: none;
}

button {
	width: 100%;
	padding: 12px;
	background: #4a90e2;
	border: none;
	color: white;
	border-radius: 6px;
	font-size: 15px;
	cursor: pointer;
	margin-top: 15px;
}

button:hover {
	background: #357abd;
}
</style>
</head>
<body>

	<div class="container">

		<h2>회원정보 수정</h2>

		<form action="/member/update" method="post">

			<!-- 기존 아이디 (WHERE 조건용) -->
			<input type="hidden" name="oldID" value="${param.ID}">

			<div class="form-group">
				<label>이름</label> <input type="text" name="name"
					value="${param.name}" required>
			</div>

			<div class="form-group">
				<label>아이디</label> <input type="text" name="ID" value="${param.ID}"
					required>
			</div>

			<div class="form-group">
				<label>비밀번호</label> <input type="password" name="password"
					value="${param.password}" required>
			</div>

			<button type="submit">수정하기</button>

		</form>

	</div>

</body>
</html>
