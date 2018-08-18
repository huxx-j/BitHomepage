<%
	Session.CodePage  = 949 '한글
	Response.CharSet  = "euc-kr" '한글
%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel= "shortcut icon" href="/images/favicon.ico">
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	
	<script type="text/javascript" src="/JS/main/jquery.magnific-popup.js"></script>
	<link rel="stylesheet" href="/JS/main/magnific-popup.css"/>	
	<script src="/JS/main/popModal.js"></script>
	<link type="text/css" rel="stylesheet" href="/JS/main/popModal.css">
	
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		
		// BitProject CoverFront의 좌표값 관련 변수들
		var BPnum = -1;
		var x1 = new Array();
		var x2 = new Array();
		var y1 = new Array();
		var y2 = new Array();
		var termnum = new Array();
		var groupnum = new Array();
		var bPositionOn=0; // mousemove event에서 사용할 변수 : 조별 주제 영역 위에 있는지 여부.
	
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");				// 비트 SW Expert 자격증 ON
						
			// 표지 클릭시 팝업 열기
			$('.aOpenPopup').on('click', function(e) {
				
				var BPSerialNum = $(this).attr('id').substring(1); // ex. '125'
				$(".BitProjectNum").val(BPSerialNum);
				
				//alert("BPNUM : " + BPSerialNum);
				
				ajaxLoad('#myBox1', '', '/Course/Expert/PopupIncludeMain.asp?BPnum='+BPSerialNum);				
				
				//alert("hey " + $(this).attr('id').substring(1)); // hey 125
				e.preventDefault();
				
				$('.myBlurAll').css('display','block');
				$('#myBox1').css('display','block');
				$('body').css('overflow','hidden');
			});
			
			$('.myBlurAll').on('click', function() {
			
				$('.myPopup').css('display','none');
				$('.myPopup2').css('display','none');
				$('.myBlurAll').css('display','none');
				$('body').css('overflow','auto');
			});

			$(document).on('click', '#aClose1', function(e) {
				e.preventDefault();
				
				$('.myPopup').css('display','none');
				$('.myPopup2').css('display','none');
				$('.myBlurAll').css('display','none');			
				$('body').css('overflow','auto');
			});
			
			var aTemp=0;  // mousemove 에서 쓰이는 임시변수.
			$(document).on('mousemove', '#myCoverFront125', function(e) {
				// 좌표값 변수에 좌표값 셋팅
				setVariablesBP();
				
				bPositionOn = 0;
				for(var i=0;i<=16;i++) {
					if(e.offsetX >= x1[i] && e.offsetX <= x2[i] && e.offsetY >= y1[i] && e.offsetY <= y2[i]) {
						// mousein 상황 : bPositionOn => 1로.
						bPositionOn = 1;
						$('.myPopup2').css('display','block');
						$('#myBox2  ').css('display','block');
						//alert("TermNum : " + termnum[i] + "기 " + "GroupNum : " + groupnum[i] + "조");
						showUpContents(termnum[i], groupnum[i]);
					}
				}
				if(bPositionOn == 0) {
					// mouseout 상황 : bPositionOn => 0으로.
					$('.myPopup2').css('display','none');
					bPositionOn = 0;					
					$('.myPopup2').hide();
				}
			});
			//alert("well done.");
		});
		
		function setVariablesBP() {
			BPnum = $(".BitProjectNum").val();
			for(var i=0;i<=16;i++) {					
				x1[i] = $(".x1").eq(i).val();					
				y1[i] = $(".y1").eq(i).val();
				x2[i] = $(".x2").eq(i).val();
				y2[i] = $(".y2").eq(i).val();
				termnum[i] = $(".TermNum").eq(i).val();
				groupnum[i] = $(".GroupNum").eq(i).val();
			}	
		}
		
		function showUpContents(TermNumHere, GroupNumHere ) {
			for(var i=0;i<=16;i++) {
			
				if($('.TermNum').eq(i).val()==TermNumHere && $('.GroupNum').eq(i).val()==GroupNumHere ) {
					//alert("CHA CHANG! : TermNum = " + TermNumHere + " = " + $('.TermNum').eq(i).val());
					
					// USING this 'i' value, fill the contents to the right-side div.
					
					var strPre = '<div style="margin-top:30px; margin-bottom:5px; padding:5px; font-size:13pt; color:#8b6338; background-color:#fbfbec;">';
					var strMid = '</div><p style="font-size:11pt; color:#4f4f4f; line-height:15pt;">';
					var strPost = '</p>';
					
					var strSubject = '<div style="padding:10px; font-size:15pt; font-weight:900; border:1px solid #d7d7d7;">' + $('.Subject').eq(i).val() + '</div>';
					var str1 = strPre + '개 요' + strMid + $('.Str1').eq(i).val() + strPost;
					var str2 = strPre + '설계의 주안점' + strMid + $('.Str2').eq(i).val() + strPost;
					var str3 = strPre + '응용 분야' + strMid + $('.Str3').eq(i).val() + strPost;
					var str4 = strPre + '사용 기술' + strMid + $('.Str4').eq(i).val() + strPost;
					var str5 = strPre + '조원' + strMid + $('.Str5').eq(i).val() + strPost;
					var strEtc = $('.StrEtc').eq(i).val();
					
					$('#myBox2').html(strSubject + str1 + str2 + str3 + str4 + str5 + strEtc);
					
					break;
				}
			}
		}
	</script>
	<style>
		.myPopup {
			position:fixed; 
			left:2%; 
			top:2%; 
			
			opacity:1; 
			z-index:10000; 
			
			background-color:#fff;
			font-family:'Nanum Gothic Bold'; 
			font-weight:800;
			
			width:615px;
			height:90%;
			padding:30px;
			border-radius:1px;
			box-shadow: 0 0 80px rgba(0,0,0,0.99);
			
			overflow: scroll;
		}
		.myPopup2 {
			position:fixed; 
			left:38%; 
			top:2%; 
			
			opacity:1; 
			z-index:10000; 
			
			background-color:#fff;
			font-family:'Nanum Gothic Bold'; 
			font-weight:800;
			
			width:615px;
			height:90%;
			padding:30px;
			border-radius:1px;
			box-shadow: 0 0 80px rgba(0,0,0,0.99);
			
			overflow: scroll;
		}
		.myBlurAll {
			position:fixed;
			left:0;
			top:0;
			width:100%;
			height:100%;
			
			opacity:0.6;
			z-index:9999;
			background-color:#000;
		}
	</style>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<form name="form1" style="height:10px;">  <!-- to share between ASP and JS -->
		<input type="hidden" class="BitProjectNum" value=""></input>
	</form>

	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseLicense_1709.asp"-->
				<!-- //SNB_Wrap-->
				
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>비트 SW 자격증
						</p>
						<h4>비트 SOFTWARE EXPERT 자격증</h4>
					</div>
					
					<section class="section">
						<div class="con_wrap1709">
							<h5>소개</h5>
							<p class="mar_b10">
								비트 SW Expert 민간자격증은 자격기본법 제 17조 제2항에 따라 주무부처인 미래창조과학부에 등록하고 한국직업능력개발원에서 승인한 민간자격증입니다.<br/>
							</p>
							<p class="mar_b10">
								비트의 SW Expert 자격증은 비트교육센터에서 전문가과정(신입사원채용) 선발절차(필기시험 + 기술면접)에 따라 선발된 인원이 총 6개월(이론3개월+프로젝트 3개월)간의 전문가과정 교육을 진행 후 최종 검증단계인 프로젝트 발표회를 통하여 인증을 거친 자에 한하여 발급되는 자격증입니다.
							</p>
							<p class="redTxt mar_b10">
								<!--※ 취업에 있어 이 자격증을 소지한 자를 적극 우대 및 가산점을 적용하는 제도를 진행하고 있습니다. -->
								※ 협약기업 채용시 이 자격증을 소지한 자에게 가산점을 적용하는 등 적극적으로 우대하고 있습니다. 
							</p>
						</div>
						
						<div class="con_wrap1709">
							<h5>비트전문가과정 수료생 채용가산점 협약기업</h5>
							<div>
								<div style="margin-left:10px;">
									<div style="float:left; margin-left:10px;"><li><a href="http://www.bit.co.kr/05_bitcom/bitcom_01.aspx"  target="_blank"><img src="/Images/Main/img_banner_01.png" alt="비트컴퓨터"></a></div>
									<div style="float:left; margin-left:10px;"><li class="last"><a href="http://www.kaonmedia.co.kr/company/intro01.asp" target="_blank"><img src="/Images/Main/img_banner_02.png" alt="가온미디어"></a></div>
									<div style="float:left; margin-left:10px;"><li class="mar_b0"><a href="http://www.duzon.co.kr/duzonit/duzon/company/company01.asp" target="_blank"><img src="/Images/Main/img_banner_03.png" alt="더존비즈온 "></a></div>
								</div>									
								<div style="clear:both;"></div>
							</div>
						</div>
						<div class="con_wrap1709">
							<h5>비트 SOFTWARE EXPERT 자격증 샘플</h5>
							<img src="http://www.bitacademy.com/Images/Content/img_expert_bit_certification.jpg"/>
						</div>
						<div class="con_wrap1709 last popup-gallery" style="padding:6px;">
							<h5>비트 SOFTWARE EXPERT 자격증 인증 받은 비트프로젝트 </h5>
							<p class="mar_b10">
								비트 프로젝트는 27년 전통의 IT인재 전문인력양성기관인 비트교육센터는 전문가과정 수료생의 프로젝트 결과물을 비트프로젝트라는 이름의 서적으로 발간하고 있습니다.<br/>
							</p>
							<p class="mar_b10">
								비트프로젝트는 세계최초 또는 국내최초, 상용화된 제품이라도 접근방법론이나 구현알고리즘이 다른 창의적인 주제의 프로젝트 이며, 6개월 간의 전문가과정 교육의 핵심을 담고 있습니다. 비트교육센터 전문가과정 프로젝트 발표회를 통하여 검증된 프로젝트만이 본 비트프로젝트 책에 실릴 수 있으며, 프로젝트의 퀄리티를 충족시키지 못하면 충족 시킬 때 까지 재 수행을 하여 완벽한 퀄리티를 보장합니다.<br/>
							</p>
							<p class="mar_b10">
								본 비트프로젝트에 실린 여러 프로젝트결과물은 현재 IT업계를 이끄는 원동력이 되어 왔으며, 소프트웨어 공모대전 입상, 국내 유수의 IT기업의 창업에 근간이 되는 등의 그 우수성과 퀄리티를 인정 받았습니다.
							</p>
							
							<p class="redTxt mar_b10">※ 아래 표지를 클릭하시면 해당 비트프로젝트의 개요를 확인하실 수 있습니다</p>
							<!--< ! - - # include virtual="/Course/Expert/ExpertPopup/PopupMain.asp" - - > -->
							<div id="myBox1" class="myPopup" style="display:none;"></div>
							<div id="myBox2" class="myPopup2" style="display:none;"></div>
							
							<div class="myBlurAll" style="display:none;"></div>
							<div style="background-color:#f1f4f5; padding:5px;">
								<a id="a125" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_125_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a124" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_124_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a123" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_123_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a122" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_122_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a121" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_121_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a120" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_120_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a119" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_119_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a118" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_118_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a117" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_117_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a116" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_116_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a115" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_115_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a114" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_114_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a113" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_113_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a112" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_112_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a111" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_111_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a110" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_110_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a109" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_109_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a108" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_108_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a107" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_107_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a106" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_106_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a105" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_105_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a104" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_104_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a103" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_103_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a102" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_102_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a101" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_101_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a100" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_100_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a99" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_99_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a98" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_98_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a97" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_97_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a96" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_96_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a95" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_95_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a94" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_94_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a93" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_93_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a92" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_92_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a91" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_91_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a90" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_90_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a89" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_89_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a88" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_88_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a87" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_87_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a86" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_86_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a85" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_85_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a84" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_84_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a83" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_83_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a82" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_82_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a81" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_81_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a80" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_80_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a79" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_79_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a78" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_78_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a77" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_77_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a76" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_76_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a75" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_75_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a74" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_74_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a73" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_73_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a72" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_72_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a71" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_71_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a70" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_70_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a69" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_69_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a68" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_68_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a67" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_67_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a66" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_66_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a65" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_65_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a64" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_64_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a63" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_63_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a62" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_62_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a61" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_61_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a60" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_60_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a59" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_59_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a58" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_58_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a57" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_57_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a56" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_56_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a55" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_55_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a54" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_54_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a53" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_53_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a52" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_52_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a51" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_51_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a50" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_50_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a49" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_49_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a48" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_48_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a47" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_47_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a46" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_46_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a45" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_45_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a44" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_44_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a43" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_43_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a42" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_42_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a41" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_41_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a40" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_40_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a39" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_39_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a38" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_38_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a37" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_37_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a36" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_36_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a35" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_35_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a34" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_34_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a33" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_33_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a32" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_32_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a31" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_31_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a30" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_30_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a29" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_29_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a28" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_28_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a27" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_27_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a26" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_26_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a25" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_25_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a24" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_24_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a23" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_23_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a22" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_22_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a21" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_21_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a20" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_20_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a19" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_19_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a18" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_18_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a17" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_17_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a16" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_16_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a15" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_15_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a14" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_14_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a13" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_13_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a12" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_12_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a11" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_11_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a10" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_10_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a9" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_9_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a8" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_8_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a7" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_7_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a6" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_6_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a5" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_5_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a4" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_4_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a3" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_3_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a2" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_2_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>
								<a id="a1" class="aOpenPopup" href="#" style="margin:7px 2px 7px 7px; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_1_(180x250).jpg" width="160" height="222" style="box-shadow:rgb(102,102,102) 6px 6px 6px; border:1px solid #d7d7d7; margin-top:6px; margin-bottom:6px;"></a>

							</div>
							<!--<div style="float:right;"><h4><span style="color:#7b5622">※ 클릭하시면 확대해서 보실 수 있습니다.</span></h4></div>-->
							<div style="float:right;"><h4><span class="brownTxt">※ 클릭하시면 확대해서 보실 수 있습니다.</span></h4></div>
						</div>
						
					</section>
				</div>
				
				<!--<a href="#this" class="moveTop">Top</a>-->
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>

		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>