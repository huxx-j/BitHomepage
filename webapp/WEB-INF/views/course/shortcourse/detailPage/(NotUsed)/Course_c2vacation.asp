<!DOCTYPE html>
<%
	StrDate = "2017.08.09 ~ 2017.08.31 (���Ĺ�)"
	StrTime = "���Ĺ� 14:00 ~ 18:00(4�ð�/�� 60�ð�)"
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
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->
			
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("C2")).addClass("on");
			
			<!--#include file="Common_eventHandlers_btnMenu.inc"-->
			
		});
	</script>
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<style>
	/* white and narrowSNB */
	#SNB_Wrap_1702 { background:#ffffff !important; width:195px !important; }
	.moveTop { width:195px !important; background:#17538e url('/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
	.hGroup p { width:333px; }
	#Content_Wrap { min-height:1000px; }
</style>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<a href="#" class="btnMenu fl"><img src="/Images/Common/ico_clipboard2_128.png" style="height:26px; padding:3px; margin:-3px 8px 0 3px; border-radius:8px; box-shadow:0px 0px 5px #373737;" /></a>
						<h4 class="fl">�ڷᱸ��</h4>
						
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=cdsVacation" class="btn mid green1 fl mar_l10">�����ϱ�</a>-->
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���α׷��ְ���</a>
							<a href="#this" class="last on">�ڷᱸ��</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap1703 first">
							<div class="form_type1 mar_b20">
								<table style="box-shadow:none !important;">
									<colgroup>
										<col style="width:15%">
										<col style="width:35%">
										<col style="width:15%">
										<col style="width:35%">
									</colgroup>
									<tbody>
										<tr>
											<th>�����Ⱓ</th>
											<td><%=strDate%></td>
											<th>���ǽð�</th>
											<td><%=StrTime%></td>
										</tr>
										<tr>
											<th>�������</th>
											<td>394,440��</td>
											<th></th>
											<td></td>
										</tr>
										<tr>
											<th>��������</th>
											<td>30��</td>
											<th>����</th>
											<td>�ֱ��� ����(02-3486-3456)</td>
										</tr>
									</tbody>
								</table>
								<a href="/Register/Request/register_shortCourse.asp?cID=cdsVacation" class="btn mid green1" style="float:right; margin:5px 0;">������û</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1703">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>C programming ������ �����Ͻ� ��</li>
								<li>�ڷᱸ���� ���ؼ� �ڼ��� �н��� �ʿ��Ͻź�</li>
								<li>���α׷��� �� �ҽ��ڵ� �м� �ɷ� ����� ���Ͻô� ��</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1703 ">
							<h5>��������</h5>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:50%">
									<col style="width:50%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">����</th>
										<th scope="col">��������</th>
									</tr>
								</thead>
								<tbody>
									<tr>
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
										<td>������ ���ĵ��� �������ν� ������ ����� ������ ���α����� �м��Ѵ�.</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>����,����,����,���԰���,��,��(���̺귯����),�պ�</li>
											</ul>
										</td>
									</tr>
									
									<tr>
										<td>ȯ���� ����ũ�� ����Ʈ ������ �н��մϴ�.</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>ȯ����ũ�� ����Ʈ</li>
												<li>����ũ�� ����Ʈ</li>
											</ul>
										</td>
									</tr>
									
									<tr>
										<td>�ý����� �� ������ ���� �����ϰ� �����մϴ�.</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>��Ʈó���ǽ�, �ý��� �� ����, �����Ϸ� ���û�뿹</li>
											</ul>
										</td>
									</tr>
									
									<tr>
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
										<td>
											Ʈ�� ������ ����
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>Ʈ��, tree����, Ʈ����ȸ, ����Ʈ��</li>
											</ul>
										</td>
									</tr>
									<tr>
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
							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.3456 &nbsp;(email:egchung@bit.kr)</p>-->
							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
						</div>
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<!--<a href="/Register/Request/register_shortCourse.asp?cID=cdsVacation" class="btn mid green1">�����ϱ�</a>-->
							<!--<a href="/Register/Request/register_shortCourse.asp?cID=cdsVacation" class="btn mid green1">�����ϱ�</a>-->
						</div>
					</section>
				</div>
				<div style="float:right; style="width:160px;">&nbsp;
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