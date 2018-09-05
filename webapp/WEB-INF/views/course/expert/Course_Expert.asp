<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720.css" >
	<style>
	</style>
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Course/ShortCourse/DetailPage/Common_eventHandlers_SNB.inc"-->
			ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_01.asp');
			$(".snb_1702 .newdepth1").eq(1).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(1).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");

			var str = location.toString();
			if( str.substr( str.search('go=')+3) == 'interview') {
				// scroll 1165px.
				$('html, body').animate({ scrollTop : 1165 }, 450);	
			}
			
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
			
			//$('#myBox1').bind('mousewheel', function(e) {
			//	e.stopPropagation();
			//});

		});
		
		function openPopup(strSrc,strArg2) {
			//alert("strSrc : " + strSrc);
			if(strArg2 == '') {
				strStyle = 'width:1500px;';
			} else {
				strStyle = strArg2;
			}
			
			var strInjection = "<div style='margin-left:60px; font-size:13pt; '><a id='aClose1' href='#'>[�ݱ�]</a></div>" 
								+ "<img src='" + strSrc + "' style='" + strStyle + "' />";
			
			$('#myBox1').html(strInjection);
			
			$('.myBlurAll').css('display','block');
			$('#myBox1').css('display','block');
			$('body').css('overflow','hidden');
		}
		
		function showAllCompanies() {
			$(".myCompaniesTop").css('display','none');
			$("#btnShowAllCompanies").hide();
			$("#btnShowTopCompanies").show();
			
			$(".myCompanies").css('opacity','1.0');
			$(".myCompanies").css('display','');
			$(".myCompanies").css('height','10');
			$(".myCompanies").animate({ height: 1799 },1000);
			
		}
		
		function showTopCompanies() {
			$("#btnShowTopCompanies").hide();
			$("#btnShowAllCompanies").show();
			
			//$(".myCompanies").css('height','10');
			$(".myCompanies").animate({ opacity: 0.5 },800);
			$(".myCompanies").animate({ height: 181 },500);			
			setTimeout( function() { 
				$(".myCompanies").css('display','none');
				$(".myCompanies").css('opacity','1.0');
				$(".myCompaniesTop").css('display','');
			}, 300 );
			
		}
		
		function showAllInterviewees() {
			$(".myIntervieweesTop").css('display','none');
			$("#btnShowAllInterviewees").hide();
			$("#btnShowTopInterviewees").show();
			
			$(".myInterviewees").css('opacity','1.0');
			$(".myInterviewees").css('display','');
			//$(".myInterviewees").css('height','790');
			$(".myInterviewees").css('height','50');
			$(".myInterviewees").animate({ height: 790 },1000);
			
		}
		
		function showTopInterviewees() {
			$("#btnShowTopInterviewees").hide();
			$("#btnShowAllInterviewees").show();
			
			//$(".myInterviewees").css('height','10');
			$(".myInterviewees").animate({ opacity: 0.5 },800);
			$(".myInterviewees").animate({ height: 181 },500);			
			setTimeout( function() { 
				$(".myInterviewees").css('display','none');
				$(".myInterviewees").css('opacity','1.0');
				$(".myIntervieweesTop").css('display','');
			}, 300 );
			
		}
		

	</script>
	<style>
		div.myCompanies div {
			width:182px;
			float:left;
			
			animation-timing-function: ease;
		}
		div.myCompaniesTop div {
			width:182px;
			float:left;
		}
		div.myInterviewees div {
			width:182px;
			float:left;
			
			animation-timing-function: ease;
		}
		div.myIntervieweesTop div {
			width:182px;
			float:left;
		}
		
		#btnShowAllCompanies, #btnShowTopCompanies  {
			color: #ffffff;
			background-color: #73ad21;
			box-shadow: 0 1px 1px rgba(0,0,0,0.12),0 1px 1px rgba(0,0,0,0.24);
			border:none;
			
			height:20px; 
			width:60px; 
			font-size:8pt; 
			font-family:'Nanum Gothic Bold';
			border-radius:3px;
		}
		#btnShowAllInterviewees, #btnShowTopInterviewees  {
			color: #ffffff;
			background-color: #73ad21;
			box-shadow: 0 1px 1px rgba(0,0,0,0.12),0 1px 1px rgba(0,0,0,0.24);
			border:none;
			
			height:20px; 
			width:60px; 
			font-size:8pt; 
			font-family:'Nanum Gothic Bold';
			border-radius:3px;
		}
		.myPopup {
			position:fixed; 
			left:10%; 
			top:2%; 
			
			opacity:1; 
			z-index:1000; 
			
			background-color:#fff;
			font-family:'Nanum Gothic Bold'; 
			font-weight:800;
			
			/*width:615px; */
			width:80%;
			height:90%;
			padding:30px;
			border-radius:1px;
			box-shadow: 0 0 280px rgba(0,0,0,0.999);
			
			overflow: scroll;
		}
		.myBlurAll {
			position:fixed;
			left:0;
			top:0;
			width:100%;
			height:100%;
			
			opacity:0.2;
			z-index:990;
			background-color:#000;
		}

	</style>
							
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<style>
	#SNB_Wrap_1702 { background:#ffffff !important; }
