<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "db_modeling_core"
SubjectName = "�����ͺ��̽� �𵨸�"
%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel= "shortcut icon" href="/images/favicon.ico">
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
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			$(".snb_1709 a.newdepth1").eq(4).addClass("on");								// Database
			$(".snb_1709 .newdepth2_wrap").eq(4).addClass("on");						// Database SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no5 .newdepth2").eq(1).addClass("on");  	// �����ͺ��̽� �𵨸� ON
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Database
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__db_modeling_core.inc" -->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<!--<td>��4��(��,ȭ,��,��) 2�ְ�<br/>19:00 ~ 22:00 (1�� 3�ð�)</td>-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__db_modeling_core.inc" -->
												<!--19:00 ~ 22:00 (1�� 3�ð�)-->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>240,000��<!--500,000��--><!--<span class="greenTxt"> ���ϸ��� 5%���� (25,000��)</span>--></td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<!--<td colspan="3">����� �Ʒ� : �켱������� ������� 165,691��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>-->
											<td colspan="3">��뺸�� ��ȯ��<!--�ٷ���ī�� (������ : 126,210�� | �������� : 157,770��) | ����� ȯ�� : �ִ� 157,770��<a href="#this" class="mar_l10 btnBlueBorder small btn_refundView">ȯ�޳��� �ڼ�������</a>--></td>
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
							<!-- #include virtual="/Common/Tab/refundInfo_1234.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p>
								�� ������ �ֱ� �� ������� �ֿ� ���ɻ�� �������� �ִ� ����Ͻ� ���μ��� ����(BPM) ����� ����� �ٽ� �������� �� �� �ִ� �����ͺ��̽� ��Ű��ó�� ������ �н������ν�, ����� ���� ����ڵ鿡�� ����Ͻ� ���μ��� ������ ���� ü������ �̷а� ����� �Ұ��ϰ� �̸� �����ͺ��̽��� �����ϰų� �ƴϸ� ������ ����Ǿ��ִ� �ý��۰� ����Ͻ� ���μ����� �������Ѽ� ����� ȿ������ ���� ������ �����ϴ� ����� �н��ϰ� �ȴ�. <br/>
								����Ͻ� ���μ����� �����ϱ� ���� �𵨷� BPMN 2.0�� ����ϰ� �ִµ�, BPMN(Business Process Modeling and Notation)�� OMG(Object Management Group, UML ǥ��ȭ �ְ���ü)���� ������ ����Ͻ� ���μ����� ǥ���ϱ� ���� ���ο� ���� ǥ�� ǥ������� ���� �ֽ� ������ 2011�� 1���� ������� BPMN 2.0�̴�. <br/>
								�̷��� BPMN 2.0�� ����Ͻ� ���μ����� ǥ���ϱ� ���� �ξ� �� �����ϰ� �پ��� ǥ����� ����������, �̷��� �ۼ��� ���̾�׷��� ��Ÿ������(UML)�� �����ͺ��̽� �𵨸��� ������ų �� �ֵ��� �ϱ� ���� ��Ÿ������ ������ ���� ���ǵ� ��ȭ�Ǿ��� ������ ������ ������������ ��Ű��ó�� �ٽ� ǥ����̶� �� �� �ִ�. <br/>
								�׷��Ƿ� �� ������ �̼��ϰ� �Ǹ�, ����ڴ� ����� �ٽ� �������� �� �� �ִ� ����Ͻ� ���μ����� BPMN 2.0�� ���ؼ� ��Ȯ�� �����ϰ� �̸� ȿ�������� ������ �� �ִ� ���ܰ� ����� ���� �� ������, �̸� ����� �ٽ� �������� �����ͺ��̽� ��Ű��ó�� �����ϰ� �����ϴ� ����� ���ؼ��� �н��ϰ� �ȴ�.
							</p>							
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<p>
								�� ������ ���� �����ͺ��̽� ����� ������ ��ü ���̾ƿ��� �ǹ��� �����ϸ鼭 �߻��ϴ� �پ��� ���� ��ũ�� ���� ü�������� �н��� �� ������, ������ ǥ��ȭ�� �̸� �����ϴ� ��� ���� �н������ν� ���� ������ ������ ǰ������ ������ Ű�� �� �ִ�.
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<p>��� �����ͺ��̽� �н��� �� ���α׷� ������</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� ���� (�� ���ι���)</h5>
							<p>�����ͺ��̽� �� ���α׷� ����</p>
						</div>
						<!-- //con_wrap1709 -->

						<div class="con_wrap1709 dnone">
							<h5>������</h5>
							<div class="divTable">
								<style>
									table th, table td {
										text-align:center;
									}
								</style>
								<table>
									<colgroup>
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
									</colgroup>
									<tr>
										<th>1��</th>
										<th>2��</th>
										<th>3��</th>
										<th>4��</th>
										<th>5��</th>
										<th>6��</th>
										<th>7��</th>
										<th>8��</th>
										<th>9��</th>
										<th>10��</th>
										<th>11��</th>
										<th>12��</th>
									</tr>
									<tr>
										<td></td>
										<td>2/19</td>
										<td></td>
										<td></td>
										<td>5/9</td>
										<td></td>
										<td></td>
										<td>8/20</td>
										<td></td>
										<td></td>
										<td>11/5</td>
										<td></td>
									</tr>
								</table>
							</div>
						</div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:20%">
										<col style="width:25%">
										<col style="width:55%">
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
											<td class="darker c" scope="row" rowspan="2">BPMN�� EA</td>
											<td class="darker c" scope="row">BPMN �Ұ�</td>
											<td>
												<ul class="ul_dot_gray">
													<li>����Ͻ�  ���μ��� ����(BPM) ����</li>
													<li>BPMN(Business Process Modeling and Notation) �Ұ�</li>
													<li>������������ ��Ű��ó(Enterprise Architecture) �Ұ�</li>
													<li>BPMN�� BPEL �׸��� SOA ��Ű��ó</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">BPMN ǥ���</td>
											<td>
												<ul class="ul_dot_gray">
													<li>����Ʈ����(Gateway)</li>
													<li>�̺�Ʈ(Event)</li>
													<li>���� ��(Collaboration)</li>
													<li>��Ƽ��Ƽ(Activity)</li>
													<li>���� ó��(Exception Handling)</li>
													<li>Ʈ�����(Transaction)�� ����(Compensation) ���μ���<br/>- ���� ���μ��� ���� ȣ��</li>
													<li>���μ��� ���� ������ ��ü(Data Object)</li>												
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="3">������ ������ �𵨸�</td>
											<td class="darker c" scope="row">������ ǥ��ȭ</td>
											<td>
												<ul class="ul_dot_gray">
													<li>������ ǰ�� ����</li>
													<li>������ ��� �м�</li>
													<li>������ ǥ��ȭ ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">������ �����ͺ��̽� �Ұ�</td>
											<td>
												<ul class="ul_dot_gray">
													<li>������ �𵨸��̶�?</li>
													<li>������ �����ͺ��̽� ���� �ý��� </li>
													<li>������ ���� ������ �����ͺ��̽��� ���� ����</li>
													<li>������ ���Ἲ</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">������ ���Ἲ</td>
											<td>
												<ul class="ul_dot_gray">
													<li>���� ���Ἲ</li>
													<li>��ƼƼ ���Ἲ</li>
													<li>������ ���Ἲ</li>
													<li>����� ���� ���Ἲ</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="3">������ �𵨸�</td>
											<td class="darker c" scope="row">������ ������ �𵨸�</td>
											<td>
												<ul class="ul_dot_gray">
													<li>������ ������ �𵨸� ����</li>
													<li>��ü ����</li>
													<li>�Ӽ� ����</li>
													<li>�ĺ��� ����</li>
													<li>���� ����</li>
													<li>���� ����</li>
													<li>���ü� ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">���� ������ �𵨸�</td>
											<td>
												<ul class="ul_dot_gray">
													<li>���� ������ �𵨸� ����</li>
													<li>�������� ����</li>
													<li>�� 1 ������</li>
													<li>�� 2 ������</li>
													<li>�� 3 ������</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">������ ������ �𵨸�</td>
											<td>
												<ul class="ul_dot_gray">
													<li>������ ������ �𵨸� ����</li>
													<li>������ ��뷮�� ����ڵ��� ���μ��� �м�</li>
													<li>������ȭ ���</li>
													<li>���̺� ���輭 �ۼ�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="3">�𵨸� �ǽ�</td>
											<td class="darker c" scope="row">�𵨸� �� �����</td>
											<td>
												<ul class="ul_dot_gray">
													<li>�𵨸� ���� ���� �Ұ�</li>
													<li>��ġ �� ȯ�� ����</li>
													<li>��� ��� �Ұ�</li>
													<li>�𵨸� ���� �ۼ�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">�뿩 �� �𵨸� �ǽ�</td>
											<td>
												<ul class="ul_dot_gray">
													<li>���� �м� �� ���� ���μ��� �𵨸�</li>
													<li>������ ǥ��ȭ ���</li>
													<li>������ ������ �𵨸�</li>
													<li>���� ������ �𵨸�</li>
													<li>������ ������ �𵨸�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">�𵨸� �ǽ�</td>
											<td>
												<ul class="ul_dot_gray">
													<li>���ͳ� ���� ������  �𵨸� �ǽ�</li>
													<li>�¶��� ��� ������  �𵨸� �ǽ�</li>
												</ul>
											</td>
										</tr>
										
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
								<p class="mar_t10"><span class="fb">����</span> : 02.3486.3456 <span>(e-mail : bithrd@bit.kr)</span></p>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=db_modeling_core" class="btn mid green1">�����ϱ�</a>
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