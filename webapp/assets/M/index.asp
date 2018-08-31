<html>
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi"/>
	<link rel = "stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css"/>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>
	
	<!-- bxSlider Javascript file -->
	<script src="/M/CSS_JS/jquery.bxslider.js"></script>
	<!-- bxSlider CSS file -->
	<link href="/M/CSS_JS/jquery.bxslider.css" rel="stylesheet" />
	
	<script type="text/javascript" src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	<style type="text/css">
		html, body, #FirstPage, #PageCourse, #PageForLease { height: 100%; width:100%; }
		body, ul { margin:0; padding:0; }
		.header { overflow:hidden; margin-bottom:15px; background:#ccc; }
		.header ul { list-style:none; padding-left:80px; }
		.header li { float:left; width:80px; line-height:28px; text-align:center; }
		.header li.on { color:red }
		.content_upper_image {border:1px #ccc solid; padding:0; }
		.myCoursename { border:1px #dadada solid; margin:2% 15% 2% 15%; width:70%; height:8%; font-size:14pt; text-align:center; }
		.myCoursename2 { border:1px #dadada solid; margin:2% 15% 2% 15%; width:70%; height:11%; font-size:14pt; text-align:center; }
		.myCoursename3 { border:1px #dadada solid; margin:2% 15% 2% 15%; width:70%; height:14%; font-size:14pt; text-align:center; }
		.myCoursename a { text-decoration: none !important; }
		.myCoursename2 a { text-decoration: none !important; }
		.myCoursename3 a { text-decoration: none !important; }
		.myCoursename a span { display:inline-block; margin-top:5%; color:#575757;}
		.myCoursename2 a span { display:inline-block; margin-top:5%; color:#575757;}
		.myCoursename3 a span { display:inline-block; margin-top:5%; color:#575757;}
		.myDivider { border:1px #dadada solid; width:100%; height:20px; padding:3px 5px;}
		::-webkit-scrollbar {
			display:none;
		}
	</style>
	<!--
	<script language = "Javascript">
		var uAgent = navigator.userAgent.toLowerCase();
		var mobilePhones = new Array('iphone', 'ipod', 'android', 'blackberry', 'windows ce', 'nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
		for(var i=0; i<mobilePhones.length;i++) 
			if(uAgent.indexOf(mobilePhones[i) != -1)
				document.location="http://m.naver.com";
	</script>
	-->
	<script language="Javascript">
		/****************** NOT WORKING
		$(document).bind("mobileinit", function() {
			$.support.touchOverflow = false;
			$.mobile.touchOverflowEnabled = false;
		});
		**********************/
		
		$(document).ready(function(){
			
			
			$("#imgLogo").on('click', function() {
				//$.mobile.changePage("#FirstPage", { transition: "pop" });
				location.href = "/M/index.asp";
			});
			
			$("#btn1").on('click',function() {
				$.mobile.changePage("#PageCourse", { transition: "pop" });
				//$.mobile.changePage("/M/Course/Course.asp", { transition: "pop" });
				//$.mobile.pageContainer.pagecontainer("change","/M/Course/Course.asp", { trainsition: "pop" });
				//location.href = "/M/Course/Course.asp";
			});
			$("#btn2").on('click', function() {
				$.mobile.changePage("#PageForLease", { transition: "pop" });
			});
			$("#btn3").on('click',function() {
				location.href = "tel:02-3486-3456";
			});
			$("#btn4").on('click', function() {
				location.href = "http://goto.kakao.com/@비트교육센터";
			});			
			
			$("#btn1Course").on('click',function() {
				//alert("하단에 단기 프로그래밍과정 내용 표시");
				$("#divCourseContent1").css('display','block');
				$("#divCourseContent2").css('display','none');
				$("#divCourseContent3").css('display','none');
				$("#divCourseContent4").css('display','none');
				//$.mobile.changePage("#PageCourseShort", { transition: "pop" });
			});
			$("#btn2Course").on('click', function() {
				//alert("하단에 재직자과정 내용 표시");
				//$.mobile.changePage("#PageCourseWorker", { transition: "pop" });
				$("#divCourseContent1").css('display','none');
				$("#divCourseContent2").css('display','block');
				$("#divCourseContent3").css('display','none');
				$("#divCourseContent4").css('display','none');				
			});
			$("#btn3Course").on('click',function() {
				//alert("하단에 개발자과정 내용 표시");
				//$.mobile.changePage("#PageCourseDeveloper", { transition: "pop" });
				$("#divCourseContent1").css('display','none');
				$("#divCourseContent2").css('display','none');
				$("#divCourseContent3").css('display','block');
				$("#divCourseContent4").css('display','none');
			});
			$("#btn4Course").on('click', function() {
				//alert("하단에 국비지원 취업연계과정 내용 표시");
				//$.mobile.changePage("#PageCourseEmployment", { transition: "pop" });
				$("#divCourseContent1").css('display','none');
				$("#divCourseContent2").css('display','none');
				$("#divCourseContent3").css('display','none');
				$("#divCourseContent4").css('display','block');
			});			
			
			$('.bxslider').bxSlider({
				auto: true,
				speed: 350,
				controls: false,
				pager: false
			});

			$("#PageCourse").on("pageshow", function() {
				$('.bxslider2').bxSlider({
					auto: true,
					speed: 350,
					controls: false,
					pager: false
				}).reloadSlider();
			});
			
		});
	</script>
</head>
<body> <!-- MOBILE -->

	<div data-role="page" id="FirstPage">
		<div class="content_upper_image" data-role="content" style="height:55%; width:100%;">
			<!--<img src="/M/Images/logo.PNG" style="height:5%;"/>-->
			<!--<div class="bx-viewport" style="width:100%; height:100%;">-->
				<ul class="bxslider" style="height:100%;">
					<!--<li><img src="/M/Images/1.PNG" style="height:100%;"/></li>-->
					<!--<li><img src="/M/Images/3.PNG" style="height:100%;"/></li>-->
					<li><img src="/Images/Popup/img_pop_winter_2015_3.PNG" style="height:100%;"/></li>
					<li><img src="/Images/Popup/img_pop_winter_dev_2015_2.PNG" style="height:100%;"/></li>
				</ul>
			<!--</div>-->
		</div>
		<div data-role="content" style="height:25%; width:100%; padding:0; margin:0;">
			<div id="btn1" style="float:left; font-size:18pt; width:49.5%; height:99%; margin:1px 0 0 1px; color:white; background-color:#7eb74e; text-align:center;">
				<img src="/M/Images/icon_college1modified.PNG" style="margin-top:10%; width:30%;"/>
				<div>교육과정</div>안내
			</div>
			<div id="btn2" style="float:left; font-size:18pt; width:49.5%; height:99%; margin:1px 1px 0 1px; color:white; background-color:#4e7eb7; text-align:center;">
			<img src="/M/Images/icon_school1modified.PNG" style="margin-top:0%; width:30%;"/>
				<div>강의장</div>임대<br/>안내
			</div>
			<!--<div style="clear:both;"></div>-->
		</div>
		
		<div data-role="content" style="height:15%; width:100%; padding:0; margin:0;">
			<div id="btn3" style="float:left; font-size:18pt; width:49.5%; height:99%; margin:0 1px 0 1px; color:white; background-color:#f83e00; text-align:center;">
				<img src="/M/Images/icon_active5modified.PNG" style="margin-top:7%; width:30%;"/>
			</div>
			<div id="btn4" style="float:left; font-size:18pt; width:49.5%; height:99%; margin:0 1px 0 0; color:white; background-color:#f8ba00; text-align:center;">
				<img src="/M/Images/icon_kakao_modified.PNG" style="margin-top:9%; width:25%;"/>
			</div>
			<!--<div style="clear:both;"></div>-->
		</div>
		
		<div data-role="footer" style="height:4%; width:100%; padding:0; color:#dfdfdf; background-color:#383838; text-align:center;">
			<div style="margin-top:2%; font-size:8pt; height:auto; ">서울시 서초구 서초동 1327-33 비트빌 3층 비트교육센터 (02-3486-3456)</div>
			<br/>
			<a href="/index.asp">PC 버전</a>
		</div>
		
	</div>

	<!-- BELOW:모든 페이지를 include -->
	<!--#include virtual="/M/Course/Course.asp"-->	<!-- 교육과정안내 -->
	<!--#include virtual="/M/Course/Language/Course_CP.asp"--> <!-- C Programming -->


	
	<div data-role="page" id="PageForLease">
		<div data-role="content" style="height:50%; width:100%;">
			
		</div>
		<div data-role="content" style="height:50%; width:100%;">
			
		</div>		
	</div>
	
	<div data-role="page" id="SecondPage">
		<h1> Page 2 </h1>
		<div class="header" data-role="header">
			<ul>
				<li><a href="#FirstPage" data-transition="slide">Tab 1</a></li>
				<li><a href="#" class="on">Tab 2</a></li>
				<li><a href="#ThirdPage" data-transition="flip">Tab 3</a></li>
			</ul>
		</div>
		<div class="content" data-role="content">
			Content 2
			<img src="/M/Images/2.png" style="width:100%;"/>
		</div>
	</div>
	
	<div data-role="page" id="ThirdPage">
		<h1> Page 3 </h1>
		<div class="header" data-role="header">
			<ul>
				<li><a href="#FirstPage" data-transition="slide">Tab 1</a></li>
				<li><a href="#SecondPage" data-transition="slide">Tab 2</a></li>
				<li><a href="#" class="on">Tab 3</a></li>
			</ul>
		</div>
		<div class="content" data-role="content">
			Content 3
			<img src="/M/Images/3.png" style="width:100%;"/>
		</div>
	</div>
</body>
</html>