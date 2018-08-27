<%
'// 4[CourseReview] (pre1)
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

CourseID = "C2_core"
%>

<%
dim strDate
strDate="2017.05.12 ~ 2017.06.09 <span class='greenTxt'>(�����)</span>"
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
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->
			<% roadmapPageNum=1 %>
			<!--#include file="Common_eventHandlers_CRoadmap.inc"-->

			
			/************************ 4[CourseReview] (pre3) *************************************/
			$(".courseReview_Subject").on("mouseover", function() {
				//alert($(this).attr("idx"));
				$(this).css("text-decoration","underline");
				$(this).css("color","blue");
			})
			.on("mouseleave", function() {
				$(this).css("text-decoration","");
				$(this).css("color","#000");
			})
			.on("click", function() {
			
				var idx = $(this).attr("idx");
				var display = $("#trCourseReview_Content"+idx).css("DISPLAY").toUpperCase();
				if(display == "NONE") {
					//alert("����");
					$("#trCourseReview_Content"+idx).show();
				}
				if(display == "BLOCK" || display == "TABLE-ROW" ) {
					//alert("����");
					$("#trCourseReview_Content"+idx).hide();
					
				}
			})
			
			$(".radioStar").on("change", function() {
				//alert( $(this).attr("id").substring(5) + "��");
				$("#inputNRate").val( $(this).attr("id").substring(5) );
			})
			
			$("#btnOpenSa").on("click", function() {
				$("#divSa").show();
				$("#btnOpenSa").animate({opacity:0.01},300,function() { })
			})
			$("#btnOpenGn").on("click", function() {
				$("#divGn").show();
				$("#btnOpenGn").animate({opacity:0.01},300,function() { })
			})
			
			/************************ //4[CourseReview] *************************************/
			
			ajaxLoad('#ConDetail', '', '/Course/ShortCourse/DetailPage/Course_c_curriculum1.asp');
			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');			
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			elm_xPos2 = $(".btn_refundView2").offset().left + $(".btn_refundView2").width()/2;	<!-- added -->
			
			/* page load ���� SNB ���� */
			$(".snb_1702 a.newdepth1").eq(3).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("C")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no1").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no1").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no1 li:eq(0) a").addClass("on");
			
			onLoadGotoCourseReview(); // 4[CourseReview] (pre4)

			function onLoadGotoCourseReview() {			// 2016-11-26-YG : ������ ���� �� page������Ʈ�� ���� �����ϸ� �ڵ���ũ��.
				//alert("������û �������Դϴ�. cID : " + getUrlParams().cID);
				if(typeof getUrlParams().page != "undefined") {
					/*
					$('html, body').animate({
						scrollTop: ($('#divCourseReview').offset().top-50)
					},500);
					*/
					$('html, body').animate({
						scrollTop: 2950
					},500);
					
				}
			}
		
		});
		
		/****************************************** 4[CourseReview] (pre5) ********************************************************/
		// QueryString to JSON (from GOOGLING)
		function getUrlParams() {					// 2016-11-26-YG : �ڵ����ñ�� �ڵ���ũ�� �߰�.
			var params = {};
			window.location.search.replace(
				/[?&]+([^=&]+)=([^&]*)/gi,
				function(str, key, value) { params[key] = value; }
			);
			return params;
		}
		
		function onLoadGotoCourseReview() {			// 2016-11-26-YG : ������ ���� �� page������Ʈ�� ���� �����ϸ� �ڵ���ũ��.
			//alert("������û �������Դϴ�. cID : " + getUrlParams().cID);
			if(typeof getUrlParams().page != "undefined") {
				$('html, body').animate({
					scrollTop: ($('#divCourseReview').offset().top-50)
				},500);
				
			}
		}
		
		function checkForm() {
			if( $("#inputNRate").val()==null || $("#inputNRate").val()=="" ) alert("������ ������ �������ּ���.");
			else document.Form1.submit();
		}
		/****************************************** //4[CourseReview] ********************************************************/
		
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

