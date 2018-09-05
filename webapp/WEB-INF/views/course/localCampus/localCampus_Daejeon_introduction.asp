<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel= "shortcut icon" href="/images/favicon.ico">
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<!-- ������Ʈ ���캸�� -->
	<script type="text/javascript" src="/JS/masonry.pkgd.min.js"></script>
	<script src="https://npmcdn.com/imagesloaded@4.1/imagesloaded.pkgd.min.js"></script>	
	<script type="text/javascript" src="/JS/main/hash.js"></script>
	<script type="text/javascript" src="/JS/main/turn.js"></script>
	<script type="text/javascript" src="/JS/main/zoom.js"></script>

	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			/* page load ���� SNB ���� */
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap .newdepth2").eq(1).addClass("on");  			// [����] ����ķ�۽�
			$(".snb_1709 .newdepth3_wrap.no2").addClass("on").css('display','block');	// [����] ����ķ�۽� SUB - OPEN
			$(".snb_1709 .newdepth3_wrap.no2 .newdepth3:eq(0)").addClass("on");		// ����ķ�۽� �Ұ� ON
			
			///////////////////////////////////////////////////////////////////////////////////////////////////////////
			// 1. ������Ʈ ���캸�� booklet.			
			$("#flipbook").turn({
				width: 800,
				height: 1135,
				display: 'single',
				duration: 1000,
				autoCenter: true
			});
			
			$("#btnPrevious, #btnPrevious2").on('click', function(e) {
				e.preventDefault();
				previousPage();
			});
			
			$("#btnNext, #btnNext2").on('click', function(e) {
				e.preventDefault();
				nextPage();
			});
			
			$('.myBlurAll').on('click', function() {
				hideBooklet();
			});
			
			$("#flipbook").bind('start', function(event, page, pageObject) {
				//alert("end happened. This page is : " + $('#flipbook').turn('page') + " / " + $('#flipbook').turn('pages') );
				var nThisPage = $('#flipbook').turn('page');
				var nTotalPages = $('#flipbook').turn('pages');
				//alert(nThisPage + " / " + nTotalPages);
				
				if(nThisPage == 1) {
					$("#btnPrevious").addClass("disabled");
					$("#btnPrevious2").addClass("disabled");
					$("#btnNext").removeClass("disabled");
					$("#btnNext2").removeClass("disabled");
					
				} else if(nThisPage == nTotalPages) {
					$("#btnPrevious").removeClass("disabled");
					$("#btnPrevious2").removeClass("disabled");
					$("#btnNext").addClass("disabled");
					$("#btnNext2").addClass("disabled");
					
				} else {
					$("#btnPrevious").removeClass("disabled");
					$("#btnPrevious2").removeClass("disabled");
					$("#btnNext").removeClass("disabled");
					$("#btnNext2").removeClass("disabled");
					
				}
				
			});
			///////////////////////////////////////////////////////////////////////////////////////////////

			///////////////////////////////////////////////////////////////////////////////////////////////////////////
			// 2. ������ ��ǰ�� EntryWorks
			$("#flipbook_3").turn({
				width: 800,
				height: 1131,
				display: 'single',
				duration: 1000,
				autoCenter: true
			});
			$("#btnPrevious_3, #btnPrevious2_3").on('click', function(e) {
				e.preventDefault();
				previousPage_3();
			});
			$("#btnNext_3, #btnNext2_3").on('click', function(e) {
				e.preventDefault();
				nextPage_3();
			});
			$('.myBlurAll3').on('click', function() {
				hideEntryWorks();
			});
			$("#flipbook_3").bind('start', function(event, page, pageObject) {
				//alert("end happened. This page is : " + $('#flipbook_3').turn('page') + " / " + $('#flipbook_3').turn('pages') );
				var nThisPage = $('#flipbook_3').turn('page');
				var nTotalPages = $('#flipbook_3').turn('pages');
				//alert(nThisPage + " / " + nTotalPages);
				
				if(nThisPage == 1) {
					$("#btnPrevious_3").addClass("disabled");
					$("#btnPrevious2_3").addClass("disabled");
					$("#btnNext_3").removeClass("disabled");
					$("#btnNext2_3").removeClass("disabled");
					
				} else if(nThisPage == nTotalPages) {
					$("#btnPrevious_3").removeClass("disabled");
					$("#btnPrevious2_3").removeClass("disabled");
					$("#btnNext_3").addClass("disabled");
					$("#btnNext2_3").addClass("disabled");
					
				} else {
					$("#btnPrevious_3").removeClass("disabled");
					$("#btnPrevious2_3").removeClass("disabled");
					$("#btnNext_3").removeClass("disabled");
					$("#btnNext2_3").removeClass("disabled");
					
				}				
			});			
			
			///////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// 3. �ʱⰪ�� ���� [������Ʈ ���캸��] �� [������ ��ǰ��] �����ֱ�.
			if( 'booklet' == '<%=Request.QueryString("beginwith")%>') {
				showBooklet();
			}
			else if( 'entryWorks' == '<%=Request.QueryString("beginwith")%>') {
				showEntryWorks();
			}
		});
		//////////////////////////////////////////////////////
		// ������Ʈ ���캸�� booklet.
		function showBooklet() {
			$("#section1").css('display','block');
			$("#divSection1").css('display', 'block' );
			$("#divSection2").css('display', 'none');
			
			$('.myBlurAll').css('display','block');
			//$('body').css('overflow','hidden');
			$('html, body').animate({ scrollTop: 150 }, 'fast');
		}
		
		function hideBooklet() {
			$("#section1").css('display','none');
			$("#divSection1").css('display', 'none' );
			$("#divSection2").css('display', 'block');
			
			$('.myBlurAll').css('display','none');
		}
		
		function previousPage() {
			//alert("previous");
			$("#flipbook").turn("previous");
		}
		
		function nextPage() {
			//alert("next");
			$("#flipbook").turn("next");
		}
		////////////////////////////////////////////////////////////
		
		///////////////////////////////////////////////////////
		// ������ ��ǰ�� EntryWorks.
		
		function showEntryWorks() {
		
			$("#section3").css('display', 'block' );
			$("#divSection3").css('display', 'block' );
			//alert("-");
			$("#divSection2").css('display', 'none');
			$("#section1").css('display', 'none');
			$('.myBlurAll3').css('display','block');
			//$('body').css('overflow','hidden');
			$('html, body').animate({ scrollTop: 150 }, 'fast');
		}
		function hideEntryWorks() {
			$("#section3").css('display', 'none' );
			$("#divSection3").css('display', 'none' );
			$("#divSection2").css('display', 'block');
			$("#section1").css('display', 'none');
			
			$('.myBlurAll3').css('display','none');
		}
		function previousPage_3() {
			$("#flipbook_3").turn("previous");
		}
		function nextPage_3() {
			$("#flipbook_3").turn("next");
		}
		/////////////////////////////////////////////////////////

	</script>
	<style>
		#btnNext2, #btnNext2_3 {
			opacity: 0.5;
			position: absolute;
			top:550px;
			left:750px;
			z-index:10001;
		}
		#btnPrevious2, #btnPrevious2_3 {
			opacity: 0.5;
			position: absolute;
			top:550px;
			left:-80px;
			z-index:10001;
		}
		.myBlurAll {
			position:fixed;
			left:0;
			top:0;
			width:100%;
			height:100%;
			
			opacity:0.35;
			z-index:9999;
			background-color:#000;
		}
		.myBlurAll3 {
			position:fixed;
			left:0;
			top:0;
			width:100%;
			height:100%;
			
			opacity:0.35;
			z-index:9999;
			background-color:#000;
		}
		.disabled {
			opacity: 0.1 !important;
			cursor: not-allowed;
		}
		
	</style>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

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
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܱ��ٽɰ���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[����]����ķ�۽�
						</p>
						<h4>����ķ�۽� �Ұ�</h4>
					</div>

					<div id="section1" class="section" style="display:none; position:absolute; left:50px; top:00px;">
						<!-- con_wrap -->
						<div class="myBlurAll" style="display:none;"></div>
						<div id="divSection1" class="con_wrap first last" style="margin-left:40px; display:none; z-index:10000; ">
							<!--<div id="flipbook" style="border:2px solid #d7d7d7; border-radius:3px;">-->
							<div id="flipbook" style="box-shadow:0 4px 10px #666;">
								<!--#include file="module_Daejeon_Booklet.asp"-->
							</div>
							<div style="display:none; margin-left:270px; margin-top:30px;">
								<a href="#" id="btnPrevious" class="btn mid blue disabled" style="float:left; margin-left:40px;">����</a>
								<a href="#" id="btnNext" class="btn mid blue" style="float:left; margin-left:40px;">����</a>
								<div style="clear:both;"></div>
							</div>
							<div>
								<a href="#" id="btnPrevious2" class="disabled" style="float:left; margin-left:40px;"><img src="/Images/Main/img_ICON_leftArrow.png"/></a>
								<a href="#" id="btnNext2" style="float:left; margin-left:40px;"><img src="/Images/Main/img_ICON_rightArrow.png"/></a>
								<div style="clear:both;"></div>
							</div>
						</div>
						<!-- //con_wrap -->
					</div>
					<div id="section3" class="section" style="display:none; position:absolute; left:50px; top:00px;">
						<!-- con_wrap -->
						<div class="myBlurAll3" style="display:none; z-index:9999; "></div>						
						<div id="divSection3" class="con_wrap first last" style="margin-left:40px; display:none; z-index:10000;">
							<div id="flipbook_3" style="box-shadow:0 4px 10px #666; z-index:10000;">
								<!--#include file="module_Daejeon_EntryWorks.asp"-->
							</div>
							<div style="display:none; margin-left:270px; margin-top:30px;">
								<a href="#" id="btnPrevious_3" class="btn mid blue disabled" style="float:left; margin-left:40px;">����</a>
								<a href="#" id="btnNext_3" class="btn mid blue" style="float:left; margin-left:40px;">����</a>
							</div>
							<div>
								<a href="#" id="btnPrevious2_3" class="disabled" style="float:left; margin-left:40px;"><img src="/Images/Main/img_ICON_leftArrow.png"/></a>
								<a href="#" id="btnNext2_3" style="float:left; margin-left:40px;"><img src="/Images/Main/img_ICON_rightArrow.png"/></a>
							</div>
						</div>
						<!-- //con_wrap -->
					</div>
					
					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>����ķ�۽� �Ұ�</h5>
							<p class="mar_b10">���￡ ���ż� ������ �޾ƾ� �ϴ� ������ ���� �����ϼ���? �� �̻� ����Ʈ���� ���α׷��� ������ �ޱ� ���� ������� ����� �ʿ䰡 �����ϴ�. ü������ �����ý��۰� �ְ��� �����ü��� ����ķ�۽��� OPEN �߽��ϴ�.</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� �ε��</h5>
							<h5 class="small">.NET ������ �η¾缺 �ڽ�����(�� 9����)</h5>
							<img src="Images/roadmap_Daejeon.png"/>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�ܱ����</h5>
							<h5 class="small"><a href="/Course/LocalCampus/DetailPage/Daejeon_C.asp">C Programming</a></h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DJ_C.inc" -->
												<!--2017.12.18(��) ~ 2018.01.10(��)-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DJ_C.inc" -->
												<!--09:00 ~ 13:00 (4�ð�)-->
											</td>
											<!--
											<th scope="row" class="tit">���Ĺ�</th>
											<td>14:00 ~ 18:00 (4�ð�)</td>
											<th scope="row" class="tit">�����</th>
											<td>19:00 ~ 22:00 (3�ð�)</td>											
											-->
										</tr>
										<!-- ����ķ�۽� C Programming -->
										
										<tr>
											<th scope="row" class="tit">������</th>
											<td>300,000��</td>
											<th scope="row" class="tit">��������</th>
											<td> 02-3486-7588</td>
										</tr>
									</tbody>
								</table>
							</div>
							<h5 class="small"><a href="/Course/LocalCampus/DetailPage/Daejeon_Cplus.asp">C++ Programming</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DJ_Cpp.inc" -->
												<!--2018.01.11(��) ~ 2018.01.30(ȭ)-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<!--
											<th scope="row" class="tit">�����</th>
											<td>19:00 ~ 22:00 (3�ð�)</td>											
											-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DJ_Cpp.inc" -->
												<!--09:00 ~ 13:00 (4�ð�)-->
											</td>
										</tr>
										<!-- ����ķ�۽� C++ Programming -->

										<tr>
											<th scope="row" class="tit">������</th>
											<td>300,000��</td>
											<th scope="row" class="tit">��������</th>
											<td> 02-3486-7588</td>
										</tr>
									</tbody>
								</table>
							</div>
							<h5 class="small"><a href="/Course/LocalCampus/DetailPage/Daejeon_Java.asp">Java Programming</a></h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DJ_Java.inc" -->
												<!--2018.02.01(��) ~ 2018.02.22(��)-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DJ_Java.inc" -->
												<!--09:00 ~ 13:00 (4�ð�)-->
											</td>
											<!--
											<th scope="row" class="tit">�����</th>
											<td>19:00 ~ 22:00 (3�ð�)</td>
											<th scope="row" class="tit">���Ĺ�</th>
											<td>14:00 ~ 18:00 (4�ð�)</td>											
											-->
										</tr>
										<!-- ����ķ�۽� JAVA Programming -->

										<tr>
											<th scope="row" class="tit">������</th>
											<td>300,000��</td>
											<th scope="row" class="tit">��������</th>
											<td> 02-3486-7588</td>
										</tr>
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_localCampus.asp" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>
								��ް���
								<a href="javascript:showBooklet();" title="������Ʈ ���캸��" class="btnRedBorder" style="font-size:15px; padding:0 5px; margin-left:10px; border-radius:0px; letter-spacing:-1.5px;">������Ʈ ���캸��</a>
								<a href="javascript:showEntryWorks();" title="������ ��ǰ��" class="btnRedBorder" style="font-size:15px; padding:0 5px; margin-left:10px; border-radius:0px; letter-spacing:-1.5px;">������ ��ǰ��</a>
							</h5>
							<h5 class="small"><a href="/Course/LocalCampus/DetailPage/Daejeon_windowNet.asp">Windows.NET ��ް���</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td class="l">
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DJ_WINHIGH.inc" -->
												<!--2017.08.28 ~ 2018.02.28 (6����)-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DJ_WINHIGH.inc" -->
												<!--09:00 ~ 16:00 (6�ð�)-->
											</td>
										</tr>
										<!-- ����ķ�۽� Windows .NET ��ް��� -->

										<tr>
											<th scope="row" class="tit">������</th>
											<td>3,700,000��</td>
											<th scope="row" class="tit">��������</th>
											<td> 02-3486-7588</td>
										</tr>									
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_localCampus.asp" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>

							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���ô� ��</h5>
							<img src="Images/location_Daejeon.png" style="width:640px;"/>
						</div>
						<!-- //con_wrap1709 -->
						

					</section>
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