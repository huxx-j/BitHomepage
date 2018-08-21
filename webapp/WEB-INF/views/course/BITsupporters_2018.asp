<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<!DOCTYPE html>
<!-- NOT REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView �� .btn_refundView2�� /JS/Common.js �� �̺�Ʈ�ڵ鷯 ���� -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			$(".snb_1709 a.newdepth1").eq(7).addClass("on");		// SW������ �İ��� ����
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

<body><!-- style="background:#ffffff;">-->
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_JobCenter_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>SW������ �İ��� ����
						</p>
						<h4 style="float:left;">SW������ �İ��� ����</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
					
					<section class="section">
						
						<div class="con_wrap1709">
							<h5>SW������ �İ��� ������?</h5>
							<p>
								- �ֱ� IT�о��� �η³��� û��Ǿ����� ������� �ް� �ִ� ��Ȳ���� ����� �������� �̽���Ī�� �ذ��ϰ�, SW�о��� ���°� Ȱ��ȭ�� ��ȯ���� ��Ʈ���������� ���� ���� ���������� ���� ��ȸ�� ���� �� �� �ִ� ���縦 �缺�ϴ� ���ѹα� ������ ���� ������ �İ��� ������ �ǽ� �մϴ�.<br/>
								- �İ����� �İߴ���ڸ� ��õ�Ͽ� <b>��ȸ���⿡ �����ϸ�</b> �İ��ο��� ������ <b>����ǰ</b>�� �帳�ϴ�.
							</p>
						</div>

						<div class="con_wrap1709">
							<h5>�İ����� �ڰ�</h5>
							<p>
								- ��Ʈ�������� ���������� ���� ��õ�� ������ ��<br/>
								<span class="redTxt">�� ��) ���������, ��Ʈ�����, ���� �� ��Ÿ</span>
							</p>
						</div>

						<div class="con_wrap1709">
							<h5>�İߴ������ ����</h5>
							<p>
								- SW�о� ��������� ���� ��ȸ���� �����<br/><br/>
								<b>�� �İ��� ���� ���� ��� ����</b><br/>
								- ������� ��, �ٷ� ä���� ����� ��������� �ʿ��� ��<br/>
								- ���� �Ǵ� �Ĺ� ��, SW�о߷� ����� ����ϴ� �� 
							</p>
						</div>

						<div class="con_wrap1709">
							<h5>SW������ �İ��� Ư��</h5>
							<p>
								- ��ǰ�� 30���� (���� ���� ��)<br/>
								- �İߴ���� ��� �� �������� ���� Feedback<br/>
								- ä���� ����ϴ� ������� �����켱�� ����
							</p>
						</div>

						<div class="con_wrap1709">
							<h5>�İ��� ��û���</h5>
							<p>
								- <b><a class="email" href="/Upload/BITsupporters_apply.docx">�İ��� ��õ��</a></b>�� �ۼ��Ͽ� ��Ʈ�������Ϳ� <b>�̸���(<a href="mailto:job@bit.kr" class="email">job@bit.kr</a>)</b>�� �����ֽø� �İߴ���ڿ��� �����Ͽ� ���������� ��, ����� Feedback �帮�ڽ��ϴ�.
							</p>
						</div>

						<div class="con_wrap1709 last">
							<h5>�İ��� ���� �����</h5>
							<p>
								- ��Ʈ�������� ������ ����<br/>
								- ����ó: 02-3486-1248<br/>
								- E-mail: <a href="mailto:job@bit.kr" class="email">job@bit.kr</a>
							</p>
						</div>

					</section>
					<!--<a href="#this" class="moveTop">Top</a>-->
				</div>
			</div>
			<!-- // Content_Wrap -->
		</div>
		<!-- // Container_Wrap -->
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>