<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background: url('background-with-white-space.jpg') no-repeat center center fixed; 
			  -webkit-background-size: cover;
			  -moz-background-size: cover;
			  -o-background-size: cover;
			  background-size: cover;">
<head>
<meta charset="UTF-8">
<title>Learners Adminstration</title>
</head>
<body >

		<form method="post" onsubmit="check(this.form)" id="loginform" style="justify-content:center; align-elements:center; margin-top:200px;  height: 300px;
                                                           width: 50%;
                                                           background-color: powderblue; 
		                                                 margin-left:350px; margin-right:500px;" >
			<div style="">
			    <h1 style=" text-align:center; color:deeppink; padding:10px; height:10px;">Learners Adminstration Login</h1>
			    <br>
			    <br>
			    <div id="login-box" style=" text-align:center; font-size:20px; margin-bottom:10px;">
			    		UserId:
			    </div>
			    
			    <div id="login-box" style="margin-bottom:15px; text-align:center;">
			    	<input name="username" class="form-login" value="" style="text-align:center; height:20px; width:150px;"/>
			    </div>
			    
			    <div id="login-box" style="text-align:center;font-size:20px; margin-bottom:10px; ">
			    	 Password:
			    </div>
			    <div id="login-form" style="text-align:center;">
			    		<input name="password" type="password" class="form-login" style=" text-align:center; height:20px; width:150px;"/>
			     
			    </div>
			    
			    <br/>
			    <div id="login-form" style=" text-align:center;">
			   <!--   <button type="submit" value="login" class="btn btn-primary btn-sm" onclick="check(this.form)" id="login" style=" text-align:center; height:30px; width:120px; background-color: lightblue; font-size:20px; color: green;">Login</button>-->
			    
					 <input type="button" onclick="check(this.form)" value="Login" style=" text-align:center; height:30px; width:120px; background-color: lightblue; font-size:20px; color: green;"/>
						<a href="register.jsp">    
							
							 <input type="button" value="Register" onclick='register.jsp' style=" text-align:center; height:30px; width:120px; background-color: lightblue; font-size:20px; color: green; "/>
						</a>
						
			    </div>
			    
			    <p style="color:red;">${requestScopoe.msg }</p>
			</div>
		
		</form>
	

</body>

<script type="text/javascript"><!--  src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js">-->


	function check(form)/*function to check userid & password*/
	{
	 /*the following code checkes whether the entered userid and password are matching*/
	 if(form.username.value == "admin" && form.password.value == "admin")
	  {
	    window.open('home.jsp')/*opens the target page while Id & password matches*/
	  }
	 else
	 {
	   alert("Error Password or Username")/*displays error message*/
	  }
	}
</script>
</html>