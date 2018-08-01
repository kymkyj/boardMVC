<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>글쓰기폼</title>
<!-- <link rel="stylesheet" href="resource/css/bootstrap.min.css">
<link rel="stylesheet" href="resource/css/bootstrap-theme.min.css"> -->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<!-- <script src="resource/js/jquery.min.js"></script>
<script src="resource/js/bootstrap.min.js"></script> -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>
<body>
<div class="container">
<table class="table table-bordered">
    <thead>
        <caption> 글쓰기 </caption>
    </thead>
    <tbody>
        <!-- <form action="/reg" method="post" modelAttribute="boardVO"> -->
        <!-- 
        	ajax를 통해 사용할 경우(페이지 내에서 이것을 가지고 무언가 작업을 할 경우 써주면 좋다. 
        -->
        <form action="/reg" method="post">
            <tr>
                <th>제목</th>
                <td><input type="text" placeholder="제목을 입력하세요. " name="title" class="form-control"/></td>
            </tr>
            <tr>
                <th>내용</th>
                <td><textarea cols="10" rows="5" placeholder="내용을 입력하세요. " name="contents" class="form-control"></textarea></td>
            </tr>
          <!--   <tr>
                <th>첨부파일: </th>
                <td><input type="text" placeholder="파일을 선택하세요. " name="filename" class="form-control"/></td>
            </tr>
            <tr>
                <th>비밀번호: </th>
                <td><input type="password" placeholder="비밀번호를 입력하세요" class="form-control"/></td>
            </tr> -->
            <tr>
                <td colspan="2">
                    <input type="submit" value="등록" class="pull-right"/>
                    <input type="button" value="초기" class="pull-left" onclick="javascript:location.href='/'"/>
                    <input type="button" value="글 목록으로... " class="pull-right" onclick="javascript:location.href='/selectBoard'"/>
                    <!-- <a class="btn btn-default" onclick="sendData()"> 등록 </a>
                    <a class="btn btn-default" type="reset"> reset </a>
                    <a class="btn btn-default" onclick="javascript:location.href='list.jsp'">글 목록으로...</a> -->
                </td>
            </tr>
        </form>
    </tbody>
</table>
</div>
</body>
</html>
