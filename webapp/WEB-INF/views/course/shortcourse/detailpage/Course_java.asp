<%
CourseID = "JAVA_core"
SubjectName = "[���߹�] JAVA ���α׷���"
'//SubjectName = "JAVA ���α׷���"

%>
<!DOCTYPE html>
<!-- REDIRECTABLE TO MOBILE -->

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

			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [����] ��Ʈ�������� ON
			$(".snb_1709 .newdepth3.newwrap.no2").addClass("on").removeClass("plus").addClass("minus");	// Java ���α׷��� ON 
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [����] ��Ʈ�������� SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no2").addClass("on").css('display','block');	// Java ���α׷��� SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no2 li:eq(0) a").addClass("on");				// ���߹� ON
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
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- # i n clude virtual = "/Include/SNB_CourseVacation_1709.asp"-->				
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<!--
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܿ����Ư��
						</p>
						<h4>Java ���α׷���</h4>
						-->
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܱ��ٽɰ���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[����]��Ʈ��������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Java ���α׷���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>���߹�
						</p>
						<h4>[���߹�] JAVA ���α׷���</h4>
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__JAVA_core.inc" -->
												<!--
												2017.12.21 ~ 2018.1.12 <span class='greenTxt'>(������)</span><br/>
												2018.1.15 ~ 2018.2.2 <span class='greenTxt'>(���Ĺ�)</span><br/>
												2017.12.18 ~ 2018.1.16 <span class='greenTxt'>(�����)</span><br/>
												< ! - - 2018.2.5 ~ 2018.2.27 <span class='greenTxt'>(������)</span> - - > 
												-->
											</td>
											<th>���ǽð�</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__JAVA_core.inc" -->
												<!--
												������ 9:00 ~ 13:00 (4�ð�/��60�ð�)<br/>
												���Ĺ� 14:00 ~ 18:00 (4�ð�/��60�ð�)<br/>
												����� 19:00 ~ 22:00 (3�ð�/��60�ð�)
												-->
											</td>
										</tr>
										<tr>
											<th>�������</th>
											<td>
												394,440��  <span class="blueTxt">(������ ȯ�� ����)</span>
											</td>
											<th>����������</th>
											<td>��뺸�� ȯ�� <a href="#" id="btnOpenSaGn1" class="btnBlueBorder">�ڼ�������</a></td>
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
	
						<!-- con_wrap1709 ��뺸��ȯ�� -->
						<div class="con_wrap1709">
							<h5 style="float:left;">��뺸�� ȯ�� </h5>
							<div id="divBtnOpenSaGn2" style="float:left; margin-top:47px; margin-left:7px;"><a href="#" id="btnOpenSaGn2" class="btnBlueBorder">�ڼ�������</a></div>
							<div style="float:right; margin-top:22px; margin-right:3px;"><img id="imgBtnClose" src="/Images/Common/ico_Close_98_128.png" style="width:16px; display:none;"/></div>
							<div style="clear:both;"></div>
																
							<div id="divSa" style="DISPLAY:NONE; " class="con_wrap1709ul">
								<h5>����� ��Ź�Ʒ�</h5>
								<p>����ְ� �Ʒú���� �δ��Ͽ� �����ٷ��� ������� ��������� �����ϴ� ����</p>
								
								<h5>�������</h5>
								<p>- ��뺸�迡 ������ ����ַμ� �Ҽӱٷ��ڿ��� ������ ���뵿�� ������κ��� ���������� �޾� �����Ʒ��� ���� �Ǵ� ��Ź�Ͽ� �ǽ��ϴ� �����</p>

								<h5>�Ʒô��</h5>
								<p>- ��뺸�� �Ǻ�����</p>
								<p>- ��뺸�� �Ǻ����ڰ� �ƴ� �ڷμ� �ش� ����ֿ��� ���� ��</p>
								<p>- �ش� ����̳� �� ����� ���õǴ� ������� ����Ϸ��� ��(ä�뿹����)</p>
								<p>- ���������ⱸ�� ���� ����� ��</p>
								
								<div style="text-align:center;">
									<a href="/Upload/company2.zip" class="btnBlueBorder" style="margin:10px auto;">����� ��Ź�Ʒ� ��û���� �ٿ�ε�</a>
									<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">�� ��û���� �ۼ� �� kang.i.y@bit.kr�� �����ֽñ� �ٶ��ϴ�.</p>
								</div>
								
								<div class="divTable">
									<table>
										<colgroup>
											<col style="width:16%">
											<col style="width:28%">
											<col style="width:8%">
											<col style="width:8%">
											<col style="width:11%">
											<col style="width:8%">
											<!--<col style="width:21%">-->
										</colgroup>
										<tbody style="text-align:center;">
											<tr>
												<th>������� �з�</th>
												<th>��ñٷ��� ��</th>
												<th>������</th>
												<th>ȯ�ޱ�</th>
												<th>����δ��</th>
												<th>ȯ�޺���</th>
												<!--<th>ȯ�ޱݳ��� �ڼ�������</th>-->
											</tr>
											<tr>
												<td rowspan="2">�켱���������<br/>(�߼ұ��)</td>
												<td>50�� �̸�</td>
												<td rowspan="4" class="long">394,440</td>
												<td class="long">394,440</td>
												<td class="redTxt" style="font-weight:900;">����</td>
												<td>100%</td>
												<!--<td rowspan="4"></td>-->
											</tr>
											<tr>
												<td>50�� �̻�</td>
												<!--<td>314,899</td>-->
												<td class="long">354,990</td>
												<td>39,450</td>
												<td>90%</td>
											</tr>
											<tr>
												<td rowspan="2">�߰� �Ǵ� ����</td>
												<td>1,000�� �̸�</td>
												<td class="long">236,660</td>
												<td>157,780</td>
												<td>60%</td>
											</tr>
											<tr>
												<td>1,000�� �̻�</td>
												<td class="long">157,770</td>
												<td>236,670</td>
												<td>40%</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!--<span class="redTxt">�� �������Ź�Ʒ��� ��� ������ 350,000�� �����ϰ�, �⼮�� 80% �̻��� ��� ȯ�ޱ��� �ǵ��� ���� �� �ֽ��ϴ�</span><br/>-->
								<span class="redTxt"> �� �������Ź�Ʒ��� ��� ������ 394,440�� �����ϰ�, �⼮�� 80% �̻��� ��� ȯ�ޱ��� �ǵ��� ���� �� �ֽ��ϴ�.</span><br/>
								<span class="redTxt"> �� �Ϲ���(�Ǿ��� �Ǵ� ���л�)�� ������ ���� ���� �δ��Դϴ�.</span><br/>
							</div>
							
							<div id="divGn" style="DISPLAY:NONE;"> <!-- class="con_wrap1709ul">-->
								<h5>�ٷ��� �����ɷ��������</h5>
								<p>��뺸���� ���εǴ� ������ ������ <b>'������ ���Ϲ��ī��'</b>�� �߱޹޾� ������ ������ �޴� ����</p>
								
								<h5>�������</h5>
								<p>- �켱���� ����� �ٷ���, ��뺸�� ���ǰ��� �ڿ�����, �Ⱓ�� �ٷ���, �ܽð� �ٷ���, �İ� �ٷ���, �Ͽ� �ٷ���</p>

								<h5>��������</h5>
								<p>�����ѵ��ݾ��� 1�δ� �Ⱓ 200���� �ѵ� ������ �Ʒð����� ���� 60~100% ����</p>
								
								<div style="text-align:center;">
									<a href="/Upload/employ2.zip" class="btnBlueBorder" style="margin:10px auto;">�ٷ��� �����ɷ�������� ��û���� �ٿ�ε�</a>
									<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">�� ��û���� �ۼ� �� kang.i.y@bit.kr�� �����ֽñ� �ٶ��ϴ�.</p>
								</div>
								<div class="divTable">
									<table>
										<colgroup>
											<!--
											<col style="width:20%">
											<col style="width:34%">
											<col style="width:8%">
											<col style="width:10%">
											<col style="width:10%">
											<col style="width:18%">-->
											<col style="width:16%">
											<col style="width:34%">
											<col style="width:8%">
											<col style="width:12%">
											<col style="width:10%">
											<!--<col style="width:21%">-->
										</colgroup>
										<tbody style="text-align:center;">
											<tr>
												<th>������� �з�</th>
												<th>���</th>
												<th>������</th>
												<th>���κδ��</th>
												<th>�ںδ����</th>
												<!--<th>ȯ�ޱݳ��� �ڼ�������</th>-->
											</tr>
											<tr>
												<td rowspan="4">�켱���������<br/>(�߼ұ��)</td>
												<td>��������</td>
												<td rowspan="9" class="long">394,440</td>
												<td class="redTxt" style="font-weight:900;">����</td>
												<td rowspan="4">0%</td>
												<!--<td rowspan="9"></td>-->
											</tr>
											<tr>
												<td>���� ������</td>
												<td class="redTxt" style="font-weight:900;">����</td>
											</tr>
											<tr>
												<td>���� ������</td>
												<td class="redTxt" style="font-weight:900;">����</td>
											</tr>
											<tr>
												<td>������</td>
												<td class="redTxt" style="font-weight:900;">����</td>
											</tr>
											<tr>
												<td rowspan="5">�߰� �Ǵ� ����</td>
												<td>��������</td>
												<td class="redTxt" style="font-weight:900;">����</td>
												<td>0%</td>
											</tr>
											<tr>
												<td>���� ������</td>
												<td>78,880</td>
												<td>20%</td>
											</tr>
											<tr>
												<td>���� ������</td>
												<td class="redTxt" style="font-weight:900;">����</td>
												<td>0%</td>
											</tr>
											<tr>
												<td>������(50���̻�)</td>
												<td>78,880</td>
												<td>20%</td>
											</tr>
											<tr>
												<td>3�Ⱓ ��������<br/>(3�Ⱓ �ٷ��������ɷ������ �̱�����)</td>
												<td>78,880</td>
												<td>20%</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- //con_wrap1709 ��뺸��ȯ�� -->
						
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

