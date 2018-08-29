<!DOCTYPE html>
<!-- MOBILE -->
<%
	dim strDate
	strDate = "2017.05.12 ~ 2017.06.02 <span class='blueTxt'>(�����)</span>"
%>
<%
	dim PhoneNum
	dim Money
	dim Subject
	dim SubjectSub
	PhoneNum = "02-3486-1421"
	Money = "350,000"
	Subject = "Python"
	SubjectSub = " Programming"
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
				<div class="CourseTitle" style="font-size:5em; line-height:0.6em; margin-top:8%;"><b><%=Subject%><br/><span style="font-size:0.5em;"><%=SubjectSub%></span></b></div>
			</div>
			<div style="height:2.5em; background:#ffffff;"></div>
			<div style="height:1.5em; background:#fcfcfc; "></div>
			<div style="height:1.5em; background:#f8f8f8; "></div>

			<div class="CourseDescription">
				
				<!-- con_wrap the first table -->
				<div class="con_wrap last">
					<table class="table_col_type1">
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
									<%=strDate%> <br/>
								</td>
							</tr>
							<tr>
								<th class="tit" >���ǽð�</th>
								<td style="letter-spacing:-0.1em; font-size:0.8em;">
									����� : 19:00 ~ 22:00 <span class="greenTxt">(3�ð� / 16�� / ��48�ð�)</span><br/>
									
								</td>
							</tr>
							<tr>
								<th scope="row" class="tit" >������</th>
								<td>
									<%=Money%>�� <span class="blueTxt" style="font-size:0.9em;">(������ ȯ���� ����ݸ� �ش�)<br/>
									* 18,800�� ��� ���߱��� ����</span>
								</td>
							</tr>
							<tr>
								<th scope="row" class="tit">��������</th>
								<td><a href="tel:<%=PhoneNum%>" style="text-decoration:underline;"><%=PhoneNum%></a></td>
							</tr>
						</tbody>
					</table>
				</div> <!-- con_wrap the first table -->

				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>���� �Ұ�<img src="/Images/Main/img_LOGO_Python.png" style="float:right; width:40%;"/></h5>
					<div style="clear:both;"></div>
					<p><b>���̽� ���α׷���</b>�� �ʺ��ڷκ��� ���������� ������ ��������� �����ϰ� �ֽ��ϴ�. ������ ������ �ʿ�� �ϴ� Perl�̳� C, C++�� ���� ������ �����մϴ�. ���� ���� ���ٴ� ������ �ֽ��ϴ�. </p>
					<p>���̽��� ���� ��ǻ�� ���� �а��� ���г��� ������� �� ���α׷��� �Թ� ���� �ֱ� �߿伺�� �ΰ��ǰ� �ִ� �ڵ� ������ �����ϱ⿡ ������ ���� �� �ް� ������, ����, ��ӹڽ�, ��Ʃ��, ���ø��� �� �ؿ� ������ IT��������� ���߾��� ä���ϰ� �ִ� �߼��Դϴ�.</p>
					<p>C�� ������ ��, �����Ϳ� ���� ���� ���� ������ ���� ������, ��������� ���� �ð��� ���α׷� ������ ������ � ������ �� �ֽ��ϴ�. C++�� ��������, OOP�� �⺻���� ���׵��� ���� ������ ��� �� �ֽ��ϴ�.�⺻������ ���������� ����̱� ������, �ڵ��� ����� �ٷιٷ� Ȯ���� �� �� �ְ�, �پ��� �ü���� �����մϴ�. ���� ����(.exe)�� ����� �� ���� �ֽ��ϴ�. </p>
					<p>�پ��� ���̺귯���� �����ϱ� ������, ��������� ���� ���� �ڵ常���ε� GUI ���α׷�, game, CGI ���α׷� ���� ������ ���� �� �ֽ��ϴ�. </p>
				</div>
				<!-- //con_wrap -->

				<!-- con_wrap -->
				<div class="con_wrap">
					<h5><span style="font-size:0.75em;">C/ C++ ���α׷��� �ܿ���</span> <br/>���̽��� ����� �ϴ� ����</h5>
					<ul class="ul_dot_gray">
						<li><b>C/C++ �׸��� Bourne shell�� ������ ����</b>�� ������ �ֱ� ������, ��Ÿ �ٸ� ��ũ��Ʈ �� ���� ������ �ӵ��� �ſ� �����ϴ�.</li>
						<li>OS�� ���õ� ��ɵ� (��: POSIX interface)��κ� C/C++���� �����Ǵ� �Լ��� ���� �̸��� ����ϱ� ������ <b>�������ϴ� �Լ����� Ÿ ��ũ��Ʈ ���� ���� �� ���� �ʽ��ϴ�</b>.</li>
						<li>class, virtual function, �������� operator overloading�� �����ϱ� ������ <b>C++���� ��� ������ ��� �״�� ����</b>�� �� �ֽ��ϴ�.</li>
						<li>Mixed language programming - Python�� ��Ÿ <b>�ٸ� ��ũ��Ʈ �� ���� C/C++�� python module�� �ۼ��ϱⰡ �ſ� �����ϴ�.</b></li>
						<li>�������̳��� <b>lambda expression�� ����</b>�ϱ� ������, LISP/Scheme � �ͼ��� ����鵵 ����� �ڵ带 ���� ���� �� �ִ�. map(), apply() �Լ� ����, closure ����</li>
						<li><b>�ٸ� ��ũ��Ʈ �� ���� ����ȭ�� �� �Ǿ� ������</b> (Tutorial, Library Reference, Language Reference ����), ���� ��ü�� LISP/Scheme�� ���������� documentation string�� ���� ���� �� �ְ�, built-in �Լ��� dir()�� ����, �Լ�, ���, ������Ʈ�� �����ϴ� �ɺ� ���̺��� �ٷ� �� �� �ֱ� ������ �ٸ� ��ũ��Ʈ �� �� ���� ����, ���� ������ ã�ƺ��� �󵵰� �������ϴ�.</li>
						<li><b>�Լ�, Ŭ���� �Ǵ� ������ Decorator�� ���� ����</b>�� �� �ֽ��ϴ�. Decorator�� C/C++ ������ qualifier�� �ش��ϴ� ������ �پ��� wrapper�� ����ų� class�� ��� static, class method�� ������ �� �ֽ��ϴ�.</li>
					</ul>
				</div>
				<!-- //con_wrap -->
				
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>���� ����</h5>
					<ul class="ul_dot_gray">
						<li>�� ���α׷���</li>
						<li>�������� �м� ���α׷���</li>
					</ul>
				</div>
				<!-- //con_wrap -->
				
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>���� ����</h5>
					<div style="float:left; width:50%;"><img src="/Images/Content/img_BookCover_PassionOfPython.jpg" style="margin-left:0.5em; width:90%; box-shadow:2px 2px 5px #373737;"/></div>
					<div style="float:left; margin-left:0.1em;">
						<b>"�������� ���̽�"</b> <br/>�̰��� �� / ������
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
				<div class="con_wrap last">
					<h5>Ŀ��ŧ��</h5>
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th scope="row" class="tableTitle">Python �⺻</th>
							</tr>
							<tr>
								<th scope="row">
									1. ���̽� �Ұ�<br/>
									2. ���̽� �ڷ���<br/>
									3. ���̽��� �⺻ ����
								</th>
							</tr>
							<tr>
								<td class="l">
									<ul class="ul_dot_gray">
										<li>���̽� ��ġ �� ����ȯ�� ���� �� ����</li>
										<li>���̽��� �ڷ���(������, ���ڿ�, ����Ʈ, Ʃ��, ��ųʸ�, ����)�� ����</li>
										<li>���(���ǹ��� �ݺ���)</li>
										<li>�Լ�</li>
										<li>�ܼ� �����</li>
										<li>���� �а� ����</li>											
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
					
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th scope="row" class="tableTitle">Python ��ȭ</th>
							</tr>
							<tr>
								<th scope="row">
									1. Ŭ������ ��ü���� ���α׷���<br/>
									2. ��� ���� �� ��� ���<br/>
								</th>
							</tr>
							<tr>
								<td class="l">
									<ul class="ul_dot_gray">
										<li>���̽� ��ü���� ���α׷���</li>
										<li>Ŭ����</li>
										<li>���</li>
										<li>������</li>
										<li>���</li>
										<li>��Ű��</li>
										<li>����ó��</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
					
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th scope="row" class="tableTitle">Python Ȱ��</th>
							</tr>
							<tr>
								<th scope="row">
									1. ���̽� ���Խİ� �����ٷ��
								</th>
							</tr>
							<tr>
								<td class="l">
									<ul class="ul_dot_gray">
										<li>���̽��� �����Լ��� �����Լ�</li>
										<li>���� ǥ����</li>
										<li>XML ���� �ٷ��</li>
									</ul>
								</td>
							</tr>
							
							
						</tbody>
					</table>
					<p class="blueTxt mar_t10" style="font-size:0.9em;">* �� ������ �ο� �̴޽� ���� �Ǵ� �� �� �� �ֽ��ϴ�. </p>
					<p class="mar_t10"><span style="font-size:1em;">����</span> : <a href="tel:<%=PhoneNum%>" style="text-decoration:underline;">02-3486-1421</a> &nbsp;(kimyj0723@bit.kr)</p>
				</div>

				
			</div>			
		</div> <!--//Box-->
		<a href="tel:<%=PhoneNum%>" data-role="button" class="ButtonCall">������ȭ�ϱ�</a>
		<a href="/Register/Request/register_shortCourse.asp?cID=Python" data-role="button" class="Button" target="_blank">�����ϱ�</a>
		<!--#include virtual="/M_Common/AdBox.inc" -->

	</div>
</body>
</html>