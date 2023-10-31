<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    	<%@page import="java.sql.DriverManager"%>
							<%@page import="java.sql.ResultSet"%>
							<%@page import="java.sql.Statement"%>
							<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html  style="background: url('background-with-white-space.jpg') no-repeat center center fixed; 
			  -webkit-background-size: cover;
			  -moz-background-size: cover;
			  -o-background-size: cover;
			  background-size: cover; resize:inherit;">
<head>
<meta charset="UTF-8">
<title> Admin Home</title>
<script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>

</head>

<body style="resize:inherit;">
		<div name="heading" style="background-color:transparent; margin-top:140px; height:90px; width:800px; text-align:center; margin-left:320px;">
			 <h1 style=" text-align:center; color:deeppink; padding:10px; height:10px; ">Hello Admin, Welcome to Learners Adminstration</h1>				
	
		</div>
		
		
		<div  style="background-color:transparent; height:350px; width:800px; display: flex; margin-left: 300px;">
		 
		
		    <div name="leftcolumn" id="leftcolumn" style="background-color:lightpink;flex: 25%; diaplsy:flex;text-align:center; font-size: 30px; color:deeppink; margin-top:20px; ">
			    
			    <table width="100%" height:"100%">
						  <tr height="60px">
						    <td name="students" id="students" style="background-color:lightgreen; size: 20%;"> <a href='students.jsp' onclick='show_more_menu()'  style="color:deeppink;"><i>Students</i></a></td>
						  </tr>
						  <tr  height="60px">
						  <td name="teachers" id="teachers" style="background-color:lightpink;flex: 20%;" > <a href='teacher.jsp' onclick='show_more_menu()'  style="color:deeppink;"> <i>Teachers</i></a></td>
						  </tr>
						  
						  <tr  height="60px"> 
						  
						  <td  name="classes" id="classes"   style="background-color:lightgreen;flex: 20%;"><a href='classes.jsp' onclick='show_more_menu()'  style="color:deeppink;"> <i>Classes</i> </a> </td>
						  </tr>
						  
						  <tr height="60px">
						  	<td  name="subjects" id="subjects" style="background-color:lightpink;flex: 20%;"><a href='subjects.jsp' onclick='show_more_menu()'  style="color:deeppink;"> <i>Subjects</i></a></td>
						  </tr>
						  
						  <tr  height="60px">
						  	<td  name="logout" id="logout"  style="background-color:lightgreen;flex: 20%;"><a href='index.jsp' onclick='show_more_menu()'  style="color:deeppink;"><i>logout</i></a></td>
						  </tr>
			
				</table>
			    
		    
		  </div>
		    
			<div right="rightcolumn" id="rightcolumn"   style="background-color:transparent;flex: 75%;" >
			
			 		
				<div>
						
							
									<%
									String id = request.getParameter("userId");
									String driverName = "com.mysql.jdbc.Driver";
									String connectionUrl = "jdbc:mysql://localhost:3306/";
									String dbName = "AdminDB";
									String userId = "root";
									String password = "Sruthi@1990";
									
									try {
									Class.forName(driverName);
									} catch (ClassNotFoundException e) {
									e.printStackTrace();
									}
									
									Connection connection = null;
									Statement statement = null;
									ResultSet resultSet = null;
									%>
							<h2 align="center" style="color:deeppink; margin-bottom:2px; margin-top:7px;" ><font><strong>Students Details</strong></font></h2>
							<table align="center" cellpadding="5" cellspacing="5" border="1">
							<tr>
							
							</tr>
							<tr bgcolor="lightpink">
							<td><b>sid</b></td>
							
							<td><b>Name</b></td>
							<td><b>Address</b></td>
							<td><b>Ages</b></td>
							</tr>
									<%
									try{ 
									connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
									statement=connection.createStatement();
									String sql ="SELECT * FROM student";
									
									resultSet = statement.executeQuery(sql);
									while(resultSet.next()){
									%>
							<tr bgcolor="transparent">
							
							<td><%=resultSet.getString("StuId") %></td>
							<td><%=resultSet.getString("name") %></td>
							<td><%=resultSet.getString("Address") %></td>
							<td><%=resultSet.getString("age") %></td>						
							</tr>
							
									<% 
									}
									
									} catch (Exception e) {
									e.printStackTrace();
									}
									%>
							</table>
												
					
				
				</div>
				
				<div id="login-form" style=" text-align:center;">
			   
			   <!--   <button type="submit" value="login" class="btn btn-primary btn-sm" onclick="check(this.form)" id="login" style=" text-align:center; height:30px; width:120px; background-color: lightblue; font-size:20px; color: green;">Login</button>-->
			    
					<!--  <input type="button" onclick="check(this.form)" value="Add Students" style=" text-align:center; height:30px; width:120px; background-color: transparent; font-size:20px; color: green;"/>
						 -->   
						 
						 <a href="addstudents.jsp" style=" font-size:20px; color:Deeppink"> Add students  </a> 
							
						
						
			    </div>
				
			
			
			
			
			</div>
			
		
		</div>
		
		
		
		
		


</body>























-->