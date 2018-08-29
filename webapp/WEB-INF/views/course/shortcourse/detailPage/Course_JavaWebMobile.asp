<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
'//"Android1_core" -> "android_programming"���� ������ -> �ٽ� "Android1_core"���� ������. (2016-12-01-YG)
CourseID = "javaWebMobileVac"
SubjectName = "Java �� & �����"
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
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			
			$(".snb_1709 a.newdepth1").eq(3).addClass("on");								// Java �� & ����� ON
			
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			/*
			$(".snb_1709 a.newdepth1").eq(6).addClass("on");								// Mobile
			$(".snb_1709 .newdepth2_wrap").eq(6).addClass("on");						// Mobile - OPEN
			$(".snb_1709 .newdepth2_wrap.no7 .newdepth2").eq(0).addClass("on");  	// �ȵ���̵� �� ���� ON
			*/
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
		<div id="Container_Wrap" style="min-height:1000px;">
			
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- # i n c l ude virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- #include virtual = "/Include/SNB_CourseVacation_1709.asp"-->				
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܿ����Ư��
						</p>
						<!--
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܱ��ٽɰ���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Mobile
						</p>
						-->
						<h4><%=SubjectName%></h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<caption>�ȵ���̵� ���α׷���</caption>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__javaWebMobileVac.inc" -->
												<!--
												2017.12.21 ~ 2018.1.25 <span class='greenTxt'>(������)</span><br/>
												2018.1.15 ~ 2018.2.19 <span class='greenTxt'>(���Ĺ�)</span>
												-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__javaWebMobileVac.inc" -->
												<!--
												������ 9:00 ~ 13:00 (4�ð�)<br/>
												���Ĺ� 14:00 ~ 18:00 (4�ð�)
												-->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>700,000��</td>
											<th>����������</th>
											<td>��뺸�� ��ȯ��</td>
										</tr>
										<tr>
											<th>��������</th>
											<td>30��</td>
											<th>����</th>
											<td>02-3486-3456</td>
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

						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_123.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<!--<p>�� ������ �ȵ���̵� ���ø����̼��� �ٽ� ����� �⺻ View, Layout�� ���� ����. �׸��� �ȵ���̵��� �ٽ� ������ҿ� ���Ͽ� �н��Ѵ�. �ܼ��� �ȵ���̵��� API�� ���Ͽ� �н��ϴ� ���� �ƴ�, ���� �ۿ� ���� ������Ÿ������ �����ϰ�, �ش� ���� ���� ����鼭 �ȵ���̵� �� �ۼ������ ���� ������ Ȯ���ϰ� �Ѵ�.</p>-->
							<p>�� ������ �⺻ ����� Java�� ��� ��, �ȵ���̵� �Ұ��� ����ȯ�� ��ġ(�ȵ���̵� ��Ʃ���) �׸��� �Թ����� ���̾ƿ��� ���� UI �ٷ��, �̺�Ʈ ó�� �׸��� ��� UI, Ŀ���� UI�� �ǹ����� �ۼ��Ǵ� ���� ������ �ȵ���̵� ���� �ۼ��ϴ� ����� ���ϴ�. �׸��� ���� �ȵ���̵� �۰� �� �������� ������ ����� �ٷ�� �ȵ���̵� ���� UI�� �����Ű�� �ǹ������� ������� ���ϴ�.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>Java �� ���� �⺻���� ����</li>
								<li>�ȵ���̵� ��Ű��ó �� ������ҵ鿡 ���� ����</li>
								<li>�ȵ���̵� ��Ʃ��� ���� �� ���� ������</li>
								<li>���̾ƿ�, �̺�Ʈ ó��, �⺻ ���� ���α׷���</li>
								<li>����� ��, ��� ����, Ŀ���� ���� ���α׷���</li>
								<li>�� �������� JSON����� ������ ��� ����</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<thead>
										<tr>
											<th scope="col" style="width:15%;">������</th>
											<th scope="col" style="width:30%;">������</th>
											<th scope="col" style="width:47%;">�󼼳���</th>
											<!--<th scope="col" style="width:8%;">�ü�</th>-->
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row" rowspan="4">Java Beginning</td>
											<td rowspan="4" class="darker c">�ڹ� �⺻����</td>
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
											<td rowspan="2" class="darker c">��ü ���� ���α׷���</td>
											<td>��ü������ ����� Ŭ���� ����, ��ü �ν��Ͻ� ���� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td>�޼ҵ� �����ε��� �����ڸ� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td rowspan="4" class="darker c">���</td>
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
											<td rowspan="3" class="darker c">�ڹ� �ֿ� Ŭ����</td>
											<td>�ڹ� ��Ű�� �� ���� ���Ǵ� Ŭ������ ���ɴ�.</td>
										</tr>
										<tr>
											<td>�ڷᱸ���� �÷��ǿ� ���ؼ� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td>�ڹ�Ŭ���� �ǽ�</td>
										</tr>
										<tr>
											<td rowspan="5" class="darker c">IO/������</td>
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
											<td rowspan="2" class="darker c">��Ʈ��ũ</td>
											<td>��Ʈ��ũ�� ���ؼ� �����ϰ� ���ڼ����� �ۼ��� �� �ִ�.</td>
										</tr>
										<tr>
											<td>ä�ü��� ���α׷��� �ۼ��� �� �ִ�.</td>
										</tr>
										<tr>
											<td class="darker c" style="letter-spacing:-2px;">�ȵ���̵� ����</td>
											<td class="darker c" style="text-align:left;">1. Android �ü��<br/>2. Android ����ȯ�� ����<br/>3. Android ���ø����̼� �������</td>
											<td style="text-align:left;">1.�ȵ���̵� Ư¡, ������� �� ���� ��Ÿ��ȯ���� ����<br/>2.Android Studio ���� ����ȯ�� ������ ����<br/>3. ��Ƽ��Ƽ, ����, ��ε�ĳ��Ʈ ���ù�, ����Ʈ ���ι��̴�, ����Ʈ, �˸� �޽���, �佺Ʈ�� ����</td>
											<!--<td>3</td>-->
										</tr>
										<tr>
											<td class="darker c" style="letter-spacing:-2px;">�ȵ���̵� �Թ�</td>
											<td class="darker c" style="text-align:left;">1.Hello, Android ���캸��<br/>2.Android ���ø����̼� ������� �ڼ��� �˾ƺ���</td>
											<td style="text-align:left;">1. ������ ������ ���� ���� �� �ۼ��� ���� �������� ���� ����<br/>2. ���ҽ�, ��Ƽ��Ƽ, ����Ʈ ����</td>
											<!--<td>3</td>-->
										</tr>
										<tr>
											<td class="darker c" style="letter-spacing:-2px;">�ȵ���̵� <br/>���α׷���</td>
											<td class="darker c" style="text-align:left;">1. �ȵ���̵� �⺻ UI(���̾ƿ�/����)<br/>2. �ȵ���̵� ��� UI (�׼ǹ�/�����׸�Ʈ)<br/>3.�ȵ���̵� Ŀ���� UI (drawable/Theme)</td>
											<td style="text-align:left;">1.Layout/Tab/TextView & Image View<br/>2.�Է�ó��( EditText/Spinner/Button/RadioBUtton/CheckBox)<br/>3.��¥�� �ð� ����/��Ÿ ����<br/>4.ListView �⺻ ����<br/>5.�޴�<br/>6.Dialog<br/>7.Ŀ���� UI������ ���� layout/drawable/theme Ȱ���<br/>8.ActionBar & Fragment </td>
											<!--<td>18</td>-->
										</tr>
										<tr>
											<td class="darker c" style="letter-spacing:-2px;">�ǹ��� ����</td>
											<td class="darker c" style="text-align:left;">1.Tab Pager UI,<br/>2.ListView Ȱ��, <br/>3.JSON ������ ��û�� ó��</td>
											<td style="text-align:left;">1. ��� �ۿ� ���� ���̴� ��/������ UI����<br/>2. ��/�������� ListView ���ε�<br/>3. ListView Adaper ����<br/>4. �� ������ ������ ��ſ� �ʿ��� �ֿ� ���� �� �ֿ� ���̺귯�� ���� </td>
											<!--<td>12</td>-->
										</tr>
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
								<p class="mar_t10"><span class="fb">����</span> : 02.3486.3456 (e-mail : bithrd@bit.kr)</span></p>
								-->
								<!-- �󰭾ȳ� ���� -->
								<div style="float:right; margin-top:18px; font-size:15px;">
									<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
								</div>
								<div style="clear:both;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=Android1_core" class="btn mid green1">�����ϱ�</a>
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