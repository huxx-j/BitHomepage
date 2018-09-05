<% CourseName = "�������� SQL ����(SQLD) �ڰ� ���� �غ��" %>
<% strDate="2017.09.16(��) ~ 2017.10.21(��) ���� ����� 09:00~17:00" %>

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720.css" >
	<script src="Common_getIndex.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Course/ShortCourse/DetailPage/Common_eventHandlers_SNB.inc"-->
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			//$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("DATABASE_SQLD")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no9").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no9").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no9 li:eq(0) a").addClass("on");

		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<style>
	/* white and narrowSNB */
	#SNB_Wrap_1702 { background:#ffffff !important; width:195px !important; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
	.moveTop { width:195px !important; background:#17538e url('/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	.lineMap { display:none; }
	.table_col_type2 tr td { text-align:left !important; }
	#Content_Wrap { min-height:1198px; }
</style>

<body style="background:#ffffff;">
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<div class="gnbBg"></div>
		<hr>
		<div class="banner_wrap">
			<div class="banner">
				<h3 class="pd_tow"><span class="courseName"><%=CourseName%></span></h3>
			</div>
		</div>
		<hr>
		<!-- Container_Wrap -->
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<div id="Content">
					<div class="hGroup">
						<h4 class="fl"><%=CourseName%></h4>
						<p class="lineMap">
							<a href="http://www.bitacademy.com">Ȩ</a> 
							<a href="#">�����ȳ�</a>
							<a href="#">���α׷��ְ���</a>
							<a href="/Course/Expert/Course_DATABASE_SQLD.asp" class="last on"><%=CourseName%></a>
						</p>
					</div>
					
					<style>
						.con_wrap1703 table {
							border-top:1px solid #17538e;
						}
						.con_wrap1703 table th {
							height: 25px;
							padding-top: 7px;
							padding-bottom: 7px;
							font-weight: 600;
							color: #333;
							font-size: 13px;
							text-align: left;
							vertical-align: middle;
							background: #f5f5f5;
						}
						.con_wrap1703 table tr th, .con_wrap1703 table tr td {
							font-size:13px !important;
							border-bottom: 1px solid #d1d1d1;
							padding-left: 10px;
						}
						.con_wrap1703 a.btn.mid {
							width:66px; 
							height:32px;
							padding:0 10px !important;
							font-size:13px !important;
							line-height:30px !important;
							border-radius:0;
						}
						.con_wrap1703 h5 {
							font-size:14px !important;
							font-weight:600;
							margin-bottom:5px !important;
						}
						.con_wrap1703 p {
							font-size:13px !important;
						} /* color:#666 !important; size:11pt.*/
						.con_wrap1703 {
							font-family:'Gothic', Arial;
						}
					</style>
					
					<section class="section">
						<!--
						<div class="con_wrap1703 first">
							
							<table style="box-shadow:none !important;">
							</table> 
							<a href="/Register/Request/register_expert1.asp" class="btn mid green1" title="������û" style="float:right; margin:5px 0;">������û</a>
							<div style="clear;both; height:10px;"></div>
						</div>
						-->
						
						<!-- con_wrap1703 -->
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
											<td>4�� 28�ð�(1�� 7h)</td>
										</tr>
										<tr>
											<th>�������</th>
											<td>450,000��</td>
											<th>����������</th>
											<td>��ȯ�ް���</td>
										</tr>
										<tr>
											<th>��������</th>
											<td>20��</td>
											<th>����</th>
											<td>�ֱ��� ����(02-3486-3456)</td>
										</tr>
									</tbody>
								</table> 
								<a href="/Register/Request/register_shortCourse.asp?cID=Database_SQLD" class="btn mid green1" title="������û" style="float:right; margin:5px 0;">������û</a>
								<div style="clear;both; height:10px;"></div>
																
							</div>
							
						</div>
						<!-- //con_wrap1703 -->
						<div style="clear:both;"></div>
						
						<!-- con_wrap1703 -->
						<div class="con_wrap1703" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>�����Ұ�</h5>
							<p>
								��� �Ǵ� ������ ����ȭ�� �־ ������ �����ͺ��̽��� ���� ��κ��̶� �ص� ������ �ƴ� ������ ������ ������� ��κ��� �����ϰ� �ֽ��ϴ�. ����Ʈ��� �ۼ��ϴµ� ���Ǵ� ���� ���� ������ ������ �����ͺ��̽��� �ᱹ SQL�� ���ؼ��� �����Ϳ� ������ �����ϱ� ������ �����ͺ��̽��� ������� �ϴ� �����ý����� SQL ����� �ʼ����� ����Դϴ�. �� ������ ���� �ý����� �����ϴ� ������ �����ڵ��� �ݵ�� SQL�� ���� �� �ۿ� ����, �̷��� ��Ȳ�� ���� SQL�� ����� �� �ִ� �����ڴ� �� ���� ��Ƹ��� ����� ������ �����ϴ�. �׷��� �̿� ���� SQL ��� �ɷ� ������ ������ �ұ��ϰ� SQL�� ���� ������ ���� �ְ� �����ϰ� ����� ������ �� �ִ� ������ ������ ���� ����� ��������� �ſ� ����մϴ�. �̿� �����͸𵨸��� �⺻ ������ �������� SQL �ۼ�, ���� ����ȭ �� �����ͺ��̽� ��ü ���� �� ���� � ���� �������� �� �ǹ��� ���� �ɷ��� �����Ͽ� ���� ��ȸ ���� �� ��ȸ�� ����(���, ����, ���� ��)�� ����� �����մϴ�.
							</p>
						</div>
						<!-- //con_wrap1703 -->

						<style>
							.aRoadmap {
								border-radius:5px;
								border:1px solid #848484;
								padding:3px;
							}
							.pRoadmap {
								margin-top:10px;
							}
						</style>
						<!-- con_wrap1703 -->
						<div class="con_wrap1703">
							<h5>���� �ε��</h5>
							<div style="margin-left:80px;">
								<p class="pRoadmap">
									<a href="" class="aRoadmap">�������� SQL ������(SQLD) �ڰ� ���� �غ��</a> 
									�� 
									<a href="" class="aRoadmap">�������� SQL ������(SQLP) �ڰ� ���� �غ��</a>
								</p>
							</div>
						</div>
						<!-- //con_wrap1703 -->

						<!-- con_wrap1703 -->
						<div class="con_wrap1703">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>�������� SQL ������ �ڰ�(SQLD) ���� �غ���<br/>�� �����ڰ� ���� ����</li>
							</ul>
						</div>
						<!-- //con_wrap1703 -->

						<!-- con_wrap1703 -->
						<div class="con_wrap1703 ">
							<h5>��������</h5>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:10%">
									<col style="width:35%">
									<col style="width:55%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="c">��������</th>
										<th scope="col" class="c">����</th>
										<th scope="col" class="c">��������</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" class="c">1��</th>
										<td>
											������ �𵨸��� ����
										</td>
										<td>
											- �����͸��� ����<br/>
											- ����Ƽ<br/>
											- �Ӽ�<br/>
											- ����<br/>
											- �ĺ���
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2" class="c">2��</th>
										<td>
											������ �𵨰� ����
										</td>
										<td>
											- ����ȭ�� ����<br/>
											- ������ȭ�� ���� <br/>
											- ��뷮 �����Ϳ� ���� ���� <br/>
											- DB ������ ���� <br/>
											- �л� DB �����Ϳ� ���� ����
										</td>
									</tr>
									<tr>
										<td>SQL �⺻</td>
										<td>
											- ���� �䱸 ���� <br/>
											- DDL, DML, TCL, WHERE ��, Function<br/>
											- Group by, having ��, Order by ��, ���� 
										</td>
									</tr>
									<tr>
										<th scope="row" class="c">3��</th>
										<td>
											SQL Ȱ��
										</td>
										<td>
											- ǥ������, ���տ�����, ������ ����, ��������<br/>
											- �׷��Լ�, ������ �Լ�, DCL, ������ SQL 
										</td>
									</tr>
									<tr>
										<th scope="row" class="c">4��</th>
										<td>
											SQL ����ȭ �⺻ ����
										</td>
										<td>
											- ��Ƽ�������� �����ȹ <br/>
											- �ε��� �⺻ <br/>
											- ���� ���� ���� 
										</td>
									</tr>
								</tbody>
							</table>
							
							<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
						</div>
						<!-- con_wrap1703 -->

					</section>
					<a href="#this" class="moveTop">Top</a>
				</div>
			</div>
			<!-- // Content_Wrap -->
		</div>
		<!-- // Container_Wrap -->
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>