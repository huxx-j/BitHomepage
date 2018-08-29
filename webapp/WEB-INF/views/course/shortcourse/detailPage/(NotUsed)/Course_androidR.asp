<%
'// 4[CourseReview] (pre1)
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

'//"Android1_core" -> "android_programming"���� ������ -> �ٽ� "Android1_core"���� ������. (2016-12-01-YG)
CourseID = "Android1_core"
%>

<!DOCTYPE html>
<!-- REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!--#include virtual="/Include/config.asp"--> <!-- 4[CourseReview]  (pre2) -->
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			/************************ 4[CourseReview]  (pre3)*************************************/
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
			/************************ //4[CourseReview] *************************************/
			
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');
			$(".snb_1702 .newdepth1").eq(3).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("ANDROID")).addClass("on");
			
			onLoadGotoCourseReview(); // 4[CourseReview]  (pre4)
		});
		
		/****************************************** 4[CourseReview]  (pre5)********************************************************/
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
				window.scrollTo(0,2000);
				$('body').scrollTop(2000);
				
				//var height = document.body.scrollHeight;
				//////$( 'html, body' ).stop().animate( { scrollTop : height } );
				//////$( 'html, body' ).css("scrollTop",height);
				//$('body').scrollTop(height);
				
			}
		}
		
		function checkForm() {
			if( $("#inputNRate").val()==null || $("#inputNRate").val()=="" ) alert("������ ������ �������ּ���.");
			else document.Form1.submit();
		}
		/****************************************** //4[CourseReview] ********************************************************/
	</script>
	<script language="javascript"> 
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_android.asp";
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
				<h3><span class="courseName">�ȵ���̵� ���α׷���</span></h3>
				<!--<h4>���� �ۿ� ���� ������Ÿ������ �����ϰ�, �ش� ���� ���� ����鼭 �ȵ���̵� �� �ۼ������ ���� ������ Ȯ��</h4>-->
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
						<h4 class="fl">�ȵ���̵� ���α׷���</h4>
						<a href="/Register/Request/register_shortCourse.asp?cID=Android1_core" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���α׷��ְ��� / �ٽɿ�������</a>
							<a href="#this" class="last on">�ȵ���̵� ���α׷���</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>�ȵ���̵� ���α׷���</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">�ȵ���̵� ���α׷���</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul class="ul_dot_gray">
													<li>2017.01.02 ~ 2017.01.19 (��~�� / 12�� / �� 36�ð�)<br/>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td><!--��4��(ȭ,��,��,��) 3�ְ�<br/>-->19:00 ~ 22:00 (1�� 3�ð�)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>360,000��<!--350,000��--><!--<span class="greenTxt"> ���ϸ��� 5%���� (30,000��)</span>--></td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-1421</td>
										</tr>
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<!--<td colspan="3">�ٷ���ī��(������ : 480,000�� | �������� : 600,000��) | ����� �Ʒ� : �켱������� ������� 247,118��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>-->
											<!--<td colspan="3">�ٷ���ī�� (������ : 189,320�� | �������� : 236,660��) | ����� ȯ�� : �ִ� 236,660��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>-->
											<td colspan="3">�ٷ���ī�� (������ : 189,340�� | �������� : 236,670��) | ����� ȯ�� : �ִ� 236,670��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_123.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�����Ұ�</h5>
							<!--<p>�� ������ �ȵ���̵� ���ø����̼��� �ٽ� ����� �⺻ View, Layout�� ���� ����. �׸��� �ȵ���̵��� �ٽ� ������ҿ� ���Ͽ� �н��Ѵ�. �ܼ��� �ȵ���̵��� API�� ���Ͽ� �н��ϴ� ���� �ƴ�, ���� �ۿ� ���� ������Ÿ������ �����ϰ�, �ش� ���� ���� ����鼭 �ȵ���̵� �� �ۼ������ ���� ������ Ȯ���ϰ� �Ѵ�.</p>-->
							<p>�� ������ �ȵ���̵� �Ұ��� ����ȯ�� ��ġ(�ȵ���̵� ��Ʃ���) �׸��� �Թ����� ���̾ƿ��� ���� UI �ٷ��, �̺�Ʈ ó�� �׸��� ��� UI, Ŀ���� UI�� �ǹ����� �ۼ��Ǵ� ���� ������ �ȵ���̵� ���� �ۼ��ϴ� ����� ���ϴ�. �׸��� ���� �ȵ���̵� �۰� �� �������� ������ ����� �ٷ�� �ȵ���̵� ���� UI�� �����Ű�� �ǹ������� ������� ���ϴ�.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>�ȵ���̵� ��Ű��ó �� ������ҵ鿡 ���� ����</li>
								<li>�ȵ���̵� ��Ʃ��� ���� �� ���� ������</li>
								<li>���̾ƿ�, �̺�Ʈ ó��, �⺻ ���� ���α׷���</li>
								<li>����� ��, ��� ����, Ŀ���� ���� ���α׷���</li>
								<li>�� �������� JSON����� ������ ��� ����</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>��������</h5>
							<ul class="ul_dot_gray">
								<!--<li>��ü���� �ڹ����α׷���</li>-->
								<li>JAVA Programming<a href="/Course/ShortCourse/DetailPage/Course_java.asp" class="mar_l10 btn sml blue">�ڼ�������</a></li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>Ŀ��ŧ��</h5>
							<table class="table_col_type2" style="width:85%;">
								<caption>�ȵ���̵� ���α׷��� Ŀ��ŧ��</caption>
								<thead>
									<tr>
										<th scope="col" style="width:15%;">������</th>
										<th scope="col" style="width:30%;">������</th>
										<th scope="col" style="width:47%;">�󼼳���</th>
										<!--<th scope="col" style="width:8%;">�ü�</th>-->
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>�ȵ���̵� ����</td>
										<td style="text-align:left;">1. Android �ü��<br/>2. Android ����ȯ�� ����<br/>3. Android ���ø����̼� �������</td>
										<td style="text-align:left;">1.�ȵ���̵� Ư¡, ������� �� ���� ��Ÿ��ȯ���� ����<br/>2.Android Studio ���� ����ȯ�� ������ ����<br/>3. ��Ƽ��Ƽ, ����, ��ε�ĳ��Ʈ ���ù�, ����Ʈ ���ι��̴�, ����Ʈ, �˸� �޽���, �佺Ʈ�� ����</td>
										<!--<td>3</td>-->
									</tr>
									<tr>
										<td>�ȵ���̵� �Թ�</td>
										<td style="text-align:left;">1.Hello, Android ���캸��<br/>2.Android ���ø����̼� ������� �ڼ��� �˾ƺ���</td>
										<td style="text-align:left;">1. ������ ������ ���� ���� �� �ۼ��� ���� �������� ���� ����<br/>2. ���ҽ�, ��Ƽ��Ƽ, ����Ʈ ����</td>
										<!--<td>3</td>-->
									</tr>
									<tr>
										<td>�ȵ���̵� <br/>���α׷���</td>
										<td style="text-align:left;">1. �ȵ���̵� �⺻ UI(���̾ƿ�/����)<br/>2. �ȵ���̵� ��� UI (�׼ǹ�/�����׸�Ʈ)<br/>3.�ȵ���̵� Ŀ���� UI (drawable/Theme)</td>
										<td style="text-align:left;">1.Layout/Tab/TextView & Image View<br/>2.�Է�ó��( EditText/Spinner/Button/RadioBUtton/CheckBox)<br/>3.��¥�� �ð� ����/��Ÿ ����<br/>4.ListView �⺻ ����<br/>5.�޴�<br/>6.Dialog<br/>7.Ŀ���� UI������ ���� layout/drawable/theme Ȱ���<br/>8.ActionBar & Fragment </td>
										<!--<td>18</td>-->
									</tr>
									<tr>
										<td>�ǹ��� ����</td>
										<td style="text-align:left;">1.Tab Pager UI,<br/>2.ListView Ȱ��, <br/>3.JSON ������ ��û�� ó��</td>
										<td style="text-align:left;">1. ��� �ۿ� ���� ���̴� ��/������ UI����<br/>2. ��/�������� ListView ���ε�<br/>3. ListView Adaper ����<br/>4. �� ������ ������ ��ſ� �ʿ��� �ֿ� ���� �� �ֿ� ���̺귯�� ���� </td>
										<!--<td>12</td>-->
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
							<p class="mar_t10"><span class="fb">����</span> : 02.3486.1421 (e-mail : kimyj0723@bit.kr)</span></p>
						</div>
						<!-- //con_wrap -->
						
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
						<div class="con_wrap">
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
						
						
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=Android1_core" class="btn mid green1">�����ϱ�</a>
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