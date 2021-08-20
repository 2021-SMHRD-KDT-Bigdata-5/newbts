<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찰칵 한글교실</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">

<style>

.id, .pw, .name, .birth, .tel, .add {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 45px;
	background: none;
}

.idForm, .pwForm, .nameForm, .birthForm, .telForm, .addForm   {
	  border-bottom: 2px solid #adadad;
  padding: 10px 10px;
	margin-bottom: 1%;

}

.JoinForm {
	position: absolute;
	width: 500px;
	height: 400px;
	padding: 30px, 20px;
	background-color: #FFFDE5;
	text-align: center;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border-radius: 15px;
}

.btn {
	position: relative;
	left: 50%;
	transform: translateX(-50%);
	margin-bottom: 100px;
	margin-top: 1%;
	width: 100%;
	height: 40px;
	background: linear-gradient(125deg, #ffd216, #ffc02f, #ff7f00);;
	background-position: left;
	background-size: 200%;
	color: white;
	font-weight: bold;
	border: none;
	cursor: pointer;
	transition: 0.4s;
	display: inline;
	font-size : 25px;
	font-family: 'Gamja Flower', cursive;
}

.btn:hover {
	background-position: right;
}

.bottomText {
	text-align: center;
}

.check {
	position: relative;
	right : 25%;
	transform: translateX(-50%);
	margin-top: 1%;
	background: linear-gradient(125deg, #ffd216, #ffc02f, #ff7f00);;
	background-position: left;
	background-size: 200%;
	color: white;
	font-weight: bold;
	border: none;
	cursor: pointer;
	transition: 0.4s;
	display: inline;
	font-size : 25px;
	font-family: 'Gamja Flower', cursive;
}

span {
   position: absolute;}
   
</style>

</head>
<body width="100%" height="100%" style="background-color: #FFFDE5;">

	<form action="JoinCon" method="post" class="JoinForm">
		<img src="img/logo.png"> <img src="img/join.png">
		<div class="idForm">
			<input type="text" class="id" name="id" id="input_id" placeholder="아이디">
		</div>
		<input type="button" class="check" value="ID중복체크" onclick="idCheck()"><span id="sp"></span>
		<div class="pwForm">
			<input type="password" class="pw" name="password" id="password"
				placeholder="비밀번호">
		</div>
		<div class="nameForm">
			<input type="nameword" class="name" name="name" id="name"
				placeholder="이름">
		</div>
		<div class="birthForm">
			<input type="text" class="birth" name="birth" id="birth"
				placeholder="생년월일">
		</div>
		<div class="telForm">
			<input type="text" class="tel" name="tel" id="tel" placeholder="연락처">
		</div>
		<div class="addForm">
			<input type="text" class="add" name="address" id="address" placeholder="주소">
		</div>
			<input type="hidden" class = "point" name="point" id="point" value="0">
		<button type="submit" class="btn">회원가입</button>

	</form>
  <script src="assets/js/jquery.min.js"></script>
      <script src="assets/js/jquery.scrolly.min.js"></script>
      <script src="assets/js/jquery.scrollex.min.js"></script>
      <script src="assets/js/skel.min.js"></script>
      <script src="assets/js/util.js"></script>
      <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
      <script src="assets/js/main.js"></script>
      
      <script>
      var x = document.getElementById("login");
      var y = document.getElementById("register");
      var z = document.getElementById("btn");
      
      function idCheck(){
          var input = document.getElementById("input_id");
          //alert(input.value);
          $.ajax({
             type : "post", //데이터 전송방식
             data : {'id' : input.value},
             url : "IdCheckCon",        //데이터를 보낼 서버 페이지
              dataType : "text",      //응답데이터 타입
             // 요청에 성공시 실행할 함수 정의   //true   //false
             success : function(data){
                //alert(data);
                document.getElementById("sp");
                if(data=="true"){
                   sp.innerHTML = "  사용 불가능한 ID입니다."
                }else{
                   sp.innerHTML = "  사용 가능한 ID입니다."
                }
             },
             error : function(){
                alert("요청 실패!");
             }
          });
         }
      </script>

</body>

</html>