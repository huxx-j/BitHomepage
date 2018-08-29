<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
	dim CourseDateTime
	CourseDateTime = ""
	dim CourseID
	CourseID = "SelfLearnPrg"
%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel= "shortcut icon" href="/images/favicon.ico">
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");							// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [����] ��Ʈ�������� ON
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [����] ��Ʈ�������� SUB - OPEN
			$(".snb_1709 .newdepth3.no7").addClass("on"); 								// SW �����н� ���� Ŀ�´�Ƽ ON
			//$(".snb_1709 .newdepth4_wrap.no4").addClass("on").css('display','block');	// �ڷᱸ��/�˰��� ON
			//$(".snb_1709 .newdepth4_wrap.no4 li:eq(0) a").addClass("on");				// �ָ�/�ʱ� �ڷᱸ�� ON
			
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<div id="Container_Wrap" style="min-height:990px;">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܱ��ٽɰ���
						</p>
						<h4>SW �����н� ���� Ŀ�´�Ƽ</h4>
					</div>

					<section class="section">
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<p>
								��Ʈ�������� ���� ������ ���� ������ ���� �ñ��� ���� �ٷ� �ذ��ϸ�,
								������ ���� ���� �������� �ε�� �� ��� ����� �����մϴ�.
							</p>
							<ul class="ul_dot_gray">
								<li>1:1 ����Ʈ���� ���丵 �</li>
								<li>���� ������ó�� ������ �� �ִ� �����ü� ����</li>
								<li>�������簡 ��÷� �����Ͽ�, ���� ������ ���� �ñ��� ���� �ٷ� �ذ�</li>
								<li>���� �Ǵ� �׷����� ������Ʈ ���⹰�� ���� ������Ʈ ����</li>
								<li>â���� ����ϴ� ���, �������, �ַ���� ���⹰ ����, ��������</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;">
							<h5>��������</h5>
							<h5 class="small" style="margin-top:0px;">- �̷� ���丵 ����</h5>
							<p>
								<!--- �̷� ���丵 ����<br/>-->
								   * C Programming<br/>
								   * Java Programming<br/>
								   * C++ Programming<br/>
								   * Python Programming <br/>
									 - ��� : 300,000�� /1����(�ָ�����)<br/>
									 - ��Ʈ�� : ���� ���� <br/>
								   * ������ : 1/2 (������ ����)
							</p>
							<h5 class="small mar_t20">- ������Ʈ ���丵 ����</h5>
							<p class="">
								<!--- ������Ʈ ���丵 ����<br/>-->
								   * ��� �迭<br/>
								   * �ڹ� �迭<br/>
								   * �ȵ���̵� �迭<br/>
								   * �Ӻ���� �迭     <br/>
									 - ��� : 1,000,000�� / 1����<br/>
										 �� ������Ʈ ���ؿ� ���� �Ⱓ�� ���� ��<br/>
									 - ��Ʈ�� : ���� ����<br/>
								   * ������ : 1/2 (������ ����)
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5>���� ���</h5>
							<ul class="ul_dot_gray">
								<li>��,����л�</li>
								<li>���л�</li>
								<li>������� �� etc</li>
							</div>
						<!-- con_wrap1709 -->
						
						<div class="con_wrap1709" style="text-align:center; margin-top:50px;">
							<!-- ������ûbtn -->
							<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="������û" style="margin:22px 0;" class="btnApply c">
								<img src="/Images/Btns/btn_ApplyCourse.png"/>
							</a>
							<div style="clear:both; "></div>
						</div>
						
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=SelfLearnPrg" class="btn mid green1">�����ϱ�</a>
						</div>
						-->
					</section>
				</div>
				<!--<a href="#this" class="moveTop">Top</a>-->
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>