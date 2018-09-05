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

	<!-- ������Ʈ ���캸�� -->
	<script type="text/javascript" src="/JS/masonry.pkgd.min.js"></script>
	<script src="https://npmcdn.com/imagesloaded@4.1/imagesloaded.pkgd.min.js"></script>	
	<script type="text/javascript" src="/JS/main/hash.js"></script>
	<script type="text/javascript" src="/JS/main/turn.js"></script>
	<script type="text/javascript" src="/JS/main/zoom.js"></script>

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
			$(".snb_1709 .newdepth2_wrap .newdepth2").eq(4).addClass("on");  			// [����] ����ķ�۽�
			$(".snb_1709 .newdepth3_wrap.no5").addClass("on").css('display','block');	// [����] ����ķ�۽� SUB - OPEN
			$(".snb_1709 .newdepth3_wrap.no5 .newdepth3:eq(0)").addClass("on");		// ����ķ�۽� �Ұ� ON
		});

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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[����]����ķ�۽�
						</p>
						<h4>����ķ�۽� �Ұ�</h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>����ķ�۽� �Ұ�</h5>
							<p class="mar_b10">���￡ ���ż� ������ �޾ƾ� �ϴ� ������ ���� �����ϼ���? �� �̻� ����Ʈ���� ���α׷��� ������ �ޱ� ���� ������� ����� �ʿ䰡 �����ϴ�. ü������ �����ý��۰� �ְ��� �����ü��� ����ķ�۽��� OPEN �߽��ϴ�.</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� �ε��</h5>
							<h5 class="small">4�� ������� ��� ������ �����Ͼ �ǹ����� �ڽ�����(�� 9����)</h5>
							<img src="Images/roadmap_Gimhae.png" style="width:100%;"/>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�ܱ����</h5>
							<h5 class="small"><a href="/Course/LocalCampus/DetailPage/Gimhae_C.asp">C Programming</a></h5>
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__GH_C.inc" -->
												<!--2017.12.18(��) ~ 2018.01.10(��)-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__GH_C.inc" -->
												<!--09:00 ~ 13:00 (4�ð�)-->
											</td>
											<!--
											<th scope="row" class="tit">���Ĺ�</th>
											<td>14:00 ~ 18:00 (4�ð�)</td>
											<th scope="row" class="tit">�����</th>
											<td>19:00 ~ 22:00 (3�ð�)</td>											
											-->
										</tr>
										<!-- ����ķ�۽� C Programming -->
										
										<tr>
											<th scope="row" class="tit">������</th>
											<td>400,000��</td>
											<th scope="row" class="tit">��������</th>
											<td> 02-3486-7588</td>
										</tr>
									</tbody>
								</table>
							</div>
							<h5 class="small"><a href="/Course/LocalCampus/DetailPage/Gimhae_Java.asp">Java Programming</h5>
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__GH_JAVA.inc" -->
												<!--2018.01.11(��) ~ 2018.01.30(ȭ)-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<!--
											<th scope="row" class="tit">�����</th>
											<td>19:00 ~ 22:00 (3�ð�)</td>											
											-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__GH_JAVA.inc" -->
												<!--09:00 ~ 13:00 (4�ð�)-->
											</td>
										</tr>
										<!-- ����ķ�۽� JAVA Programming -->

										<tr>
											<th scope="row" class="tit">������</th>
											<td>400,000��</td>
											<th scope="row" class="tit">��������</th>
											<td> 02-3486-7588</td>
										</tr>
									</tbody>
								</table>
							</div>
							<h5 class="small"><a href="/Course/LocalCampus/DetailPage/Gimhae_DS.asp">�ڷᱸ��/�˰���</a></h5>
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__GH_DS.inc" -->
												<!--2018.02.01(��) ~ 2018.02.22(��)-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__GH_DS.inc" -->
												<!--09:00 ~ 13:00 (4�ð�)-->
											</td>
											<!--
											<th scope="row" class="tit">�����</th>
											<td>19:00 ~ 22:00 (3�ð�)</td>
											<th scope="row" class="tit">���Ĺ�</th>
											<td>14:00 ~ 18:00 (4�ð�)</td>											
											-->
										</tr>
										<!-- ����ķ�۽� �ڷᱸ��/�˰��� -->

										<tr>
											<th scope="row" class="tit">������</th>
											<td>400,000��</td>
											<th scope="row" class="tit">��������</th>
											<td> 02-3486-7588</td>
										</tr>
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_localCampus.asp" title="������û" style="float:right; margin:12px 0;" class="btnApply" >
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>
								��ް���
							</h5>
							<h5 class="small"><a href="javascript:alert('�غ����Դϴ�.(���� 02-3486-7588)'); // /Course/LocalCampus/DetailPage/Gimhae_Bigdata.asp">������ �����Ͼ �ǹ����� ��ް���</h5>
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
											<td class="l">
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__GH_BIGDATAHIGH.inc" -->
												<!--2017.08.28 ~ 2018.02.28 (6����)-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__GH_BIGDATAHIGH.inc" -->
												<!--09:00 ~ 16:00 (6�ð�)-->
											</td>
										</tr>
										<!-- ����ķ�۽� ������ �����Ͼ �ǹ����� ��ް��� -->

										<tr>
											<th scope="row" class="tit">������</th>
											<td>4,200,000��</td>
											<th scope="row" class="tit">��������</th>
											<td> 02-3486-7588</td>
										</tr>									
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="javascript:alert('�غ����Դϴ�.(���� 02-3486-7588)'); // /Register/Request/register_localCampus.asp" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>

							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���ô� ��</h5>
							<img src="Images/location_Gimhae.png" style="width:640px;"/>
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