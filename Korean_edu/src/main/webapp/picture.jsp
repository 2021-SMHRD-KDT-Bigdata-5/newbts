<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<% MemberDTO member = (MemberDTO)session.getAttribute("member"); 
	 String path = request.getRealPath("uploadedFiles");
    int size = 1024 * 1024 * 20; //20MB
    String str = "";
    String filename = "";
    String original_filename = "";
    try{
       MultipartRequest multiRequest = new MultipartRequest(request, path, size, "EUC-KR", new DefaultFileRenamePolicy());
       
       Enumeration files = multiRequest.getFileNames();
       str = (String)files.nextElement();
       filename = multiRequest.getFilesystemName(str);
       original_filename = multiRequest.getOriginalFileName(str);
       
       System.out.println("str : "+str);
       System.out.println("filename : "+filename);
       System.out.println("original_filename : "+original_filename);
    } catch (Exception e){
       e.printStackTrace();
    }%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찰칵 한글교실</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
<style>
body {
	font-family: 'Gamja Flower', cursive;
}

a:link { color: white; text-decoration: none;}
 a:visited { color: white; text-decoration: none;}
 a:hover { color: white; text-decoration: none;}
 
.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 30px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #ff7f00;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #f26600}

.button:active {
  background-color: #f26600;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>

 <script type="text/javascript" src="vendor/jquery/jquery.js"></script>

</head>
<body style="background-color: #FFFDE5;">


	<header>
		<!-- 占쏙옙占썩�ㅿ옙 占쏙옙占쏙옙 -->
		<nav class="navbar fixed-top navbar-light"
			style="background-color: #ffb115;">
			<div class="container">
	
				<a class="navbar-brand" href="main.jsp"> <img
					src="img/logo.png" alt="" class="d-inline-block align-text-top">
				</a>
				<%if(member == null){ %>
				<button class="btn btn-warning" style="color : #fff; font-size : 25px;" ><a href="login.jsp">로그인</a></button>
				<%} else {%>
				<div>
				<img src="img/kid.png" style="width : 40px;">
				<span style="font-size : 25px"><%=member.getName() %> (<%=member.getPoint() %>포인트)</span>
				<button class="btn btn-warning" style="color : #fff; font-size : 25px;"><a href="logout.jsp">로그아웃</a></button>
				<% } %>
				</div>
			</div>
		</nav>
	</header>
	<div class="container">
	<hr class="my-5">
		<hr class="my-5">
<form method="post" enctype="multipart/form-data" action="imgup.jsp">
<input type="file" name="filename1" size=40>
<input type="submit" value="업로드"><br><br>
</form>
</div>
</body>
</html>