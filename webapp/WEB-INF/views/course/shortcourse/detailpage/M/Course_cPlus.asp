<!DOCTYPE html>
<!-- MOBILE -->
<%
	dim PhoneNum
	dim Money
	dim Subject
	dim SubjectSub
	PhoneNum = "02-3486-1421"
	Money = "350,000"
	Subject = "C++"
	SubjectSub = " Programming"
%>
<%
	dim strDate
	strDate = "2017.05.12 ~ 2017.06.09 <span class='blueTxt'>(�����)</span><br/>"
%>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<meta name="viewport" content="width=device-width, user-scalable=no">
	<link rel = "stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css"/>
	<script type="text/javascript" src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	
	<link rel = "stylesheet" href="http://www.bitacademy.com/M_Common/Common_Style_VP.css"/>
	
	<style>
		.CourseDescription .marginleft {
			margin-left:10%;
		}
		.divImg {
			-webkit-border-radius: 5px;
			-moz-border-radius: 5px;
			border-radius: 5px;
			border: none;
		}
	</style>

	<script>
		$(document).ready(function() {
			$("#btnOpenSa").on("click", function() {
				$("#divSa").show();
				$("#btnOpenSa").animate({opacity:0.01},300,function() { })
			})
			$("#btnOpenGn").on("click", function() {
				$("#divGn").show();
				$("#btnOpenGn").animate({opacity:0.01},300,function() { })
			})
			
		})
	</script>
	
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
	<div id="Wrapper"> 
		<!-- #include virtual="/M_Common/Header.inc"-->
		<div>
			<div style="background:#fcf3e9; " class="Box"> <!-- #ffffe6 -->
				<div class="CategoryTitle" style="font-size:1.5em;">���α׷��ְ��� / �ٽɿ�������</div>
				<!--<div class="CategoryDescription" style="font-size:2em; margin-left:2em;">��Ʈ�������Ͱ� �ְ��ϴ� �ΰ��ڰ���</div>-->
			</div>
		</div>
		<div class="Box">
			<div class="divImg" style="background-image: url('/M_Common/Background_1488_898.jpg'); background-repeat: no-repeat; background-size:100% 120%; background-position-y:-25px; padding-top:2em;">
				<div class="CourseTitle" style="font-size:5em; line-height:0.6em; margin-top:8%;"><b><%=Subject%><br/><span style="font-size:0.6em;"><%=SubjectSub%></span></b></div>
			</div>
			<div style="height:2.5em; background:#ffffff;"></div>
			<div style="height:1.5em; background:#fcfcfc; "></div>
			<div style="height:1.5em; background:#f8f8f8; "></div>

			<div class="CourseDescription">
				<!-- con_wrap the first table -->
				<div class="con_wrap last">
					<table class="table_col_type1" style="width:100%;">
						<colgroup>
							<col style="width:25%">
							<col style="width:75%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row" class="tit" >�������</th>
								<td class="fb"><%=Subject%><%=SubjectSub%></td>
							</tr>
							<tr>
								<th class="tit" >��������</th>
								<td>
									<%=strDate %>
								</td>
							</tr>
							<tr>
								<th class="tit" >���ǽð�</th>
								<td style="letter-spacing:-0.1em; font-size:0.8em;">
									����� : 19:00 ~ 22:00 <span class="greenTxt">(3�ð� / 20�� / ��60�ð�)</span>
									<!--
									���Ĺ� : 14:00 ~ 18:00<span class="greenTxt">(4�ð� / 15�� / ��60�ð�)</span><br/>
									<span class="greenTxt">* ���Ĺ��� ����Ư�� �Ⱓ���� ����˴ϴ�.</span><br/>
									<span class="greenTxt">* ������ �׷콺�͵� ���� ����</span>
									-->
								</td>
							</tr>
							<tr>
								<th scope="row" class="tit" >������</th>
								<td>
									<%=Money%>�� <span class="blueTxt" style="font-size:0.9em;">(������ ȯ���� ����ݸ� �ش�)<br/>
									* 27,000�� ��� ���߱��� ����</span>
								</td>
							</tr>
							<tr>
								<th scope="row" class="tit">��������</th>
								<td><a href="tel:<%=PhoneNum%>" style="text-decoration:underline;">02-3486-1421</a></td>
							</tr>
						</tbody>
					</table>
				</div> <!-- con_wrap the first table -->
				
				<style>
					.myTable2 {
						font-size:0.8em;
						padding:0.1em;
					}
					.myTable2 td, .myTable2 th {
						line-height:1em;
						padding:0.5em !important;
					}
				</style>
				<div class="con_wrap_Small con_wrap"> <!-- div ȯ�޺�Sa -->
					<h5 style="font-family:'Nanum Gothic Bold'; font-size:1.5em; color:#8b6338; margin-top:0.5em; margin-bottom:0.5em;">
						�������Ź�Ʒ� <a id="btnOpenSa" href="javascript:openSa();" class="ui-btn ui-btn-inline ui-corner-all" style="font-size:0.5em; margin-top:-0.4em; float:right;">�ڼ�������</a>
					</h5>
					<div id="divSa" style="DISPLAY:NONE;">
						<a href="#myPopupSa" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all" data-position-to="window" style="font-size:0.8em; float:right;">ȯ�޳��� �ڼ�������</a>
						<div style="clear:both;"></div>
						<div data-role="popup" id="myPopupSa"  style="font-size:1em; line-height:1em; width:85%;" data-transition="fade">
							<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
							<!-- #include virtual="/Common/Tab/M/Language_SupportInfo_02Sa.asp"-->
						</div>
						
						<p>1) �켱���������(�߼ұ��) �� ���</p>
						<table class="table_col_type1 myTable2">
							<colgroup>
								<!--<col style="width:16%">-->
								<col style="width:18%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:11%">
								<col style="width:10%">
								<!--<col style="width:21%">-->
							</colgroup>
							<tbody style="text-align:center;">
								<tr>
									<!--<th>������� �з�</th>-->
									<th>��ñٷ��� ��</th>
									<th>������</th>
									<th>ȯ�ޱ�</th>
									<th>����δ��</th>
									<th>ȯ�޺���</th>
									<!--<th>ȯ�ޱݳ��� �ڼ�������</th>-->
								</tr>
								<tr>
									
									<td>50�� �̸�</td>
									<td rowspan="2">350,000</td>
									<td>349,980</td>
									<td class="redTxt" style="font-weight:900;">����</td>
									<td>100%</td>
									<!--<td rowspan="4"></td>-->
								</tr>
								<tr>
									<td>50�� �̻�</td>
									<!--<td>314,899</td>-->
									<td>314,980</td>
									<td>35,020</td>
									<td>90%</td>
								</tr>
							</tbody>
						</table>

						<p>2) �߰� �Ǵ� ������ ���</p>
						<table class="table_col_type1 myTable2">
							<colgroup>
								<!--<col style="width:16%">-->
								<col style="width:18%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:11%">
								<col style="width:10%">
								<!--<col style="width:21%">-->
							</colgroup>
							<tbody style="text-align:center;">
								<tr>
									<!--<th>������� �з�</th>-->
									<th>��ñٷ��� ��</th>
									<th>������</th>
									<th>ȯ�ޱ�</th>
									<th>����δ��</th>
									<th>ȯ�޺���</th>
									<!--<th>ȯ�ޱݳ��� �ڼ�������</th>-->
								</tr>
								<tr>
									<td>1,000�� �̸�</td>
									<td rowspan="2">350,000</td>
									<td>209,980</td>
									<td>140,020</td>
									<td>60%</td>
								</tr>
								<tr>
									<td>1,000�� �̻�</td>
									<td>139,990</td>
									<td>210,010</td>
									<td>40%</td>
								</tr>
							</tbody>
						</table>
						<span class="redTxt" style="font-size:0.8em;"> �� �������Ź�Ʒ��� ��� ������ <%=Money%>�� �����ϰ�, �⼮�� 80% �̻��� ��� ȯ�ޱ��� �ǵ��� ���� �� �ֽ��ϴ�.</span><br/>
						<span class="redTxt" style="font-size:0.8em;"> �� �Ϲ���(�Ǿ��� �Ǵ� ���л�)�� ������ ���� ���� �δ��Դϴ�.</span><br/>
					</div>
				</div> <!-- //div ȯ�޺�Sa -->
				
				<div class="con_wrap_Small con_wrap"> <!-- div ȯ�޺�Gn -->				
					<h5 style="font-family:'Nanum Gothic Bold'; font-size:1.5em; color:#8b6338; margin-top:0.5em; margin-bottom:0.5em;">
						�ٷ��� �����ɷ�������� <a id="btnOpenGn" href="javascript:openGn();" class="ui-btn ui-btn-inline ui-corner-all" style="font-size:0.5em;  margin-top:-0.4em; float:right;">�ڼ�������</a>
					</h5>
					<div id="divGn" style="DISPLAY:NONE;">
						<a href="#myPopupGn" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all" data-position-to="window" style="font-size:0.8em; float:right;">ȯ�޳��� �ڼ�������</a>
						<div style="clear:both;"></div>
						<div data-role="popup" id="myPopupGn"  style="font-size:1em; line-height:1em; width:85%;" data-transition="fade">
							<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
							<!-- #include virtual="/Common/Tab/M/Language_SupportInfo_01Gn.asp"-->
						</div>

						<p>1) �켱���������(�߼ұ��) �� ���</p>
						<table class="table_col_type1 myTable2">
							<colgroup>
								<!--<col style="width:16%">-->
								<col style="width:26%">
								<col style="width:16%">
								<col style="width:11%">
								<col style="width:10%">
								<!--<col style="width:21%">-->
							</colgroup>
							<tbody style="text-align:center;">
								<tr>
									<!--<th>������� �з�</th>-->
									<th>���</th>
									<th>������</th>
									<th>���κδ��</th>
									<th>�ںδ����</th>
									<!--<th>ȯ�ޱݳ��� �ڼ�������</th>-->
								</tr>
								<tr>
									<td>��������</td>
									<td rowspan="4">350,000</td>
									<td class="redTxt" style="font-weight:900;">����</td>
									<td rowspan="3">0%</td>
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
									<td>70,010</td>
									<td>20%</td>
								</tr>
							</body>
						</table>
						
						<p>2) �߰� �Ǵ� ������ ���</p>		
						<table class="table_col_type1 myTable2">
							<colgroup>
								<!--<col style="width:16%">-->
								<col style="width:26%">
								<col style="width:16%">
								<col style="width:11%">
								<col style="width:10%">
								<!--<col style="width:21%">-->
							</colgroup>
							<tbody style="text-align:center;">
								<tr>
									<!--<th>������� �з�</th>-->
									<th>���</th>
									<th>������</th>
									<th>���κδ��</th>
									<th>�ںδ����</th>
									<!--<th>ȯ�ޱݳ��� �ڼ�������</th>-->
								</tr>		
								<tr>
									<td>��������</td>
									<td rowspan="5">350,000</td>
									<td class="redTxt" style="font-weight:900;">����</td>
									<td>0%</td>
								</tr>
								<tr>
									<td>���� ������</td>
									<td>70,010</td>
									<td>20%</td>
								</tr>
								<tr>
									<td>���� ������</td>
									<td class="redTxt" style="font-weight:900;">����</td>
									<td>0%</td>
								</tr>
								<tr>
									<td>������(50���̻�)</td>
									<td>70,010</td>
									<td>20%</td>
								</tr>
								<tr>
									<td>3�Ⱓ ��������<br/>(3�Ⱓ �ٷ���<br/>�����ɷ������ �̱�����)</td>
									<td>70,010</td>
									<td>20%</td>
								</tr>
							</tbody>
						</table>
						<!--
						<span class="redTxt">�� �ٷ��� �����ɷ��������(ī��߱� �����)�� ���κδ�� 70,000���� �����մϴ�</span><br/>
						<span class="redTxt">�� �Ϲ���(�Ǿ��� �Ǵ� ���л�)�� ������ ���� ���� �δ��Դϴ�</span>
						-->
					</div>
				</div> <!-- // div ȯ�޺�Gn -->
				
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>�����Ұ�</h5>
					<p><b class="blueTxt"><%=Subject%> <%=SubjectSub%> ����</b>�� ����Ʈ���� ���� ���� �� ��ü ���� ���� ������� �����Ͽ�, C++�� ���� ��ü���� ���α׷��� ����� ������, Ŭ���� ���̺귯�� ���� �� ��ü ���� ����Ʈ��� �ۼ��� �� �ֵ��� �����Ͽ� C++ ���α׷��ְ� UML�� Ȱ���� �ǽ� ������ ������ ���� �ǹ� ������Ʈ�� ���� �������� ����ų �� �ֵ��� �����Ǿ� �ֽ��ϴ�.</p>
				</div>
				<!-- //con_wrap -->
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>������ǥ</h5>
					<ul class="ul_dot_gray">
						<li>C++ ���α׷����� �������� �帧 �ľ�</li>
						<li>��ü���� ���α׷��� �ɷ� �Ծ�</li>
						<li>���α׷��� ���� ������ ���� �� Ȱ�� �ɷ� �Ծ�</li>
						<li>������ ������ �ǹ� ������Ʈ ������ ���</li>
					</ul>
				</div>
				<!-- //con_wrap -->
				
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>���� ����</h5>
					<div style="float:left; width:50%;"><img src="/Images/Content/img_BookCover_PassionOfCpp.jpg" style="margin-left:0.5em; width:90%; box-shadow:2px 2px 5px #373737;"/></div>
					<div style="float:left; margin-left:0.1em;">
						<p style="margin-top:0px;">
							<b>"���� C++ ���α׷���"</b> <br/>������ �� / �������̵��
						</p>
					</div>
					<div style="clear:both;"></div>
				</div>
				<!-- //con_wrap -->
				
				<style>
					.table_col_type1 th {
						line-height:1em;
					}
					.table_col_type1 th.tableTitle {
						font-size:1.5em !important;
						font-weight:700 !important;
						text-shadow: 3px 3px 3px #c9c9c9;
						padding-top:0.5em !important;
						padding-bottom:0.5em !important;
					}
				</style>
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>Ŀ��ŧ��</h5>

					<table class="table_col_type1">
						<tbody>
							<tr>
								<th class="tableTitle">C++ �⺻</th>
							</tr>
							<tr>
								<th>C ���� ����<br/> C++</th>
							</tr>
							<tr>
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
								<th>Class</th>
							</tr>
							<tr>
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
						</tbody>
					</table>
					
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th class="tableTitle">C++ ��ȭ</th>
							</tr>
							<tr>
								<th>Inheritance</th>
							</tr>
							<tr>
								<td>���� �����ڿ� ���� ������</td>
							</tr>
							<tr>
								<td>override function</td>
							</tr>
							<tr>
								<td>up-casting, binding, virtual function</td>
							</tr>
							<tr>
								<th>Operator <br/>Overloading</th>
							</tr>
							<tr>
								<td>������ ������ ����, ���� ���� ������</td>
							</tr>
							<tr>
								<td>���Կ����� / <<,>> ������ / �迭������ / ��ȯ������</td>
							</tr>
							<tr>
								<td>new/delete�� ������</td>
							</tr>
							<tr>
								<th>Template</th>
							</tr>
							<tr>
								<td>�Լ� template / Ŭ���� template</td>
							</tr>
						</tbody>
					</table>
					
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th class="tableTitle">C++ Ȱ��</th>
							</tr>
							<tr>
								<th>STL</th>
							</tr>
							<tr>
								<td>Iterators</td>
							</tr>
							<tr>
								<td>Sequence Algorithms <br/> Sequence Containers</td>
							</tr>
							<tr>
								<td>Associative Containers</td>
							</tr>
							<tr>
								<td>Adaptors</td>
							</tr>
						</tbody>
					</table>

					<p class="blueTxt mar_t10" style="font-size:0.9em;">* �� ������ �ο� �̴޽� ���� �Ǵ� �� �� �� �ֽ��ϴ�. </p>
					<p class="mar_t10"><span style="font-size:1em;">����</span> : <a href="tel:<%=PhoneNum%>" style="text-decoration:underline;">02-3486-1421</a> &nbsp;(kimyj0723@bit.kr)</p>
				</div>
				<!-- con_wrap -->
				
				<div style="font-size:1em;">
				<!-- �ڰ������� �Ұ� -->
				<!-- #include virtual="/Course/ShortCourse/DetailPage/M/Common_IntroducingBCCPM.asp"-->
				<!-- /�ڰ������� �Ұ� -->
				</div>
				
			</div>			
		</div> <!--//Box-->
		<a href="tel:<%=PhoneNum%>" data-role="button" class="ButtonCall">������ȭ�ϱ�</a>
		<a href="/Register/Request/register_shortCourse.asp?cID=CP2_core" data-role="button" class="Button" target="_blank">�����ϱ�</a>
		<!-- #include virtual="/M_Common/AdBox.inc" -->

	</div>
</body>
</html>