<%
'// 4[CourseReview] (pre6)
%>
<!--#include virtual="/job/include/dbconn.inc"-->
<%
Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>

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
						<h4 class="fl">C Programming (����)</h4>
						<a href="/Register/Request/register_shortCourse.asp?cID=C2_core" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=cVacation" class="btn mid green1 fl mar_l10">�����ϱ�</a>-->
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���α׷���</a>
							<a href="#this">C</a>
							<a href="#this" class="last on">C Programming (����)</a>
						</p>
					</div>
					<section class="section">
					
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>C Programming (����)</caption>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">C Programming (����)</td>
											
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul>
													<li><%=strDate%></li>
													<!--<li> <span class="blueTxt">2017.02.01 ~ 2017.02.21 (������)</span></li>-->
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!--<span>(�� 60�ð�) </span>-->
												<ul class="ul_dot_gray">
													<li>����� : 19:00 ~ 22:00 (3�ð� / 20�� / ��60�ð�)</li>
													<!--<li>������ 09:00 ~ 13:00(4�ð� / 15�� / ��60�ð�)</li>-->
												</ul>
												<!--
												<span>* ����/���Ĺ��� ����Ư�� �Ⱓ���� ����˴ϴ�.</span><br/>
												<span>* ������ �׷콺�͵� ���� ���� </span>
												-->
											</td>
											
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<!--<td>350,000��</td>-->
											<!--<td>350,000�� <span class="blueTxt">(������ ȯ���� ����ݸ� �ش�)</span></td>-->
											<td>
												394,440�� <span class="blueTxt">(������ ȯ���� ����ݸ� �ش�)</span><br/>
												<span>* 25,000�� ��� ���߱��� ����</span>
											</td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-1421</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">�ٷ���ī�� / �ٿ�ó (������ : 279,980�� | �������� : 349,980��) / ����� ȯ�� : �ִ� 349,980��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳����ڼ�������</a></td>
										</tr>
										-->
									</tbody>
								</table>
								
								<div> <!-- div ȯ�޺� -->
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										�������Ź�Ʒ� <a href="javascript:openSa();" id="btnOpenSa" class="mar_l10 btn sml blue">ȯ�ޱݾ� �ڼ�������</a>
									</h4>
									<!-- ��뺸��ȯ�޾ȳ�-->
									<div class="refundInfo_wrap2">
										<!-- #include virtual="/Common/Tab/refundInfo_languageMaster2.asp"-->
									</div>
									<!-- //��뺸��ȯ�޾ȳ� -->
									
									<div id="divSa" style="DISPLAY:NONE;">
										<span style="float:right;"><a href="#this" class="mar_l10 btn sml blue btn_refundView2">ȯ�޳��� �ڼ�������</a></span>
										<div style="clear:both;"></div>
										
										<table class="table_col_type1">
											<colgroup>
												<col style="width:16%">
												<col style="width:28%">
												<col style="width:8%">
												<col style="width:8%">
												<col style="width:11%">
												<col style="width:8%">
												<!--<col style="width:21%">-->
											</colgroup>
											<tbody style="text-align:center;">
												<tr>
													<th>������� �з�</th>
													<th>��ñٷ��� ��</th>
													<th>������</th>
													<th>ȯ�ޱ�</th>
													<th>����δ��</th>
													<th>ȯ�޺���</th>
													<!--<th>ȯ�ޱݳ��� �ڼ�������</th>-->
												</tr>
												<tr>
													<td rowspan="2">�켱���������<br/>(�߼ұ��)</td>
													<td>50�� �̸�</td>
													<td rowspan="4">394,440</td>
													<td>394,440</td>
													<td class="redTxt" style="font-weight:900;">����</td>
													<td>100%</td>
													<!--<td rowspan="4"></td>-->
												</tr>
												<tr>
													<td>50�� �̻�</td>
													<!--<td>314,899</td>-->
													<td>354,990</td>
													<td>39,450</td>
													<td>90%</td>
												</tr>
												<tr>
													<td rowspan="2">�߰� �Ǵ� ����</td>
													<td>1,000�� �̸�</td>
													<td>236,660</td>
													<td>157,780</td>
													<td>60%</td>
												</tr>
												<tr>
													<td>1,000�� �̻�</td>
													<td>157,770</td>
													<td>236,670</td>
													<td>40%</td>
												</tr>
											</tbody>
										</table>
										<!--<span class="redTxt">�� �������Ź�Ʒ��� ��� ������ 350,000�� �����ϰ�, �⼮�� 80% �̻��� ��� ȯ�ޱ��� �ǵ��� ���� �� �ֽ��ϴ�</span><br/>-->
										<span class="redTxt"> �� �������Ź�Ʒ��� ��� ������ 394,440�� �����ϰ�, �⼮�� 80% �̻��� ��� ȯ�ޱ��� �ǵ��� ���� �� �ֽ��ϴ�.</span><br/>
										<span class="redTxt"> �� �Ϲ���(�Ǿ��� �Ǵ� ���л�)�� ������ ���� ���� �δ��Դϴ�.</span><br/>
									</div>
									
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										�ٷ��� �����ɷ��������  <a href="javascript:openGn();" id="btnOpenGn" class="mar_l10 btn sml blue">ȯ�ޱݾ� �ڼ�������</a>
									</h4>
									<!-- ��뺸��ȯ�޾ȳ�-->
									<div class="refundInfo_wrap">
										<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
									</div>
									<!-- //��뺸��ȯ�޾ȳ� -->
									
									<div id="divGn" style="DISPLAY:NONE;">
										<span style="float:right;"><a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></span>
										<div style="clear:both;"></div>
										
										<table class="table_col_type1">
											<colgroup>
												<!--
												<col style="width:20%">
												<col style="width:34%">
												<col style="width:8%">
												<col style="width:10%">
												<col style="width:10%">
												<col style="width:18%">-->
												<col style="width:16%">
												<col style="width:34%">
												<col style="width:8%">
												<col style="width:12%">
												<col style="width:10%">
												<!--<col style="width:21%">-->
											</colgroup>
											<tbody style="text-align:center;">
												<tr>
													<th>������� �з�</th>
													<th>���</th>
													<th>������</th>
													<th>���κδ��</th>
													<th>�ںδ����</th>
													<!--<th>ȯ�ޱݳ��� �ڼ�������</th>-->
												</tr>
												<tr>
													<td rowspan="4">�켱���������<br/>(�߼ұ��)</td>
													<td>��������</td>
													<td rowspan="9">394,440</td>
													<td class="redTxt" style="font-weight:900;">����</td>
													<td rowspan="4">0%</td>
													<!--<td rowspan="9"></td>-->
												</tr>
												<tr>
													<td>���� ������</td>
													<td class="redTxt" style="font-weight:900;">����</td>
												</tr>
												<tr>
													<td>���� ������</td>
													<td class="redTxt" style="font-weight:900;">����</td>
												</tr>
												<tr>
													<td>������</td>
													<td class="redTxt" style="font-weight:900;">����</td>
												</tr>
												<tr>
													<td rowspan="5">�߰� �Ǵ� ����</td>
													<td>��������</td>
													<td class="redTxt" style="font-weight:900;">����</td>
													<td>0%</td>
												</tr>
												<tr>
													<td>���� ������</td>
													<td>78,880</td>
													<td>20%</td>
												</tr>
												<tr>
													<td>���� ������</td>
													<td class="redTxt" style="font-weight:900;">����</td>
													<td>0%</td>
												</tr>
												<tr>
													<td>������(50���̻�)</td>
													<td>78,880</td>
													<td>20%</td>
												</tr>
												<tr>
													<td>3�Ⱓ ��������<br/>(3�Ⱓ �ٷ��������ɷ������ �̱�����)</td>
													<td>78,880</td>
													<td>20%</td>
												</tr>
											</tbody>
										</table>
										<!--
										<span class="redTxt">�� �ٷ��� �����ɷ��������(ī��߱� �����)�� ���κδ�� 70,000���� �����մϴ�</span><br/>
										<span class="redTxt">�� �Ϲ���(�Ǿ��� �Ǵ� ���л�)�� ������ ���� ���� �δ��Դϴ�</span>
										-->
									</div>
										
								</div> <!-- // div ȯ�޺� -->
							</div>
							
						</div>
						<!-- //con_wrap -->
						<div style="clear:both;"></div>
						
						<!-- �ε�� -->
						<!--#include file="Common_roadmap_C_v2_1100.inc"-->
						<!-- //�ε�� -->
						
						<!-- con_wrap -->
						<div class="con_wrap first">
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
									font-size:11pt; 
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
								<p>��,��,�� �ǹ����������� �ʼ��� �Ǵ� �ô�!</p>
								<p>�������ڵ� ��ƴٴ� ����Ʈ��� ����� �����ϰ� ���� �� �� �ֽ��ϴ�.</p>
								<p>�����ڵ� ���ʸ� �ٽ� �ѹ� ưư�� �ϴ� ��Ⱑ �� ���Դϴ�.</p>
								<p>�츮���� �ʿ��� ���� �ڽ��� ���� ����.</p>
							</div>
						</div>
						<!-- //con_wrap -->
						
						
						
						<!-- con_wrap -->
						<div class="con_wrap" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>� ������ �����?</h5>
							<ul class="ul_dot_gray">
								<li>C���� ��� ��ǻ�� �ý��ۿ��� ����� �� �ִ� ���α׷��� ��� �Դϴ�.</li>
								<li>C�κ��� ���� �� �Ļ��Ǿ� ���Խ��ϴ�. C++, JAVA, C#, Python�� ��ǥ�� �Դϴ�.</li>
								<li>��Ȯ�ϰ� ����� ������ �ѿ� �Ȱ�ó�� �ڽ��� �Ƿ��������� �� ��������?</li>
								<li>��̷� ������ �Ѵٿ� ������ǥ�� ������ �Ѵ� �� ���� ���̰� �� �� �ۿ� �����ϴ�.</li>
								<li>�������ξ������ ��Ȯ�ϰ� ���� �������� �Ƿ��� �����ڰ� �� �� �ִ� ������ ����̱⵵ �մϴ�.</li>
								<li>������ǥó����!</li>
								<li>�������ڴ� �������� �����ڴ� ����� �Ƿ��� ���ٵ��� �� �ִ� �� ������ �����ϼ���.</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>���� �����ϸ� �������?</h5>
							<ul class="ul_dot_gray">
								<li>���������̸鼭 ��ǻ�Ϳ� ��̰� �־� ������ ��ġ�ô� ��</li>
								<li>������ �ٲ� ��� ���α׷��� ���迡 ǫ ������ �Ͻô� ��</li>
								<li>���������� ��Ȯ�ϰ� �ٽ� C�� �˾ư��� ���׷��̵� �Ͻ� ��</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap ">
							<h5>Ŀ��ŧ��</h5>
							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>�������̶� �츮�� ������ ���α׷��� ��ǻ�Ͱ� �˾Ƶ赵�� �������ִ� ������ ���ϴ� ���Դϴ�.</li>
									<li>�����Ϸ��� �߸��� �ڵ峪 ������ ���Ͽ� ������ �ݴϴ�</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:10%">
									<col style="width:45%">
									<col style="width:45%">
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
											<ul class="ul_dot_gray l">
												<li>C����� ���ؿ� ��������</li>
												<li>����,�ݺ�,�б⸦ ���Ͽ� ���α׷��� �����帧�� �н��Ѵ�.</li>
											</ul>
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>�����Ϸ��� ���, 10����,2����,16������ ����, �⺻�����, ������</li>
												<li>���ǹ�, �ݺ���, �б⹮</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>

							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>��� ���α׷��� ���� ��� �þ �޸𸮵��� ���ϰ� ó���մϴ�.</li>
									<li>��� ����� ������ C�� ��� �޸𸮵��� ó���ұ��?</li>
									<li>������̰� �׷��� �ۿ� ���� ������ �����մϴ�.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:10%">
									<col style="width:45%">
									<col style="width:45%">
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
										<th scope="row">2����</th>
										<td>
											<ul class="ul_dot_gray l">
												<li>���ϴ� ����(����,����,���ڿ�)�� �پ��� ������� �����Ͽ� ó���ϴ� ����� �н��Ѵ�.</li>
												<li>1�������� ��ȭ�� 2�����迭�� �ڼ��� �н��Ͽ� 3�����迭�� ���� �����Ѵ�.</li>
											</ul>
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>�ּҿ�����, 1���� �迭, ���ڿ�</li>
												<li>2���� �迭, 3���� �迭, ����������</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>

							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>������ ���е����� ���� ��Ű�� �� ������!</li>
									<li>������ ���е����� ���ǽ� ������ ���ĳ� ������!</li>
									<li>���� �� �����Ͱ� ��Ʊ⸸ �ұ��?</li>
									<li>���п��� ���������� �ʾҴ� �ڼ��� �������� ó�������� ��Ȯ�ϰ� �����ϴ�.</li>
									<li>���� �������� ���ǽ� ������ ���� ���� ���� �� �Դϴ�.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:10%">
									<col style="width:45%">
									<col style="width:45%">
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
										<td>
											<ul class="ul_dot_gray l">
												<li>�޸� ó���� ������ �����͸� �����ϰ� �н��մϴ�.</li>
												<li>C����� �ٽɷ��� ���ϴ� �Լ�! �Լ����� �޸������� �Ϻ��ϰ� �н��Ѵ�.</li>
											</ul>
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>����������, ����������, ������ ����</li>
												<li>�迭������, �����͹迭, �Լ��� ������ó��</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>

							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>�ռ� ��� �����Ͱ� ����� ���صǾ��ٸ� �����δ� �ſ� ���� �н� �� �� �ֽ��ϴ�.</li>
									<li>�����Ͱ� ������� ��� ������� ����Ǿ� ���̴��� �ñ��մϴ�.</li>
									<li>�������� �ñ����� ���ݾ� Ǯ�� �� ���Դϴ�.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:10%">
									<col style="width:45%">
									<col style="width:45%">
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
										<th scope="row">4����</th>
										<td>
											<ul class="ul_dot_gray l">
												<li>�ٸ� ������ �����Ϳ� ó�������� �����ϰ� �н��Ѵ�.</li>
												<li>������ ���� �Ͼ�� �������� ���� �� �н��Ѵ�.</li>
												<li>�������� ����� �ִ� �޸��� �н��� ó��.</li>
												<li>�ڷᱸ���� �ٰ��� �Ǵ� ����ü ������ ���ؿ� �ǽ�.</li>
												<li>ū ���α׷��� ���� ���� ������� �н��Ѵ�.</li>
											</ul>
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>�Լ�������, ����������, typedef, ���丮��Ŭ����</li>
												<li>�����Ҵ�, ����ü, ���������</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>

							
							<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.1423 &nbsp;(email:egchung@bit.kr)</p>-->
							<p class="mar_t10"><span class="fb">����</span> : 02.3486.1421 &nbsp;(kimyj0723@bit.kr)</p>
						</div>
						<!-- con_wrap -->


						
						
