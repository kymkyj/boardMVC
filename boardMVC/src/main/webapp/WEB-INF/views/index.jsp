<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<script src="/resources/js/jquery-1.11.2.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/css/login.css">
<script>
	$(document).ready(function(){
		$('#loginBtn').click(function(){
			var text=$('#userid').val();
			var regexp = /[0-9a-zA-Z]/;
			
			for(var i=0; i<text.length; i++){
				if(text.charAt(i) != "" && regexp.test(text.charAt(i)) == false){
					alert("한글이나 특수문자는 입력불가능!");
					return false;
				}//if
			}//for
			plusCheck();
		});//click
		function plusCheck(){
			var checkid = $('#userid').val();
			var checkpw = $('#password').val();
			if(checkid == '' || checkid==null){
				alert("아이디를 입력하세요!");
				return false;
			}//if
			if(checkpw == '' || checkpw==null){
				alert("패스워드를 입력하세요!");
				return false;
			}
			$.ajax({
				type : "POST",
				url : "/logincheck",
				data : {
					"id":checkid,
					"password":checkpw,
				},
				dataType : "",
				success : function(msg){
					if(msg=="success"){
						location.href="/login?id="+checkid;
					}else{
						alert("입력한 정보가 일치하지 않습니다!");
						return false;
					}
				},
				error : function(request, status, error){
					alert("code:"+request.status+"\n"+"message:"
							+request.responseText+"\n"+"error:"+error);
				}
			});//ajax
		}//plusCheck
		
	});//ready


</script>


<form action="/loginCheck" style="border:1px solid #ccc">
  <div class="container">
  
    <h1>Sign Up</h1>
    <hr>
    <label><b>User</b>
    <input type="text" placeholder="Enter User" id="userid" name="userid" required>
	</label>
	
    <label><b>Password</b>
    <input type="password" placeholder="Enter Password" id="password" name="password" required>
	</label>
	<!--
    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>

    <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    -->
    <div class="clearfix">
      <button type="button" id="loginBtn">Sign Up</button>
    </div>
  </div>
</form>
</html>