</style>
<body style="background:#ffffff;">
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<div class="banner_wrap">
			<div class="banner">
				<h3 class="pd_tow"><span class="courseName">���������� �Ұ�</span></h3>
				<!--<h4>3���� �̷� ���� �� �׷콺�͵�� �̸� �������� �� 3���� ������ <br>���ͽ� ������Ʈ �ǹ������� ���� �������α׷��� �缺.</h4>-->
				<h4 style="margin-top:10px;">���α׷� ���� �ǹ��� �ʿ��� �̷а� �ǹ� �ɷ� ��翡 �ʿ��� ������Ʈ�� �Բ� ������ �� �ִ�<br/> ���α׷��� �ǹ� ���� �η� �缺 ����</h4>
			</div>
		</div>
		<hr>
		<div id="Container_Wrap">
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4>���������� �Ұ�</h4>
						<p class="lineMap">
							<a href="http://www.bitacademy.com">Ȩ</a> 
							<a href="/Course/Expert/Course_Expert.asp">�����ȳ�</a>
							<a href="/Course/Expert/Course_Expert.asp" class="last on">�����������Ұ�</a>
						</p>
					</div>
					<span class="blueTxt" style="margin-top:5px; float:right; margin-right:10px; font-size:9pt; font-family:'Nanum Gothic Bold';">���� : 02-3486-1780</span>
					<section class="section">
						<h5 class="dis_none">���������� �Ұ�</h5>
						<div class="con_wrap last">
							<!--
							<div class="conVisual">
								<img src="/Images/Content/Diagram/img_course_diagram_01.png" alt="01. 3���� �̷м���, 02. �׷콺�͵�, 03. 3���� ������Ʈ">
							</div>
							-->
							<!--
							<div class="conInfo">
								��ٷο� ������ ������ ��ǥ�̻��� ������ ���� ������ �� �ִ� ������������ 3���� �̷� ���� �� �׷콺�͵��
								�̸� �������� �� 3���� ������ ���ͽ� ������Ʈ �ǹ������� ���� �� ������ �������α׷��� �缺�� �ֿ� ��ǥ�� �Ѵ�. 
							</div>
							-->
							<!--
							<div class="con_wrap last">
								<ul>
									<li>1. ��Ʈ�������Ͱ� ������ <span class="blueTxt fb">"����������"</span> ����� ��� ���� ����� ���� ä�� ������ �ο�.</li>
									<li>2. ������ �������� ���� �� ���������� �� ���κδ�� ����.</li>
									<li>3. ��� �������.</li>
									<li>4. ��Ʈ���� �Դ��� ���.</li>
									<li>5. ��ƮSW������Ʈ �ڰ��� ���.</li>
								</ul>
							</div>
							-->
							
							<div class="con_wrap first">
								<h5>���������� �Ұ�</h5>
								<!--<p>��Ʈ�������� ������������ ��Ʈ�������Ͱ� �ڶ��ϴ� ���α׷��� �ǹ� ���� �η� �缺 �������� ���α׷� ���� �ǹ��� �ʿ��� �̷а� �ǹ� �ɷ� ��翡 �ʿ��� ��� ������Ʈ�� �Բ� ������ �� �ִ� ��� ���������Դϴ�. ���α׷��� ��� ������ �����ϴ� ������ �Ѿ� �ڽ��� ���ϴ� ���α׷��� ������ ������ �� �ִ� ����� �����ϴ� �� �־����� �ΰ� ������ ���� ���� �̷� ������ ü������ �׷콺�͵� ���� ������ �˴ϴ�.  2016�� 1�� ���� �� 8õ���� "��Ʈ ���"���� ��Ʈ�������� ������������ ���� ���� �����ڷ� ���ϰ� ������  ����Ʈ���� ���� ���忡�� ��Ʈ ��� Ư���� ���α׷� ���� �ɷ��� �����ް� �ֽ��ϴ�.</p>-->
								<p>������ �������ǰ� ���ᰡ ������ �Ǵ� ���� 1% ����������</p>
								<p class="redTxt"><b>������������ ���ϰ� �����ϰ� �����մϴ�.</b></p>
								<p>C �Ǵ� Java ���α׷����� �����ؾ� �ϸ�, �� ������Ʈ ������ �ִ� �����ڸ� �� ������� �Ƿ��� �׽�Ʈ �� �ߺ�Ʈ��ǻ�� ������ ȸ���� ���� ������ ���� ������ �����մϴ�.
								������ �������� �հݿ��ΰ� �����Ǹ�, �ѷ��� ��ǥ�ǽ�, ���� ������ �Ƿ�, �б�, �μ��� ������ ���еǴ� ������������ ������� 3~5�� 1 �Դϴ�.</p>
								<p class="redTxt"><b>�׷콺�͵�, ������Ʈ �߽��� �ǹ���������</b></p>
								<p>����� �������ӿ��� ���� ���� �������� �׷콺�͵� ���� �� ���� ���� ���ٴ� �̵�, �̵鰣�� �θ��� ���ĺ��� �� ū ����Դϴ�.
								���� 9�ú��� ���� 6�ñ��� ����Ǵ� ����, �׸��� ���� 10�ñ��� �׷콺�͵�, 3�������� ������Ʈ ����, �׸��� ������ ���������� 1���Ͽ� 1�� �̻� ������ �ϴ� �뷮�� �н����� ��Ư�� �׷콺�͵� ���� ����Ʈ��š����� ��� �����</p>
								<p class="redTxt"><b>����� �������� Ŀ����</b></p>
								<p>����Ʈ��š����� �����ޱ� ���ؼ��� �� �ϳ��� ������ �ִ�. ����� �� ������ �� ���� �����Ϸ��� �������� ����� '��Ʈ������Ʈ' ���ົ�� ���������� �������� 3������ ���� ������ ������Ʈ�� �Ƿ��� ��μ� ���ᰡ �����ϴ�
								���к��� �� ����� Ȥ���� ������ '��Ʈ������Ʈ'���ົ �߰��� ���� ������ �����Ϸ��� ��Ʈ���� ���� ������ ǥ���� ���̴�.</p>
								<p class="redTxt"><b>������ '�޸� ��Ʈ��ũ'�� �� �ϳ��� �ڶ�</b></p>
								<p>������ ����Ʈ��š��� �޸� ��Ʈ��ũ�� ������ ������� ������ �ϴ� ��Ʈ��������</p>
								<p>��Ʈ�������ʹ� ��������� ���������ν� ������ �����ϰ� ���� ����ȭ ���� ���� ������ �� �ִ� ��⸦ ��ȸ�� �ο��Ѵ�.</p>
								<p>�� �� ���� ������� ��ȸ�� ������ �ְ� ���� ��ȭ�� ����� ����� �̳����� ������ ��Ʈ�������� ����Ʈ��š��� �츮���� IT������ �ڶ������� �ϲ��̴�</p>

								<p>��Ʈ�������� �������� �� �ֻ��� Ŭ������ ������������ �� 8,700������ SW�����η��� ��Ʈ����� �����ϰ� �ֽ��ϴ�.</p>
								<p>���α׷� ���� �ǹ��� �ʿ��� �̷б���</p>
								<p>�ǹ��ɷ� ��翡 �ʿ��� ������Ʈ�� ������ �� �ִ� ���������Դϴ�.</p>
								<p>������Ʈ ������ �������ʰų� ���ȭ�� ��ǰ�̶� ����̳� ������� �ٸ� ������Ʈ�� �����ؾ��մϴ�.</p>
							</div>
							
							<!--
							<div class="con_wrap">
								<h5>���������� Ư¡</h5>
								<p>��� ������Ʈ(2����)�� ���� ���α׷��� �ǹ��� �ʿ��� �ɷ��� �⸦ �� �ֽ��ϴ�. ü������ �̷б����� �׷콺�͵� �����Ͽ� ����Ʈ���� ���߿� �ʿ��� ����� ���а� ���� �ְ� ������ �� �ֽ��ϴ�. �����Ⱓ ���� ������ ���α׷� ���߿� �����ϴ� ������ �� �� �ֽ��ϴ�.</p>
							</div>
							-->
							<!--
							<div class="con_wrap">
								<h5>��õ �������</h5>
								<ul class="ul_dot_gray">
									<li>������ǰ�� �غ��ϴ� ���л�</li>
									<li>�� ����/���� �� ��ǻ�� ���� ���� �Ƿ��� Ű��� ���� ���л�</li>
									<li>���� ���� ��� ��Ʈ������ ������� ���ϴ� ���л�</li>
									<li>IT ���� ����� ����ϴ� ��������</li>
								</ul>
							</div>
							-->
							<div class="con_wrap">
								<h5>��Ʈ���(���������� ������) Ư��</h5>
								<ul class="ul_dot_gray">
									<li>���������� ������ �� ��ƮSW������Ʈ �ڰ���(�ΰ��ڰ���) ���</li>
									<li>����������(��Ʈ����� ��� �� ���� ����)</li>
									<li>������ ������ 50% DC</li>

									<div style="margin-left:0px;">
										<a href="/Images/Content/completion.pdf" target="_blank"><img src="/Images/Content/img_expert_completion.jpg" style="margin-top:5px; border:1px solid #dadada; border-radius:4px;"/></a>
										<a href="/Images/Content/bit_certification.pdf" target="_blank"><img src="/Images/Content/img_expert_bit_certification.jpg" style="margin-top:5px; margin-left:25px; border:1px solid #dadada; border-radius:4px;"/></a>
										<span style="float:right; margin-right:40px; margin-top:6px; width:240px;">
											<video src="/Videos/video_bitschool_20130723_400k.mp4" type="video/mp4" controls loop autoplay width="280">cannot play this video</video>
											<p style="color:gray; line-height:15px;">�� ��Ʈ������ ��Ʈ�������ͷ� ��Ī�� ����Ǿ����ϴ�.</p>
										</span>
										<div>
											<span style="float:left; color:gray; margin-left:5px;">���������� ������</span>
											<span style="float:left; color:gray; margin-left:65px;">��ƮSW������Ʈ �ΰ��ڰ���</span>											
										</div>
										<div style="clear:both;"></div>
									</div>
								</ul>
							</div>

							<div id="myBox1" class="myPopup" style="display:none;"></div>
							<div class="myBlurAll" style="display:none;"></div>
							
							<!-- con_wrap -->
							<div id="divInterview" class="con_wrap">
								<h5>
									<span style="float:left; margin-bottom:8px;">���������� ������ ���ͺ�</span>
									<span style="float:left;"><button id="btnShowAllInterviewees" onclick="showAllInterviewees();" style="font-size:8pt; font-family:'Nanum Gothic'; display:block; margin-left:10px; margin-top:4px;">��ü ����</button></span>
									<span style="float:left;"><button id="btnShowTopInterviewees" onclick="showTopInterviewees();" style="font-size:8pt; font-family:'Nanum Gothic'; display:none; margin-left:10px;">����</button></span>
								</h5>
								
								<div style="clear:both;"></div>
															
								<div class="myIntervieweesTop">
									<table class="table_col_type1">
										<caption>���������� ������ ���ͺ�</caption>
										<colgroup>
											<col style="width:26%">
											<col style="width:12%">
											<col style="width:12%">
											<col style="width:26%">
											<col style="width:12%">
											<col style="width:12%">									
										</colgroup>
										<tbody>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">355�� (Java Expert)</th>
												<td>�輺��</td>
												<!--<td><a href="/Images/Content/InterviewExpert/355(Java)_1.jpg" class="btn sml blue" style="margin-left:10px;">����</a></td>-->
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/355(Java)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">347�� (Embedded Expert)</th>
												<td>������</td>
												<!--<td><a href="/Images/Content/InterviewExpert/347(Embedded)_1.jpg" class="btn sml blue" style="margin-left:10px;">����</a></td>-->
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/347(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">339�� (.NET Expert)</th>
												<td>��öȣ</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/339(.NET)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">338�� (Embedded Expert)</th>
												<td>����ȣ</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/338(Embedded)_1_ssm.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>										
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">334�� (Java Expert)</th>
												<td>������</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/334(Java)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">332�� (Embedded Expert)</th>
												<td>���α�</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/332(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">324�� (Embedded Expert)</th>
												<td>�̴��</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/324(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">321�� (Java Expert)</th>
												<td>�����</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/321(Java)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">311�� (Embedded Expert)</th>
												<td>������ �� 4��</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/311(Embedded)_1.jpg','width:2600px;')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">307�� (Embedded Expert)</th>
												<td>�ֿ�Ư</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/307(Embedded)_2.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
										</tbody>
									</table>
								
									<div style="font-size:13pt; margin-left:335px;"><b>:</b></div>
									<div style="font-size:13pt; margin-left:335px; line-height:5px;"><b>:</b></div>
									<div style="clear:both;"></div>
									<br/><br/>
								</div>
								
								<div class="myInterviewees" style="display:none;">
									<table class="table_col_type1">
										<caption>���������� ������ ���ͺ�</caption>
										<colgroup>
											<col style="width:26%">
											<col style="width:12%">
											<col style="width:12%">
											<col style="width:26%">
											<col style="width:12%">
											<col style="width:12%">									
										</colgroup>
								
										<tbody>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">355�� (Java Expert)</th>
												<td>�輺��</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/355(Java)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">347�� (Embedded Expert)</th>
												<td>������</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/347(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">339�� (.NET Expert)</th>
												<td>��öȣ</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/339(.NET)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">338�� (Embedded Expert)</th>
												<td>����ȣ</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/338(Embedded)_1_ssm.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>										
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">334�� (Java Expert)</th>
												<td>������</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/334(Java)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">332�� (Embedded Expert)</th>
												<td>���α�</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/332(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">324�� (Embedded Expert)</th>
												<td>�̴��</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/324(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">321�� (Java Expert)</th>
												<td>�����</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/321(Java)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">311�� (Embedded Expert)</th>
												<td>������ �� 4��</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/311(Embedded)_1.jpg','width:2600px;')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">307�� (Embedded Expert)</th>
												<td>�ֿ�Ư</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/307(Embedded)_2.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">307�� (Embedded Expert)</th>
												<td>����</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/307(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">302�� (Client Server Expert)</th>
												<td>������</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/302(Client Server)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">294�� (Embedded Expert)</th>
												<td>����ȯ</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/294(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">290�� (Embedded Expert)</th>
												<td>���μ�</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/290(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">283�� (Network Expert)</th>
												<td>������</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/283(Network)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">280�� (Embedded Expert)</th>
												<td>Ȳ����</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/280_1_ssm.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">270�� (Embedded Expert)</th>
												<td>����ö</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/270(Embedded)_1_ssm.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">268�� (Embedded Expert)</th>
												<td>�輮��</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/268(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">256�� (MS Expert)</th>
												<td>���Լ�</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/256(MX)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">227�� (MS Expert)</th>
												<td>������ �� 2��</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/227(MX)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">197�� (Java Expert)</th>
												<td>������</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/197(Java)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">197�� (Java Expert)</th>
												<td>���ذ�</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/197(Java)_2.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">196�� (Client Server Expert)</th>
												<td>��⼺</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/196(Client Server)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">183�� (MS Expert)</th>
												<td>������</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/183(MX)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">168�� (WIndows Networking Expert)</th>
												<td>�̱�Ź</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/168(Windows Networking)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">160�� (Client Server Expert)</th>
												<td>������</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/160(Client Server)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">159�� (Windows Networking Expert)</th>
												<td>����</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/159(WIndows Networking)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">150�� (Internet Network Expert)</th>
												<td>������ / �ѹο�</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/150_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">140�� (Windows Networking Expert)</th>
												<td>������ �� 1��</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/140(Windows Networking)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">122�� (Internet Network Expert)</th>
												<td>���μ�</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/122(IX)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">113�� (Windows Networking Expert)</th>
												<td>�ź���</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/113(Windows Networking_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">95�� (Windows Networking Expert)</th>
												<td>������</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/95(Windows)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">64�� (Internet Network Expert)</th>
												<td>����</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/64(Internet Network)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">37�� (C & UNIX Expert)</th>
												<td>���汸</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/37_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">23�� (Windows Networking Expert)</th>
												<td>������</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/23(Windows)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">18�� (C & UNIX Expert)</th>
												<td>�ڱ���</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/18(XE)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">14�� (Embedded Expert)</th>
												<td>������</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/14(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">13�� (C & UNIX Expert)</th>
												<td>������</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/13(XE)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">4�� (C & UNIX Expert)</th>
												<td>�����</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/4(XE)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
												<th scope="row" class="tit" style="text-align:left;">1�� (C & UNIX Expert)</th>
												<td>�ɱԼ�</td>
												<td><a href="javascript:openPopup('/Images/Content/InterviewExpert/1(C&UNIX)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">����</a></td>
											</tr>
										</tbody>
									</table>
								</div>
								
							</div>
							<!-- //con_wrap -->
								
							<div class="con_wrap" style="display:inline-block;">
								<h5>
									<span style="float:left; margin-bottom:8px;">��Ʈ��� ������</span> 
									<span style="float:left;"><button id="btnShowAllCompanies" onclick="showAllCompanies();" style="font-size:8pt; font-family:'Nanum Gothic'; display:block; margin-left:10px; margin-top:4px;">��ü ����</button></span>
									<span style="float:left;"><button id="btnShowTopCompanies" onclick="showTopCompanies();" style="font-size:8pt; font-family:'Nanum Gothic'; display:none; margin-left:10px;">����</button></span>
								</h5>
								
								<div style="clear:both;"></div>
								
								<div class="myCompaniesTop">
									<div>������</div>
									<div>�׿�����</div>
									<div>�ݸ���</div>
									<div>����Ŀ�´����̼�</div>
									<div>����IT�׷�</div>
									<div>��Ʈ��ǻ��</div>
									<div>�ＺSDS</div>
									<div>�Ｚ����Ʈ��������</div>
									<div>����Ʈ���������</div>
									<div>��ö��������</div>
									<div>��������Ʈ</div>
									<div>������</div>
									<div>Ư��û</div>
									<div>HP</div>
									<div>��ȭS&C </div>
									<div>LG CNS</div>
									<div>LG����</div>
									<div>LG U+</div>
									<div>SKĿ�´����̼�</div>
									<div>SKT</div>
									<div style="font-size:13pt; margin-left:335px;"><b>:</b></div>
									<div style="clear:both;"></div>
									<div style="font-size:13pt; margin-left:335px; line-height:5px;"><b>:</b></div>
									

								</div>
								<div style="clear:both;"></div>
								
								<div class="myCompanies" style="display:none;">
									<div>�ſ��ý���</div>
									<div>����Ź���</div>
									<div>����������</div>
									<div>��ӵ����������</div>
									<div>����DBM</div>
									<div>��������</div>
									<div>�����������</div>
									<div>��������</div>
									<div>�����������</div>
									<div>���ε���Ÿ�ý���</div>
									<div>��������</div>
									<div>�¸������</div>
									<div>����������</div>

									<div>�������</div>
									<div>�����������</div>
									<div>�����̵����</div>
									<div>�������ͷ�Ƽ��</div>
									<div>������</div>
									<div>������</div>
									<div>���̽�ä����</div>
									<div>�����������</div>
									<div>�����������</div>
									<div>�������</div>
									<div>�׶��</div>
									<div>�׺����</div>
									<div>�׿�����</div>
									<div>�׿��̵��</div>
									<div>�׿�����</div>
									<div>�׿�����</div>
									<div>�׿�ĳ��Ʈ</div>
									<div>���̹��ý���</div>
									<div>�ؽ�����ũ�����</div>
									<div>�ؽ���</div>
									<div>�ݸ���</div>
									<div>���Ǿ�</div>
									<div>���NDS</div>
									<div>�����ڷ���</div>
																	
									<div>�ٻ��Ʈ����</div>
									<div>�������</div>
									<div>����Ŀ�´����̼�</div>
									<div>�뱳</div>
									<div>�븲I&S </div>
									<div>����������</div>
									<div>�������</div>
									<div>������ڽ�Ź�</div>
									<div>�������</div>
									<div>��������ý���</div>
									<div>�������</div>
									<div>���ѻ���</div>
									<div>�������</div>
									<div>�������ڽ�Ź</div>
									<div>�����ؿ�</div>
									<div>����IT�׷�</div>
									<div>��������Ż����</div>
									<div>���������</div>
									<div>������</div>
									<div>������ST</div>
									<div>����ǻ��</div>
									<div>����CNI</div>
									<div>��������</div>
									<div>����ȭ��</div>
									<div>����ý�����</div>
									<div>�����ڷ���</div>
									<div>�θ��������</div>
									<div>�帲����</div>
									<div>�����</div>
									<div>�����������Ϻ�</div>

									<div>��21</div>
									<div>���̰Žý�����</div>
									<div>�����ڽ��ڸ���</div>
									<div>������</div>
									<div>��Ŀ��</div>
									<div>�Ե��������</div>
									<div>��������ť��Ƽ</div>
									<div>�������ڸ���</div>
									<div>��ũ��ũ</div>

									<div>������ũ</div>
									<div>���۽�</div>
									<div>�޵��ھ�</div>
									<div>�޵����̽�</div>
									<div>�޸�������</div>
									<div>�𳪹�</div>
									<div>����������</div>
									<div>����ڷ���</div>
									<div>�̵���</div>
									<div>�̵�ũ</div>
									<div>�̷���</div>
									<div>�̷���������</div>
									<div>�̸��½ý���</div>
									<div>��������ġ</div>

									<div>�ٽ���Ʈ��ũ</div>
									<div>���̿���</div>
									<div>���̿������ڸ���</div>
									<div>�������������</div>
									<div>�麴��</div>
									<div>��������</div>
									<div>��������</div>
									<div>����Ʈ����</div>
									<div>���������ý���</div>
									<div>������</div>
									<div>��������Ʈ</div>
									<div>��������</div>
									<div>������</div>
									<div>���Ĩ���ͳ�</div>
									<div>��ī��</div>
									<div>�񿡽���ũ���</div>
									<div>��Ʈ��ǻ��</div>

									<div>��������ý���</div>
									<div>�ﺸ�������</div>
									<div>�ﺸ��ǻ��</div>
									<div>�ＺSDS</div>
									<div>�Ｚ�����</div>
									<div>�Ｚ������</div>
									<div>�Ｚ����</div>
									<div>�Ｚ���ձ����</div>
									<div>�Ｚ�߰���</div>
									<div>�Ｚī��</div>
									<div>�Ｚĳ����</div>
									<div>�Ｚ��ũ��</div>
									<div>���Ҿ���Ƽ</div>
									<div>���������ý���</div>
									<div>����뺴��</div>
									<div>���ﺸ������</div>
									<div>����ƻ꺴��</div>
									<div>�����Ϸ�Ʈ��</div>
									<div>��������</div>
									<div>������ũ�νý�����</div>
									<div>��������</div>
									<div>�����ڷ���</div>
									<div>��������</div>
									<div>����Ʈ�׷�</div>
									<div>����Ʈ��ũ�̵��</div>
									<div>����Ʈ���������</div>
									<div>����Ʈ����</div>
									<div>����Ʈ�������</div>
									<div>���Ĵ����ڷ���</div>
									<div>����ĳ����</div>
									<div>�ý���</div>
									<div>�ſ�����</div>
									<div>��������Ʈ</div>
									<div>�����������</div>
									<div>��������</div>
									<div>��������</div>
									<div>���̿���</div>
									<div>�ֿ��������</div>
									<div>�㸶��ũ�νý�����</div>
									<div>����Ž�������</div>
									<div>��ť�����Ʈ</div>
										
									<div>���̸�ī</div>
									<div>���̼���Ʈ</div>
									<div>�����ۼ���Ʈ</div>
									<div>����Ƽ�÷���</div>
									<div>��ö��������</div>
									<div>�ֵ�����</div>
									<div>���ͽ���Ʈ����</div>
									<div>�����ڸ���</div>
									<div>��︲�������</div>
									<div>�����ڷ���</div>
									<div>���������ڸ���</div>
									<div>���̸���</div>
									<div>���̾��̳�</div>
									<div>��������Ʈ</div>
									<div>��Ŀ�ӽ�</div>
									<div>��Ÿ��</div>
									<div>������</div>
									<div>�����������</div>
									<div>��������</div>
									<div>��������</div>
									<div>���信���ý�����</div>
									<div>�³���ũ���</div>
									<div>�Ϳ�Ƽ����</div>
									<div>�츮���������ý���</div>
									<div>������</div>
									<div>����</div>
									<div>���÷���</div>
									<div>����������</div>
									<div>�����������</div>
									<div>������ũ��</div>
									<div>������</div>
									<div>���Ϻ���</div>
									<div>�����ɾ�</div>
									<div>��������</div>
									<div>������</div>
									<div>��������Ÿ</div>
									<div>�̷��</div>
									<div>��Ÿ�������ͳ�</div>
									<div>�ε�ý���</div>
									<div>�μ�����</div>
									<div>�ν�Ʈ��Ʈ</div>
									<div>����</div>
									<div>��������</div>
									
									<div>�ڳ�Ʈ�ý���</div>
									<div>���ں�ǰ������</div>
									<div>�����Ϻ�</div>
									<div>������ť��Ƽ</div>
									<div>��������</div>
									<div>��������</div>
									<div>�ּ������Ͼ</div>
									<div>�߾��Ϻ�</div>
									<div>���������Ͼ</div>
									<div>��Ƽ�÷���.��Ƽ��</div>
								
									<div>īƼ����</div>
									<div>ĳ�巣��</div>
									<div>Ŀ�ӽ�����</div>
									<div>���̺���ũ���</div>
									<div>���̿���</div>
									<div>�ڵ���</div>
									<div>�ھƷ���</div>
									<div>�ھƹ�ũ</div>
									<div>�ھ������ý���</div>
									<div>���̳�</div>
									<div>ť������</div>
									
									<div>ŸIRAM����Ʈ</div>
									<div>�ͺ���ũ</div>
									<div>�׽���</div>
									<div>��ũ�����ڽ�����</div>
									<div>�ڽ�����</div>
									<div>�丶��ý���</div>
									<div>Ʈ����Ʈ</div>
									<div>Ư��û</div>
									<div>Ƽ�ƽ�����Ʈ</div>
									
									<div>���̾����Ʈ</div>
									<div>���ε�����</div>
									<div>����</div>
									<div>��Ÿ����Ʈ</div>
									<div>��Ÿ�ý���</div>
									<div>��Ÿ��ť��Ƽ</div>
									<div>��������Ÿ</div>
									<div>�����Ƚ�</div>
									<div>ǻ������Ʈ</div>
									<div>�����������ý���</div>
									<div>�ʾ���Ƽ</div>
									
									<div>�ϳ������</div>
									<div>�ϳ�����</div>
									<div>�Ͽ츮</div>
									<div>���̴н��ݵ�ü</div>
									<div>�ѱ�IBM</div>
									<div>�ѱ���������</div>
									<div>�ѱ����б����</div>
									<div>�ѱ�����Ż����</div>
									<div>�ѱ��ſ�������</div>
									<div>�ѱ����̿���ũ</div>
									<div>�ѱ���ȯ����</div>
									<div>�ѱ��Ϻ�</div>
									<div>�ѱ�����</div>
									<div>�ѱ�������ſ�����</div>
									<div>�ѱ���������</div>
									<div>�ѱ�����������</div>
									<div>�ѱ��������</div>
									<div>�ѱ���������</div>
									<div>�ѱ�ö�����������</div>
									<div>�ѱ���ǻ��</div>
									<div>�ѱ����</div>
									<div>�ѱ����ڽ�Ź</div>
									<div>�ѱ��������Ͻ�</div>
									<div>�ѱ��޷���Ŀ��</div>
									<div>�ѱ۰���ǻ��</div>
									<div>�ѵ���ǰ</div>
									<div>�Ѻ����ý���</div>
									<div>�ѿ�I.C.I</div>
									<div>�����������</div>
									<div>���ľ�ť��</div>
									<div>��ȭS&C��ȭ����</div>
									<div>�ڵ����Ʈ</div>
									<div>�����ũ</div>
									<div>��������</div>
									<div>�����������</div>
									<div>��������</div>
									<div>Ȩĳ��Ʈ</div>
									<div>ȿ������Ÿ�ý���</div>
									<div>�޸����ͷ�Ƽ��</div>
									<div>�޸ƽ�</div>

									<div>BEA�ý������ڸ�</div>
									<div>Bixon Technology</div>
									<div>CJ�ý�����</div>
									<div>GE�޵��ýý����ڸ���</div>
									<div>HP</div>
									<div>KCC�������</div>
									<div>KGI����</div>
									<div>L&H Korea</div>
									<div>LG CNS</div>
									<div>LG����</div>
									<div>LG�������</div>
									<div>LG�ڷ���</div>
									<div>LG��������</div>
									<div>MBC���������</div>
									<div>NHN</div>
									<div>SK C&C </div>
									<div>SK����</div>
									<div>SKĿ�´����̼�</div>
									<div>SK�ڷ���</div>

								</div>
							</div>
							
							<div class="con_wrap last">
								<h5>����</h5>
								<p>02-3486-1780 (expert@bit.kr)</p>
							</div>

						</div>
					</section>
					<!--
					<section class="section" style="DISPLAY:NONE !IMPORTANT;">
						<h5 class="dis_none">���������� ����</h5>
						<div class="tap_header">
							<ul class="tapMenu">
								<li class="on"><a href="#this" title="�������� �ε��" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_01.asp')">��������</a></li>
								<li><a href="#this" title="�����ϰ�" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_02.asp')">�����ϰ�</a></li>
								<li><a href="#this" title="�� ��" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_03.asp')">�� ��</a></li>
								< ! - - <li><a href="#this" title="�����ȳ�" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_04.asp')">�����ȳ�</a></li> - - > 
								<li><a href="#this" title="���⼭��" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_05.asp')">���⼭��</a></li>
								<li><a href="#this" title="������" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_06.asp')">������</a></li>
								<li><a href="#this" title="������ Ư��" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_07.asp')">����� Ư��</a></li>
							</ul>
						</div>
						<div id="ConDetail" class="tap_content">
							
						</div>
					</section>
					-->
					<a href="#this" class="moveTop" style="z-index:3;">Top</a>
				</div>
				<!-- //Content -->
			</div>
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>