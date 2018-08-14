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
      $('.add').on('click', function() {
         var view = add();
         $('#education').append(view);
      });

      $('#regist1').on('click', regist1);
      $('#regist2').on('click', regist2);
   });

   /* 학력 정보 추가 */
   function add() {
      var view = '<div class="school">';
      view += '<input type="text" class="schoolname" name="schoolname" placeholder="학교이름" />';
      view += '<input type="text" class="major" name="major" placeholder="전공" />';
      view += '<input type="text" class="grade" name="grade" placeholder="학위" />';
      view += '</div>';
      return view;
   };

   function regist1() {
      var education = [];
      var school = $('.school'); /* 1개 이상 */
      
      $.each(school, function(index, item){
         var schoolname = $(item).children('.schoolname').val();
         var major = $(item).children('.major').val();
         var grade = $(item).children('.grade').val();
         
         education.push({
        	 "schoolname" : schoolname,
        	 "major" : major,
        	 "grade" : grade
         });//end push
      });//data 수집완료
      alert(JSON.stringify(education));
      $.ajax({
    	 method : "post",
    	 url : "regist1",
    	 data : JSON.stringify(education),
    	 dataType : "text",
    	 contentType : "application/json; charset=UTF-8 ",
    	 success : function(res){
    		 $('#result1').text(JSON.stringify(res));
    	 }
      });
   }
   
   function regist2(){
	   var sendData = {};
	   //개인정보를 수집해서 sendData에서 모으는 작업을 한다.
	   
	   var userid = $('.userid').val();
	   var username = $('.username').val();
	   var userphone = $('.userphone').val();
	   
	   $.extend(sendData,
	   {
		   "user" : {"userid" : userid, "username" : username, "userphone" : userphone}		   
		}
	   );
	   
	   //주소정보를 수집해서 sendData에 모으는 작업
	   var zip = $('.zip').val();
	   var address = $('.address').val();
	   $.extend(sendData, {"zip" : zip, "address" : address});
	   
	   //학력정보를 수집해서 sendData에 모으는 작업
	   	var list = [];
	    var school = $('.school'); /* 1개 이상 */
	      
	      $.each(school, function(index, item){
	         var schoolname = $(item).children('.schoolname').val();
	         var major = $(item).children('.major').val();
	         var grade = $(item).children('.grade').val();
	         
	         list.push({
	        	 "schoolname" : schoolname,
	        	 "major" : major,
	        	 "grade" : grade
	         });//end push
	      });//data 수집완료
	      
	      $.extend(sendData, {"list" : list});
	   //alert(JSON.stringify(sendData));
	   
	   $.ajax({
	    	 method : "post",
	    	 url : "regist2",
	    	 data : JSON.stringify(sendData),
	    	 dataType : "JSON",
	    	 contentType : "application/json; charset=UTF-8 ",
	    	 success : function(res){	    		 
	    		 $.each(res, function(index, item){	    			 
	    			 $('#result2').text(
	    					 "아이디::"+JSON.stringify(res.user.userid)+", 이름::"+JSON.stringify(res.user.username)+
	    					 ", 전화번호::"+JSON.stringify(res.user.userphone)+", 우편번호::"+JSON.stringify(res.zip)+
	    					 ", 주소::"+JSON.stringify(res.address)
	    			 );	 
	    		 })
	    		 
	    	 }
	      });
   }
</script>
</head>
<body>
   <div id="wrapper">
      <h1>4. 복합 데이터 처리(개인정보 처리)</h1>
      <form>
         <h2>[ 개인 정보 저장 ]</h2>
         <input type="text" class="userid" name="userid" placeholder="ID" />
         <input type="text" class="username" name="username" placeholder="이름" />
         <input type="text" class="userphone" name="userphone" placeholder="전화번호" /> <br />
         <h2>[ 주소 ]</h2>
         <input type="text" class="zip" name="zip" placeholder="우편번호" /> 
         <input type="text" class="address" name="address" placeholder="주소" /> <br />
         <h2>[ 학력 사항 ]</h2>


         <div id="education">
         		<div class="school">
               		<input type="text" class="schoolname" name="schoolname" placeholder="학교이름"/> 
               		<input type="text" class="major" name="major" placeholder="전공"/> 
               		<input type="text" class="grade" name="grade" placeholder="학위"/>
               		<input type="button" class="add" value="+" />
         		</div><!-- end.school -->         		
         </div><!-- end.education -->         
      </form>
   </div><!-- wrapper -->
   <div class="buttons">
      <input type="button" id="regist1" value="1) 학력정보만 등록" /> 
      <input type="button" id="regist2" value="2) 전체정보만 등록" />
   </div><!-- button -->
   <div id="result1"></div>
   <div id="result2"></div>
</body>
</html>