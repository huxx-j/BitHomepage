<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<!DOCTYPE html>
<!-- NOT REDIRECTABLE to Mobile -->
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->

	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			/*
			$(".myConList").on("mouseenter", function() {
				//$(this).stop(true,true).animate({'backgroundColor':'#ffffea',"borderColor":"#2f2fff"},400,'easeOutElastic');
				$(this).stop(true,true).animate({"borderColor":"#2f2fff"},400,'easeOutElastic');
				$(this).css("cursor","pointer");
				$(this).css("box-shadow","0px 0px 5px #7f7fff")
			}).on("mouseleave", function() {
				$(this).stop(true,true).animate({'borderColor':'#d1d1d1'},1000,'easeOutElastic');
				$(this).css("box-shadow","none");
			}).on("click", function() {
				if(typeof $(this).attr("h_ref") != 'undefined') location.href = $(this).attr("h_ref"); 
			});
			*/
			
			// slots handlers
			$("#Content .slot").on("click", function() {
				//var cn = $(this).find("p").eq(0).text();
				//alert("과정 선택 : " + cn);
				var href = $(this).attr("href");
				if(href!=undefined)  location.href = href;
				
			});
			
			// insideSlots handlers
			$(".insideSlot").on("mouseenter", function() {
				//$(this).css("opacity",1);
				$(this).stop(true,true).animate({"opacity":1},400,'easeOutElastic');
			}).on("mouseleave", function() {
				//$(this).css("opacity",0);
				$(this).stop(true,true).animate({"opacity":0},200);
			});

			
		});
		
	</script>

	<style>
		#Content div.slot, #Content div.slot .insideSlot {
			float:left;
			width:234px;
			height:250px;
			margin-bottom:5px;
			position:relative;
			cursor:pointer;
		}
		#Content div.slot .insideSlot {
			z-index:3;
		}
		#Content div.slot .insideSlot.withSelectCampus {
			top:-261px;
		}
		/*
		#Content div.slot:not(.first) {
			margin-left:10px;
		}
		*/
		#Content div.slot {
			margin-left:26px;
		}
		#Content div.slot.first {
			margin-left:0px;
		}
		
		.slotIcon {
			display:none;
			position:absolute;
			right:0;
			top:0;
			z-index:2;
		}
		
		#Content div.slot:not(.first) {
			margin-left:9px !important;
		}
		
		#Content div.slot.extended, div.slot.extended .insideSlot {
			height:280px !important;
		}

	</style>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		
		<div id="Container_Wrap" style="min-height:500px;">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseSupport_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>무료취업과정
						</p>
						<h4 style="float:left;">무료취업과정</h4>
						<div style="clear:both;"></div>
					</div>
					
					<!-- Line#1 -->
					<div style="float:left;">
						<img src="/Images/Titles/MainPage_Title__국가기간전략산업직종.png" style="float:left; margin-bottom:2px; display:none;" alt="국가기간전략산업직종"/>
						<div style="clear:both;"></div>
						
						
						
						<!--
						<div class="slot" style="background:url('/Images/Slots/2/MainPage_Slot__국비지원_핀테크.png')" href="/Course/Kukka/Course_Kukka_FinTech_2018.asp">
							<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__new.png"/>
							<p class="courseName dnone">&nbsp;</p>
							<p class="courseDescription dnone">&nbsp;</p>
							<div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
						</div>
						-->
						<div class="slot  first extended" style="background:url('/Images/Slots/2/MainPage_Slot__국비지원_빅데이터_extended.png')" href="/Course/Kukka/Course_Kukka_JavaBigData_2018.asp">
							<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__new.png"/>
							<p class="courseName dnone">&nbsp;</p>
							<p class="courseDescription dnone">&nbsp;</p>
							<div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected_280px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
						</div>

						<div class="slot extended" style="background:url('/Images/Slots/2/MainPage_Slot__KUKA18_ED.GIF')" href="/Course/Kukka/Course_Kukka_EmbeddedService_2018.asp">
							<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__new.png"/>
							<p class="courseName dnone">&nbsp;</p>
							<p class="courseDescription dnone">&nbsp;</p>
							<div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected_280px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
						</div>

						<!--
						<div class="slot extended" style="background:url('/Images/Slots/2/MainPage_Slot__KUKA18_FD_10.gif')" href="/Course/Kukka/Course_Kukka_Fintech_2018.asp"">
							<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__new.png"/>
							<p class="courseName dnone">&nbsp;</p>
							<p class="courseDescription dnone">&nbsp;</p>
							<div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected_280px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
						</div>
						-->
						
						<div class="slot extended" style="background:url('/Images/Slots/2/MainPage_Slot__java.png.gif')" href="/Course/Expert/Course_Expert_JavaExpert.asp"">
							<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__new.png"/>
							<p class="courseName dnone">&nbsp;</p>
							<p class="courseDescription dnone">&nbsp;</p>
							<div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected_280px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
						</div>


	
