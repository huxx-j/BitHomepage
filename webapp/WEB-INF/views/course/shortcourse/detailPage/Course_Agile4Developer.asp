<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "Agile"
SubjectName = "Agile ����Ʈ���� ���� �ǹ�"
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

			$(".snb_1709 a.newdepth1").eq(5).addClass("on");								// Project Management
			$(".snb_1709 .newdepth2_wrap").eq(5).addClass("on");						// Project Management SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no6 .newdepth2").eq(0).addClass("on");  	// Agile ����Ʈ���� ���� �ǹ� ON
			
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
		<div id="Container_Wrap" style="min-height:1000px;">
			
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Project Management
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
											<th scope="row" class="tit">��������</th>
											<td>
												<ul>
													<li>����</li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>19:00 ~ 22:00 (1�� 3�ð�)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>600,000��<!--<span class="greenTxt"> ���ϸ��� 5%���� (25,000��)</span>--></td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<!--<td colspan="3">���ιٿ�ó = �켱��������� ���� : 263,520��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>-->
											<!--<td colspan="3">�ٷ���ī�� / �ٿ�ó : 263,520�� | ����� �Ʒ� : �켱������� ������� 263,520��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>-->
											<td colspan="3">��뺸�� ��ȯ��<!--�ٷ���ī��(������ : 175,770�� | �������� : 219,720��) | ����� ȯ�� : �ִ� 219,720�� <a href="#this" class="mar_l10 btnBlueBorder small btn_refundView">ȯ�޳��� �ڼ�������</a>--></td>
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
								������(agile) ���� ���� ����Ʈ���� ���߽��忡�� �����ް� �ִ�  ���߹�������� Ư��  �ұԸ� ������Ʈ���� ���� ������ ���ϰ� �־� ����Ʈ���� ���� ���忡�� �� ������ ���� �������� �ֽ��ϴ�. �׷��� ���� ����Ʈ���� ���� �������� ���� ������ ���� �ǹ� ��ü���ٴ� �������� ��ġ�� ���� ����� �����ϴ� ���ؿ� �ӹ����� �ִ� ���� �����Դϴ�.<br/>
								�� ���������� �������� ������ �ϴ� ������ Ȥ�� ������ ���� �ǹ��� �����ϴ� �����ڸ� ���� ������������ Scrum�� ������� ������ �ǹ� ��ʸ� �پ��ϰ� ���������ν� ������ ���� �ǹ��� ��ü���̰� ���������� �����ϴ� �� ������ �ݴϴ�. 
							</p>
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="���μ����ð�ȭ, �ҽ��ڵ� �ð�ȭ, �ҽ��ڵ� ����ȭ, ���μ��� ����ȭ"></p>-->
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>���� ��ǥ</h5>
							<p></p>
						-->
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="���μ����ð�ȭ, �ҽ��ڵ� �ð�ȭ, �ҽ��ڵ� ����ȭ, ���μ��� ����ȭ"></p>-->
						<!--
						</div>
						-->
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� ���</h5>
							<ul class="ul_dot_gray">
								<li>�������� ��õ�ϰ��� �ϴ� ��,�߱� ������</li>
								<li>������ ���� ������ �����ϰ��� �ϴ� ������</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
																		
						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>���γ���</h5>
							<ul class="ul_dot_gray">
								<li>1. �˻� �����̶�? </li>
								<li>2. �˻� ���� ����� �䱸 �м� �� ����</li>
								<li>3. �˻� ���� ����� ��Ű���ĸ�</li>
								<li>4. DB ����</li>
								<li>5. Core �˻� ���� ������Ʈ �����</li>
								<li>6. �˻� �κ� �����</li>
								<li>7. ���¼� �м��� �����</li>
								<li>8. ���α� �����</li>
								<li>9. ��Ŀ �����</li>
								<li>10. �˻� ���� ���񽺸� �̿��ϴ� ���� �����</li>
							</ul>
						</div>
						-->
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>���ǿ��� : �̷� / �ǽ�</h5>
							<p>
								�� ���Ǵ� ũ�� �̷а� ���� ����� �ǽ� �� ���� ������� �����Ѵ� ���� �˻� ������ �Ұ����� �̷��� �ٷ�� ���Ŀ� ������ ���� ����п� �ǰ��Ͽ� �ܰ� ���� ���̾�׷��� �ۼ��ϰ� �̿� �°� ���α׷��� �ǽ����� �̷������. �� ������ ���� ���� ������ �پ��� ������ ���� ���� ��� ������Ʈ���� ȿ������ �˻� ���񽺸� �����ϴ� ����� ���� �� �ִ�								
							</p>							
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>���� ����</h5>
							<ul class="ul_dot_gray">
								<li>OOP ���(C++, Java, C#)</li>
								<li>SQL(MySQL, Oracle, MS SQL)</li>
							</ul>
						</div>
						-->
						<!-- //con_wrap1709 -->
						
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:30%">
										<col style="width:70%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col"></th>
											<th scope="col">���� ����</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row">1~2����</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>������ ����� ����</li>
													<li>Scrum ���� ���μ���</li>
													<li>�䱸�� ��α�</li>												
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">3~4����</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>����� ���丮 �ۼ�</li>
													<li>����� ���丮 ����</li>
													<li>������Ʈ0: ����Ʈ���� ��Ű��ó</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">5~6����</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>������ ��Ű��ó ����</li>
													<li>������ ��Ű��ó ����ȭ</li>
													<li>������ ��Ű��ó ��</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">7~8����</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>������Ʈ #: �м��� ����, �𵨸� </li>
													<li>������ �ֵ� ����</li>
													<li>������ ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">9~10����</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>������ ����</li>
													<li>�����丵</li>
													<li>�׽�Ʈ �ֵ� ����</li>
													<li>������ ����</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
								<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.3456 (bithrd@bit.kr)</p>
								-->
								<!-- �󰭾ȳ� ���� -->
								<div style="float:right; margin-top:18px; font-size:15px;">
									<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
								</div>
								<div style="clear:both;"></div>

							</div>
						</div>
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=Agile" class="btn mid green1">�����ϱ�</a>
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