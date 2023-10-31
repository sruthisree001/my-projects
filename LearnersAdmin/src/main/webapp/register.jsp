<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%@page import="java.sql.*,java.util.*"%>
    <%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
    
    
<!DOCTYPE html>

 
 
 
 <html  style="background: url('background-with-white-space.jpg') no-repeat center center fixed; 
			  -webkit-background-size: cover;
			  -moz-background-size: cover;
			  -o-background-size: cover;
			  background-size: cover;">
 	<head>

 			
 	<title>Welcome to Learners Acadamy</title>
 	

 	</head>
 	<body>
 	
 		<form method="post" action="./register" id="Registerform" style="justify-content:center; align-elements:center; margin-top:200px;  height: 300px;
                                                           width: 50%;
                                                           background-color: powderblue; 
		                                                 margin-left:350px; margin-right:500px;" >
			
			    
			   
			    <div id="reg-box" style=" text-align:center; font-size:20px; margin-bottom:10px;">
			    		Username:
			    </div>
			    
			    <div id="reg-box" style="margin-bottom:15px; text-align:center;">
			    	<input name="username" class="form-login" value="" style="text-align:center; height:20px; width:150px;"/>
			    </div>
			    
			    <div id="reg-box" style="text-align:center;font-size:20px; margin-bottom:10px; ">
			    	 Password:
			    </div>
			    <div id="reg-form" style="text-align:center;">
			    		<input name="password" type="password" class="form-login" style=" text-align:center; height:20px; width:150px;"/>
			     
			    </div>
			    
			    
			    <div id="reg-box" style=" text-align:center; font-size:20px; margin-bottom:10px;">
			    
			    	 Usertype
			    
			    </div>
			    
			    <div id="reg-form" style="text-align:center;">
			   
			    
				    <select name="usertype"  style=" text-align:center; height:30px; width:120px; background-color: lightblue; font-size:20px; color: green;" >
								<option value="admin">Admin</option>
								<option value="user">User</option>
					</select>
						
				</div>
				<br>
			    
			    
			    <br/>
			    <div id="reg-form" style=" text-align:center;">
			   <!--   <button type="submit" value="login" class="btn btn-primary btn-sm" onclick="check(this.form)" id="login" style=" text-align:center; height:30px; width:120px; background-color: lightblue; font-size:20px; color: green;">Login</button>-->
			    
		        <!--  <input type="button" onclick="check(this.form)" value="Login" style=" text-align:center; height:30px; width:120px; background-color: lightblue; font-size:20px; color: green;"/>   -->
			    
			    						  <%
						 		//String id=request.getParameter("studentid");
								String name=request.getParameter("username");
								String pwd=request.getParameter("password");
								String usertype=request.getParameter("usertype");
								
								try
								{
								         Class.forName("com.mysql.jdbc.Driver");
								           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/AdminDB", "root", "Sruthi@1990");
								           Statement st=conn.createStatement();
								           int i=st.executeUpdate("insert into users(username,password,usertype) values('"+name+"','"+pwd+"','"+usertype+"')");
								           
								          int j=st.executeUpdate("INSERT INTO `AdminDB`.`user` (`id`, `admin`, `passsword`,`usertype`) VALUES ('"+name+"','"+pwd+"','"+usertype+"')");
								        out.println("Data is successfully inserted!");
								        }
								        catch(Exception e)
								        {
								        
								        e.printStackTrace();
								        }
                        %>
			    
			    
			    <a href="index.jsp"> 
			     <input type="button" value="Register" style=" text-align:center; height:30px; width:120px; background-color: lightblue; font-size:20px; color: green;"/>
			    </a>
			    </div>
			    
			    
			    
			    <p style="color:red;">${requestScopoe.msg }</p>
			</div>
		
		</form>
	
 	</body>
 	
 	
 </html>