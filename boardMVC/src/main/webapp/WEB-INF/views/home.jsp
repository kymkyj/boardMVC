<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resource/css/bootstrap.min.css">
  <link rel="stylesheet" href="/resources/css/home.css">
  <script src="/resources/js/jquery-1.11.2.min.js"></script>
  <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
  <script>
  	$(document).ready(function(){
  		$("#regTable").click(function(){
  			location.href="/regView";
  		});
  		$('#logoutBtn').click(function(){
  			location.href="/logout";
  		});
  	}); 
  </script>
</head>
<body>
<div>
		<span id="ajax1">
			<label>${userid}님 로그인 /</label>
			<button type="button" id="logoutBtn">로그아웃</button>
		</span>
		<span id="ajax2" hidden="hidden">
			<input type="text" name="userid" placeholder="userid">
			<input type="password" name="password" placeholder="password">
			<input type="button" id="loginBtn" value="로그인">
		</span>
</div>

<div class="container">
  <h2>Table</h2>
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th class="tablewitdh">번호</th>
        <th class="tablewitdh">제목</th>
        <th>내용</th>
        <th class="tablewitdh">작성자</th>
        <th class="tablewitdh">등록날짜</th>
        <th class="tablewitdh">삭제여부</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="tlist">
      <tr>
        <td>${tlist.idx}</td>
        <td><a href="${pageContext.request.contextPath}/detailView?idx=${tlist.idx}">${tlist.title}</a></td>
        <td>${tlist.contents}</td>
        <td>${tlist.writer}</td>
        <td>${tlist.regdate}</td>
        <td>${tlist.flag}</td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
  <div class="btoption">
  	<input type="button" value="게시글 등록" id="regTable" style="float: right;">
  	</div>
  </div>
</div>

</body>
</html>
