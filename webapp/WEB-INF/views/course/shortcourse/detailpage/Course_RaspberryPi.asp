<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "RaspberryPi"
SubjectName = "���¼ҽ� ����� ���̸� Ȱ���� IoT ����"
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

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(8).addClass("on");								// Embedded 
			$(".snb_1709 .newdepth2_wrap").eq(8).addClass("on");						// Embedded - OPEN
			$(".snb_1709 .newdepth2_wrap.no9 .newdepth2").eq(0).addClass("on");  	// ���¼ҽ� ����� ���̸� Ȱ���� IoT ���� ON
			
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap" style="min-height:1600px;">
			
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Embedded
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
											<td>
												<ul>
													<!--<li>2016.09.01 ~ 2016.09.23 (13��)</li>-->
													<li>����</li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<!--<td>19:00 ~ 22:00 (1�� 3�ð�)</td>-->
											<td>����</td>
											
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>390,000��<!--550,000��--><!--<span class="greenTxt"> ���ϸ��� 5%���� (27,500��)</span>--></td>
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
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_12.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p>
							ó������ ��� ��ǻ�Ͱ�, �׸��� ��� ���� ���ͳݿ� ����Ǵ� �ô븦 ���� ��� �繰���� ���ͳݿ� ����ǰ� �ִ� ���ó��� ICT ȯ�濡�� IoT�� �ٽ��� ����̽� ������
							������Ÿ�� ����̽��� ���¼ҽ� �ϵ����鿡 ���� ������ ���� �����ϰ� �ִ�. �� �� ��������̿� ��������� �� ���߾���� ���̽��� �����Ͽ� �ܺ� ������� ������ 
							���� ����/���߿����� ���� �׸��� �ٸ� ����̽������ ����� ���� ��Ʈ��ũ ���α׷��ֵ� ��������̿��� ���α׷��� �ۼ��ϴ� ����� ��� �ϵ���� + ����Ʈ���� + ���񽺰� 
							���յ� IoT���񽺸� ��ȹ�ϰ� ���� ������ �����ν� IoT�� ü���ϰ� �����ϴ� �����̴�.
							</p>
						</div>
						
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<p>
								1. �Ƶ��̳�, ��������̿� ���� ���� �ҽ� �ϵ���� �÷���(OSHW)�� �̿��Ͽ� �츮�� �ֺ��� ��ȣ�ۿ� ������ �Ӻ���� ��ġ�� ������ ����.<br/>
								2. �̷а� �ǽ��� ������ �й������ν� ���������� ���� ���¼ҽ� �ϵ��� ������ �� �ֵ��� ���´�.<br/>
								3. �ǽ� ������ ���� ������� ��� ������� ���������� �ٷ�� �ֱ� ������ �Թ��ڻӸ� �ƴ϶� �߱� �̻��� ����ڿ��Ե� ������ �� �� �ִ�.
							</p>
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="���μ����ð�ȭ, �ҽ��ڵ� �ð�ȭ, �ҽ��ڵ� ����ȭ, ���μ��� ����ȭ"></p>-->
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>���¼ҽ� �ϵ����, IoT �� ���� �ִ� ������ </li>
								<li>�ܼ��� Service���� ���ư� H/W �� ���յ� �ڽŸ��� ���񽺸� ������� �ϴ� ������ </li>
								<li>Python���� �������࿡�� �ϵ���� ������� �غ��� ���ϴ� ������ </li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<ul class="ul_dot_gray">
								<li>C, Java, JavaScript, Python �� ���α׷��� ���� ������� �ణ�� ���α׷��� ����</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<ul class="ul_dot_gray">
								<li>IoT �� ���� �ҽ� �ϵ���� ����
								<li>��������� ��ġ</li>
								<li>������ ����   </li>
								<li>Python �⺻ ���α׷���</li>
								<li>Python �� ���α׷���</li>
								<li>������/�Ƴ��α� �����</li>
								<li>����/���߿����� ����</li>
								<li>��� ����/���߿����� ����</li>
								<li>��������� Ȱ�� ������Ʈ</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>���γ���</h5>
							<ul class="ul_dot_gray">
								<li>���� ����ȸ�� �̷�</li>
								<li>���¼ҽ� �ϵ���� �÷��� �Ұ�</li>
								<li>�Ƶ��̳�, ���������, ��ۺ� �� ���� ���� ������� ���� </li>
								<li>���հ���ȯ�� ���� </li>
								<li>LED ���� �ǽ�</li>
								<li>���ڽ� �µ��� ����� �ǽ�</li>
								<li>�Ƶ��̳� ���� �Ұ�</li>
								<li>���������� ���� �����ϱ�(���ܼ�, ���귯, Ethernet, XBee�� �̿�)</li>
								<li>���� �ùķ��̼� ����� �ǽ�</li>
								<li>�Ƶ��̳�� ��������� �����ϱ�</li>								
							</ul>
						</div>
						-->
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���ǿ���</h5>
							<ul class="ul_dot_gray">
								<li>�̷� / �ǽ�</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��� �ǽ�������</h5>
							<ul class="ul_dot_gray">
								<li>�Ƶ��̳� ����, ��������� ����, �Ƶ��̳� ���հ���ȯ��, �̴��� ����, �����佯��, ����, ���� ���ں�ǰ��(Ŀ�н���, LED, ���ױ� ��)</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
												
						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>Ŀ��ŧ��</h5>
							<table class="table_col_type2">
								<caption>Software Visualization Ŀ��ŧ��</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:30%">
									<col style="width:40%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" colspan="2">����</th>
										<th scope="col">�н�����</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" rowspan="5">1����</th>
										<td>09:30 ~ 10:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>���������̼�</li>
												<li>SW Visualization ����</li>
												<li>������ SW ���� ����</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>10:30 ~ 12:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>����Ʈ���� �������μ���</li>
												<li>����Ʈ���� ���� ��� ��ʰ� �û��ϴ� SW Quality Insights</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>12:30 ~ 13:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>���ɽð�</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>13:30 ~ 15:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>SW �ڻ� ����</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>15:30 ~ 17:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>Daily Build �����ϱ�</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="5">2����</th>
										<td>09:30 ~ 10:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>�� �䱸�� SW ��������� �����ϴ� ���</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>10:30 ~ 12:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>����Ʈ���� ���� ��ǥ�� �����ϴ� ���</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>12:30 ~ 13:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li> ���ɽð�</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>13:30 ~ 15:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>�ڵ� ����ȭ(Code Visualization)</li>
												<li>�ڵ� ���� ü��ȭ</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>15:30 ~ 17:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>������ SW ���� ���</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="5">3����</th>
										<td>09:30 ~ 12:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>SW ���� ���� �����ϱ�</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>12:30 ~ 13:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>���ɽð�</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>13:30 ~ 15:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>SW Visualization�� ������ ������Ʈ ��ȹ ����</li>
												<li>SW Visualization �������� ���</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>15:30 ~ 16:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>SW Visualization�� ���� SP���� ȹ���ϱ�</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>16:30 ~ 17:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>Q&amp;A</li>
												<li>���� ���� ����</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
							<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.1423</p>
						</div>
						-->
						<!-- con_wrap1709 -->
						
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=RaspberryPi" class="btn mid green1">�����ϱ�</a>
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