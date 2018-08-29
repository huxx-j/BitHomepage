<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = ""
SubjectName = "Ư�� - 4������� ����ũ 3.0 TRUST CITY �÷���"
%>

<%
dim strDate
strDate = " - 1���� : 2017. 11. 6(��)<br/> - 2���� : 2017. 11. 13(��)"
%>

<!DOCTYPE html>
<!-- not REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!--#include virtual="/Include/config.asp"--> <!-- 4[CourseReview] -->
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");
			//$(".snb_1709 .newdepth2_wrap").eq(4).addClass("on");
			//$(".snb_1709 .newdepth2_wrap.no5").find("li a").eq(0).addClass("on");  
			
			//$(".snb_1709 .newdepth2.newwrap.no1").addClass("on").removeClass("plus").addClass("minus");
			//$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			//$(".snb_1709 .newdepth3_wrap.no1 li:eq(0) a").addClass("on");
		});
		
	</script>
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_android.asp";
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
		<div id="Container_Wrap" style="min-height:300px;">
			
			<!-- Content_Wrap -->
			<div id="Content_Wrap" style="min-height:300px;">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseSpecial_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>4�� ������� Ư��
						</p>
						<h4><%=SubjectName%></h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
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
											<th scope="row" class="tit">��������</th>
											<td><%=strDate%></td>
											<th scope="row" class="tit">���ǽð�</th>
											<td><!--��4��(ȭ,��,��,��) 3�ְ�<br/>-->19:00 ~ 22:00 (3�ð�)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">�����ο�</th>
											<td>������ 40��</td>
											<th scope="row" class="tit">���</th>
											<td>��Ʈ�������� ��Ÿ��(���� 1��)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">�����Ⱓ</th>
											<td>2017�� 11�� 3�� 18:00����</td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
<%
'								<!-- ������ûbtn -->
'								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID % >" title="������û" style="float:right; margin:12px 0;">
'									<img src="/Images/Btns/btn_ApplyCourse.png"/>
'								</a>
'								<div style="clear;both; height:10px;"></div>
%>
							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p>
								4������� TRUST CITY ���ա����� �÷��� ����� O2O �ｺ�ɾ�Ƿ������� ����Ͻ����� ��ʸ� �ľ��ϰ� ������� �۵������� �ľ��ϱ� ���ؼ� ����ũ 3.0 ���� �÷����� �ٽɱ���� �ΰ�����(������), ������, O2O, IoT+IoB, ����ũ, �÷��� ���ü�� ��� ��Ű��ó�� �̷���ġ�� ���� �м�������
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<thead>
										<tr>
											<th scope="col" style="width:12%;">����</th>
											<th scope="col" style="width:25%;">����</th>
											<th scope="col" style="width:45%;">��������</th>
											<th scope="col" style="width:13%;">���</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" style="letter-spacing:-2px;" rowspan="3">11/6(��)<br/>1����</td>
											<td style="text-align:left;">4����������� ����</td>
											<td style="text-align:left;">
- 4����������� ���� ���<br/>
- ��Ÿ���, �ΰ����ɰ� ������<br/>
- Ŭ����ͺ����Ͱ��̵�, ���¼ҽ��ڿ�Ȱ��
											</td>
											<td rowspan="6" style="border-left:1px solid #c9c9c9;" class="c">�ѱ�����ũ<br/>����ȸ<br/>ȫ�ؿ�<br/>����</td>
										</tr>
										<tr>
											<td style="text-align:left;">����Ʈ����� O2O</td>
											<td style="text-align:left;">
- O2O ����Ʈ ���� ������<br/>
- O2O �ΰ����� Ȯ��, ����ȭ, �ｺ�ɾ� �� ���<br/>
- O2O ���޽� ���, O2O ���
											</td>
										</tr>
										<tr>
											<td style="text-align:left;">�ΰ����ɰ� HW Start-UP, <br/>IoT ���տ���</td>
											<td style="text-align:left;">
- �ΰ����ɰ� HW Start-Up<br/>
- IoT ���տ���<br/>
- ����Ʈ ��Ƽ
											</td>
										</tr>
										<tr>
											<td class="darker c" style="letter-spacing:-2px;" rowspan="3">11/13(��)<br/>2����</td>
											<td style="text-align:left;">IoB(�����)�� �Ƿ���������</td>
											<td style="text-align:left;">
- IoB ���� ����, ��������<br/>
- ����� ���� ���, ����Ʈ �۷���<br/>
- ��ü�� �Ƿ�, �ｺ�ɾ� ���� ���� ���
											</td>
										</tr>
										<tr>
											<td style="text-align:left;">����ũ</td>
											<td style="text-align:left;">
- ����ũ�� ����, ����� ����, �÷��̾�<br/>
- �۱�,����,P2P,����ũ����,���ͳ������ ������ ���<br/>
- ����ũ ��������
											</td>
										</tr>
										<tr>
											<td style="text-align:left;">����ũ 3.0 TRUST CITY</td>
											<td style="text-align:left;">
- �÷���, ��������� ����ũ ���� ���� �� ����<br/>
- IoT �̷��� ���ó�Ʈ��ũ ����<br/>
- 4������� IoT���Ȱ� ���ü��
											</td>
										</tr>
									</tbody>
								</table>
								<%
'								<!-- �󰭾ȳ� ���� -->
'								<div style="float:right; margin-top:18px; font-size:15px;">
'									<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
'								</div>
'								<div style="clear:both;"></div>
								%>
							</div>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������û</h5>
							<p>
								�Ʒ��� ��Ĵ�� �ۼ��ϼż� �̸���(<a href="mailto:gwang@bit.kr" style="color:blue; text-decoration:underline;">gwang@bit.kr</a>)�� ��û�ϼ���.
							</p>
							<div class="divTable">
								<table>
									<tr>
										<th style="width:20%;">�Ҽ�</th>
										<th style="width:20%;">�μ���</th>
										<th style="width:20%;">��û�ڸ�</th>
										<th style="width:20%;">����</th>
										<th style="width:20%;">�޴�����ȣ</th>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</table>
							</div>
						</div>
						<!-- //con_wrap1709 -->
						
						
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