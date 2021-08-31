	var number_id, problem_id, answer_id;
	var problem_arr = ['1.png', '2.png', '3.png', '4.png','5.png','6.png'];
	var answer_arr = ['옵니다', '꽥꽥', '뛰어', '먹어', '심다', '씁니다'];

	var number2_id, problem2_id, answe2_id;
	var answer_arr2 = [];
	var proNum = [];
	var ran_pro = [];
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
		answer_num = proNum_pre[startNum];
		answer = answer_arr[answer_num];
		index_arr = [];
		
		for(var i=0; i<problem_arr.length; i++){ // 랜덤수 뽑아서 문제 추출
			randomNum = Math.floor(Math.random() * problem_arr.length)
			if(index_arr.indexOf(randomNum) === -1){
				index_arr.push(randomNum)
			}
			else{
				i--;
			}
		}
		for(var i=0;i<problem_arr.length;i++){
			proNum[i]=proNum_pre[index_arr[i]];
		}
		
			
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
			problem_id.innerHTML ="<img src='./img2/" + problem_arr[proNum_pre[startNum]] + "' class='problem_img' style='max-width:100%; height:auto;'>";
			answer_id.innerHTML ="<button type='button' class='button1' id='btn1' onclick='btn1Func();'>"+answer_arr[proNum_pre[2]]+"</button>			<button type='button' class='button2' id='btn2' onclick='btn2Func();'>"+answer_arr[proNum_pre[0]]+"</button>		<br>	<button type='button' class='button3' id='btn3' onclick='btn3Func();'>"+answer_arr[proNum_pre[3]]+"</button>			<button type='button' class='button4' id='btn4' onclick='btn4Func();'>"+answer_arr[proNum_pre[1]]+"</button>			";
			
		}
	}
	

function btn1Func() {
	selectAnswer = answer_arr[proNum_pre[2]];
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

	function btn2Func(){
		selectAnswer = answer_arr[proNum_pre[0]];
		if(answer == selectAnswer){
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
		else{
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
	
		function btn3Func(){
		selectAnswer = answer_arr[proNum_pre[3]];
		if(answer == selectAnswer){
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
		else{
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
	
		function btn4Func(){
		selectAnswer = answer_arr[proNum_pre[1]];
		if(answer == selectAnswer){
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
		else{
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