<!DOCTYPE html>
<!-- MOBILE -->
<%
	dim PhoneNum
	dim strSubject
	dim strSubjectSub
	PhoneNum = "02-3486-1423"
	strSubject = "�ȵ���̵�"
	strSubjectSub = " ���α׷���"
%>
<%
	dim strDate
	strDate = "2017.05.08 ~ 2017.05.25 <br/><span class='greenTxt'>(��~�� / 12�� / �� 36�ð�)</span>"
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
		.CourseDescription ul.marginleft {
			margin-left:10%;
		}
		.divImg {
			-webkit-border-radius: 5px;
			-moz-border-radius: 5px;
			border-radius: 5px;
			border: none;
		}
	</style>
	
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
				<div class="CourseTitle" style="font-size:3.75em; line-height:1.1em;"><b><%=strSubject%><br/><span style="font-size:1em;"><%=strSubjectSub%></span></b></div>
				<!--<h4>SW ������ ���ʰ� �Ǵ� ���α׷��� ����� C �� �⺻���� �� ���信�� <br>���Ȱ����� ������ �ϴ� ����</h4>-->
			</div>
			<div style="height:2.5em; background:#ffffff;"></div>
			<div style="height:1.5em; background:#fcfcfc; "></div>
			<div style="height:1.5em; background:#f8f8f8; "></div>

			<div class="CourseDescription">
			
				<div class="con_wrap first last">
					<table class="table_col_type1" style="width:100%;">
						<colgroup>
							<col style="width:25%">
							<col style="width:75%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row" class="tit" >�������</th>
								<td class="fb">�ȵ���̵� ���α׷���</td>
							</tr>
							<tr>
								<th class="tit" >��������</th>
								<td>
									<%=strDate%>
								</td>
							</tr>
							<tr>
								<th class="tit" >���ǽð�</th>
								<td>
									19:00 ~ 22:00 <span class="greenTxt">(1�� / 3�ð�)</span>
								</td>
							</tr>
							<tr>
								<th scope="row" class="tit" >������</th>
								<td>360,000�� </td>
							</tr>
							<tr>
								<th scope="row" class="tit">��������</th>
								<td><a href="tel:<%=PhoneNum%>" style="text-decoration:underline;"><%=PhoneNum%></a></td>
							</tr>
							<tr>
								<th scope="row" class="tit" rowspan="2">ȯ�޺�</th>
								<td>
									�ٷ���ī�� <br/>
									<div style="float:left;" class="greenTxt">(������ : 189,340�� | <br/>�������� : 236,670��)</div>
									<a href="#myPopupGn" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all" data-position-to="window" style="font-size:0.7em; float:right;">�ڼ���</a>
									<div data-role="popup" id="myPopupGn"  style="font-size:2em; line-height:2em; width:85%;" data-transition="fade">
										<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
										<!-- #include virtual="/Common/Tab/M/Language_SupportInfo_01Gn.asp"-->
									</div>

								</td>
							</tr>
							<tr>
								<td>
									����� ȯ�� <br/>
									<div style="float:left;" class="greenTxt">�ִ� 236,670��</div>
									<a href="#myPopupSa" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all" data-position-to="window" style="font-size:0.7em; float:right;">�ڼ���</a>
									<div data-role="popup" id="myPopupSa"  style="font-size:2em; line-height:2em; width:85%;" data-transition="fade">
										<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
										<!-- #include virtual="/Common/Tab/M/Language_SupportInfo_02Sa.asp"-->
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				
				</div>
				
				<!-- con_wrap -->
				<div class="con_wrap" style="padding-bottom:1em !important;">
					<h5>�����Ұ�</h5>
					<!--<p>�� ������ �ȵ���̵� ���ø����̼��� �ٽ� ����� �⺻ View, Layout�� ���� ����. �׸��� �ȵ���̵��� �ٽ� ������ҿ� ���Ͽ� �н��Ѵ�. �ܼ��� �ȵ���̵��� API�� ���Ͽ� �н��ϴ� ���� �ƴ�, ���� �ۿ� ���� ������Ÿ������ �����ϰ�, �ش� ���� ���� ����鼭 �ȵ���̵� �� �ۼ������ ���� ������ Ȯ���ϰ� �Ѵ�.</p>-->
					<p>
						�� ������ �ȵ���̵� �Ұ��� ����ȯ�� ��ġ(�ȵ���̵� ��Ʃ���) �׸��� �Թ����� ���̾ƿ��� ���� UI �ٷ��, �̺�Ʈ ó�� �׸��� ��� UI, Ŀ���� UI�� �ǹ����� �ۼ��Ǵ� ���� ������ �ȵ���̵� ���� �ۼ��ϴ� ����� ���ϴ�. �׸��� ���� �ȵ���̵� �۰� �� �������� ������ ����� �ٷ�� �ȵ���̵� ���� UI�� �����Ű�� �ǹ������� ������� ���ϴ�.<br/>
						<img src="/Images/Main/img_LOGO_Android_Studio.PNG" style="float:left; height:4em; width:10em; margin-top:1em;"/>
						<img src="/Images/Main/img_LOGO_Android.PNG" style="float:right; width:15%; margin-top:1em;"/>
					</p>
					<div style="clear:both;"></div>
				</div>
				<!-- //con_wrap -->
				
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>������ǥ</h5>
					<ul>
						<li>- �ȵ���̵� ��Ű��ó �� ������ҵ鿡 ���� ����</li>
						<li>- �ȵ���̵� ��Ʃ��� ���� �� ���� ������</li>
						<li>- ���̾ƿ�, �̺�Ʈ ó��, �⺻ ���� ���α׷���</li>
						<li>- ����� ��, ��� ����, Ŀ���� ���� ���α׷���</li>
						<li>- �� �������� JSON����� ������ ��� ����</li>
					</ul>
				</div>
				<!-- //con_wrap -->
				
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>��������</h5>
					<ul>
						<li>JAVA Programming<a href="/Course/ShortCourse/DetailPage/Course_java.asp" class="ui-btn ui-btn-inline" style="font-size:0.8em; padding:0.3em; margin-left:0.5em; margin-top:0.5em; border-radius:0.3em;" target="_blank">�ڼ�������</a></li>
					</ul>
				</div>
				<!-- //con_wrap -->
				
				<style>
					.table_col_type1 th {
						line-height:1.2em;
					}
					.table_col_type1 th.c {
						font-size:1.25em !important;
						padding:0.3em !important;
						vertical-align: top !important;
						text-align:left !important;
					}
					.table_col_type1 td {
						font-size: 1em !important;
						vertical-align: top !important;
						
					}
				</style>
				<!-- con_wrap -->
				<div class="con_wrap last">
					<h5>Ŀ��ŧ��</h5>
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th scope="row" colspan="2">�ȵ���̵� ����</th>
							</tr>
							<tr>
								<th class="c">1. Android �ü��<br/>2. Android ����ȯ�� ����<br/>3. Android ���ø����̼� �������</th>
							</tr>
							<tr>
								<td>
									- �ȵ���̵� Ư¡, ������� �� ���� ��Ÿ��ȯ���� ����<br/>
									- Android Studio ���� ����ȯ�� ������ ����<br/>
									- ��Ƽ��Ƽ, ����, ��ε�ĳ��Ʈ ���ù�, ����Ʈ ���ι��̴�, ����Ʈ, �˸� �޽���, �佺Ʈ�� ����
								</td>
							</tr>
						</tbody>
					</table>
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th scope="row" colspan="2">�ȵ���̵� �Թ�</th>
							</tr>
							<tr>
								<th class="c">1.Hello, Android ���캸��<br/>2.Android ���ø����̼� ������� �ڼ��� �˾ƺ���</th>
							</tr>
							<tr>
								<td>
									- ������ ������ ���� ���� �� �ۼ��� ���� �������� ���� ����<br/>
									- ���ҽ�, ��Ƽ��Ƽ, ����Ʈ ����
								</td>
							</tr>
						</tbody>
					</table>
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th scope="row" colspan="2">�ȵ���̵� ���α׷���</th>
							</tr>
							<tr>
								<th class="c">1. �ȵ���̵� �⺻ UI(���̾ƿ�/����)<br/>2. �ȵ���̵� ��� UI (�׼ǹ�/�����׸�Ʈ)<br/>3. �ȵ���̵� Ŀ���� UI (drawable/Theme)</th>
							</tr>
							<tr>
								<td>
									- Layout/Tab/TextView & ImageView<br/>
									- �Է�ó��( EditText/Spinner/Button/RadioBUtton/CheckBox)<br/>
									- ��¥�� �ð� ����/��Ÿ ����<br/>
									- ListView �⺻ ����<br/>
									- �޴�<br/>
									- Dialog<br/>
									- Ŀ���� UI������ ���� layout/drawable/theme Ȱ���<br/>
									- ActionBar & Fragment
								</td>
							</tr>
							<tr>
						</tbody>
					</table>
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th scope="row" colspan="2">�ǹ��� ����</th>
							</tr>
							<tr>
								<th class="c">1.Tab Pager UI,<br/>2.ListView Ȱ��, <br/>3.JSON ������ ��û�� ó��</th>
							</tr>
							<tr>
								<td>
									- ��� �ۿ� ���� ���̴� ��/������ UI����<br/>
									- ��/�������� ListView ���ε�<br/>
									- ListView Adapter ����<br/>
									- �� ������ ������ ��ſ� �ʿ��� �ֿ� ���� �� �ֿ� ���̺귯�� ����
								</td>
							</tr>
						</tbody>
					</table>
					<p class="blueTxt" style="font-size:1em; margin-top:1em;">* �� ������ �ο� �̴޽� ���� �Ǵ� �� �� �� �ֽ��ϴ�. </p>
					<p class="mar_t10"><span style="font-size:1em;">����</span> : <a href="tel:<%=PhoneNum%>" style="text-decoration:underline;"><%=PhoneNum%></a> &nbsp;(kimyj0723@bit.kr)</p>
				</div>
				
				
			</div>			
		</div> <!--//Box-->
		<a href="tel:<%=PhoneNum%>" data-role="button" class="ButtonCall">������ȭ�ϱ�</a>
		<a href="/Register/Request/register_shortCourse.asp?cID=Android1_core" data-role="button" class="Button" target="_blank">�����ϱ�</a>
		<!-- #include virtual="/M_Common/AdBox.inc" -->

	</div>
</body>
</html>
