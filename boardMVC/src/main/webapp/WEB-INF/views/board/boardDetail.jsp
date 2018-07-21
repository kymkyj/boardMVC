<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="src/main/webapp/resources/css/home.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- 
	down을 받아서 resource/js 에 넣어서 경로 설정하는 부분이 좋음
 -->
 <!-- 
 	스크립트 헤더와 바디에 넣는 차이?
 	DOM 구조
 	읽어드리는 순서로 body에만 넣는경우도있음 
  -->
<title>DETAIL</title>
<script>
	$(document).ready(function(){
		$("#deleteBtn").click(function(){
			// alert("${num}");
			if(confirm("삭제 하시겠습니까?") == true){
				alert("삭제되었습니다");
				location.href="${pageContext.request.contextPath}/deleteinfo?idx=${num}"
				return true;
			}else{
				return false;
			}
		});
		$("#updateBtn").click(function(){
			// alert("${num}");
			if(confirm("수정 하시겠습니까?") == true){
				alert("수정되었습니다");
				location.href="${pageContext.request.contextPath}/updateview?idx=${num}"
						return true;
			}else{
				alert("취소되었습니다");
				return false;
			}
		});
	});
</script>
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
				<td>${dlist.idx}</td>
        		<td>${dlist.title}</td>
        		<td>${dlist.contents}</td>
        		<td>${dlist.writer}</td>
        		<td>${dlist.regdate}</td>
        		<td>${dlist.flag}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		<input type="button" id="updateBtn" value="수정">
		<input type="button" id="deleteBtn" value="삭제">
	</div>
	<a href="${pageContext.request.contextPath}/selectBoard">목록으로</a>
</body>
</html>