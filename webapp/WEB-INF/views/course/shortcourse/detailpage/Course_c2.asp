<!DOCTYPE html>
<%
	'(old) �ڷᱸ�� �� �ʱ� �˰���
	'�ڷᱸ��
	CourseID = "cds2_core"
%>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<!-- �����޴��� ���������� �ش� ������ ÷���ϱ� ���� ����ϴ� �ҽ�
	<script type="text/javascript">
		$(document).ready(function(){
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
		});
	</script>
	-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="../../../../../../../../Desktop/shortcourse%20(2)/detailpage/Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [����] ��Ʈ�������� ON
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [����] ��Ʈ�������� SUB - OPEN
			$(".snb_1709 .newdepth3.newwrap.no4").addClass("on").removeClass("plus").addClass("minus");	// �ڷᱸ��/�˰��� ON
			$(".snb_1709 .newdepth4_wrap.no4").addClass("on").css('display','block');	// �ڷᱸ��/�˰��� ON
			$(".snb_1709 .newdepth4_wrap.no4 li:eq(0) a").addClass("on");				// �ڷᱸ�� ON
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<div id="Container_Wrap">
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ָ���
						</p>
						<h4>[�ָ���] �ڷᱸ��</h4>
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=cds2_core" class="btn mid green1 fl mar_l10">�����ϱ�</a>-->
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=cdsVacation" class="btn mid green1 fl mar_l10">�����ϱ�</a>-->
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
											<th scope="row" class="tit">��������</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__cds2_core.inc" -->
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__cds2_core.inc" -->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>300,000��</td>
											<th scope="row" class="tit">����������</th>
											<td>��뺸�� ��ȯ��</td>
										</tr>
										<tr>
											<th scope="row" class="tit">����</th>
											<td>30��</td>
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
						<!-- //con_wrap -->

						<div style="clear:both;"></div>

						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- �ε�� -->
						<div class="con_wrap1709">
							<h5>���� �ε��</h5>
							<div>
								<img src="img_Roadmap_C2.png" style="width:100%;"/>
							</div>
						</div>
						<!-- //�ε�� -->

<!--						
<div class="myBlackBox" style="font-size:13pt;">
	<p>�������� ������ ��ǻ�� �о��� �ʼ� ������ �Ǿ����ϴ�.</p>
	<p>������� �� ���α׷��� �ɷ��Դϴ�.</p>
	<p>�ɷ��� ���׷��̵��ϸ� ���α׷��� �ϼ��� ���ϴ�.</p>
	<p>�⺻�� �������� �н��� ���� �����Ͽ� �н������μ� ���� �ذ�ɷ��� ��� ��ŵ�ϴ�.</p>
</div>
-->					
						<!-- con_wrap -->
						<div class="con_wrap1709"> <!-- style="z-index:1;">--> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<!--<h5>���� �����ϸ� �������?</h5>-->
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>C programming ������ �����Ͻ� ��</li>
								<li>�ڷᱸ���� ���ؼ� �ڼ��� �н��� �ʿ��Ͻź�</li>
								<li>���α׷��� �� �ҽ��ڵ� �м� �ɷ� ����� ���Ͻô� ��</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:35%">
										<col style="width:55%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="c">��������</th>
											<th scope="col" class="c">������ǥ</th>
											<th scope="col" class="c">�������� �� �ǽ�����</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row"  class="c">1����</td>
											<td>
												�⺻�� �޸� ������ ����ü�� ����, �ڷᱸ���� �˰����� �⺻ ���� �н�
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>�޸� ����</li>
													<li>����ü</li>
													<li>�ڷᱸ���� �˰���</li>
													<li>���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">2����</td>
											<td>
												����Ʈ�� ���� ���ؿ� �ǽ�
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>�̱۸�ũ�帮��Ʈ</li>
													<li>�迭</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">3����</td>
											<td>
												������ ���ĵ��� �������ν� ������ ����� ������ ���α����� �м�<br/>
												���̺귯�� �Լ��� ������� �˾ƺ���.
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>����,����,����,���԰���,��,��(���̺귯����),�պ�</li>
													<li>���̺귯�� qsort()</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">4����</td>
											<td>
												ȯ���� ����ũ�� ����Ʈ ���� �н�
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>ȯ����ũ�� ����Ʈ �׸��׸���</li>
													<li>����ũ�� ����Ʈ ���ؿ� �ǽ�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">5����</td>
											<td>
												�ý����� �� ������ ���� ������ ����<br/>
												ť�� �⺻����� ������ �������α׷� �н� 
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>��Ʈó���ǽ�, �ý��� �� ����, �����Ϸ� ���� ��� ��</li>
													<li>ť, ť�� �̿��� ������� ���� �ǽ�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">6����</td>
											<td>
												Ʈ�� ������ ����  Ʈ���� Ž��
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>tree����, Ʈ����ȸ, ����Ʈ��</li>
													<li>���� Ž��, ����Ž�����ؿ� ����</li>
													<li>bsearch()�Լ� ����ϱ�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">7����</td>
											<td>
												����Ž��Ʈ���� ������ ����
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>����Ž��Ʈ�� ���ؿ� ����
													<li>red-blackƮ��
													<li>�ؽ��� ���ؿ� �ǽ�
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">8����</td>
											<td>
												�׷����� ǥ���� ����, �͸���Ž���� ������Ž�� �н�
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>Ŀ���� ����ũ�� ����Ʈ ���ؿ� �ǽ�</li>
													<li>���ͽ�Ʈ��, A-star �˰���</li>
													<li>������Ʈ �ǽ�</li>
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