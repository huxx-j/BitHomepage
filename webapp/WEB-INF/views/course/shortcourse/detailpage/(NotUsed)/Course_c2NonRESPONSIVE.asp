<!DOCTYPE html>
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
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->
			<% roadmapPageNum=2 %>
			<!--#include file="Common_eventHandlers_CRoadmap.inc"-->

			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
			//ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb_1702 .newdepth1").eq(3).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			//$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("C2")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no1").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no1").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no1 li:eq(2) a").addClass("on");
			
		});
	</script>
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">�ڷᱸ�� �� �ʱ� �˰���</span></h3>
				<h4>������ �ùٸ��� ����ϰ� ���� �����ϴ� ��� ���α׷��� �ۼ��� �� �ֵ��� ���͵帮�� �ǽ������� <br>��������� ȿ������ ���α׷� �ڵ带 �ۼ��ϴ� �ɷ��� ���</h4>
			</div>
		</div>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4 class="fl">�ڷᱸ�� �� �ʱ� �˰���</h4>
						<a href="/Register/Request/register_shortCourse.asp?cID=cds2_core" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=cdsVacation" class="btn mid green1 fl mar_l10">�����ϱ�</a>-->
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���α׷���</a>
							<a href="#this">C</a>
							<a href="#this" class="last on">�ڷᱸ�� �� �ʱ� �˰���</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>�ڷᱸ�� �� �ʱ� �˰���</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">�ڷᱸ�� �� �ʱ� �˰���</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul>
													<li><span class="blueTxt">2017.04.01 ~ 2017.04.23</span></li>
												</ul>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<ul class="ul_dot_gray">
													<li> 13:00 ~ 18:00(5�ð� / ��,�� / ��40�ð�)</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>600,000��<!--394,440��--> <span class="blueTxt">(��ü���� ����)</span></td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-1421</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3"> <span class="blueTxt">(������ ȯ�� ����)</span> </td>
										</tr>
										-->
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- �ε�� -->
						<!--#include file="Common_roadmap_C_v2_1100.inc"-->
						<!-- //�ε�� -->

						<style>
							.myYellow {
								color:#FFFF00;
							}
							.myBlackBox {
								width:94%; 
								background-color:#404040; 
								margin:1%; 
								padding:2%; 
								color:white; 
								text-align:center; 
								font-size:14pt; 
								box-shadow:1px 4px 4px #7f7f7f;
							}
							.myBlueBox {
								background-color:#094472;
								margin:0;
								padding:2%;
								color:white;
								text-align:left;
								font-size:11pt;
							}
						</style>

						<div class="myBlackBox">
							<p>�������� ������ ��ǻ�� �о��� �ʼ� ������ �Ǿ����ϴ�.</p>
							<p>������� �� ���α׷��� �ɷ��Դϴ�.</p>
							<p>�ɷ��� ���׷��̵��ϸ� ���α׷��� �ϼ��� ���ϴ�.</p>
							<p>�⺻�� �������� �н��� ���� �����Ͽ� �н������μ�</p>
							<p>���� �ذ�ɷ��� ��� ��ŵ�ϴ�.</p>
						</div>
						
						<!-- con_wrap -->
						<div class="con_wrap" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>���� �����ϸ� �������?</h5>
							<ul class="ul_dot_gray">
								<li>C programming ������ �����Ͻ� ��</li>
								<li>�ڷᱸ���� ���ؼ� �ڼ��� �н��� �ʿ��Ͻź�</li>
								<li>���α׷��� �� �ҽ��ڵ� �м� �ɷ� ����� ���Ͻô� ��</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap ">
							<h5>������ �����?</h5>
							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>�ڷᱸ���� �˰����� �⺻������ �����մϴ�.</li>
									<li>��ũ�� ����Ʈ�� �Ϻ��ϰ� �н��ϴ�.</li>
									<li>������ ���� �����͸� �ٽ� �����ϴ� ���� �н��մϴ�.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:15%">
									<col style="width:45%">
									<col style="width:40%">
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
										<th scope="row">1����</th>
										<td>
											�ڷᱸ���� �˰����� �⺻ ���� �н�<br/>
											����Ʈ�� �⺻ ���� �н�
										</td>
										<td>
											<ul class="ul_dot_gray l">
 												<li>�ڷᱸ���� �˰���</li>
												<li>���</li>
												<li>�̱۸�ũ�� ����Ʈ</li>
											</ul>
										</td>
									</tr>
									
									<tr>
										<th scope="row">2����</th>
										<td>������ ���ĵ��� �������ν� ������ ����� ������ ���α����� �м��Ѵ�.</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>����,����,����,���԰���,��,��(���̺귯����),�պ�</li>
											</ul>
										</td>
									</tr>
									
								</tbody>
							</table>
							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>����ũ�� ����Ʈ�� ������ �����մϴ�.</li>
									<li>�迭 �Ǵ� ��ũ�� ������ ���� ������ �����մϴ�.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:15%">
									<col style="width:45%">
									<col style="width:40%">
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
										<th scope="row">3����</th>
										<td>ȯ���� ����ũ�� ����Ʈ ������ �н��մϴ�.</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>ȯ����ũ�� ����Ʈ</li>
												<li>����ũ�� ����Ʈ</li>
											</ul>
										</td>
									</tr>
									
									<tr>
										<th scope="row">4����</th>
										<td>�ý����� �� ������ ���� �����ϰ� �����մϴ�.</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>��Ʈó���ǽ�, �ý��� �� ����, �����Ϸ� ���û�뿹</li>
											</ul>
										</td>
									</tr>
									
								</tbody>
							</table>
							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>ť�� Ʈ���� ���Ͽ� ������ �����ϰ� �����մϴ�.</li>
									<li>Ŀ���� ���� ��ũ�� ����Ʈ�� �н� �� �����մϴ�.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:15%">
									<col style="width:45%">
									<col style="width:40%">
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
										<th scope="row">5����</th>
										<td>
											ť�� �⺻����� ������ �������η� �н�
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>ť,ť�� �̿��� ������� ����,Ŀ���Ǵ���ũ�帮��Ʈ</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">6����</th>
										<td>
											Ʈ�� ������ ����
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>Ʈ��, tree����, Ʈ����ȸ, ����Ʈ��</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
							
							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>Ž���� �ϱ� ���� �ڷᱸ���� �н��մϴ�.</li>
									<li>�׷����� �⺻����� Ž���� �н��մϴ�.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:15%">
									<col style="width:45%">
									<col style="width:40%">
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
										<th scope="row">7����</th>
										<td>
											Ž���� ������ ����, ����Ž��Ʈ���� ������ �����Ѵ�.
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>���� Ž��, ����Ž��, ����Ž��Ʈ��, red-blackƮ��, �ؽ�</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">8����</th>
										<td>
											�׷����� ǥ���� ����, �͸���Ž���� ������Ž���� �н��Ѵ�.
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>���ͽ�Ʈ��, A-star �˰���</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
						
							<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.1421 &nbsp;(email:egchung@bit.kr)</p>-->
							<p class="mar_t10"><span class="fb">����</span> : 02.3486.1421 &nbsp;(kimyj0723@bit.kr)</p>
						</div>
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=cds2_core" class="btn mid green1">�����ϱ�</a>
							<!--<a href="/Register/Request/register_shortCourse.asp?cID=cdsVacation" class="btn mid green1">�����ϱ�</a>-->
						</div>
					</section>
				</div>
				<a href="#this" class="moveTop">Top</a>
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>