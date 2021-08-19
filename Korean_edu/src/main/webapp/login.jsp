<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ĭ �ѱ۱���</title>

<!--  ��Ʈ��Ʈ�� js ��� -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>

<!-- ��Ʈ��Ʈ�� css ��� -->
<link rel="stylesheet" href="css/bootstrap.css">

<!-- ��Ʈ -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@300&display=swap" rel="stylesheet">

<style>
*{
  margin: 0px;
  padding: 0px;
  text-decoration: none;
  font-family:sans-serif;

}

body {
  font-family: 'Hahmlet', serif;
  background-image: #34495e;
}

.loginForm {
  position:absolute;
  width:500px;
  height:400px;
  padding: 30px, 20px;
  background-color:#FFFDE5;
  text-align:center;
  top:50%;
  left:50%;
  transform: translate(-50%,-50%);
  border-radius: 15px;
}

.loginForm h2{
  text-align: center;
  margin: 30px;
}

.idForm{
  border-bottom: 2px solid #adadad;
  margin: 30px;
  padding: 10px 10px;
}

.passForm{
  border-bottom: 2px solid #adadad;
  margin: 30px;
  padding: 10px 10px;
}

.id {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.pw {
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
  width:80%;
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

</style>

</head>

<body style="background-color: #FFFDE5;">
    <form action="LoginCon" method="post" class="loginForm">
      <img src="img/logo.png">
      <img src="img/login.png">
      <div class="idForm">
        <input type="text" class="id" name="id" id="id" placeholder="���̵�">
      </div>
      <div class="passForm">
        <input type="password" class="pw" name="password" id="password" placeholder="��й�ȣ">
      </div>
      <button type="submit" class="btn">
        �α���
      </button>
 
      <div class="bottomText">
        ���̵� ������? <a href="join.jsp">ȸ�������ϱ�</a>
      </div>
    </form>
 
  </body>
</html>

</html>