<%
'// 4[CourseReview] (pre1)
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

CourseID = "C2_core"
%>
<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<!DOCTYPE html>
<!-- NOT REDIRECTABLE to Mobile -->
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!--#include virtual="/Include/config.asp"--> <!-- 4[CourseReview] (pre2) -->
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView �� .btn_refundView2�� /JS/Common.js �� �̺�Ʈ�ڵ鷯 ���� -->
	<script src="DetailPage/Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			$(".conCntDynamic").on("mouseenter", function() {
						//$(this).css("opacity", "0.8");
						//$(this).css("border", "1px solid #2f2fff");
						//$(this).animate({'borderWidth':'1px', 'borderColor':'#2f2fff', 'opacity':"1.0"},500);
						//$(this).css("background-color","#ffffff");
						//$(this).stop(true,true).animate({'backgroundColor':'#ffffea','borderColor':'#1f1fff'},400);
						//$(".roadmapBox").animate({'opacity':opacityLow},1800,'easeInOutCubic',function() { });
				$(this).stop(true,true).animate({'backgroundColor':'#fffffc',"borderColor":"#2f2fff"},400,'easeOutElastic');
				$(this).css("cursor","pointer");
				$(this).css("box-shadow","0px 0px 5px #7f7fff")
			}).on("mouseleave", function() {
						//$(this).css("border", "1px solid #d1d1d1");
						//$(this).css("background-color","#fafafa");
				$(this).stop(true,true).animate({'borderColor':'#d1d1d1','backgroundColor':'#ffffff'},1000,'easeOutElastic');
				$(this).css("box-shadow","none");
			}).on("click", function() {
				if(typeof $(this).attr("h_ref") != 'undefined') location.href = $(this).attr("h_ref"); 
			});
			
		
			/* page load ���� SNB ���� */
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [����] ��Ʈ�������� ON
			$(".snb_1709 .newdepth3.newwrap.no1").addClass("on").removeClass("plus").addClass("minus");
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [����] ��Ʈ�������� SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no1").addClass("on").css('display','block');	// C Master SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no1 li:eq(0) a").addClass("on");				// ���߹� ON
			$(".snb_1709 .newdepth4_wrap.no1 li:eq(1) a").addClass("on");				// �ָ��� ON
		});
	</script>
	
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<style>
	/* white and narrowSNB */
	#SNB_Wrap_1702 { background:#ffffff !important; width:195px !important; }
	.moveTop { width:195px !important; background:#17538e url('/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
	
	.width4 { width:230px; padding:0 5px; }

	#SNB_Wrap_1702 {
		width:195px !important;
	}
</style>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<div id="Container_Wrap" style="min-height:initial;">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					
					<style>
						.listBox { 
							float:left;
							font-size:12pt;
						}
						.listBox.first {
							margin-right:30px; 
						}
						.listBox p.courseType {
							color:#b6bab;
							font-size:20pt;
							text-shadow:1px 1px 3px #d7d7d7;
							font-family:'Nanum Gothic Bold';
						}
						.conCntDynamic { 
							border:1px solid #949494;
							width: 230px; 
						}
						.courseName {
							font-size:17pt;
							font-weight:600;
						}
						.textLarge {
							font-size:14pt;
							font-weight:600;
						}
						
						.separateLine {
							background:url("/Images/Common/ico_dotted_gray.png") 0 bottom repeat-x;
						}
					</style>
					<div style="margin:30px auto;">
						<div style="margin:35px 65px;">
							<div class="listBox first"> <!-- style="width:226px; padding:0 10px;">--> <!-- 268 -> 228 -> 211/ padding:0 10px;-->
								<p class="courseType">���߹�</p><br/>
								<div class="conCnt conCntDynamic" style="min-height:145px; padding:30px 15px; " h_ref="/Course/ShortCourse/DetailPage/Course_c.asp">
									<p class="courseName" style="height:30px; line-height:15px;">
										<span style="letter-spacing:-0.5pt;"><span style="font-size:26pt; text-shadow:1px 1px 1px #cfcfcf; font-weight:700;">C</span> Master </span>
									</p>
									<br/>

									<p class="textLarge">�����Ⱓ</p>
									<p>1���� (20��/������~�ݿ���)</p>
									<br/>

									<p class="textLarge">���ǽð�</p>
									<p>19:00 ~ 22:00 (3�ð�/��60�ð�)</p>
									<br/>

									<p class="textLarge">�� ������ ����</p>
									
								</div>
							</div>

							<div class="listBox">
								<p class="courseType">�ָ���</p><br/>
								<div class="conCnt conCntDynamic" style="min-height:145px; padding:30px 15px; " h_ref="/Course/ShortCourse/DetailPage/Course_c_weekend.asp">
									<p class="courseName" style="height:30px; line-height:15px;">
										<span style="letter-spacing:-0.5pt;"><span style="font-size:26pt; text-shadow:1px 1px 1px #cfcfcf; font-weight:700;">C</span> Master </span>
									</p>
									<br/>

									<p class="textLarge">�����Ⱓ</p>
									<p>1���� (8��/�����, �Ͽ���)</p>
									<br/>

									<p class="textLarge">���ǽð�</p>
									<p>13:00 ~ 18:00 (5�ð�/��40�ð�)</p>
									<br/>

									<p class="textLarge">�� ������ ����</p>
									
								</div>
							</div>

							<div style="clear:both;"></div>
						</div>
						
						<div class="separateLine" style="height:10px;"></div>
						<br/>
						
						<div class="con_wrap1709">
							<!-- �ڰ������� �Ұ� -->
							<!-- #include virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCCPM1709.asp"-->
							<!-- /�ڰ������� �Ұ� -->
						</div>
					</div>
				</div>
				<!--<a href="#this" class="moveTop">Top</a>-->
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