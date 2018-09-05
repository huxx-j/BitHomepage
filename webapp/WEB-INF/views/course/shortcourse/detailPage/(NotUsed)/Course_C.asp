<%
CourseID = "C2_core"
%>

<%
dim strDate
strDate="2017.10.16 ~ 2017.11.10 <span class='greenTxt'>(�����)</span>"

%>

<!DOCTYPE html>
<!-- NOT REDIRECTABLE to Mobile -->
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!--#include virtual="/Include/config.asp"--> <!-- 4[CourseReview] (pre2) -->
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView �� .btn_refundView2�� /JS/Common.js �� �̺�Ʈ�ڵ鷯 ���� -->
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->
			
			/********************* ��뺸��ȯ�� div, btn ����. *******************************************************/
			$("#btnOpenSaGn1").on("click", function(event) {
				var height = document.body.scrollHeight / 2;
				$( 'html, body' ).stop().animate( { scrollTop : height }, 100, function() { } );

				//$(".newdepth3_wrap."+nox).slideDown("slow", "easeOutQuint", function() {	$(".newdepth3_wrap."+nox).addClass("on"); });
				setTimeout(function() {
					$("#divSa").slideDown("slow", "easeOutQuint", function() {});
					$("#divGn").slideDown("slow", "easeOutQuint", function() {});
				}, 100);
				$("#divBtnOpenSaGn2").css("display","none");
				$("#imgBtnClose").css("display","block");
				event.stopPropagation();
				event.preventDefault();
			})
			
			$("#btnOpenSaGn2").on("click", function(event) {
				//$(".newdepth3_wrap."+nox).slideDown("slow", "easeOutQuint", function() {	$(".newdepth3_wrap."+nox).addClass("on"); });
				$("#divSa").slideDown("slow", "easeOutQuint", function() {});
				$("#divGn").slideDown("slow", "easeOutQuint", function() {});
				$("#divBtnOpenSaGn2").css("display","none");
				$("#imgBtnClose").css("display","block");
				event.stopPropagation();
				event.preventDefault();
			})
			
			$("#imgBtnClose").on("click", function(event) {
				$("#imgBtnClose").css("display","none");
				$("#divSa").slideUp("fast", "easeOutQuint", function() {});
				$("#divGn").slideUp("fast", "easeOutQuint", function() {$("#divBtnOpenSaGn2").css("display","block");});
				
			})
			/*********************************************************************************************************/
			
			
			ajaxLoad('#ConDetail', '', '/Course/ShortCourse/DetailPage/Course_c_curriculum1.asp');
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');
			
			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//elm_xPos2 = $(".btn_refundView2").offset().left + $(".btn_refundView2").width()/2;	<!-- added -->
			
			/* page load ���� SNB ���� */
			$(".snb_1702 a.newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("C")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no1").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no1").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no1 li:eq(0) a").addClass("on");

		});
		
		
	</script>
	<script language="javascript">
	/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_C.asp";
	*/
	</script>
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
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
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">C Programming</span></h3>
				<h4>�̷а� �ǽ��� �����Ͽ� �����ϸ� C����� �ٽ��� �ľ��Ͽ� �پ��� �о��� ���� ���α׷��� ������ �� <br>�ִ� �� ���� ���� �� ����� �����Ͽ� �ǹ��� ���� ���� �ϵ��� �����ϴ� ����</h4>
				<!--<h4></h4>-->
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
						<h4 class="fl">[���߹�] C Programming</h4>
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=C2_core" class="btn mid green1 fl mar_l10">�����ϱ�</a>-->
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=cVacation" class="btn mid green1 fl mar_l10">�����ϱ�</a>-->
						<p class="lineMap" >
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���α׷���</a>
							<a href="#this">C</a>
							<a href="#this" class="last on">[���߹�] C Programming</a>
						</p>
					</div>
					<section class="section">
					
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
											<!--<td>19:00 ~ 22:00(3�ð�/�� 60�ð�)</td>-->
											<td>
												����� 19:00 ~ 22:00(3�ð�/�� 60�ð�)
											</td>
										</tr>
										<tr>
											<th>�������</th>
											<td>394,440��</td>
											<th>����������</th>
											<td>��뺸�� ȯ�� <a href="#" id="btnOpenSaGn1" class="mar_l10 btn sml blue">�ڼ�������</a></td>
										</tr>
										<tr>
											<th>��������</th>
											<td>30��</td>
											<th>����</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table> 
								<a href="/Register/Request/register_shortCourse.asp?cID=C2_core" class="btn mid green1" title="������û" style="float:right; margin:5px 0;">������û</a>
								<div style="clear;both; height:10px;"></div>
																
							</div>
							
						</div>
						<!-- //con_wrap1703 -->
						<div style="clear:both;"></div>
						
						<!-- con_wrap1703 -->
						<div class="con_wrap1703" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>�����Ұ�</h5>
							<p>
								�� ������ C�� ���� ���α׷��� ���ε带 Ȯ����Ű���� �Ѵ�. ��ü������ �⺻���� C ������������ ���� ��ȭ�� ����ü�� ��������±��� �н��� �ϸ�, ���� �ݿ��Ͽ��� �ǽ�(Unit test)�� ���� ���α׷��� �ɷ��� �� �ܰ� ���׷��̵� �� �� �ִ� �����̴�.<br/>
								<br/>�� C ���α׷����� ������ �ϼ̴ٸ�, ������ �ڷᱸ��/�˰����� �н��ϼ���.
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
								<p class="pRoadmap"><a href="" class="aRoadmap">C ���</a> �� <a href="/Course/ShortCourse/DetailPage/Course_C2.asp" class="aRoadmap">�ڷᱸ��/�˰���</a></p>
								<p class="pRoadmap" style="margin-left:170px;">�� <a href="/Course/ShortCourse/DetailPage/Course_AlgorithmIntermediate.asp" class="aRoadmap">�����ذ��� ���� �߱� �˰���</a></p>
								<p class="pRoadmap" style="margin-left:380px;">�� <a href="/Course/ShortCourse/DetailPage/Course_AlgorithmAdvanced.asp" class="aRoadmap">�����ذ��� ���� ��� �˰���</a></p>
							</div>
						</div>
						<!-- //con_wrap1703 -->

						<!-- con_wrap1703 -->
						<div class="con_wrap1703">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>C ���α׷��� Ȱ�� �ɷ��� Ű��� ������ ��</li>
								<li>�ϵ��� �����ϱ� ���� �Ӻ���� ���α׷� �����ϰ� ������ ��</li>
							</ul>
						</div>
						<!-- //con_wrap1703 -->

						<!-- con_wrap1703 -->
						<div class="con_wrap1703">
							<h5>��������</h5>
							<table class="table_col_type1 tableSchedule">
								<tr>
									<td>1�� 2��</td>
									<td>2�� 1��</td>
									<td>3�� 2��</td>
									<td>4�� 3��</td>
									<td>5�� 12��</td>
									<td>6�� 1��</td>
								</tr>
								<tr>
									<td>7�� 3��</td>
									<td>8�� 1��</td>
									<td>9�� 1��</td>
									<td>10�� 13��</td>
									<td>11�� 1��</td>
									<td>12�� 1��</td>
								</tr>
							</table>
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
										<th scope="col" class="c">������ǥ</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" rowspan="2" class="c">1��</th>
										<td>
											<ul class="ul_dot_gray l">
												<li>�����Ϸ��� ���</li>
												<li>10����, 2����, 16������ ����</li>
												<li>�⺻ �����, ������</li>
												<li>���ǹ�, �ݺ���, �б⹮</li>
											</ul>
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>C ����� ���ؿ� ��������</li>
												<li>����, �ݺ�, �б⸦ ���� ���α׷��� �����帧 �н�</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<ul class="ul_dot_gray l">
												<li>�ǽ�(Unit test)</li>
											</ul>
										</td>
									</tr>
									
									<tr>
										<th scope="row" rowspan="2" class="c">2��</th>
										<td>
											<ul class="ul_dot_gray l">
												<li>�ּҿ�����, ���ڿ�</li>
												<li>1��, 2��, 3���迭, ����������</li>
											</ul>
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>���ϴ� ����(����, ����, ���ڿ�)�� �پ��� ������� �����ϰ� ó���ϴ� ����� �н�</li>
												<li>1���� ���� ��ȭ�� 2���� �迭�� �ڼ��� �н��Ͽ� 3���� �迭�� ���� ����</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<ul class="ul_dot_gray l">
												<li>�ǽ�(Unit test)</li>
											</ul>
										</td>
									</tr>
									
									<tr>
										<th scope="row" rowspan="2" class="c">3��</th>
										<td>
											<ul class="ul_dot_gray l">
												<li>����������, ����������</li>
												<li>�����Ϳ���, �迭������</li>
												<li>�����͹迭, �Լ��� ������ó��</li>
											</ul>
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>�޸� ó���� ������ �����͸� �����ϰ� �н�</li>
												<li>C ����� �ٽ� ���� ���ϴ� �Լ�! �Լ����� �޸� ������ �Ϻ��ϰ� �н�</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<ul class="ul_dot_gray l">
												<li>�ǽ�(Unit test)</li>
											</ul>
										</td>
									</tr>

									<tr>
										<th scope="row" rowspan="2" class="c">4��</th>
										<td>
											<ul class="ul_dot_gray l">
												<li>�Լ�������, ����������</li>
												<li>Typedef, ���丮�� Ŭ����</li>
												<li>�����Ҵ�, ����ü, ���������</li>
											</ul>
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>�ٸ� ������ �����Ϳ� ó�������� �����ϰ� �н�</li>
												<li>������ ���� �Ͼ�� ������ ���� �� �н�</li>
												<li>�������� ���� �� �ִ� �޸��� �н��� ó��</li>
												<li>�ڷᱸ���� �ٰ��� �Ǵ� ����ü�� ������ ���ؿ� �ǽ�</li>
												<li>ū ���α׷��� ���� ��������� �н�</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<ul class="ul_dot_gray l">
												<li>�ǽ�(Unit test)</li>
											</ul>
										</td>
									</tr>

								</tbody>
							</table>
							
							<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
						</div>
						<!-- con_wrap1703 -->

						<br/>
						
						<!-- con_wrap1703 ��뺸��ȯ�� -->
						<div class="con_wrap1703">
							<h5 style="float:left;">��뺸�� ȯ�� </h5>
							<div id="divBtnOpenSaGn2" style="float:left; margin-top:22px;"><a href="#" id="btnOpenSaGn2" class="mar_l10 btn sml blue">�ڼ�������</a></div>
							<div style="float:right; margin-top:22px; margin-right:3px;"><img id="imgBtnClose" src="/Images/Common/ico_Close_98_128.png" style="width:16px; display:none;"/></div>
							<div style="clear:both;"></div>
														
							<div id="divSa" style="DISPLAY:NONE; " class="con_wrap1703ul">
								<h5>����� ��Ź�Ʒ�</h5>
								<p>����ְ� �Ʒú���� �δ��Ͽ� �����ٷ��� ������� ��������� �����ϴ� ����</p>
								
								<h5>�������</h5>
								<p>- ��뺸�迡 ������ ����ַμ� �Ҽӱٷ��ڿ��� ������ ���뵿�� ������κ��� ���������� �޾� �����Ʒ��� ���� �Ǵ� ��Ź�Ͽ� �ǽ��ϴ� �����</p>

								<h5>�Ʒô��</h5>
								<p>- ��뺸�� �Ǻ�����</p>
								<p>- ��뺸�� �Ǻ����ڰ� �ƴ� �ڷμ� �ش� ����ֿ��� ���� ��</p>
								<p>- �ش� ����̳� �� ����� ���õǴ� ������� ����Ϸ��� ��(ä�뿹����)</p>
								<p>- ���������ⱸ�� ���� ����� ��</p>
								
								<div style="text-align:center;">
									<a href="/Upload/company2.zip" class="mar_l10 btn sml blue" style="margin:10px auto;">����� ��Ź�Ʒ� ��û���� �ٿ�ε�</a>
									<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">�� ��û���� �ۼ� �� bithrd@bit.kr�� �����ֽñ� �ٶ��ϴ�.</p>
								</div>
							
								<table class="table_col_type1">
									<tr>
										<th>������� �з�</th>
										<th>��� �ٷ��ڼ�</th>
										<th>����ȯ�ޱ�</th>
										<th>����δ��</th>
									</tr>
									<tr>
										<td rowspan="2">�켱���� �����</td>
										<td>50�� �̸�</td>
										<td>394,440��</td>
										<td>0��</td>
									</tr>
									<tr>
										<td>50�� �̻�</td>
										<td>354,990��</td>
										<td>39,450��</td>
									</tr>
									<tr>
										<td rowspan="2">�߰� �Ǵ� ����</td>
										<td>1,000�� �̸�</td>
										<td>236,660��</td>
										<td>157,780��</td>
									</tr>
									<tr>
										<td>1,000�� �̻�</td>
										<td>157,770��</td>
										<td>236,670��</td>
									</tr>
								</table>
								<p>�� ����� ��Ź�Ʒ��� �⼮�� 80% �̻��� ��츸 ����ȯ�ޱ��� ���� �� �ִ�.</p>
							</div>

							<div id="divGn" style="DISPLAY:NONE;" class="con_wrap1703ul">
								<h5>�ٷ��� �����ɷ��������</h5>
								<p>��뺸���� ���εǴ� ������ ������ <b>'������ ���Ϲ��ī��'</b>�� �߱޹޾� ������ ������ �޴� ����</p>
								
								<h5>�������</h5>
								<p>- �켱���� ����� �ٷ���, ��뺸�� ���ǰ��� �ڿ�����, �Ⱓ�� �ٷ���, �ܽð� �ٷ���, �İ� �ٷ���, �Ͽ� �ٷ���</p>

								<h5>��������</h5>
								<p>�����ѵ��ݾ��� 1�δ� �Ⱓ 200���� �ѵ� ������ �Ʒð����� ���� 60~100% ����</p>
								
								<div style="text-align:center;">
									<a href="/Upload/employ2.zip" class="mar_l10 btn sml blue" style="margin:10px auto;">�ٷ��� �����ɷ�������� ��û���� �ٿ�ε�</a>
									<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">�� ��û���� �ۼ� �� bithrd@bit.kr�� �����ֽñ� �ٶ��ϴ�.</p>
								</div>
								<table class="table_col_type1">
									<tr>
										<th>������� �з�</th>
										<th>���</th>
										<th>���κδ��</th>
									</tr>
									<tr>
										<td>�켱���� �����</td>
										<td>��������, ���� ������<br/>���� ������, ������</td>
										<td>����</td>
									</tr>
									<tr>
										<td rowspan="2">�߰� �Ǵ� ����</td>
										<td>��������, ���� ������</td>
										<td>����</td>
									</tr>
									<tr>
										<td>���� ������, ������</td>
										<td>78,880��</td>
									</tr>
								</table>
								
							</div>
							
						</div>
						<!-- //con_wrap1703 ��뺸��ȯ�� -->
		
						<!-- �ڰ������� �Ұ� -->
						<!-- # i n clude virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCCPM1704.asp"-->
						<!-- /�ڰ������� �Ұ� -->
						
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=C2_core" class="btn mid green1">������û</a>
							<!--<a href="/Register/Request/register_shortCourse.asp?cID=cVacation" class="btn mid green1">�����ϱ�</a>-->
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