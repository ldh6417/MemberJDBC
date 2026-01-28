<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>

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
	background: white;
	padding: 40px;
	border-radius: 12px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
	width: 350px;
}

h2 {
	text-align: center;
	margin-bottom: 25px;
}

.form-group {
	margin-bottom: 18px;
}

label {
	font-size: 13px;
	color: #555;
}

input {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 6px;
	margin-top: 5px;
}

button {
	width: 100%;
	padding: 12px;
	background: #4a90e2;
	color: white;
	border: none;
	border-radius: 6px;
	cursor: pointer;
}

button:hover {
	background: #357abd;
}
</style>
</head>
<body>

	<div class="container">

		<h2>아이디 찾기</h2>

		<form action="/member/findId" method="post">

			<div class="form-group">
				<label>이름</label> <input type="text" name="name" placeholder="이름 입력"
					required>
			</div>

			<button type="submit">아이디 찾기</button>

		</form>

	</div>

</body>
</html>