<!-- // 잠시 숨김
<div class="slot" style="background:url('/Images/Slots/2/MainPage_Slot__국비지원_AWS클라우드웹개발.png')" href="/Course/Kukka/Course_Kukka_AWSCloudWeb_2018.asp">
	<img class="slotIcon" src="/Images/Icons/MainPage_SlotIcon__new.png"/>
	<p class="courseName dnone">&nbsp;</p>
	<p class="courseDescription dnone">&nbsp;</p>
	<div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
</div>
-->
						
						<!--
						<div class="slot first" style="background:url('/Images/Slots/MainPage_Slot__국비지원_국가기간.png')" href="/Course/Kukka/Course_Kukka_2017.asp">
							<img class="slotIcon" src="/Images/Icons/MainPage_SlotIcon__recommend.png"/>
							<p class="courseName">국가기간전략산업직종</p>
							<p class="courseDescription">국비지원으로 금전적 부담없이 고3처럼 공부하고 6개월 후 취업까지 연계되는 과정</p>
						<div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
						</div>
						-->
						<!--
						<div class="slot" style="background:url('/Images/Slots/2/MainPage_Slot__국비지원_임베디드드론.png')" href="/Course/Kukka/Course_Kukka_EmbeddedDrone_2018.asp">
							<img class="slotIcon" src="/Images/Icons/MainPage_SlotIcon__recommend.png"/>
							<p class="courseName dnone long">_</p>
							<p class="courseDescription dnone">_</p>
							<div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
						</div>
						-->
						<!--
						<div class="slot " style="background:url('/Images/Slots/2/MainPage_Slot__국비지원_자바기반_빅데이터분석.png')" href="/Course/Kukka/Course_Kukka_JavaBigData_2017.asp">
							<img class="slotIcon" src="/Images/Icons/MainPage_SlotIcon__recommend.png"/>
							<p class="courseName dnone long">_</p>
							<p class="courseDescription dnone">_</p>
							<div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
						</div>
						-->
						<!--
						<div class="slot" style="background:url('/Images/Slots/2/MainPage_Slot__국비지원_라즈베리파이IoT임베디드.png')" href="/Course/Kukka/Course_Kukka_RaspberryPiIoTEmbedded_2017.asp">
							<img class="slotIcon" src="/Images/Icons/MainPage_SlotIcon__new.png"/>
							<p class="courseName dnone">&nbsp;</p>
							<p class="courseDescription dnone">&nbsp;</p>
							<div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
						</div>
						-->
					</div>
					<div style="clear:both;"></div>
					<!-- //Line#1 -->
					
					<!-- Line#2 -->
					<div style="float:left; margin-top:10px;">
						<img src="/Images/Titles/MainPage_Title__4차산업혁명.png" style="float:left; margin-bottom:2px; display:none;" alt="4차산업혁명"/>
						<div style="clear:both;"></div>
					
					
					<div class="slot first extended" style="background:url('/Images/Slots/2/MainPage_Slot__embedded.gif')" href="/Course/Expert/Course_Expert_Embedded.asp">
							<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__new.png"/>
							<p class="courseName dnone">&nbsp;</p>
							<p class="courseDescription dnone">&nbsp;</p>
							<div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected_280px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
						</div>


						
						<!--
						<div class="slot " style="background:url('/Images/Slots/2/MainPage_Slot__4차산업_IoT자율주행.png')" href="/Course/Industry4.0/Course_Industry40_IoTSelfDriving_Expert.asp">
							<img class="slotIcon" src="/Images/Icons/MainPage_SlotIcon__recommend.png"/>
							<p class="courseName dnone">&nbsp;</p>
							<p class="courseDescription dnone">&nbsp;</p>
							<div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
						</div>
						-->
						<!--
						<div class="slot" style="background:url('/Images/Slots/2/MainPage_Slot__4차산업_빅데이터.png')" href="/Course/Industry4.0/Course_Industry40_BigData_Expert.asp">
							<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
							<p class="courseName dnone">&nbsp;</p>
							<p class="courseDescription dnone">&nbsp;</p>
							<div class="insideSlot" style="background:url('Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
						</div>
						-->
						<div style="clear:both; height:22px; "></div>
						
					</div>	
					<!-- //Line#2 -->
					<div style="clear:both;"></div>
					
				</div>
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>