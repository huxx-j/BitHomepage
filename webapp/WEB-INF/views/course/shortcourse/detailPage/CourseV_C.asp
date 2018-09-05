<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
SubjectName = "[����Ư��] C Programming"
CourseID = "cVacation"
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
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			
			/********************* ��뺸��ȯ�� div, btn ����. *******************************************************/
			$("#btnOpenSaGn1").on("click", function(event) {
				var height = document.body.scrollHeight / 2;
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
			
			ajaxLoad('#ConDetail', '', '/Course/ShortCourse/DetailPage/Course_c_curriculum1.asp');
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');
			
			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//elm_xPos2 = $(".btn_refundView2").offset().left + $(".btn_refundView2").width()/2;	<!-- added -->
			
			/* page load ���� SNB ���� */
			//$(".snb_1709 a.newdepth1").eq(2).addClass("on");								// ����Ư�� C Programming
			
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [����] ��Ʈ�������� ON
			$(".snb_1709 .newdepth3.newwrap.no1").addClass("on").removeClass("plus").addClass("minus");
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [����] ��Ʈ�������� SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no1").addClass("on").css('display','block');	// C Master SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no1 li:eq(0) a").addClass("on");				// ���߹� ON
			
		});
		
		
	</script>
	<script language="javascript">
	/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_C.asp";
	*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- # i n clude virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- #include virtual = "/Include/SNB_CourseVacation_1709.asp"-->
				<!-- //SNB_Wrap-->
				
				<style>
					img {
						vertical-align:top;
					}
					.hGroup1709 {
						color:#909090;
						font-size:15px;
					}
					.hGroup1709 h4 {
						color:#000;
						font-size:36px;
						font-weight:600;
						letter-spacing:-2px;
						margin-top:20px;
						margin-bottom:20px;
					}
				</style>
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/><a href="/Course/ShortCourse/Course_Summer2018.asp"/>��������Ư��</a>
						</p>
						<h4><%=SubjectName%></h4>
					</div>
					<!--<a href="/Register/Request/register_shortCourse.asp?cID=C2_core" class="btn mid green1 fl mar_l10">�����ϱ�</a>-->
					<!--<a href="/Register/Request/register_shortCourse.asp?cID=cVacation" class="btn mid green1 fl mar_l10">�����ϱ�</a>-->
					<section class="section">
					
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table style="box-shadow:none !important;">
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th>�����Ⱓ</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__cVacation.inc" -->
											</td>
											<th>���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__cVacation.inc" -->
											</td>
										</tr>
										<tr>
											<th>�������</th>
											<td>394,440�� <!--<span class="blueTxt">(������ ȯ�� ����)</span>--></td>
											<th>����������</th>
											<td>��뺸�� ��ȯ�� <!--<a href="#" id="btnOpenSaGn1" class="btnBlueBorder">�ڼ�������</a>--></td>
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
								<div style="clear;both; height:10px;"></div>
																
							</div>
							
						</div>
						<!-- //con_wrap1709 -->
						<div style="clear:both;"></div>

						<div class="con_wrap1709 first">
							<h5>�����ε��</h5>
							<img src="Images/C-Master.PNG" style="text-align:center; width:100%;"/>
							<div style="clear;both; height:10px;"></div>
						</div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>�����Ұ�</h5>
							<p>
								�� ������ �⺻���α׷��ֿ������� �߱� �̻��� ���α׷��Ӱ� �Ǳ� ���� �������μ� ���α׷��� �ʼ��� �������� �ϴ� �ڿ��� �ʿ��� �ǽ� ������ �����Դϴ�. <br/>
								������ ������ ���ؿ� �����ɷ� ���, ���� ������Ʈ�� ���� ���°��߰� ��ǥ�� ���� �پ��� ����ȯ�濡 ��� �Ǵ� �ڷᱸ�� �� �˰��� ���Ͽ� �н��ϴ� �����Դϴ�. 
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>�⺻ �������� ��� ���α׷��ֱ��� �ܱⰣ�� ����</li>
								<li>�⺻ ���α׷��� ������ ���� �� ü������ �н� </li>
								<li>�ǽ��� ���� ȿ���� ���α׷��� ���� �ɷ� ���</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>C ���α׷����� �⺻���� ���׺��� �������� ü�������� �н��ϰ� ������ ��</li>
								<li>��ǻ�� ���� �� ����/���� ������</li>
								<li>�Ӻ���� �ý��� Ȥ�� �κ����п� ��̰� �ִ� ��</li>
								<li>������ �÷��� ����� ���α׷� ������ ����ϴ� ��</li>
								<li>���� ���α׷����� ������ �ϴ� ��</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<div style="float:left; width:180px;">
								<h5>���� ����</h5>
								<img src="Images/����C���α׷���.png" style="margin-left:15px; width:160px;  border:solid 1px #565656;"/>
							</div>
							<div style="float:left; width:250px; margin-top:27px; margin-left:15px;">
								<p style="margin-top:239px;">
									'�������� ���� C ���α׷���' <Br/>������ �� / �������̵��
								</p>
							</div>
							<div style="clear:both;"></div>
						</div>
						-->
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5>��������</h5>
							<div class="divTable">
								<table style="width:100%;">
									<colgroup>
										<col style="width:10%">
										<col style="width:45%">
										<col style="width:45%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="c">��������</th>
											<th scope="col" class="c">����</th>
											<th scope="col" class="c">��������</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td scope="row" class="c darker">1����</td>
											<td>
