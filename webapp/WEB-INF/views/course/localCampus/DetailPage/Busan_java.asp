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

			/* page load ���� SNB ���� */
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap .newdepth2").eq(2).addClass("on");  			// [�λ�] �λ�ķ�۽�
			$(".snb_1709 .newdepth3_wrap.no3").addClass("on").css('display','block');	// [�λ�] �λ�ķ�۽� SUB - OPEN
			$(".snb_1709 .newdepth3_wrap.no3 .newdepth3:eq(2)").addClass("on");		// Java ���α׷��� ON 
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[�λ�]�λ�ķ�۽�
						</p>
						<h4>JAVA ���α׷���</h4>
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
										<!-- # i n c lude virtual="/Include/CourseDateTime/LocalCampus_Busan_Java_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__BS_Java.inc" -->
												<!--2018.01.10(��) ~ 2018.01.23(ȭ)-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<!--
											<th scope="row" class="tit">�����</th>
											<td>19:00 ~ 22:00 (3�ð�)</td>											
											-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__BS_Java.inc" -->
												<!--09:00 ~ 16:00 (6�ð�)-->
											</td>
										</tr>
										<!-- �λ�ķ�۽� JAVA Programming -->
										
										<tr>
											<th scope="row" class="tit">������</th>
											<td>300,000��</td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-7588</td>
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
							<p class="mar_b10">�� ������ �ڹ� ���α׷��� ��ü���������� ����� ����� ���ؼ� �н��ϰ�, �ڷᱸ���� ���ؼ� �����ϰ� �ڹٸ� �̿��� �̸� ���� �����غ��� Collection �����ӿ�ũ�� ������ Ȱ���ϰ� ����� ���α׷��� ���ؼ� �����ϰ� java.io ��Ű���� �����Ǵ� �پ��� ����� Ŭ������ Ư¡�� �н��ϸ� �����带 �����ϰ� �ǹ��� ������ �� �ֵ��� �ϸ� ��Ʈ��ũ�� ���ؼ� �����ϰ� ���ڼ��� �� ä�ü��� ���α׷��� �ۼ��Ѵ�.
							���α׷��� �ʼ����� ����� �����ͺ��̽��� �ڹٰ��� ������ ���� �ǹ��� ���� ������ ���α׷����� ���� �� �ֵ��� �ɷ��� �� �ܰ� ���׷��̵� �� �� �ִ� �����̴�.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>�ڹ� ���α׷��� ��ü���������� ����� ����� ���ؼ� �н��Ͽ� ������ �� �ִ�. </li>
								<li>�ڷᱸ���� ���ؼ� �����ϰ� �ڹٸ� �̿��� �̸� ���� �����غ��� Collection �����ӿ�ũ�� ������ Ȱ���� �� �ִ�.</li>
								<li>����� ���α׷��� ���ؼ� �����ϰ� java.io ��Ű���� �����Ǵ� �پ��� ����� Ŭ������ Ư¡�� ������ �� �ִ�. </li>
								<li>�����带 �����ϰ� �ǹ��� ������ �� �ִ�. </li>
								<li>��Ʈ��ũ�� ���ؼ� �����ϰ� ���ڼ��� �� ä�ü��� ���α׷��� �ۼ��� �� �ִ�. </li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>Java �� ó�� ���ô� ��</li>
								<li>Java ����� ���� �������� �����Ϸ��� �� </li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>�λ�ܴ� ��Ʈ��������<img style="margin-top:-68px; height:100px;" src="img_qrcode_Busan.jpg"/></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<caption>Java Programming Ŀ��ŧ��</caption>
									<colgroup>
										<col style="width:20%">
										<col style="width:20%">
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
												<td class="darker c" rowspan="4">Java Beginning</td>
												<td rowspan="4">�ڹ� �⺻����</td>
												<td class="l">�ڹ��� ����� ���� ȯ�� ����, �������� ������ ���� �ڹ��� �ڷ����� �н��Ѵ�.</td>
											</tr>
											<tr>
												<td class="l">�����͸� �����ϱ� ���� ������, �ʿ��� �۾����� ���������� �ؾ� �� ��� ����ϴ� ���ù� �н��Ѵ�.</td>
											</tr>
											<tr>
												<td class="l">Ư�� �κ��� ������ �ݺ��ϰ� ����� �ִ� �ݺ��� �н� �Ѵ�.</td>
											</tr>
											<tr>
												<td class="l">�ڷ����� ������ ���� ���� ���� ���̾� ������ �� �ֵ��� �ϴ� ��� ������ ����ü�� �迭�� �޼ҵ� ���ǿ� ȣ������ ������</td>
											</tr>
											<tr>
												<td class="darker c" rowspan="6">Java Fundamental </td>
												<td rowspan="2">��ü ���� ���α׷���</td>
												<td class="l">��ü������ ����� Ŭ���� ����, ��ü �ν��Ͻ� ���� �н��Ѵ�.</td>
											</tr>
											<tr>
												<td class="l">��ü������ ����� Ŭ���� ����, ��ü �ν��Ͻ� ���� �н��Ѵ�.</td>
											</tr>
											<tr>
												<td rowspan="4">���</td>
												<td class="l">�ڵ� ��Ȱ���� ���� ����� �����Ѵ�.</td>
											</tr>
											<tr>
												<td class="l">�޼ҵ� �������̵��� ��ĳ���� �ٿ� ĳ������ �н��Ѵ�.</td>
											</tr>
											<tr>
												<td class="l">�߻� Ŭ������ �����ϰ� �����ϴ� ����� ������.</td>
											</tr>
											<tr>
												<td class="l">�������̽��� ����� ���� ��ӿ� ���� �˾ƺ���.</td>
											</tr>
											<tr>
												<td class="darker c" rowspan="10">Java Advanced</td>
												<td rowspan="3">�ڹ� �ֿ� Ŭ����</td>
												<td class="l">�ڹ� ��Ű�� �� ���� ���Ǵ� Ŭ������ ���ɴ�.</td>
											</tr>
											<tr>
												<td class="l">�ڷᱸ���� �÷��ǿ� ���ؼ� �н��Ѵ�.</td>
											</tr>
											<tr>
												<td class="l">�ڹ�Ŭ���� �ǽ�</td>
											</tr>
											<tr>
												<td rowspan="5">IO/������</td>
												<td class="l">����� ���α׷��� ���ؼ� �����Ѵ�</td>
											</tr>
											<tr>
												<td class="l">java.io ��Ű���� �����Ǵ� �پ��� ����� Ŭ������ Ư¡�� ������ �� �ִ�.</td>
											</tr>
											<tr>
												<td class="l">�����带 �����ϰ� �ǹ��� ������ �� �ִ�.</td>
											</tr>
											<tr>
												<td class="l">��Ƽ������ ���α׷����� �н��Ѵ�.</td>
											</tr>
											<tr>
												<td class="l">�������� ����ȭ�� ���ؼ� �н��Ѵ�</td>
											</tr>
											<tr>
												<td rowspan="2">��Ʈ��ũ</td>
												<td class="l"> ��Ʈ��ũ�� ���ؼ� �����ϰ� ���ڼ����� �ۼ��� �� �ִ�. </td>
											</tr>
											<tr>
												<td class="l">ä�ü��� ���α׷��� �ۼ��� �� �ִ�.</td>
											</tr>
										</tbody>
								</table>
							</div>
							<!--<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.1422</p>-->
						</div>
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_localCampus.asp" class="btn mid green1">�����ϱ�</a>
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