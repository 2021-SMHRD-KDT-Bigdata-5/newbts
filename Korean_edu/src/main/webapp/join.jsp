<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.id, .pw, .name, .brith, .tel, .add {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 45px;
	background: white;
}

.idForm, .pwForm, .nameForm, .brithForm, .telForm, .addForm {
	margin-bottom : 1%;
}

.JoinForm {
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

.btn {

  position:relative;
  left:50%;
  transform: translateX(-50%);
  margin-bottom: 40px;
  margin-top : 1%;
  width:100%;
  height:40px;
  background: linear-gradient(125deg,#d7ffb1,#81ce00,#81ce00);
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
<body width="100%" height="100%" style="background-color: #FFFDE5;">

	<form action="JoinCon" method="post" class="JoinForm">
		<img src="resources/img/Join.png">
		<div class="idForm">
			<input type="text" class="id" name="id" id="id" placeholder="아이디">
		</div>
		<div class="pwForm">
			<input type="password" class="pw" name="password" id="password"
				placeholder="비밀번호">
		</div>
		<div class="nameForm">
			<input type="nameword" class="name" name="name" id="name"
				placeholder="이름">
		</div>
		<div class="brithForm">
			<input type="text" class="brith" name="brith" id="brith"
				placeholder="생년월일">
		</div>
		<div class="telForm">
			<input type="text" class="tel" name="tel" id="tel" placeholder="연락처">
		</div>
		<div class="addForm">
			<input type="text" class="add" name="add" id="add" placeholder="주소">
		</div>
		<button type="submit" class="btn">회원가입</button>

	</form>



</body>
</html>