<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>

<style>
body {
	background: #f5f6f8;
	font-family: Arial, sans-serif;
	padding: 40px;
}

.container {
	max-width: 800px;
	margin: auto;
	background: white;
	padding: 30px;
	border-radius: 12px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	margin-bottom: 25px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 12px;
	border-bottom: 1px solid #ddd;
	text-align: center;
	font-size: 14px;
}

th {
	background: #4a90e2;
	color: white;
}

tr:hover {
	background: #f1f3f5;
}

.btn-area {
	margin-top: 25px;
	text-align: center;
}

.btn-back {
	display: inline-block;
	padding: 12px 25px;
	background: #4a90e2;
	color: white;
	border-radius: 6px;
	text-decoration: none;
	transition: 0.3s;
}

.btn-back:hover {
	background: #357abd;
}
</style>
</head>
<body>

	<div class="container">

		<h2>회원 리스트</h2>

		<table>
			<tr>
				<th>No</th>
				<th>이름</th>
				<th>아이디</th>
				<th>비밀번호</th>
			</tr>

			<!-- 회원 목록 출력 -->
			<c:forEach var="m" items="${memberList}">
				<tr>
					<td>${m.no}</td>
					<td>${m.name}</td>
					<td>${m.ID}</td>
					<td>******</td>
				</tr>
			</c:forEach>


		</table>

		<div class="btn-area">
			<a href="/member/login" class="btn-back">돌아가기</a>
		</div>

	</div>

</body>
</html>
