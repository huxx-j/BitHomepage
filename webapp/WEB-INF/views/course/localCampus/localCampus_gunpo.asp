<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script type="text/javascript" src="/JS/masonry.pkgd.min.js"></script>
	<script src="https://npmcdn.com/imagesloaded@4.1/imagesloaded.pkgd.min.js"></script>
	
	<script type="text/javascript" src="/JS/main/hash.js"></script>
	<script type="text/javascript" src="/JS/main/turn.js"></script>
	<script type="text/javascript" src="/JS/main/zoom.js"></script>

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Course/shortCourse/DetailPage/Common_eventHandlers_SNB.inc"-->

			ajaxLoad('#ConDetail', '', '/Course/LocalCampus/Tab/gunpo_courseInfo.asp');
			$(".snb_1702 .newdepth1").eq(5).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(5).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no7").find("li a").eq(2).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.Uno2").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.Uno2").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.Uno2 li:eq(0) a").addClass("on");
			
			///////////////////////////////////////////////////////////////////////////////////////////////////////////
			// 1. ������Ʈ ���캸�� booklet.
			$("#flipbook").turn({
				width: 800,
				height: 1131,
				display: 'single',
				duration: 2000,
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
			//////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			
			///////////////////////////////////////////////////////////////////////////////////////////////////////////
			// 2. ������ ��ǰ�� EntryWorks
			$("#flipbook_3").turn({
				width: 800,
				height: 1131,
				display: 'single',
				duration: 2000,
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
		///////////////////////////////////////////////////////
		
		///////////////////////////////////////////////////////
		// ������ ��ǰ�� EntryWorks.
		
		function showEntryWorks() {
			$("#section3").css('display', 'block' );
			$("#divSection3").css('display', 'block' );
			
			$("#divSection2").css('display', 'none');
			$("#section1").css('display', 'none');
			$('.myBlurAll3').css('display','block');
			//$('body').css('overflow','hidden');
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
	
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">����ķ�۽�</span></h3>
				<h4>���� �� ��Ʈ���������� ���������� �����Ǿ� �ְų� �Ǵ� ��Ʈ���������� ������ ������ ��� �������� �� <br>
				���� ������ �̷�� �� �� �ֵ��� ����� ��Ʈ�������Ͱ� ���� ���� ��Ʈ��ũ �Դϴ�.</h4>
			</div>
		</div>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4>����ķ�۽�</h4>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���к�Ʈ</a>
							<a href="#this" class="last on">����ķ�۽�</a>
						</p>
					</div>
					<div id="divSection2" class="section">
						<div class="section_body">
							<!-- con_wrap -->
							<div class="con_wrap first bg_none">
								<div class="visual_wrap">
									<p class="sTit">26�� ������ ��� ����</p>
									<p class="bTit"><span class="green1">���ѹα� �ְ��� ����Ʈ���� �����η� �缺</span> ������� <span class="green1">��Ʈ��������</span></p>
									<p class="cntName">����ķ�۽�</p>
									<div class="txtCon">
										���￡ ���ż� ������ �޾ƾ� �ϴ� ������ ���� �����ϼ���?<br>
										�� �̻� ����Ʈ���� ���α׷��� ������ �ޱ� ���� �������<br>
										����� �ʿ䰡 ����ϴ�.<br>
										ü������ �����ý��۰�  �ְ��� �����ü���<br>
										<span class="green1">����ķ�۽��� OPEN</span> �߽��ϴ�.
									</div>
									<!--<a href="/Register/Request/register_localCampus.asp" title="�����ϱ�" class="support btn mid green1">�����ϱ�</a>-->
								</div>
								<div>
									<div class="tap_header">
										<ul class="tapMenu">
											<li><a href="#this" title="�������� �ε��" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/LocalCampus/Tab/gunpo_RoadMap.asp');">�������� �ε��</a></li>
											<li class="on"><a href="#this" title="�������ΰ���" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/LocalCampus/Tab/gunpo_courseInfo.asp');">�������ΰ���</a></li>
											<li><a href="#this" title="����ȯ��" onClick="javascript:ajaxLoad('#ConDetail','','/Course/LocalCampus/Tab/gunpo_gallery.asp');">����ȯ��</a></li>
											<li><a href="#this" title="���ô±�" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/LocalCampus/Tab/gunpo_location.asp');">���ô±�</a></li>											
										</ul>
									</div>
									<div id="ConDetail" class="tap_content courseInfo">
										
									</div>
								</div>
							</div>
							<!-- //con_wrap -->
							<p class="inquiry">���� : 02.3486.1422 (�̸��� univ@bit.kr)</p>
							<div class="btn_wrap c">
								<a href="/Register/Request/register_localCampus.asp" class="btn mid green1">�����ϱ�</a>
							</div>
						</div>
					</div>
					
					<div id="section1" class="section" style="display:none;">
						<!-- con_wrap -->
						<div class="myBlurAll" style="display:none;"></div>
						<div id="divSection1" class="con_wrap first last" style="margin-left:40px; display:none; z-index:10000; ">
							<!--<div id="flipbook" style="border:2px solid #d7d7d7; border-radius:3px;">-->
							<div id="flipbook" style="box-shadow:0 4px 10px #666;">
								<div><img src="/Images/Content/Booklet/201609_LocalCampus_HS_Project_26_1.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201609_LocalCampus_HS_Project_26_2.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201609_LocalCampus_HS_Project_26_3.png" width="800"/></div>
								
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_001.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_002.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_003.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_004.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_005.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_006.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_007.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_008.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_009.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_010.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_011.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_012.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_013.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_014.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_015.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_016.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_017.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_018.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_019.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_020.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_021.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_022.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_023.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_024.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_025.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_026.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_027.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_028.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_029.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_030.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_031.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_032.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_033.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_034.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_035.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_036.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_037.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_038.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_039.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_040.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_041.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_042.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_043.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_044.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_045.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_046.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_047.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_048.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_049.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_050.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_051.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_052.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_053.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_054.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_055.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_LocalCampus_HS_Project_056.png" width="800"/></div>
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
					
					
					<div id="section3" class="section" style="display:none;">
						<!-- con_wrap -->
						
						<div class="myBlurAll3" style="display:none; z-index:9999; "></div>						
						<div id="divSection3" class="con_wrap first last" style="margin-left:40px; display:none; z-index:10000;">
							
							<div id="flipbook_3" style="box-shadow:0 4px 10px #666; z-index:10000;">
								<div>
									<img src="/Images/Content/Booklet/201604_localCampus_GunpoHS_EntryWorks_001.PNG" width="800" usemap="#EWmap1"/>
									<map name="EWmap1">
										<area shape="rect" coords="321,388,642,405" href="https://mplatform.seoul.go.kr/contest/info/contestInfo1.do" alt="#" target="_blank">
										<area shape="rect" coords="205,431,525,447" href="https://mplatform.seoul.go.kr/contest/info/contestInfo6.do" alt="#" target="_blank">
									</map>
								</div>
								<div><img src="/Images/Content/Booklet/201604_localCampus_GunpoHS_EntryWorks_002.PNG" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201604_localCampus_GunpoHS_EntryWorks_003.PNG" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201604_localCampus_GunpoHS_EntryWorks_004.PNG" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201604_localCampus_GunpoHS_EntryWorks_005.PNG" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201604_localCampus_GunpoHS_EntryWorks_006.PNG" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201604_localCampus_GunpoHS_EntryWorks_007.PNG" width="800"/></div>
								
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
					
					
					<div style="clear:both;"></div>
					
				</div>
				<a href="#this" class="moveTop">Top</a>
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
			
			

			
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>