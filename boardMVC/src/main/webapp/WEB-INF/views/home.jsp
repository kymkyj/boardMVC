<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="/resources/css/home.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
  	$(document).ready(function(){
  		$("#regTable").click(function(){
  			location.href="/regView";
  			// alert(1);
  		});
  	});
  </script>
</head>
<body>

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
