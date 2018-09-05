<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

SubjectName = "Python ���α׷���"
CourseID = "Python_Weekend"
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

			//$(".snb_1709 a.newdepth1").eq(7).addClass("on");								// ����Ư�� - Python ���α׷���

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [����] ��Ʈ�������� ON
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [����] ��Ʈ�������� SUB - OPEN
			$(".snb_1709 .newdepth3.newwrap.no5").addClass("on").removeClass("plus").addClass("minus");	// Python ���α׷��� ON 
			$(".snb_1709 .newdepth4_wrap.no5").addClass("on").css('display','block');	// Python ���α׷��� SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no5 li:eq(1) a").addClass("on");				// �ָ��� ON

		});
	</script>
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_Python.asp";
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
				<!--#include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- # i n c lude virtual = "/Include/SNB_CourseVacation_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܱ��ٽɰ���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[����]��Ʈ��������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Python ���α׷���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ָ���
						</p>
						<h4>[�ָ���] Python ���α׷���</h4>
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__python_Weekend.inc" -->
												<!--
												2018.1.15 ~ 2018.1.30 <span class='greenTxt'>(���Ĺ�)</span><br/>
												2017.12.18 ~ 2018.1.10 <span class='greenTxt'>(�����)</span>
												-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__python_Weekend.inc" -->
												<!--
												���Ĺ� 14:00~18:00 (4�ð�/12��/��48�ð�)<br/>
												����� 19:00~22:00 (3�ð�/16��/��48�ð�)
												-->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td>
												350,000��<br/>
												<span>* 18,800�� ��� ���߱��� ����</span>
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
								<div style="clear:both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap -->

						<div class="con_wrap1709 ">
							<h5>�����ε��</h5>
							<img src="Images/Python-P.PNG" style="text-align:center; width:100%;"/>
						</div>
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>���� �Ұ�</h5>
							<!--<img src="/Images/Main/img_LOGO_Python.png" style="width:180px;"/>-->
							<p>���̽� ���α׷����� �ʺ��ڷκ��� ���������� ������ ��������� �����ϰ� �ֽ��ϴ�. </p>
							<p>������ ������ �ʿ�� �ϴ� Perl�̳� C, C++�� ���� ������ �����մϴ�. ���� ���� ���ٴ� ������ �ֽ��ϴ�. </p>
							<p>���̽��� ���� ��ǻ�� ���� �а��� ���г��� ������� �� ���α׷��� �Թ� ���� �ֱ� �߿伺�� �ΰ��ǰ� �ִ� �ڵ� ������ �����ϱ⿡ ������ ���� �� �ް� ������, ����, ��ӹڽ�, ��Ʃ��, ���ø��� �� �ؿ� ������ IT��������� ���߾��� ä���ϰ� �ִ� �߼��Դϴ�.</p>
							<p>C�� ������ ��, �����Ϳ� ���� ���� ���� ������ ���� ������, ��������� ���� �ð��� ���α׷� ������ ������ � ������ �� �ֽ��ϴ�. C++�� ��������, OOP�� �⺻���� ���׵��� ���� ������ ��� �� �ֽ��ϴ�.�⺻������ ���������� ����̱� ������, �ڵ��� ����� �ٷιٷ� Ȯ���� �� �� �ְ�, �پ��� �ü���� �����մϴ�. ���� ����(.exe)�� ����� �� ���� �ֽ��ϴ�. </p>
							<p>�پ��� ���̺귯���� �����ϱ� ������, ��������� ���� ���� �ڵ常���ε� GUI ���α׷�, game, CGI ���α׷� ���� ������ ���� �� �ֽ��ϴ�. </p>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>C/ C++ ���α׷��� �ܿ��� ���̽��� ����� �ϴ� ����</h5>
							<p>C/C++ �׸��� Bourne shell�� ������ ������ ������ �ֱ� ������, ��Ÿ �ٸ� ��ũ��Ʈ �� ���� ������ �ӵ��� �ſ� �����ϴ�.</p>
							<p>OS�� ���õ� ��ɵ� (��: POSIX interface)��κ� C/C++���� �����Ǵ� �Լ��� ���� �̸��� ����,�������ϴ� �Լ����� Ÿ ��ũ��Ʈ ���� ���� �� ���� �ʽ��ϴ�.</p>
							<p>class, virtual function, �������� operator overloading�� �����ϱ� ������ C++���� ��� ������ ��� �״�� ������ �� �ֽ��ϴ�.</p>
							<p>Mixed language programming - Python�� ��Ÿ �ٸ� ��ũ��Ʈ �� ���� C/C++�� python module�� �ۼ��ϱⰡ �ſ� ���� �� �� �ֽ��ϴ�.</p>
							<p>�������̳��� lambda expression�� �����ϱ� ������, LISP/Scheme � �ͼ��� ����鵵 ����� �ڵ带 ���� ���� �� �ִ�. map(), apply() �Լ� ����, closure ����</p>
							<p>�ٸ� ��ũ��Ʈ �� ���� ����ȭ�� �� �Ǿ� ������ (Tutorial, Library Reference, Language Reference ����), ���� ��ü�� LISP/Scheme�� ���������� documentation string�� ���� ���� �� �ְ�, built-in �Լ��� dir()�� ����, �Լ�, ���, ������Ʈ�� �����ϴ� �ɺ� ���̺��� �ٷ� �� �� �ֱ� ������ �ٸ� ��ũ��Ʈ �� �� ���� ����, ���� ������ ã�ƺ��� �󵵰� �������ϴ�.</p>
							<p>�Լ�, Ŭ���� �Ǵ� ������ Decorator�� ���� ������ �� �ֽ��ϴ�. Decorator�� C/C++ ������ qualifier�� �ش��ϴ� ������ �پ��� wrapper�� ����ų� class�� ��� static, class method�� ������ �� �ֽ��ϴ�.</p>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>���� ����</h5>
							<ul class="ul_dot_gray">
								<li>�� ���α׷���</li>
								<li>�������� �м� ���α׷���</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<div style="float:left; width:180px;">
								<h5>���� ����</h5>
								<img src="/Images/Content/img_BookCover_JumpToPython.jpg" style="margin-left:15px; width:160px;  border:solid 1px #565656;"/>
							</div>
							<div style="float:left; width:350px; margin-top:27px; margin-left:15px;">
								<p style="margin-top:210px;">
									'Do it! ���� �� ���̽�' <Br/>������ �� / �������ۺ���
								</p>
							</div>
							<div style="clear:both;"></div>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:15%">
										<col style="width:25%">
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
											<td class="darker c" scope="row">�⺻</td>
											<td class="darker c" scope="row">
												1. ���̽� �Ұ�<br/>
												2. ���̽� �ڷ���<br/>
												3. ���̽��� �⺻ ����
											</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>���̽� ��ġ �� ����ȯ�� ���� �� ����</li>
													<li>���̽��� �ڷ���(������, ���ڿ�, ����Ʈ, Ʃ��, ��ųʸ�, ����)�� ����</li>
													<li>���(���ǹ��� �ݺ���)</li>
													<li>�Լ�</li>
													<li>�ܼ� �����</li>
													<li>���� �а� ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">��ȭ</td>
											<td class="darker c" scope="row">
												1. Ŭ������ ��ü���� ���α׷���<br/>
												2. ��� ���� �� ��� ���<br/>
											</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>���̽� ��ü���� ���α׷���</li>
													<li>Ŭ����</li>
													<li>���</li>
													<li>������</li>
													<li>���</li>
													<li>��Ű��</li>
													<li>����ó��</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">Ȱ��</td>
											<td class="darker c" scope="row">
												1. ���̽� ���Խİ� �����ٷ��
											</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>���̽��� �����Լ��� �����Լ�</li>
													<li>���� ǥ����</li>
													<li>XML ���� �ٷ��</li>
												</ul>
											</td>
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
						
						<!-- con_wrap1709 ��뺸��ȯ�� -->
						<div class="con_wrap1709 dnone">
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
									<a href="/Upload/company2.zip" class="mar_l10 btnBlueBorder" style="margin:10px auto;">����� ��Ź�Ʒ� ��û���� �ٿ�ε�</a>
									<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">�� ��û���� �ۼ� �� kang.i.y@bit.kr�� �����ֽñ� �ٶ��ϴ�.</p>
								</div>
							
								<div class="divTable">
									<table>
										<tr>
											<th>������� �з�</th>
											<th>��� �ٷ��ڼ�</th>
											<th>����ȯ�ޱ�</th>
											<th>����δ��</th>
										</tr>
										<tr>
											<td rowspan="2">�켱���� �����</td>
											<td>50�� �̸�</td>
											<td>315,552��</td>
											<td>34,448��</td>
										</tr>
										<tr>
											<td>50�� �̻�</td>
											<td>283,996��</td>
											<td>66,004��</td>
										</tr>
										<tr>
											<td rowspan="2">�߰� �Ǵ� ����</td>
											<td>1,000�� �̸�</td>
											<td>189,331��</td>
											<td>160,669��</td>
										</tr>
										<tr>
											<td>1,000�� �̻�</td>
											<td>126,220��</td>
											<td>223,780��</td>
										</tr>
									</table>
								</div>
								<p>�� ����� ��Ź�Ʒ��� �⼮�� 80% �̻��� ��츸 ����ȯ�ޱ��� ���� �� �ִ�.</p>
							</div>

							<div id="divGn" style="DISPLAY:NONE;" class="con_wrap1709ul">
								<h5>�ٷ��� �����ɷ��������</h5>
								<p>��뺸���� ���εǴ� ������ ������ <b>'������ ���Ϲ��ī��'</b>�� �߱޹޾� ������ ������ �޴� ����</p>
								
								<h5>�������</h5>
								<p>- �켱���� ����� �ٷ���, ��뺸�� ���ǰ��� �ڿ�����, �Ⱓ�� �ٷ���, �ܽð� �ٷ���, �İ� �ٷ���, �Ͽ� �ٷ���</p>

								<h5>��������</h5>
								<p>�����ѵ��ݾ��� 1�δ� �Ⱓ 200���� �ѵ� ������ �Ʒð����� ���� 60~100% ����</p>
								
								<div style="text-align:center;">
									<a href="/Upload/employ2.zip" class="mar_l10 btnBlueBorder" style="margin:10px auto;">�ٷ��� �����ɷ�������� ��û���� �ٿ�ε�</a>
									<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">�� ��û���� �ۼ� �� kang.i.y@bit.kr�� �����ֽñ� �ٶ��ϴ�.</p>
								</div>
								<div class="divTable">
									<table>
										<tr>
											<th>������� �з�</th>
											<th>���</th>
											<th>���κδ��</th>
										</tr>
										<tr>
											<td>�켱���� �����</td>
											<td>��������, ���� ������<br/>���� ������, ������</td>
											<td>34,440��</td>
										</tr>
										<tr>
											<td rowspan="2">�߰� �Ǵ� ����</td>
											<td>��������, ���� ������</td>
											<td>34,440��</td>
										</tr>
										<tr>
											<td>���� ������, ������</td>
											<td>97,550��</td>
										</tr>
									</table>
								</div>
							</div>
							
						</div>
						<!-- //con_wrap1709 ��뺸��ȯ�� -->

						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=Python" class="btn mid green1">�����ϱ�</a>
						</div>
						-->
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