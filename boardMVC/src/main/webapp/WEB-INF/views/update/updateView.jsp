<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>UPDATE</title>
</head>
<body>
	<table border="1" class="table">
		<thead>
			<tr>
				<th>번호</th>
        		<th>제목</th>
        		<th>내용</th>
        		<th>작성자</th>
        		<th>등록날짜</th>
        		<th>삭제여부</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="dlist">
			<tr>
				<td><input type="text" placeholder="${dlist.idx}"></td>
        		<td>${dlist.title}</td>
        		<td>${dlist.contents}</td>
        		<td>${dlist.writer}</td>
        		<td>${dlist.regdate}</td>
        		<td>${dlist.flag}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>