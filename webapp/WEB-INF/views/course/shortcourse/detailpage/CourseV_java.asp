<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "javaVacation"
SubjectName = "[����Ư��] JAVA Programming"
%>
<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!--#include virtual="/Include/config.asp"--> <!-- 4[CourseReview] (pre2) -->
	
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
			
			/********************* ��뺸��ȯ�� div, btn ����. *******************************************************/
			$("#btnOpenSaGn1").on("click", function(event) {
				var height = document.body.scrollHeight * 1;
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
			//$(".snb_1709 a.newdepth1").eq(4).addClass("on");								// Java Programming ON
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');
			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//elm_xPos2 = $(".btn_refundView2").offset().left + $(".btn_refundView2").width()/2;

			$(".snb_1709 a.newdepth1").eq(3).addClass("on");					
		});
		
	</script>
	<script language="javascript"> 
	/********
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_Java.asp";
	**********/
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
						<!-- con_wrap1709 -->
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
											<th>�����Ⱓ</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__javaVacation.inc" -->
											</td>
											<th>���ǽð�</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__javaVacation.inc" -->
											</td>
										</tr>
										<tr>
											<th>�������</th>
											<td>
												394,440��  <!--<span class="blueTxt">(������ ȯ�� ����)</span>-->
											</td>
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

						<div class="con_wrap1709 ">
							<h5>�����ε��</h5>
							<img src="Images/JAVA-P.PNG" style="text-align:center; width:100%;"/>
						</div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>�����Ұ�</h5>
							<p>JAVA���� ���� ��� ���忡�� ���䰡 ���� ���� ��ü�������Դϴ�. �� ���� ���ݿ� ���� �η� Ȱ��� �Ӹ� �ƴ϶� �ڵ� ���뼺�� ���� ���������� ������ ���� �ȵ���̵� ���ð��� �� ���� ȭ�ΰ� �ǰ� �ִ� ���� it ����� �߿��� ���ʰ� �Ǵ� ����Դϴ�. �� ������ �ڹ� ���α׷��� ��ü���������� ����� ����� ���ؼ� �н��ϴ� �������� JAVA�� �⺻ ������ źź�� ���� �� �ִ� ���� �����Դϴ�.</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>�ڹ� ���α׷��� ��ü���������� ����� ����� ���ؼ� �н��Ͽ� ������ �� �ִ�.</li>
								<li>�ڷᱸ���� ���ؼ� �����ϰ� �ڹٸ� �̿��� �̸� ���� �����غ��� Collection �����ӿ�ũ�� ������ Ȱ���� �� �ִ�.</li>
								<li>����� ���α׷��� ���ؼ� �����ϰ� java.io ��Ű���� �����Ǵ� �پ��� ����� Ŭ������ Ư¡�� ������ �� �ִ�. </li>
								<li>�����带 �����ϰ� �ǹ��� ������ �� �ִ�.</li>
								<li>��Ʈ��ũ�� ���ؼ� �����ϰ� ���ڼ��� �� ä�ü��� ���α׷��� �ۼ��� �� �ִ�. </li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>Java �� ó�� ���ô� ��</li>
								<!--<li>Java ����� ���� �������� �����Ϸ��� �� </li>-->
								<li>��ü���� ���α׷����� ������ ������ �Ͻô� ��</li>
								<li>�ȵ���̵� ���� ���߿� ������ �ִ� ��</li>
								<li>�� ���� ���� ����� �����ϰ��� �Ͻô� ��</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<div style="float:left; width:180px;">
								<h5>���� ����</h5>
								<!--<img src="/Images/Content/img_BookCover_iamjava.jpg" style="margin-left:15px; width:160px;  border:solid 1px #565656;"/>-->
								<img src="Images/�̰����ڹٴ�.png" style="margin-left:15px; width:160px;  border:solid 1px #565656;"/>
							</div>
							<div style="float:left; width:250px; margin-top:27px; margin-left:15px;">
								<p style="margin-top:230px;">
									'�̰��� �ڹٴ�' <Br/>�ſ�� �� / �Ѻ��̵��
								</p>
							</div>
							<div style="clear:both;"></div>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:20%">
										<col style="width:20%">
										<col style="width:60%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">������</th>
											<th scope="col">������</th>
											<th scope="col">�󼼳���</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row" rowspan="4">Java Beginning</td>
											<td rowspan="4" class="c">�ڹ� �⺻����</td>
											<td>�ڹ��� ����� ���� ȯ�� ����, �������� ������ ���� �ڹ��� �ڷ����� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td>�����͸� �����ϱ� ���� ������, �ʿ��� �۾����� ���������� �ؾ� �� ��� ����ϴ� ���ù� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td>Ư�� �κ��� ������ �ݺ��ϰ� ����� �ִ� �ݺ��� �н� �Ѵ�.</td>
										</tr>
										<tr>
											<td>�ڷ����� ������ ���� ���� ���� ���̾� ������ �� �ֵ��� �ϴ� ��� ������ ����ü�� �迭�� �޼ҵ� ���ǿ� ȣ������ ������.</td>
										</tr>

										<tr>
											<td class="darker c" scope="row" rowspan="6">Java Fundamental</td>
											<td rowspan="2" class="c">��ü ���� ���α׷���</td>
											<td>��ü������ ����� Ŭ���� ����, ��ü �ν��Ͻ� ���� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td>�޼ҵ� �����ε��� �����ڸ� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td rowspan="4" class="c">���</td>
											<td>�ڵ� ��Ȱ���� ���� ����� �����Ѵ�.</td>
										</tr>
										<tr>
											<td>�޼ҵ� �������̵��� ��ĳ���� �ٿ� ĳ������ �н��Ѵ�</td>
										</tr>
										<tr>
											<td>�߻� Ŭ������ �����ϰ� �����ϴ� ����� ������.</td>
										</tr>
										<tr>
											<td>�������̽��� ����� ���� ��ӿ� ���� �˾ƺ���.</td>
										</tr>

										<tr>
											<td class="darker c" scope="row" rowspan="10">Java Advanced</td>
											<td rowspan="3" class="c">�ڹ� �ֿ� Ŭ����</td>
											<td>�ڹ� ��Ű�� �� ���� ���Ǵ� Ŭ������ ���ɴ�.</td>
										</tr>
										<tr>
											<td>�ڷᱸ���� �÷��ǿ� ���ؼ� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td>�ڹ�Ŭ���� �ǽ�</td>
										</tr>
										<tr>
											<td rowspan="5" class="c">IO/������</td>
											<td>����� ���α׷��� ���ؼ� �����Ѵ�.</td>
										</tr>
										<tr>
											<td>java.io ��Ű���� �����Ǵ� �پ��� ����� Ŭ������ Ư¡�� ������ �� �ִ�.</td>
										</tr>
										<tr>
											<td>�����带 �����ϰ� �ǹ��� ������ �� �ִ�.</td>
										</tr>
										<tr>
											<td>��Ƽ������ ���α׷����� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td>�������� ����ȭ�� ���ؼ� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td rowspan="2" class="c">��Ʈ��ũ</td>
											<td>��Ʈ��ũ�� ���ؼ� �����ϰ� ���ڼ����� �ۼ��� �� �ִ�.</td>
										</tr>
										<tr>
											<td>ä�ü��� ���α׷��� �ۼ��� �� �ִ�.</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!--<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>-->
							<!-- �󰭾ȳ� ���� -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
							</div>
							<div style="clear:both;"></div>

							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.3456 &nbsp;(kang.i.y@bit.kr)</p>-->
						</div>
	
						<div style="height:30px;"></div>
						<!-- �ڰ������� �Ұ� -->
						<!-- # i n clude virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCJPM.asp"-->
						<!-- /�ڰ������� �Ұ� -->
						
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=JAVA_core" class="btn mid green1">�����ϱ�</a>-->
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=javaVacation" class="btn mid green1">�����ϱ�</a>-->
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

