<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<script src="resource/js/jquery.min.js"></script>
<script src="resource/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/css/login.css">
<form action="/loginCheck" style="border:1px solid #ccc">
  <div class="container">
    <h1>Sign Up</h1>
    <hr>
    <label><b>User</b>
    <input type="text" placeholder="Enter User" name="userid" required>
	</label>
	
    <label><b>Password</b>
    <input type="password" placeholder="Enter Password" name="password" required>
	</label>
	<!--
    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>

    <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    -->
    <div class="clearfix">
      <button type="submit" class="loginBtn">Sign Up</button>
    </div>
  </div>
</form>
<!-- <script>
	$(document).ready(function(){
  		$("#mainBtn").click(function(){
  			location.href="selectBoard";
  			/* alert(1); */
  		})
  	})
</script>

	<body>
		<input type="button" value="메인" id="mainBtn">
	</body> -->
</html>