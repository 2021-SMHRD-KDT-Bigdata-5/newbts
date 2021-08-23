<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
MemberDTO member = (MemberDTO) session.getAttribute("member");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>학부모 페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap"
	rel="stylesheet">

<style>
body {
	font-family: 'Nanum Gothic Coding', monospace;
}

a:link {
	color: green;
	text-decoration: none;
}

a:visited {
	color: green;
	text-decoration: none;
}

a:hover {
	color: white;
	text-decoration: none;
}

.UpdateForm {
  position:relative;
  width:500px;
  height:400px;
  padding: 30px, 20px;
  background-color:#FFFDE5;
  text-align:center;
  top:80%;
  border-radius: 15px;
}

.inputForm{
  border-bottom: 2px solid #adadad;
  margin: 30px;
  padding: 10px 10px;
}

.input {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}


.btn {
  position:relative;
  left:40%;
  transform: translateX(-50%);
  margin-bottom: 40px;
  width:20%;
  height:40px;
  background: linear-gradient(125deg,#ffd216,#ffc02f,#ff7f00);
  background-position: left;
  background-size: 200%;
  color:white;
  font-weight: bold;
  border:none;
  cursor:pointer;
  transition: 0.4s;
  display:inline;
}

.btn:hover {
  background-position: right;
}

.bottomText {
  text-align: center;
}

#center {
          display: inline-block;
          text-align: center;
        }
        
</style>

</head>
<body style="background-color: #FFFDE5;">
	<header>
		<nav class="navbar fixed-top navbar-light"
			style="background-color: #e7ffd1;">
			<div class="container">

				<a class="navbar-brand" href="main.jsp"> <img src="img/logo.png"
					alt="" class="d-inline-block align-text-top">
				</a>

				<ul class="nav justify-content-center">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="phome.jsp">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="learn.jsp">학습현황</a></li>
					<li class="nav-item"><a class="nav-link" href="form.jsp">고객센터</a></li>
					<li class="nav-item"><a class="nav-link" href="form.jsp">마이페이지</a></li>
					<li class="nav-item">
						<%
						if (member == null) {
						%> <a class="nav-link" href="login.jsp"
						class="nav-link">로그인</a> <%
 } else {
 %> <a class="nav-link" href="logout.jsp"
						class="nav-link">로그아웃</a> <%
 }
 %>
					</li>
				</ul>

			</div>
		</nav>
	</header>
	<body style="background-color: #FFFDE5;">
	<div class="container">

		<hr class="my-5">
		<hr class="my-5"?>
		<div style="text-align: center;">
			<img src="img/info.png" style="max-width : 100%; height : auto;">
		</div>
		<br><br>
		<table class="table table-striped" style="text-align : center;">
			<tbody>
			<tr>
					<th scope="row">아이디</th>
					<td><%= member.getId()%></td>
			</tr>
			<tr>
					<th scope="row">이름</th>
					<td><%= member.getName()%></td>
			</tr>
			<tr>
					<th scope="row">생년월일</th>
					<td><%= member.getBirth()%></td>
			</tr>
			<tr>
					<th scope="row">연락처</th>
					<td><%= member.getTel()%></td>
			</tr>
			<tr>
					<th scope="row">주소</th>
					<td><%= member.getAddress()%></td>
			</tr>

		</tbody>
		
		</table>
		
		<br><br><br>
		<h1> 회원 정보 수정하기</h1>

	<form action="/Infoupdate" method="post" class="UpdateForm">
		<div class="inputForm" style="text-align: left;">
			<input type="text" class="input" name="name" id="name" placeholder="이름">
		</div>
		<div class="inputForm" style="text-align: left;">
			<input type="text" class="input" name="birth" id="birth" placeholder="생년월일">
		</div>
		<div class="inputForm" style="text-align: left;">
			<input type="text" class="input" name="tel" id="tel" placeholder="연락처">
		</div>
		<div class="inputForm" style="text-align: left;">
			<input type="text" class="input" name="address" id="address"
				placeholder="주소">
		</div>
	
			<div style="text-align : center;">
	<input type="button" class="btn" onClick="buttonClick()" value = "정보수정">	
	</div>
	</form>
</div>
	<script>
    $('.password').focusout(function () {
        var pwd1 = $("#password").val();
        var pwd2 = $("#password2").val();
  
        if ( pwd1 != '' && pwd2 == '' ) {
            null;
        } else if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
                $("#alert-success").css('display', 'inline-block');
                $("#alert-danger").css('display', 'none');
            } else {
                alert("비밀번호가 일치하지 않습니다. 비밀번호를 재확인해주세요.");
                $("#alert-success").css('display', 'none');
                $("#alert-danger").css('display', 'inline-block');
            }
        }
    });
    
    function buttonClick() {
    	var view1 = document.getElementById('views');
    	var view2 = document.getElementById('UpdateForm');
    	if(view1.style.display=='block' && view2.style.display=='none'){
			view1.style.display='none';
			view2.style.display='block';
		}
    }
	
	</script>
</body>
</body>
</html>