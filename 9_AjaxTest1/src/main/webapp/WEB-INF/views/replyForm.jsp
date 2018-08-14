<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div#wrapper{
		width: 900px;
		margin: 0 auto;
		text-align: center;
	}
	input#replytext{
	display: inline-block;
	width: 500px;
	}
	p{
		display: inline-block;
		height: 30px;
	}
	p.userid, p.regdate {
		width: 100px;
		margin: 5px;
	}
	p.replyContent{
		border-border: 1px dotted gray;
		margin: 0 auto;
		text-align: center;
		width: 800px;
	}
</style>
</head>
<script src="resources/jquery-3.3.1.min.js"></script>
<script>
$(function(){
	init();
	$('#replysave').on('click', replysave);	
})

function init(){
	$.ajax({
		method : 'post',
		url : 'replyAll',
		success : output
	})
}

function output(res){
	var replyAll = ' ';
	
	for(var i in res){
		replyAll +='<div class="replyContent">';
		replyAll +='<p class="userid">'+res[i].userid+'</p>';
		replyAll +='<p class="replytext">'+res[i].replytext+'</p>';
		replyAll +='<p class="regdate">'+res[i].regdate+'</p>';
		replyAll +='<input class="replyUpdate" type="button" value="댓글수정"/>';
		replyAll +='<input class="replyDelete" data-rno=" '+res[i].replynum+' " type="button" value="댓글삭제"/>';
		replyAll +='</div>';
	}
			$('#result').html(replyAll);
			$('#userid').val("");
			$('#replytext').val("");
			
			$('.replyDelete').click(replyDelete);
			$('.replyUpdate').click(replyUpdate);
}

function replyDelete(){
	var replynum = $(this).attr('data-rno');
	
	$.ajax({
		method : "get",
		url : "replyDelete",
		data : "replynum="+replynum,
		success : init
	})
}
function replyUpdate(){
		
}
function replysave(){
	var userid = $('#userid').val();
	var replytext = $('#replytext').val();

	if(userid.length == 0 || replytext==0){
		alert("아이디와 댓글을 정확히 입력하세요");
		return false;
	}
	var sendData = {"userid" : userid, "replytext" : replytext};
	
	$.ajax({
		method : "post",
   		url : "replyInsert",
   	 	data : JSON.stringify(sendData),
   	 	dataType : "text",
   	 	contentType : "application/json; charset=UTF-8",
   	 	success : init
	})
}
</script>
<body>
<div id="wrapper">
	<h2>댓글달기</h2>
	<div id="reply">
		<input id="userid" type="text" placeholder="ID 입럭"/>
		<input id="replytext" name="replytext" type="text" placeholder="댓글내용입력"/>
		<input id="replysave" type="button" value="댓글저장"/>
	</div>
	<hr/>
	<div id="result"></div>
</div>
</body>
</html>