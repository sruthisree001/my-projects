

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
<meta charset="UTF-8">
<title> Admin Home</title>
<script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>

</head>

<body>
		<div name="heading" style="background-color:transparent; margin-top:140px; height:90px; width:800px; text-align:center; margin-left:320px;">
			 <h1 style=" text-align:center; color:deeppink; padding:10px; height:10px;">Hello Admin, Welcome to Learners Adminstration</h1>				
	
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
					<form  method="post">
						
						<div id="student" style=" text-align:center; font-size:20px; margin-bottom:10px;">
			    			studentId:
						 </div>
						    
						    <div id="student" style="margin-bottom:15px; text-align:center;">
						    	<input name="studentid" class="student" value="" style="text-align:center; height:20px; width:150px;"/>
						    </div>
						
						
						
						
						
						<div id="student" style=" text-align:center; font-size:20px; margin-bottom:10px;">
			    			studentname:
						 </div>
						    
						    <div id="student" style="margin-bottom:15px; text-align:center;">
						    	<input name="studentname" class="student" value="" style="text-align:center; height:20px; width:150px;"/>
						    </div>
						    
						    <div id="student" style="text-align:center;font-size:20px; margin-bottom:10px; ">
						    	 Address:
						    </div>
						    <div id="student" style="text-align:center;">
						    		<input name="studentaddress" type="text" class="student" style=" text-align:center; height:20px; width:150px;"/>
						     
						    </div>
						    
						    <div id="student" style="text-align:center;font-size:20px; margin-bottom:10px; ">
						    	 age:
						    </div>
						    <div id="student" style="text-align:center;">
						    		<input name="studentage" type="text" class="student" style=" text-align:center; height:20px; width:150px;"/>
						     
						    </div>
						    
						  <%
						 		String id=request.getParameter("studentid");
								String name=request.getParameter("studentname");
								String address=request.getParameter("studentaddress");
								String age=request.getParameter("studentage");
								
								try
								{
								         Class.forName("com.mysql.jdbc.Driver");
								           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/AdminDB", "root", "Sruthi@1990");
								           Statement st=conn.createStatement();
								           int i=st.executeUpdate("insert into student(id,name,address,age) values('"+id+"','"+name+"','"+address+"','"+age+"')");
								        out.println("Data is successfully inserted!");
								        }
								        catch(Exception e)
								        {
								        
								        e.printStackTrace();
								        }
                        %>
						    
						    <div id="student" style="text-align:center;font-size:20px; margin-bottom:10px;">
						    <a href="students.jsp"> 
							     <input type="button" value="Add student" style=" text-align:center; height:30px; width:120px; background-color: lightblue; font-size:20px; color: green;"/>
							  </a>
							 </div> 
							  
							 
							  
							 
						
						
				    </form>
							
				</div>
			
			
			</div>
			
		
		</div>
		
		
		
		
		


</body>





















