<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/jquery-3.3.1.min.js"></script>
<script>
	$(function(){
		$('#send1').on('click', function(){
			$.ajax({
				method : 'POST',
				url : 'send1',
				data : 'userid = Korean',
				success : function(resp){
					$('#receive1').text(resp);
				}
			});
		});
	})
	$(function(){
		$('#send2').on('click', function(){
			var sendData = {
					"userid" : "Lee",
					"username" : "이순신",
					"userphone" : "010-1234-1234"
			}
			$.ajax({
				method : 'POST',
				url : 'send2',
				data : JSON.stringify(sendData),
				dataType : 'json',
				contentType : 'application/json; charset:utf-8',
				success : function(resp){
					//alert(JSON.stringify(resp));
					$('#receive2').text(JSON.stringify(resp));
				}
			});
		});
	})
	$(function(){
		$('#send3').on('click', function(){
			var sendData = {
					"userid" : "Kim",
					"username" : "김유신",
					"userphone" : "010-5689-5689"
			}
			$.ajax({
				method : 'POST',
				url : 'send3',
				data : JSON.stringify(sendData),
				dataType : 'json',
				contentType : 'application/json; charset:utf-8',
				success : function(resp){
					alert(JSON.stringify(resp));
					$('#receive3').text(JSON.stringify(resp));
				}
			});
		});
	})

</script>
</head>
<body>
	<div id="wrapper">
		<ul>
			<li>
			String Send ==> String receive
			<input id="send1" type="button" value="String-----String"/>
			<p id="receive1" style="color: red;"></p>
			</li>
			<li>
			JSON send ==> Map
			<input id="send2" type="button" value="JSON----Map"/>
			<p id="receive2" style="color: red;"></p>
			</li>
			<li>
			JSON send ==> VO
			<input id="send3" type="button" value="JSON----VO"/>
			<p id="receive3" style="color: red;"></p>
			</li>
		</ul>		
	</div>
</body>
</html>