	var number_id, problem_id, answer_id;
	var problem_arr = ['Ankylosaurus.jpg','Brachiosaurus.jpg','Mosasaurus.jpg','Pachycephalosaurus.jpg','Parasaurolophus.jpg','pteranodon.jpg','Spinosaurus.jpg','Stegosaurus.jpg','Triceratops.jpg','tyrannosaurus.jpg','Velociraptor.jpg'];
	var answer_arr = ['안킬로사우르스','브라키오사우르스','모사사우르스','파키케팔로사우루스','파라사우롤로푸스','프테라노돈','스피노사우르스','스테고사우르스','트리케라톱스','티라노사우루스','벨로키랍토르'];
	


	var number2_id, problem2_id, answe2_id;
	var answer_arr2 = [];
	var proNum = [];
	var answer = [];
	var selectAnswer, point;
	var imgNum, startNum, endNum;
	var answer_num;

	function init(){
		number_id = document.getElementById("number_id");
		problem_id = document.getElementById("problem_id");
		answer_id = document.getElementById("answer_id");

		startNum = 0;
		endNum = problem_arr.length;
		point = 0;
		
		for(var i=0; i<problem_arr.length; i++){ // 랜덤수 뽑아서 문제 추출
			randomNum = Math.floor(Math.random() * problem_arr.length)
			if(proNum.indexOf(randomNum) === -1){
				proNum.push(randomNum)
			}
			else{
				i--;
			}
		}
		
		for(var i=0; i<problem_arr.length; i++){ // 추출한 문제를 리스트에 뿌려주는
			var check =0;
			for(var j=0; j<i; j++){
				if(proNum[i]==proNum[j]){
					i--;
					check = 1;						
				}				
			}
			if(check == 0){
			
			answer_arr2.push(answer_arr[proNum[i]]);
				
			}
		}
		
		
		setProblem();
	}
    
    
	init();
	
	function randomize_pro(){
		proNum_pre = proNum.slice();
		answer_num = proNum[startNum];
		answer = answer_arr[answer_num];
		index_arr = [];
		
		for(var i=0; i<4; i++){ // 랜덤수 뽑아서 문제 추출
			randomNum = Math.floor(Math.random() * 4)
			if(index_arr.indexOf(randomNum) === -1){
				index_arr.push(randomNum)
			}
			else{
				i--;
			}
		}
//		for(var i=0;i<4;i++){
//			proNum[i]=proNum_pre[index_arr[i]];
//		}
		
			
	}
	
	
	function setProblem(){
		
		randomize_pro();
			
		if(startNum == 4){
			problem_id.innerHTML = "<img src='./img1/qres.jpg' class='problem_img' style='max-width:100%; height:auto;'>"
			answer_id.innerHTML = "<button type='button' class='button_res' id='btnRs' onclick='btnResFunc();'>결과보기</button>  <button type='button' class='button_restart' id='btnR' onclick='history.go(0);'> 다시하기</button>";
			$.ajax({
               type: 'POST',
               url: 'point',
               data: {"point" : point},
                   success: function(data) {
                    if(data == "성공") {
                         console.log("성공");
                    }
                    else{
                    console.log("실패");
                    }
               }
          });

		} else {
			answer_id.innerHTML = "<button type='button' class='button_res' id='btnRs' onclick='btnResFunc();'>결과보기</button>  <button type='button' class='button_restart' id='btnR' onclick='history.go(0);'> 다시하기</button>";
			problem_id.innerHTML ="<img src='./img1/" + problem_arr[proNum[startNum]] + "' class='problem_img' style='max-width:100%; height:auto;'>";
			answer_id.innerHTML = "<input type = 'text' class = 'tw' id ='tw' placeholder='정답입력'><button type='button' class='tb' id='tb' onclick='btn1Func();'>확인</button>";
      }
	}
	

function btn1Func() {
	selectAnswer = tw.value;
	if (answer == selectAnswer) {
		point++;
		Swal.fire({
			title: '',
			text: '',
			html: "<b>정답입니다.</b>",
			icon: 'success',
			confirmButtonColor: '#d33',
			confirmButtonText: '닫기',
			allowOutsideClick: false
		})
	}
	else {
		Swal.fire({
			title: '',
			text: '',
			html: "<b>오답입니다.</b>",
			icon: 'error',
			confirmButtonColor: '#d33',
			confirmButtonText: '닫기',
			allowOutsideClick: false
		})
	}
	startNum++;
	setProblem();
}


	function btnResFunc(){
	    Swal.fire({
	        title: '',
	        text: '',
	        html: "<b>당신의 점수는 " + point + "점입니다.</b>",
	        icon: 'success',
	        confirmButtonColor: '#d33',
	        confirmButtonText: '닫기',
	        allowOutsideClick: false
	    })
	}