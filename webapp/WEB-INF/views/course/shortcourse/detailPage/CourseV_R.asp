<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

SubjectName = "[����Ư��] R Programming"
CourseID = "rVacation"
%>

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			/*
			$("#btnOpenSa").on("click", function() {
				$("#divSa").show();
				$("#btnOpenSa").animate({opacity:0.01},300,function() { })
			})
			$("#btnOpenGn").on("click", function() {
				$("#divGn").show();
				$("#btnOpenGn").animate({opacity:0.01},300,function() { })
			})
			*/
			/********************* ��뺸��ȯ�� div, btn ����. *******************************************************/
			$("#btnOpenSaGn1").on("click", function(event) {
				var height = document.body.scrollHeight * 1.0;
				$( 'html, body' ).stop().animate( { scrollTop : height }, 100, function() { } );

				//$(".newdepth3_wrap."+nox).slideDown("slow", "easeOutQuint", function() {	$(".newdepth3_wrap."+nox).addClass("on"); });
				setTimeout(function() {
					$("#divSa").slideDown("slow", "easeOutQuint", function() {});
					$("#divGn").slideDown("slow", "easeOutQuint", function() {});
				}, 100);
				$("#divBtnOpenSaGn2").css("display","none");
				$("#imgBtnClose").css("display","block");
				event.stopPropagation();
				event.preventDefault();
			})
			
			$("#btnOpenSaGn2").on("click", function(event) {
				//$(".newdepth3_wrap."+nox).slideDown("slow", "easeOutQuint", function() {	$(".newdepth3_wrap."+nox).addClass("on"); });
				$("#divSa").slideDown("slow", "easeOutQuint", function() {});
				$("#divGn").slideDown("slow", "easeOutQuint", function() {});
				$("#divBtnOpenSaGn2").css("display","none");
				$("#imgBtnClose").css("display","block");
				event.stopPropagation();
				event.preventDefault();
			})
			
			$("#imgBtnClose").on("click", function(event) {
				$("#imgBtnClose").css("display","none");
				$("#divSa").slideUp("fast", "easeOutQuint", function() {});
				$("#divGn").slideUp("fast", "easeOutQuint", function() {$("#divBtnOpenSaGn2").css("display","block");});
				
			})
			/*********************************************************************************************************/

			//$(".snb_1709 a.newdepth1").eq(7).addClass("on");								// ����Ư�� - R ���α׷���

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');
			//ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			//ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(7).addClass("on");								
		});
	</script>
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_Web.asp";
		*/
	</script>
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
				<!-- # i n clude virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- #include virtual = "/Include/SNB_CourseVacation_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/><a href="/Course/ShortCourse/Course_Summer2018.asp"/>��������Ư��</a>
						</p>
						<h4><%=SubjectName%></h4>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�����Ⱓ</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__rVacation.inc" -->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__rVacation.inc" -->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td>
												394,440��
											</td>
											<th>����������</th>
											<td>��뺸�� ��ȯ��</td>
										</tr>
										<tr>
											<th>��������</th>
											<td>30��</td>
											<th>����</th>
											<td>02-3486-1780 &nbsp;(<a href="mailto:kang.i.y@bit.kr" class="email">kang.i.y@bit.kr</a>)</td>
										</tr>
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear:both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p>
								�� ������ �����Ϳ� ���� ������ ���ظ� ������� ������ ����, ó��, �м��� �̸��� ��ü ������ �����ϴ� ���� �������� �մϴ�.<br/>
								��� ó�� ��� R�� Ȱ��, ���� ��ũ��Ʈ���� ������ ����, ó��, ���� ��� �м� �� �ð�ȭ ���� �н��ϰ� ������ �м� ������ ������ �� �ֽ��ϴ�.
							</p>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>����Ư¡</h5>
							<ul class="ul_dot_gray">
								<li>�������� ������ ���� ����</li>
								<li>������ �м� �� ó���� ���ʸ� ���� �� ����</li>
							<ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>�����Ϳ� ������ ��� �� ���� ����</li>
								<li>������ �м� �� ó���� ���� R ���α׷��� ��� �н�</li>
								<li>������ ó��, �ð�ȭ, ���, ���� �ۼ� �ɷ� ����</li>
							<ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:20%">
										<col style="width:80%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">����</th>
											<th scope="col">��������</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="l">1����</td>
											<td class="l">������ ��� ����, R�� RStudio</td>
										</tr>
										<tr>
											<td class="l">2����</td>
											<td class="l">R ���α׷��� ��� ���� I</td>
										</tr>
										<tr>
											<td class="l">3����</td>
											<td class="l">R ���α׷��� ��� ���� II</td>
										</tr>
										<tr>
											<td class="l">4����</td>
											<td class="l">���Ϳ� ����� ����</td>
										</tr>
										<tr>
											<td class="l">5����</td>
											<td class="l">�׷����� �������� ����, ������ ������</td>
										</tr>
										<tr>
											<td class="l">6����</td>
											<td class="l">������ �ٷ�� (������ ������ �ܺ� ������ Ȱ��)</td>
										</tr>
										<tr>
											<td class="l">7����</td>
											<td class="l">������ �ٷ�� (������ ����� ������ ����)</td>
										</tr>
										<tr>
											<td class="l">8����</td>
											<td class="l">������ �ٷ�� (������ Ȱ��)</td>
										</tr>
										<tr>
											<td class="l">9����</td>
											<td class="l">������ �ð�ȭ�� ���� �ۼ�</td>
										</tr>
										<tr>
											<td class="l">10����</td>
											<td class="l">������ ����, ��� �� ������</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- �󰭾ȳ� ���� -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
							</div>
							<div style="clear:both;"></div>

							<!--<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.1780 &nbsp;(kang.i.y@bit.kr)</p>-->
						</div>
						<!-- con_wrap -->

					</section>
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