���α׷����� ���ؿ� ���ʱ��
											</td>
											<td>
�ڵ�ȯ��, �����Ϸ�,����,�⺻�����, ������
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">2����</td>
											<td>
����� ������ �����ϰ� �����帧�� �н�
											</td>
											<td>
���ǹ�, �ݺ���,�б⹮
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">3����</td>
											<td>
����Ʈ �⺻�� �Ǵ� �迭�� �н�
											</td>
											<td>
1�����迭, ���ڿ�
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">4����</td>
											<td>
���ڿ� ���� �Լ��� ����
											</td>
											<td>
���ڿ��Լ�
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">5����</td>
											<td>
�������� ���α׷��� ��������� �ǽ��Ͽ� ���� �ڵ��ɷ� ���
											</td>
											<td>
1���� ���� �ǽ�
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">6����</td>
											<td>
�迭������ �ٽ��� 2�����迭�� �н��Ͽ� �޸𸮱����� �����н�
											</td>
											<td>
2�����迭,3���� �迭, ����������
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">7����</td>
											<td>
�޸� ó���� ������ �����͸� ���ؿ� �н�
											</td>
											<td>
����������, ����������, ������ ����
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">8����</td>
											<td>
�ٸ� ������ �����Ϳ� ó�������� ���ؿ� �н�
											</td>
											<td>
�迭������,�����͹迭, 
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">9����</td>
											<td>
�Ѵܰ� ���� �������� �н�
											</td>
											<td>
�Լ�������,����������, typedef
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">10����</td>
											<td>
���� ������Ʈ�� ���� �Բ� �����ϴ� �ɷ� ���
											</td>
											<td>
2���� ������Ʈ
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">11����</td>
											<td>
������ ���� �Ͼ�� �������� ���� �� �н�
											</td>
											<td>
���丮��Ŭ����,��ó����
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">12����</td>
											<td>
�����޸� �Ҵ��� ����Ͽ� ū �޸𸮸� �䱸�ϴ� ���α׷� ���� �н�
											</td>
											<td>
�����Ҵ�
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">13����</td>
											<td>
�ڷᱸ���� �ٰ��� �Ǵ� ����ü ������ ���ؿ� �ǽ�.
											</td>
											<td>
����ü
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">14����</td>
											<td>
���� �������  ���Ͽ� �������� ó���� ���� �н�
											</td>
											<td>
���������
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">15����</td>
											<td>
���� ������Ʈ�� ����
											</td>
											<td>
3���� ������Ʈ
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<p class="blueTxt">*. �̷� 60 : �ǽ� 40</p>
							<!-- �󰭾ȳ� ���� -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
							</div>
							<div style="clear:both;"></div>

							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
						</div>
						<!-- con_wrap1709 -->

						<br/>
						
						<!-- �ڰ������� �Ұ� -->
						<!-- # i n clude virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCCPM1704.asp"-->
						<!-- /�ڰ������� �Ұ� -->
						
						<%
						'<div class="btn_wrap c">
						'	<a href="/Register/Request/register_shortCourse.asp?cID=C2_core"><img src="/Images/Btns/btn_ApplyCourse.png"/></a>
						'	<!--<a href="/Register/Request/register_shortCourse.asp?cID=C2_core" class="btn mid green1">������û</a>-->
						'	<!--<a href="/Register/Request/register_shortCourse.asp?cID=cVacation" class="btn mid green1">�����ϱ�</a>-->
						'</div>
						%>
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