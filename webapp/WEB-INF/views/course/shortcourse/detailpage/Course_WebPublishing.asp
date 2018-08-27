<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "WebPublish_core"
SubjectName = "Web Publishing �ǹ�"
%>

<%
	dim strDate
	strDate = "<span class='blueTxt'>2017.11.28 ~ 2017.11.30 </span>"
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
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');
			$(".snb_1709 a.newdepth1").eq(3).addClass("on");								// JavaScript
			$(".snb_1709 .newdepth2_wrap").eq(3).addClass("on");						// JavaScript SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no4 .newdepth2").eq(3).addClass("on");  	// Web Publishing �ǹ� ON
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap" style="min-height:1000px;">
			
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>JavaScript
						</p>
						<h4><%=SubjectName%></h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first last">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												(����)
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												(����)
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>270,000�� <!--<span class="greenTxt"> ���ϸ��� 5%���� (27,500��)</span>--></td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">��뺸�� ��ȯ��<!--�ٷ���ī�� (������ : 126,230�� | �������� : 157,780��) | ����� ȯ�� : �ִ� 157,780��--><!--<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a>--></td>
										</tr>
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_1234.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p><!--�� ������ �������̳ʰ� ���ۺ��ŷ� �����ϱ����� ����� �����Դϴ�.--> HTML�� �����߰� ������ �о߿� ���� �⺻���� ����̸�, �ֱ� ��ǥ���� �ΰ��Ǹ鼭 HTML�� ���Ҿ� CSS�� �߿䵵�� ������ ��Ȳ�Դϴ�. �� ������ HTML�� CSS�� �̿��Ͽ� ����� ���̳� ����ũž �� ���񽺸� ������ �� �ֵ��� HTML�� ���ʺ��� �ǹ������� ü�������� ������ �� �ֽ��ϴ�. HTML���� �����ϴ� ��Ƽ�̵�� ��Ҹ� ������ ���� ���� ����ְ� �н��� �����մϴ�.</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>HTML5����� ǥ�� �� ����Ʈ ���߰� ���� ����� ����</li>
								<li>HTML5�� �ֿ� ����� ������ API�� Ȱ���� ���α׷��� ����� ����</li>
								<li>������ ��� �� UI ������ ����</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>HTML5(HTML + CSS + JavaScript + jQuery)�� �����ϰ��� �ϴ� �������̳�</li>
								<li>HTML5����� ��/����� �� ������ ������ ����ϴ� ��</li>
								<li>������ �� ������ ����ϴ� ��</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� ����</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:35%">
										<col style="width:35%">
										<col style="width:30%">
									</colgroup>		
									<tbody>
										<tr>
											<th class="tit">��������</th>
											<th class="tit">������</th>
											<th class="tit">������ ����</th>
										</tr>
										<tr>
											<td>3�� 24h (09:00 ~ 18:00, 1�� 8h)</td>
											<td class="c">27����<!--<br/>������ ȯ�޺�:<br/>�ִ� 157,776��--></td>
											<td><img src="/Images/Content/img_BookCover_HTML5_WebProgramming_Hanbit.jpg" style="width:200px; border:1px solid #000;"/></td>
										</tr>
									</tbody>
								</table>
							</div>
							<br/>
						</div>
						
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 last">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:25%">
										<col style="width:75%">
									</colgroup>		
									<tbody>
										<tr>
											<th class="tit">������</th>
											<th class="tit">��������</th>
										</tr>
										<tr>
											<td class="darker c" rowspan="3">HTML5</td>
											<td>HTML5 ���� �� �����⺻</td>
										</tr>
										<tr>
											<td>��ũ�� ��Ƽ�̵��</td>
										</tr>
										<tr>
											<td>����</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="4">CSS3 & JavaScript</td>
											<td>CSS ��Ÿ�� ��Ʈ</td>
										</tr>
										<tr>
											<td>�ڹٽ�ũ��Ʈ ����</td>
										</tr>
										<tr>
											<td>DOM�� �ڹٽ�ũ��Ʈ</td>
										</tr>
										<tr>
											<td>ĵ����</td>
										</tr>
										<tr>									
											<td class="darker c" rowspan="3">jQuery & Ajax</td>
											<td>JavaScript ����� jQuery ���̺귯���� �����ϴ� ���</td>
										</tr>
										<tr>
											<td>���̺귯���� �ֿ� ������� ����</td>
										</tr>
										<tr>
											<td>Ajax</td>
										</tr>
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
								<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.3456 (e-mail : bithrd@bit.kr)</p>
								-->
								<!-- �󰭾ȳ� ���� -->
								<div style="float:right; margin-top:18px; font-size:15px;">
									<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
								</div>
								<div style="clear:both;"></div>

							</div>
						</div>
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=WebPublish_core" class="btn mid green1">�����ϱ�</a>
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