<!------------------------------------------ FROM HERE : [MODULE] ������(CourseReview) --------------------------------------------------------->
						<%
							''Response.write(sql)
							'Set Rs = Dbcon.Execute(sql)
							'set rs = server.CreateObject("adodb.recordset") 
						'	
						'	Count = 0
						'	if Rs.eof = false then
						'		Count = Rs(0)
						'	End IF
						%>	

							
						<!-- con_wrap -->
						<style>
							.myTable {
								width:85%;
								border-top:2px solid #37379f;
								border-bottom:2px solid #37379f;
							} /* margin-left:5%; */
							.myTable th {
								border-bottom:1px solid #37379f;
								background-color:#d6e2f5;
							}
							.myTable tr.trCourseReview_Content {
								background-color:#f9f9f9;
								border-top:none;
							}
							.myTable td {
								border-bottom:1px solid #d3d3ef;
							}
						</style>
						<div class="con_wrap" id="divCourseReview" style="DISPLAY:NONE;">
							<h5>������</h5>
							
							<!-- Write my CourseReview -->
								<%
								Studid = TRIM(session("Studid"))
								if Studid = "" OR isEmpty(Studid) OR isNULL(Studid) then
								else
									sql="SELECT LoginID, NameHan FROM db_bit.dbo.Member WHERE studid=" & studid
									Set Rs = Dbcon.Execute(sql)
									if not Rs.EOF then										
										LoginID = Rs("LoginID")
										NameHan = Rs("NameHan")
									end if
									Rs.Close
								end if
								%>
							
								<%
									'IF DateDiff("y",InputStartDate,Date)>=0 AND DateDiff("y",Date,InputEndDate)>=0 AND Status="open" THEN			'�������Է±Ⱓ��
									
									sql="SELECT * FROM db_bit.dbo.Lesson_CourseReview_Ongoing_Member WHERE CourseID='"&CourseID&"' AND LoginID='"&LoginID&"' AND Status='open'"
									Set Rs = Dbcon.Execute(sql)
									IF not Rs.EOF THEN
										Response.Write "<div style='width:85%; margin:0.5em 0 2em -0.5em;  background-color:#ffffef; padding:0.5em; box-shadow:3px 3px 8px #373737;'>"&_
														"<div style='color:#37377f;'>" & NameHan & "(" & LoginID & ") ��, �������� �ۼ����ּ���.</div>"&_
														"<form method='post' action='Common_InputCourseReview_Complete.asp' name='Form1' onSubmit='checkForm(); return false;'>"&_
														"	<input type='hidden' name='LoginID' value='"&LoginID&"'/>"&_
														"	<input type='hidden' name='CourseID' value='"&CourseID&"'/>"&_
														"	<input type='hidden' name='NameHan' value='"&NameHan&"'/>"&_
														"	<input type='hidden' name='InputDate' value='"&Date&"'/>"&_
														"	<input id='inputNRate' type='hidden' name='nRate' />"&_
														"	<table class='myTable' style='width:100%; margin-left:0;'>"&_
														"		<colgroup>"&_
														"			<col style='width:15%;'>"&_
														"			<col style='width:85%;'>"&_
														"		</colgroup>"&_
														"		<tbody>"&_
														"			<tr>"&_
														"				<th>������</th>"&_
														"				<td style='padding-left:1em; background-color:#fff;'>"&_
														"					<input id='score5' type='radio' value='5' class='radioStar' name='radioStar'>"&_
														"					<label for='score5'><img src='/Images/Common/icn_stars_05_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"					<input id='score4' type='radio' value='4' class='radioStar' name='radioStar'>"&_
														"					<label for='score4'><img src='/Images/Common/icn_stars_04_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"					<input id='score3' type='radio' value='3' class='radioStar' name='radioStar'>"&_
														"					<label for='score3'><img src='/Images/Common/icn_stars_03_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"					<input id='score2' type='radio' value='2' class='radioStar' name='radioStar'>"&_
														"					<label for='score2'><img src='/Images/Common/icn_stars_02_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"					<input id='score1' type='radio' value='1' class='radioStar' name='radioStar'>"&_
														"					<label for='score1'><img src='/Images/Common/icn_stars_01_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"					<input id='score0' type='radio' value='0' class='radioStar' name='radioStar'>"&_
														"					<label for='score0'><img src='/Images/Common/icn_stars_00_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"				</td>"&_
														"			</tr>"&_
														"			<tr>"&_
														"				<th>����</th>"&_
														"				<td><input type='text' name='Subject' style='width:98%;' REQUIRED/></td>"&_
														"			</tr>"&_
														"			<tr>"&_
														"				<th>����</th>"&_
														"				<td><textarea name='Content' style='width:100%;' rows='10' REQUIRED></textarea></td>"&_
														"			</tr>"&_
														"		</tbody>"&_
														"	</table>"&_
														"	<input type='submit' class='btn mid red' value='�ۼ��Ϸ�' style='float:right; margin-top:5px;'/>"&_
														"	<div style='clear:both;'></div>"&_
														"</form>"&_
														"</div><!--//Write my CourseReview -->"
									END IF
								%>
								
								
						
						
							<%
								'//Preparation for a paging.
								page = Request.QueryString("page")
								IF IsNull(page) OR page=0 THEN
									page = "1"
								END IF
								
								set Rs = server.CreateObject("adodb.recordset") 
								sql = "SELECT * FROM db_bit.dbo.Lesson_CourseReview_FormFilled WHERE CourseID='"& CourseID &"' ORDER BY idx DESC"
								Rs.PageSize = 5 '�������� ����� ���� ...�ݵ�� ��ũ��¿������� �������־�� �Ѵ�.
								Rs.Open sql, oConn, 1 '���ڵ� Ŀ�� Ÿ��(1)�� ������ �־�� �Ѵ�. ���� ������ �ȵǸ� ����¡�� �ȵȴ�.

								IF NOT Rs.EOF THEN
									totalpage =Rs.PageCount 
									Rs.AbsolutePage = page
									Count = Rs.RecordCount 
								ELSE
									Count = 0
								END IF
								
								'Response.Write "totalpage = " & totalpage & "<br/>"
								'Response.Write "Count = " & Count & "<br/>"
								'Response.end
								
							%>
							<%
								IF Count>0 THEN
							%>
							<div style="float:right; margin-right:15%;">�� <span style="color:#3737FF;"><b><%=Count%></b></span> ���� �������� �ֽ��ϴ�.</div>
							<%
								END IF
							%>
							<div style="clear:both;"></div>
							
							<table class="myTable">
								<colgroup>
									<col style="width:30%;">
									<col style="width:10%;">
									<col style="width:6%;">
									<col style="width:4%;">
								</colgroup>
								<tbody>
									<tr>
										<th>����</th>
										<th>�۾���</th>
										<th>�����</th>
										<th>������</th>
									</tr>
									<%
									'	sql = "SELECT TOP " & pageSize & " * FROM db_bit.dbo.Lesson_CourseReview_FormFilled WHERE CourseID='"& CourseID &"' ORDER BY idx DESC"
									'	'Response.write(sql)
									'	Set Rs = Dbcon.Execute(sql)
									
										IF Count = 0 Then
									%>
									<tr>
										<td colspan="4" style="text-align:center;">��ϵ� �������� �����ϴ�.</td>
									</tr>
									<%
										ELSE
											FOR i=1 TO Rs.PageSize STEP 1
												IF NOT Rs.EOF THEN

													NameHan_LoginID = Left(Rs("NameHan"),2)&"**("&Left(Rs("LoginID"),4)&"****)"
													Content = Rs("Content")
													IF IsNull(Content) THEN
														Content = ""
													END IF
									%>
									<tr>
										<td style="text-align:left; padding-left:1em; cursor:pointer;"><a class="courseReview_Subject" idx="<%=Rs("idx")%>" style="color:#000;"><%=Rs("Subject")%></a></td>
										<td style="text-align:center;"><%=nameHan_LoginID%></td>
										<td style="text-align:center;"><%=Rs("InputDate")%></td>
										<td style="text-align:center;"><img src="/Images/Common/icn_stars_0<%=Rs("nRate")%>_595by100.png" style="width:80px;"/></td>
									</tr>
									<tr id="trCourseReview_Content<%=Rs("idx")%>" class="trCourseReview_Content" style="DISPLAY:NONE;">
										<td colspan="4">
											<%=replace(Content, chr(13), "<br/>") %>
										</td>
									</tr>
									<%
													Rs.moveNext
												END IF
											NEXT
										END IF 
									%>
								</tbody>
							</table>

							<!-- Paging -->
							<%
								Dim pagingStartNum 
								Dim pagingEndNum
								Dim pagingPrevNum
								Dim pagingNextNum
								
								pagingStartNum = page - (page mod Rs.PageSize) + 1
								pagingEndNum = page - (page mod Rs.PageSize) + 10
								IF (page mod Rs.PageSize) = 0 THEN
									pagingStartNum = PagingStartNum - Rs.PageSize
									pagingEndNum = PagingEndNum - Rs.PageSize
								END IF
								IF pagingEndNum > totalpage THEN
									pagingEndNum = totalpage
								END IF
								
								pagingPrevNum = pagingStartNum - 10
								pagingNextNum = pagingStartNum + 10
								IF pagingPrevNum < 1 THEN
									pagingPrevNum = 1
								END IF
								IF pagingNextNum > totalpage THEN
									pagingNextNum = totalpage - (totalpage mod Rs.PageSize) + 1
								END IF
								
							%>
							<style>
								.pagingButton {
									float:left;
									font-size:0.9em;
									border:1px solid #c9c9c9;
									border-radius:1px;
									margin-left:-1px;
									width:1.9em;
									height:1.8em;
									padding-top:0.2em;
									cursor:pointer;
								}
							</style>
							<%
								IF Count>0 THEN
							%>
							<div style="text-align:center; margin:1em 1.25em 1em 15.25em; font-weight:800; font-size:1.25em;"> 
								<a href="Course_androidR.asp?page=<%=pagingPrevNum %>" ><div class="pagingButton"><</div></a>
								<%
									FOR i=pagingStartNum TO pagingEndNum STEP 1
								%>
									<%
										IF Cint(page) = Cint(i) THEN
									%>
											<div class="pagingButton" style="background-color:#ffffa6; color:red;" ><%=i %></div> 
									<%
										ELSE
									%>
											<a href="Course_androidR.asp?page=<%=i %>" ><div class="pagingButton" ><%=i %></div></a>
									<%
										END IF
									%>
								<%
									NEXT
								%>
								<a href="Course_androidR.asp?page=<%=pagingNextNum %>" ><div  class="pagingButton" >></div></a>
								<div style="clear:both; "></div>
							</div>			
							<%
								END IF
							%>
								
						</div>
						<!-- //con_wrap -->						
<!------------------------------------------ //UNTIL HERE : [MODULE] ������(CourseReview) --------------------------------------------------------->
		
						<!-- �ڰ������� �Ұ� -->
						<!-- #include virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCCPM.asp"-->
						<!-- /�ڰ������� �Ұ� -->
						
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=C2_core" class="btn mid green1">�����ϱ�</a>
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