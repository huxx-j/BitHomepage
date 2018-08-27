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

			ajaxLoad('#ConDetail', '', '/Course/LocalCampus/Tab/busan_courseInfo.asp');
			$(".snb_1702 .newdepth1").eq(5).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(5).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no7").find("li a").eq(4).addClass("on");
		
			$(".snb_1702 .newdepth2.newwrap.Uno4").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.Uno4").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.Uno4 li:eq(0) a").addClass("on");
			
			///////////////////////////////////////////////////////////////////////////////////////////////////////////
			// 1. ������Ʈ ���캸�� booklet.			
			$("#flipbook").turn({
				width: 800,
				height: 1035,
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
			///////////////////////////////////////////////////////////////////////////////////////////////
			
			///////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// 3. �ʱⰪ�� ���� [������Ʈ ���캸��] �� [������ ��ǰ��] �����ֱ�.
			if( 'booklet' == '<%=Request.QueryString("beginwith")%>') {
				showBooklet();
			}
			//else if( 'entryWorks' == '<%=Request.QueryString("beginwith")%>') {
			//	showEntryWorks();
			//}
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
		////////////////////////////////////////////////////////////
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
				<h3><span class="courseName">�λ�ķ�۽�</span></h3>
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
						<h4>�λ�ķ�۽�</h4>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���к�Ʈ</a>
							<a href="#this" class="last on">�λ�ķ�۽�</a>
						</p>
					</div>
					
					<div id="divSection2" class="section">
						<div class="section_body">
							<!-- con_wrap -->
							<div class="con_wrap first bg_none">
								<div class="visual_wrap">
									<p class="sTit">26�� ������ ��� ����</p>
									<p class="bTit"><span class="green1">���ѹα� �ְ��� ����Ʈ���� �����η� �缺</span> ������� <span class="green1">��Ʈ��������</span></p>
									<p class="cntName">�λ�ķ�۽�</p>
									<div class="txtCon">
										���￡ ���ż� ������ �޾ƾ� �ϴ� ������ ���� �����ϼ���?<br>
										�� �̻� ����Ʈ���� ���α׷��� ������ �ޱ� ���� �������<br>
										����� �ʿ䰡 ����ϴ�.<br>
										ü������ �����ý��۰�  �ְ��� �����ü���<br>
										<span class="green1">�λ�ķ�۽��� OPEN</span> �߽��ϴ�.
									</div>
									<!--<a href="/Register/Request/register_localCampus.asp" title="�����ϱ�" class="support btn mid green1">�����ϱ�</a>-->
								</div>
								<div>
									<div class="tap_header">
										<ul class="tapMenu">
											<li><a href="#this" title="�������� �ε��" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/LocalCampus/Tab/busan_RoadMap.asp');">�������� �ε��</a></li>
											<li class="on"><a href="#this" title="�������ΰ���" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/LocalCampus/Tab/busan_courseInfo.asp');">�������ΰ���</a></li>
											<li><a href="#this" title="����ȯ��" onClick="javascript:ajaxLoad('#ConDetail','','/Course/LocalCampus/Tab/busan_gallery.asp');">����ȯ��</a></li>
											<li><a href="#this" title="���ô±�" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/LocalCampus/Tab/busan_location.asp');">���ô±�</a></li>
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
								<div><img src="/Images/Content/Booklet/201704_LocalCampus_BS_Project_2_1.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201704_LocalCampus_BS_Project_2_2.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201704_LocalCampus_BS_Project_2_3.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201704_LocalCampus_BS_Project_2_4.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201704_LocalCampus_BS_Project_2_5.png" width="800"/></div>
								
								<div><img src="/Images/Content/Booklet/201609_LocalCampus_BS_Project_001.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201609_LocalCampus_BS_Project_002.png" width="800"/></div>
								
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