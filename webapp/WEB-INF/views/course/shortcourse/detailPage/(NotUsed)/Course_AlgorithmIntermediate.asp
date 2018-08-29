<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
'// 4[CourseReview] (pre1)
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

SubjectName = "�����ذ��� ���� �߱� �˰���"
CourseID = "DS_Intermediate"
%>

<%
	dim strDate
	'//strDate = "2017.12.9~2017.12.31"
	strDate = "(����)"
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
	<!-- .btn_refundView �� .btn_refundView2�� /JS/Common.js �� �̺�Ʈ�ڵ鷯 ���� -->
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			
			/* page load ���� SNB ���� */
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [����] ��Ʈ�������� ON
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [����] ��Ʈ�������� SUB - OPEN
			$(".snb_1709 .newdepth3.newwrap.no4").addClass("on").removeClass("plus").addClass("minus");	// �ڷᱸ��/�˰��� ON 
			$(".snb_1709 .newdepth4_wrap.no4").addClass("on").css('display','block');	// �ڷᱸ��/�˰��� SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no4 li:eq(1) a").addClass("on");				// �ָ�/�߱� ON
		});
		
	</script>
	<script language="javascript"> 
/*******	
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_C.asp";
************/			   
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܱ��ٽɰ���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[����]��Ʈ��������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ڷᱸ��/�˰���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ָ�/�߱� �˰���
						</p>
						<h4>�����ذ��� ���� �߱� �˰���</h4>
					</div>
					<section class="section">
					
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">�����ذ��� ���� �߱� �˰���</td>
											
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul>
													<li><%=strDate%></li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<ul class="ul_dot_gray">
													<li>13:00 ~ 18:00 (5�ð� / ��,�� / ��40�ð�)</li>
												</ul>
											</td>
											
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>750,000��</td>
											<th scope="row" class="tit">��������</th>
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
<!--
<div class="myBlackBox">
	<p>SW�����ذ� �����̶�? <span class="myYellow">��� ������ ���� �ذ��� �� �� �ִ� �ɷ�</span>�� ���մϴ�.</p>
	<p>�ʱ� ���α׷��Ӱ� ��� ���α׷��ӷ� �����ϴ� �������� ���� ū ������� �˰��� ������ �����ϰ� �ذ��ϴ� �ɷ��Դϴ�.</p>
	<p>�̷��� ������ ���� IT ���� ������� <span>���α׷��� ä��� �ڵ� �׽�Ʈ �߽��� ���������� �����Ͽ� �˰��� ���ص��� �����ϰ� �ִ� �߼�</span>�Դϴ�.</p>
	<p>���� �� ������ �̷��� �߼��� ���� �پ��� ������ �ذ��� �� �ֵ��� ����� �ݴϴ�.</p>
</div>
-->
						</div>
						<!-- //con_wrap1709 -->
						
						<div class="con_wrap1709">
							<h5>���� �ε��</h5>
							<div>
								<img src="img_Roadmap_C3.png" style="width:100%;"/>
							</div>
						</div>

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li><a href="#">C���</a>�� <a href="#">�ڷᱸ�� �⺻</a>�� �����Ͻ� ��</li>
								<li>SW ���� �ذῪ���� �����Ѿ� �Ǵ� ��</li>
								<li>���� ����� ���Ͻô� ��</li>
								<li>SW Ư��� ���п� �����ϰ� ���� ��</li>
								<li>���� ������ȸ�� �غ��ϴ� ��</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5>��������</h5>
<!--
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>SW ������ �ذ��ϰ� ������ ��ȭ�Ѵ�.</li>
		<li>ȿ������ �˰����� �����ϰ� ������������� �����ϰ� �н��Ѵ�.</li>
		<li>�پ��� �˰����� �⺻���� ������ �������� ���� �����ϸ鼭 ������.</li>
	</ul>
</div>
-->
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:45%">
										<col style="width:45%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">��������</th>
											<th scope="col">������ǥ</th>
											<th scope="col">�������� �� �ǽ�����</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row" rowspan="2">1����</td>
											<td rowspan="2">�⺻���� �ڷᱸ���� �̿��Ͽ� �˰��� ���ٹ��� �н��Ѵ�.</td>
											<td>
												<��������><br/>
												<ul class="ul_dot_gray l">
													<li>ȯ�� ���Ḯ��Ʈ, ����, ť</li>
													<li>���Ḯ��Ʈ�� �����ϴ� ����</li>
													<li>���Ḯ��Ʈ�� �����ϴ� ť</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<�ǽ�����><br/>
												<ul class="ul_dot_gray l">
													<li>�迭�� �����ϴ� ����</li>
													<li>��Ģ���� ����</li>
													<li>��ȯť, ��ũ�帮��Ʈť</li>
													<li>����޸� �����Ӱ���</li>
													<li>��õ� ������ ��ü</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td class="darker c" scope="row" rowspan="2">2����</td>
											<td rowspan="2">Ʈ���� ������ �̿��Ͽ� ������ �����ϰ� �ǽ��� ���Ͽ� �����Ѵ�.</td>
											<td>
												<��������><br/>
												<ul class="ul_dot_gray l">
													<li>Ʈ���⺻����, ����Ʈ��, AVL Tree</li>
													<li>��������, ��������, ������, �պ�����, ī��������, �������</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<�ǽ�����><br/>
												<ul class="ul_dot_gray l">
													<li>����Ʈ��, �и�����, ����</li>
													<li>���丮������</li>
													<li>����Ǯ��</li>
												</ul>
											</td>
										</tr>
