<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/jquery-3.3.1.min.js"></script>
<script>
	$(function() {
		$('#reqBtn1').on('click', ajaxReq1);
		$('#reqBtn2').on('click', ajaxReq2);
	});
	
	/* 데이터 요청 보내기 */
	function ajaxReq1() {
		$.ajax({
			method : 'get',
			url : 'ajaxReq1',
			success : function(yabe) {/*200*/
				alert(yabe);
			}
		});
	}
	
	/* 데이터 주고받기 */
	function ajaxReq2() {
		var name = $('#name').val();
		var phone = $('#phone').val();

		if (name == ' ' || phone == ' ') {
			alert("데이터를 입력해주세요");
			return;
		}
		
		/* var sendData = 'name='+name+'&phone='+phone */
		var sendData = {
				"name" : name,
				"phone" : phone
		};
		
		$.ajax({
			method : 'get',
			url : 'ajaxReq2',
			data : sendData,
			success : function(response) {
				$('#result2').text("이름::"+response.name+"전화번호::"+response.phone);
			}
		});
	}
</script>
</head>
<body>
	<div id="wrapper">
		<h2>[ 1. Ajax 요청 보내기 ]</h2>
		<p>
			<input id="reqBtn1" type="button" value="1. ajax로 요청보내기" />
		</p>
		<hr />
		<h2>[ 2. Ajax 데이터 보내고 받기 ]</h2>
		<div>
			이름 :: <input type="text" name="name" id="name" /> 
			전화번호 :: <input type="text" name="phone" id="phone" /> 
			<input id="reqBtn2" type="button" value="2. Ajax로 데이터 보내기" />
			<div id="result2" style="color: black;"></div>
		</div>
<hr/>
<h2>[ 3. Ajax 다양한 형태의 데이터 주고받기 ]</h2>
<a href="ajaxView3">3. 데이터 송수신 화면 요청</a>

<hr/>
<h2>[ 4. 복합(일반 + 배열) 데이터 처리 ]</h2>
<a href="memberJoin">4. 복합(일반 + 배열) 데이터 처리화면</a>

<hr/>
<h2>[ 5. 댓글달기 ]</h2>
<a href="reply">5. 댓글달기 처리화면</a>

	</div>
</body>
</html>