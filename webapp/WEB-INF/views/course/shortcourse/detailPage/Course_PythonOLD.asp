<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

SubjectName = "Python ���α׷���"
CourseID = "Python"
%>

<%
	dim strDate
	strDate = "2017.12.11 ~ 2018.1.3"
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

			$("#btnOpenSa").on("click", function() {
				$("#divSa").show();
				$("#btnOpenSa").animate({opacity:0.01},300,function() { })
			})
			$("#btnOpenGn").on("click", function() {
				$("#divGn").show();
				$("#btnOpenGn").animate({opacity:0.01},300,function() { })
			})
		
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
			$(".snb_1709 .newdepth4_wrap.no5 li:eq(0) a").addClass("on");				// ���߹� ON
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
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܱ����α׷���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[����]��Ʈ��������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Python ���α׷���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>���߹�
						</p>
						<h4>Python ���α׷���</h4>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap1709 first">
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
											<th scope="row" class="tit">�������</th>
											<td colspan="3">Python Programming</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul>
													<li style="min-height:20px;"><%=strDate%><span class="greenTxt">(�����)</span></li>
													
													
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<ul class="ul_dot_gray">
													<li>����� : 19:00 ~ 22:00 (3�ð� / 16�� / ��48�ð�)</li>
													
												</ul>
												<!--<span>* ����/���Ĺ��� ����Ư�� �Ⱓ���� ����˴ϴ�.</span><br/>-->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>
												350,000�� <span class="blueTxt">(������ ȯ���� ����ݸ� �ش�)</span><br/>
												<span>* 18,800�� ��� ���߱��� ����</span>
											</td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear:both; height:10px;"></div>

								<div> <!-- div ȯ�޺� -->
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										�������Ź�Ʒ� <a href="javascript:openSa();" id="btnOpenSa" class="mar_l10 btn sml blue">ȯ�ޱݾ� �ڼ�������</a>
										<!--<span class="btn_wrap c"><a href="/Upload/company.zip" class="btn sml green1">�Ʒú��û�����ٿ�</a></span>-->
									</h4>
									<!-- ��뺸��ȯ�޾ȳ�-->
									<div class="refundInfo_wrap2">
										<!-- #include virtual="/Common/Tab/refundInfo_languageMaster2.asp"-->
									</div>
									<!-- //��뺸��ȯ�޾ȳ� -->

									<div id="divSa" style="DISPLAY:NONE;">
										<span style="float:right;"><a href="#this" class="mar_l10 btn sml blue btn_refundView2">ȯ�޳��� �ڼ�������</a></span>
										<div style="clear:both;"></div>
											
										<table class="table_col_type1">
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
													<td rowspan="4">350,000</td>
													<td>315,552</td>
													<td>34,448</td>
													<td>90%</td>
													<!--<td rowspan="4"></td>-->
												</tr>
												<tr>
													<td>50�� �̻�</td>
													<!--<td>314,899</td>-->
													<td>283,996</td>
													<td>66,004</td>
													<td>81%</td>
												</tr>
												<tr>
													<td rowspan="2">�߰� �Ǵ� ����</td>
													<td>1,000�� �̸�</td>
													<td>189,331</td>
													<td>160,669</td>
													<td>54%</td>
												</tr>
												<tr>
													<td>1,000�� �̻�</td>
													<td>126,220</td>
													<td>223,780</td>
													<td>36%</td>
												</tr>
											</tbody>
										</table>
										<!--<span class="redTxt">�� �������Ź�Ʒ��� ��� ������ 350,000�� �����ϰ�, �⼮�� 80% �̻��� ��� ȯ�ޱ��� �ǵ��� ���� �� �ֽ��ϴ�</span><br/>-->
										<span class="redTxt"> �� �������Ź�Ʒ��� ��� ������ 350,000�� �����ϰ�, �⼮�� 80% �̻��� ��� ȯ�ޱ��� �ǵ��� ���� �� �ֽ��ϴ�.</span><br/>
										<span class="redTxt"> �� �Ϲ���(�Ǿ��� �Ǵ� ���л�)�� ������ ���� ���� �δ��Դϴ�.</span><br/>
									</div>
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										�ٷ��� �����ɷ��������  <a href="javascript:openGn();" id="btnOpenGn" class="mar_l10 btn sml blue">ȯ�ޱݾ� �ڼ�������</a>
									</h4>
									<!-- ��뺸��ȯ�޾ȳ�-->
									<div class="refundInfo_wrap">
										<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
									</div>
									<!-- //��뺸��ȯ�޾ȳ� -->

									<div id="divGn" style="DISPLAY:NONE;">
										<span style="float:right;"><a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></span>
										<div style="clear:both;"></div>
										
										<table class="table_col_type1">
											<colgroup>
												<col style="width:16%">
												<col style="width:36%">
												<col style="width:8%">
												<col style="width:11%">
												<col style="width:8%">
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
													<td rowspan="9">350,000</td>
													<td rowspan="4">34,440</td>
													<td rowspan="4">10%</td>
													<!--<td rowspan="9"></td>-->
												</tr>
												<tr>
													<td>���� ������</td>
												</tr>
												<tr>
													<td>���� ������</td>
												</tr>
												<tr>
													<td>������</td>
 												</tr>
												<tr>
													<td rowspan="5">�߰� �Ǵ� ����</td>
													<td>��������</td>
													<td>34,440</td>
													<td>10%</td>
												</tr>
												<tr>
													<td>���� ������</td>
													<td>97,550</td>
													<td>28%</td>
												</tr>
												<tr>
													<td>���� ������</td>
													<td>34,440</td>
													<td>10%</td>
												</tr>
												<tr>
													<td>������(50���̻�)</td>
													<td>97,550</td>
													<td>28%</td>
												</tr>
												<tr>
													<td>3�Ⱓ ��������<br/>(3�Ⱓ �ٷ��������ɷ������ �̱�����)</td>
													<td>97,550</td>
													<td>28%</td>
												</tr>
											</tbody>
										</table>
										<!--
										<span class="redTxt">�� �ٷ��� �����ɷ��������(ī��߱� �����)�� ���κδ�� 70,000���� �����մϴ�</span><br/>
										<span class="redTxt">�� �Ϲ���(�Ǿ��� �Ǵ� ���л�)�� ������ ���� ���� �δ��Դϴ�</span>
										-->
									</div>
								</div> <!-- // div ȯ�޺� -->
								
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<!--
						<div class="con_wrap1709">
							<h5>���� �Ұ� �� Ư����</h5>
							<p>���̽�(Python)�� �ʺ��ڷκ��� ���������� ������ ��������� �����ϰ� �ֽ��ϴ�. �پ��� �÷������� �� �� �ְ�, ���̺귯��(���)�� ǳ���Ͽ� ������ ����� ���� ���� ���, ���� ��� �� ����迡�� �̿��� �����ϰ� �ֽ��ϴ�. ����ϰ� ���� ������ Ư¡�� ���̽��� ���� ��ǻ�� ���� �а��� ���г��� ������� �� ���α׷��� �Թ� ���� �ֱ� �߿伺�� �ΰ��ǰ� �ִ� �ڵ� ������ �����ϱ⿡ ������ ���� �� �ް� ������, ����, ��ӹڽ�, ��Ʃ��, ���ø��� �� �ؿ� ������ IT��������� ���߾��� ä���ϰ� �ִ� �߼��Դϴ�.</p>
							<p>�� ���������� ���̽� ���α׷��� �����ϱ� ���Ͽ� �ʼ������� �˾ƾ� �ϴ� �⺻�������� �����ϰ�, ���̽� ���α׷��� ������ ������ ������ ���� ���ظ� �ϵ��� �Ͽ� ���α׷��ֿ� ���� ������ ���ظ� �����ϴ�. �׸��� ���� ���߰��������� Ȱ���� ���� ���� ���� Ȱ����� �н��մϴ�.</p>
						</div>
						-->
						<!-- //con_wrap -->
						
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
						<!--
						<div class="con_wrap1709">
							<h5>���� ��ǥ</h5>
							<ul class="ul_dot_gray">
								<li>���α׷��� �Թ��� ���� ���̽� ���α׷��� �� ������ �˰����� ������ �� �ִ� ���α׷��� ���� �Ʒ�</li>
								<li>���̽��� ������ Ȱ���� �� �پ��� ���� �ɷ� �Ծ�</li>
								<li>���̽� Ŭ���� �� ��Ű�� �� ���� ���� �پ��� �⺻ ���� ����</li>
								<li>�ǹ� �Ǵ� �پ��� ���� ������ �ذ��� �� �ִ� �ڵ� �ɷ� �Ծ�</li>
							</ul>
							
						</div>
						-->
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<!--
						<div class="con_wrap1709">
							<h5>���� ���</h5>
							<ul class="ul_dot_gray">
								<li>���α׷����� ó�� ���ų� ���̽� ������ ü�������� ������ �ϴ� ��</li>
								<li>���̽� ���� ��� �� �⺻ ������ ���ؼ� �˰��� �ϴ� C���, �ڹٳ� �������� ������ </li>

							</ul>
						</div>
						-->
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<!--
						<div class="con_wrap1709">
							<h5>���� ���� (�� ���� ����)</h5>
							<ul class="ul_dot_gray">
								<li>�⺻ ���α׷��� �ɷ� ���� / �˰��� �ǽ� ���</li>
								<li>�� ���� ���α׷� ���� / ��Ʈ��ũ ���� ����</li>
								<li>�����ͺ��̽� ���� ���α׷� ����</li>
								<li>�ؽ�Ʈ ó��</li>
								<li>��ġ���� (�̰���)</li>
								<li>���Ŀ��� ó��</li>
								<li>��ǻ�� �׷��Ƚ�</li>
							</ul>
						</div>
						-->
						<!-- //con_wrap -->
						
						<!--
						<style>
							table.table_col_type2 tbody tr th {
								vertical-align: top !important;
							}
						</style>
						-->
						
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

							<!--<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
						</div>
						<!-- con_wrap -->
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