<!--
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>Ž�� �˰��� �� ���� ����� ��������� ���ؼ� �н��Ѵ�.</li>
		<li>�׷����� �⺻���� �� ����˰����� �����ϰ� ������ ���غ���.</li>
		<li>�˰��� ���ɺм��� �����ϴ� ����� �н��Ѵ�. �Ǵ� ���� ��� �˰��� ���ɺм��� �����Ѵ�.</li>
	</ul>
</div>
-->
										<tr>
											<td class="darker c" scope="row" rowspan="2">3����</td>
											<td rowspan="2">Ž�� �˰���� ���� ���ؼ� �н��ϰ� ö�ڰ˻�� �����ּҹ��� �̿��� ����Ǯ�̸� �Ѵ�.</td>
											<td>
												<��������><br/>
												<ul class="ul_dot_gray l">
													<li>����Ž��, ����Ž��, ����Ž��Ʈ��, ������ڽ�Ʈ��</li>
													<li>�켱����ť�� ��, �ؽ����̺�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<�ǽ�����><br/>
												<ul class="ul_dot_gray l">
													<li>ü�̴�, �����ּҹ�, ö�ڰ˻�</li>
													<li>����Ǯ��</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td class="darker c" scope="row" rowspan="2">4����</td>
											<td rowspan="2">�׷����� �⺻������ �����ϰ� �˰��� ���ɺм��� �н��Ѵ�.</td>
											<td>
												<��������><br/>
												<ul class="ul_dot_gray l">
													<li>�׷���, �׷�����ȸ, ��������, �ּҽ���Ʈ��, �����˰���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<�ǽ�����><br/>
												<ul class="ul_dot_gray l">
													<li>ī��-��� �˰���, ũ�罺Į�˰���, ���ͽ�Ʈ��˰���</li>
												</ul>
											</td>
										</tr>
<!--
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>�������� �� ���� ������ ��������, �ŵ�����, �Ǻ���ġ���� �н��Ѵ�.</li>
		<li>������ȹ���� �н��ϰ� LCS �˰����� �����غ���.</li>
		<li>�����ø��ǾƵ� ���⹮���� Ǯ���Ѵ�.</li>
	</ul>
</div>
-->
										<tr>
											<td class="darker c" scope="row" rowspan="2">5����</td>
											<td rowspan="2">
												���ڿ� �˰��� �� ���ϸ�Ī �˰��� ���ɺм��� �н��ϰ� ����Ǯ�̸� �����Ѵ�.
											</td>
											<td>
												<��������><br/>
												<ul class="ul_dot_gray l">
													<li>���ڿ��˻�, ���̾�-���� �˰���, �˰��� ���ɺм�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<�ǽ�����><br/>
												<ul class="ul_dot_gray l">
													<li>KMP�˰���, ��;˰��� ���ɺм�, ���ڿ� �˻�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="2">6����</td>
											<td rowspan="2">
												���������� ������ �м��ϰ� �پ��� ���� ���� �ɷ��� ����Ų��.
											</td>
											<td>
												<��������><br/>
												<ul class="ul_dot_gray l">
													<li>��������, ��� �˰����� �м�</li>
													<li>LCS �˰���, ������� ����</li>
													<li>������ �ڵ�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<�ǽ�����><br/>
												<ul class="ul_dot_gray l">
													<li>�����ø��ǾƵ� ���⹮��Ǯ��</li>
													<li>���� ���� TEST ����Ǯ��</li>
												</ul>
											</td>
										</tr>
<!--
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>������ȹ���� �н��ϰ� �پ��� ��ʸ� �����Ѵ�.</li>
		<li>�����ø��ǾƵ� ���⹮���� Ǯ���Ѵ�.</li>
	</ul>
</div>
-->
										<tr>
											<td class="darker c" scope="row" rowspan="2">7����</td>
											<td rowspan="2">
												Ž�� �˰���� ������ȹ���� �⺻������ �����ϰ� �پ��� ���������� �м��Ѵ�.
											</td>
											<td>
												<��������><br/>
												<ul class="ul_dot_gray l">
													<li>������ȹ��, Ž��˰���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<�ǽ�����><br/>
												<ul class="ul_dot_gray l">
													<li>�賶ä���, ����������, N-Queens</li>
													<li>������ �˰���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="2">8����</td>
											<td rowspan="2">
												���⹮���� �������� �������� ����Ǯ�̸� �����ϰ� �н������� �����Ѵ�.
											</td>
											<td>
												<��������><br/>
												<ul class="ul_dot_gray l">
													<li>����ũ�� ������, ü���� �̿��� ���׾˰���</li>
													<li>����ΰ���</li>
													<li>���� �湮 �˰���, �賶������ �̿��� ������ȹ��</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<�ǽ�����><br/>
												<ul class="ul_dot_gray l">
													<li>�����ø��ǾƵ� ���⹮��Ǯ��</li>
													<li>���� ���� TEST ����Ǯ��</li>
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

							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
						</div>
						<!-- con_wrap1709 -->

						<!-- �ڰ������� �Ұ� -->
						<!-- # i n clude virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCCPM.asp"-->
						<!-- /�ڰ������� �Ұ� -->

						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=DS_Intermediate" class="btn mid green1">�����ϱ�</a>
						</div>
						-->
					</section>
				</div>
				<!--<a href="#this" class="moveTop">Top</a>-->
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<!--<hr>-->
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>