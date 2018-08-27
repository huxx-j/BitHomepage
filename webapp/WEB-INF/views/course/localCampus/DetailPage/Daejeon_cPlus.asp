<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
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
	<!-- .btn_refundView �� .btn_refundView2�� /JS/Common.js �� �̺�Ʈ�ڵ鷯 ���� -->
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			/* page load ���� SNB ���� */
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap .newdepth2").eq(1).addClass("on");  			// [����] ����ķ�۽�
			$(".snb_1709 .newdepth3_wrap.no2").addClass("on").css('display','block');	// [����] ����ķ�۽� SUB - OPEN
			$(".snb_1709 .newdepth3_wrap.no2 .newdepth3:eq(2)").addClass("on");		// C++ ���α׷��� ON 
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<style>
	/* white and narrowSNB */
	#SNB_Wrap_1702 { background:#ffffff !important; width:195px !important; }
	.moveTop { width:195px !important; background:#17538e url('/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
</style>

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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[����]����ķ�۽�
						</p>
						<h4>C++ ���α׷���</h4>
					</div>
					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<!-- # i n c lude virtual="/Include/CourseDateTime/LocalCampus_Daejeon_Cpp_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DJ_Cpp.inc" -->
												<!--2018.01.11(��) ~ 2018.01.30(ȭ)-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<!--
											<th scope="row" class="tit">�����</th>
											<td>19:00 ~ 22:00 (3�ð�)</td>											
											-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DJ_Cpp.inc" -->
												<!--09:00 ~ 13:00 (4�ð�)-->
											</td>
										</tr>
										<!-- ����ķ�۽� C++ Programming -->

										<tr>
											<th scope="row" class="tit">������</th>
											<td>300,000��</td>
											<th scope="row" class="tit">��������</th>
											<td> 02-3486-7588</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">��������</th>
											<td colspan="4">Java Programming</td>
										</tr>
										<tr>
											<th scope="row" class="tit" rowspan="3">��������</th>
											<td rowspan="3">
												<ul>
													<li>2015.07.13 ~ 2015.07.31</li>
												</ul>
											</td>
											<th scope="row" class="tit" rowspan="3">���ǽð�</th>
											<th scope="row" class="tit">������</th>
											<td>09:00 ~ 12:00 (3�ð�)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">���Ĺ�</th>
											<td>14:00 ~ 17:00 (3�ð�)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">�����</th>
											<td>19:00 ~ 22:00 (3�ð�)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>300,000��</td>
											<th scope="row" class="tit" colspan="2">��������</th>
											<td> 02-3486-3456</td>
										</tr>
										-->
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_localCampus.asp" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>

							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p class="mar_b10">�� ������ ����Ʈ���� ���� ���� �� ��ü ���� ���� ������� �����Ͽ�, C++�� ���� ��ü���� ���α׷��� ����� ������, Ŭ���� ���̺귯�� ���� �� ��ü ���� ����Ʈ��� �ۼ��� �� �ֵ��� �����Ͽ� C++ ���α׷��ְ� UML�� Ȱ���� �ǽ� ������ ������ ���� �ǹ� ������Ʈ�� ���� �������� ����ų �� �ֵ��� �����Ǿ� �ֽ��ϴ�.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>C++ ���α׷����� �������� �帧 �ľ�</li>
								<li>��ü���� ���α׷��� �ɷ� �Ծ�</li>
								<li>���α׷��� ���� ������ ���� �� Ȱ�� �ɷ� �Ծ�</li>
								<li>������ ������ �ǹ� ������Ʈ ������ ���</li>
								<li>�ó������� ���� �� ���� �������� �ؾ� �� �ϵ��� �����̰� ��� �� ������ �ϴ����� �ǽ� ������ ���Ƿ� ���� (�̷� : �ǽ� = 3 : 7)</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<ul class="ul_dot_gray">
								<li>C����, C�⺻����</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>���������� ���� �ھ絿 52-2 ���IT�������� 3��<img style="margin-top:-68px; height:100px;" src="img_qrcode_Daejeon.jpg"/></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<caption>C++ Programming Ŀ��ŧ��</caption><!--ver20160730-->
									<colgroup>
										<col style="width:15%">
										<col style="width:35%">
										<col style="width:50%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">������</th>
											<th scope="col">������</th>
											<th scope="col">��������</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" rowspan="8">�⺻</td>
											<td rowspan="4">C ���� ���� C++</td>
											<td>�ٽ� ���� C����</td>
										</tr>
										<tr>
											<td>C���� �ٸ� C++ ���� �� ��ü����</td>
										</tr>
										<tr>
											<td>�����, �Լ� �����ε�, ���۷���</td>
										</tr>
										<tr>
											<td>new, delete ������</td>
										</tr>
										<tr>
											<td rowspan="4">Class</td>
											<td>Encapsulation, Information Hiding</td>
										</tr>
										<tr>
											<td>�����ڿ� �Ҹ���, ���� ������</td>
										</tr>
										<tr>
											<td>��� �Լ��� ��� ��ü</td>
										</tr>
										<tr>
											<td>static ���</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="7">��ȭ</td>
											<td rowspan="3">Inheritance</td>
											<td>���� �����ڿ� ���� ������</td>
										</tr>
										<tr>
											<td>override function</td>
										</tr>
										<tr>
											<td>up-casting, binding, virtual function</td>
										</tr>
										<tr>
											<td rowspan="3">Operator Overloading</td>
											<td>������ ������ ����, ���� ���� ������</td>
										</tr>
										<tr>
											<td>���Կ����� / <<,>> ������ / �迭������ / ��ȯ������</td>
										</tr>
										<tr>
											<td>new/delete�� ������</td>
										</tr>
										<tr>
											<td>Template</td>
											<td>�Լ� template / Ŭ���� template</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="4">Ȱ��</td>
											<td rowspan="4">STL</td>
											<td>Iterators</td>
										</tr>
										<tr>
											<td>Sequence Algorithms / Sequence Containers</td>
										</tr>
										<tr>
											<td>Associative Containers</td>
										</tr>
										<tr>
											<td>Adaptors</td>
										</tr>
									</tbody>
								</table>
							</div>
							
							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.3456 &nbsp;(kang.i.y@bit.kr)</p>-->
						</div>
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