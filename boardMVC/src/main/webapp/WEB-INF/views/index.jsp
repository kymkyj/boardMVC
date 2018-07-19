<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <script>
$(function () {
	  'use strict';
	  $('[type="submit"]').on('click', function (e) {
	    if ($(this).hasClass('cant-submit')) {
	      e.preventDefault();
	      $(this).animate({
	        bottom: 15
	      }, 1000, function () {
	        $('form').addClass('appear').delay(800);
	        $('h1, [type="text"], [type="password"]').fadeIn(300, function () {
	          $('[type="text"]').attr('placeholder', 'user id');
	          $('[type="password"]').attr('placeholder', 'password');
	        });
	        $(this).removeClass('cant-submit').val('Login');
	      });
	    }
	  });
	});
</script>
<style>
form {
  width: 300px;
  margin: 40px auto;
  text-align: center;
  padding: 15px;
  height: 210px;
  position: relative
}

form.appear {
  background-color: #EEE
}

form h1 {
  color: #666;
  font-weight: 900;
  font-size: 35px;
  margin-top: 0;
  margin-bottom: 15px;
}

form input[type="text"],
form input[type="password"] {
  padding: 10px;
  display: block;
  margin-bottom: 15px
}

form input[type="submit"] {
  background-color: #F00;
  color: #FFF;
  border: 1px solid #F00;
  padding: 10px 20px;
  position: absolute;
  left: 50%;
  bottom: 190px;
  width: 123px;
  height: 40px;
  margin-left: -61px
}

form input[type="text"],
form input[type="password"],
h1 {
  display: none
}
</style>

<form>
  <h1>Login</h1>
  <input type="text" name="user" />
  <input type="password" name="password" />
  <input class="cant-submit" type="submit" value="Show Form" />
</form> -->
<script>
	$(document).ready(function(){
  		$("#mainBtn").click(function(){
  			location.href="selectBoard";
  			/* alert(1); */
  		})
  	})
</script>

	<body>
		<input type="button" value="메인" id="mainBtn">
	</body>
</html>