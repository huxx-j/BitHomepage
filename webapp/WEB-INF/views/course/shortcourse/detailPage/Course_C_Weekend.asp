<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
	' (DEPRECATED) // [�ָ���] C Programming
	' [�ָ���] C Master
	CourseID = "C_Weekend"
	dim strDate
	'//strDate	= "2017.12.9 ~ 2017.12.31"
	strDate	= "(����)"
%>

<!DOCTYPE html>
<!-- NOT REDIRECTABLE to Mobile --><!-- CourseReview deleted. -->
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
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

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
			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');			
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');
			
			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//elm_xPos2 = $(".btn_refundView2").offset().left + $(".btn_refundView2").width()/2;	<!-- added -->
			
			/* page load ���� SNB ���� */
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [����] ��Ʈ�������� ON
			$(".snb_1709 .newdepth3.newwrap.no1").addClass("on").removeClass("plus").addClass("minus");
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [����] ��Ʈ�������� SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no1").addClass("on").css('display','block');	// C ���α׷��� SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no1 li:eq(1) a").addClass("on");				// �ָ��� ON
		});
		
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<div id="Container_Wrap" style="min-height:initial;">
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[����]��Ʈ��������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>C Master
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ָ���
						</p>
						<h4>[�ָ���] C Master</h4>
					</div>
					<section class="section">
					
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table style="box-shadow:none !important;">
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th>�����Ⱓ</th>
											<td class="long"><!-- #include virtual="/Include/CourseDateTime/Date/Date__C_Weekend.inc" --></td>
											<th>���ǽð�</th>
											<td class="long"><!-- #include virtual="/Include/CourseDateTime/Time/Time__C_Weekend.inc" --></td>										
										</tr>
										<tr>
											<th>�������</th>
											<td>394,440�� <span class="blueTxt">(������ ȯ�� ����)</span></td>
											<th>����������</th>
											<td>��뺸�� ȯ�� <a href="#" id="btnOpenSaGn1" class="btnBlueBorder">�ڼ�������</a></td>
										</tr>
										<tr>
											<th>��������</th>
											<td>30��</td>
											<th>����</th>
											<td>02-3486-1780 &nbsp;(<a href="mailto:kang.i.y@bit.kr" class="email">kang.i.y@bit.kr</a>)</td>
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
						<div style="clear:both;"></div>
						
						<div class="con_wrap1709 ">
							<h5>�����ε��</h5>
							<img src="Images/C-Master.PNG" style="text-align:center; width:100%;"/>
						</div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>�����Ұ�</h5>
							<p>
								�� ������ �⺻���α׷��ֿ������� �߱� �̻��� ���α׷��Ӱ� �Ǳ� ���� �������μ� ���α׷��� �ʼ��� �������� �ϴ� �ڿ��� �ʿ��� �ǽ� ������ �����Դϴ�. <br/>
								������ ������ ���ؿ� �����ɷ� ���, ���� ������Ʈ�� ���� ���°��߰� ��ǥ�� ���� �پ��� ����ȯ�濡 ��� �Ǵ� �ڷᱸ�� �� �˰��� ���Ͽ� �н��ϴ� �����Դϴ�. 
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>�⺻ �������� ��� ���α׷��ֱ��� �ܱⰣ�� ����</li>
								<li>�⺻ ���α׷��� ������ ���� �� ü������ �н� </li>
								<li>�ǽ��� ���� ȿ���� ���α׷��� ���� �ɷ� ���</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>C ���α׷����� �⺻���� ���׺��� �������� ü�������� �н��ϰ� ������ ��</li>
								<li>��ǻ�� ���� �� ����/���� ������</li>
								<li>�Ӻ���� �ý��� Ȥ�� �κ����п� ��̰� �ִ� ��</li>
								<li>������ �÷��� ����� ���α׷� ������ ����ϴ� ��</li>
								<li>���� ���α׷����� ������ �ϴ� ��</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<div style="float:left; width:180px;">
								<h5>���� ����</h5>
								<img src="Images/����C���α׷���.png" style="margin-left:15px; width:160px;  border:solid 1px #565656;"/>
							</div>
							<div style="float:left; width:250px; margin-top:27px; margin-left:15px;">
								<p style="margin-top:239px;">
									'�������� ���� C ���α׷���' <Br/>������ �� / �������̵��
								</p>
							</div>
							<div style="clear:both;"></div>
						</div>
						-->
						<!-- //con_wrap1709 -->
						
<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5>��������</h5>
							<div class="divTable">
								<table style="width:100%;">
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:50%">
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
											<td scope="row" rowspan="2" class="c darker">1��</td>
											<td>
												C��� �⺻����
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>C ��� Ư¡, �����Ϸ� ����</li>
													<li>��������, ���� ���� </li>
													<li>�⺻ ����� �Լ�, ������ </li>
													<li>���ǹ� </li>
													<li>�ݺ���</li>
													<li>C �⺻ ������ ���� �ǽ�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<li>�ǽ�(Unit test)</li>
											</td>
										</tr>
										
										<tr>
											<td scope="row" rowspan="2" class="c darker">2��</td>
											<td>
												�����Ϳ� �迭
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>1���� �迭 �̷�</li>
													<li>2���� �迭 �̷�</li>
													<li>�Լ��� �̷�</li>
													<li>�Լ��� �������� ����</li>
													<li>1���� �迭�� ������</li>
													<li>���ڿ��� ������</li>
													<li>2���� �迭�� ������</li>
													<li>�޸� ������ �����Ҵ�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<li>�ǽ�(Unit test)</li>
											</td>
										</tr>
										
										<tr>
											<td scope="row" rowspan="2" class="c darker">3��</td>
											<td>
												C����� Ȯ��
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>����ü �̷�</li>
													<li>����ü �迭�� ������</li>
													<li>��ũ�ο� ��ó����</li>
													<li>��������� �̷� �� �ǽ�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<li>�ǽ�(Unit test)</li>
											</td>
										</tr>
										
										<tr>
											<td scope="row" rowspan="2" class="c darker">4��</td>
											<td>
												�ڷᱸ��
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>�ڷᱸ�� ���� �� �˰����� ����</li>
													<li>�����ڷᱸ��(�迭, ���� ����Ʈ)</li>
													<li>���� �ڷᱸ���� Ȱ��, �ǽ� ������Ʈ I</li>
													<li>���ð� ť, �ǽ� ������Ʈ II</li>
													<li>�ڷᱸ���� Ȱ��, �ǽ� ������Ʈ III</li>
													<li>Ʈ��, �ǽ� ������Ʈ IV</li>
													<li>STL�� �Ϲ�ȭ ���α׷���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<li>�ǽ�(Unit test)</li>
											</td>
										</tr>
										
									</tbody>
								</table>
							</div>
							<!-- �󰭾ȳ� ���� -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
							</div>
							<div style="clear:both;"></div>

							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.3456 &nbsp;(kang.i.y@bit.kr)</p>-->
						</div>
						<!-- con_wrap1709 -->

						<br/>
						
						<!-- con_wrap1709 ��뺸��ȯ�� -->
						<div class="con_wrap1709">
							<h5 style="float:left;">��뺸�� ȯ�� </h5>
							<div id="divBtnOpenSaGn2" style="float:left; margin-top:47px; margin-left:7px;"><a href="#" id="btnOpenSaGn2" class="btnBlueBorder">�ڼ�������</a></div>
							<div style="float:right; margin-top:22px; margin-right:3px;"><img id="imgBtnClose" src="/Images/Common/ico_Close_98_128.png" style="width:16px; display:none;"/></div>
							<div style="clear:both;"></div>
														
							<div id="divSa" style="DISPLAY:NONE; " class="con_wrap1709ul">
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
									<a href="/Upload/company2.zip" class="mar_l10 btnBlueBorder" style="margin:10px auto;">����� ��Ź�Ʒ� ��û���� �ٿ�ε�</a>
									<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">�� ��û���� �ۼ� �� kang.i.y@bit.kr�� �����ֽñ� �ٶ��ϴ�.</p>
								</div>
							
								<div class="divTable">
									<table>
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
								</div>
								<p>�� ����� ��Ź�Ʒ��� �⼮�� 80% �̻��� ��츸 ����ȯ�ޱ��� ���� �� �ִ�.</p>
							</div>

							<div id="divGn" style="DISPLAY:NONE;"> <!-- class="con_wrap1709ul">-->
								<h5>�ٷ��� �����ɷ��������</h5>
								<p>��뺸���� ���εǴ� ������ ������ <b>'������ ���Ϲ��ī��'</b>�� �߱޹޾� ������ ������ �޴� ����</p>
								
								<h5>�������</h5>
								<p>- �켱���� ����� �ٷ���, ��뺸�� ���ǰ��� �ڿ�����, �Ⱓ�� �ٷ���, �ܽð� �ٷ���, �İ� �ٷ���, �Ͽ� �ٷ���</p>

								<h5>��������</h5>
								<p>�����ѵ��ݾ��� 1�δ� �Ⱓ 200���� �ѵ� ������ �Ʒð����� ���� 60~100% ����</p>
								
								<div style="text-align:center;">
									<a href="/Upload/employ2.zip" class="mar_l10 btnBlueBorder" style="margin:10px auto;">�ٷ��� �����ɷ�������� ��û���� �ٿ�ε�</a>
									<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">�� ��û���� �ۼ� �� kang.i.y@bit.kr�� �����ֽñ� �ٶ��ϴ�.</p>
								</div>
								<div class="divTable">
									<table>
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
							
						</div>
						<!-- //con_wrap1709 ��뺸��ȯ�� -->

						<!-- �ڰ������� �Ұ� -->
						<!-- # i n c lude virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCCPM1704.asp"-->
						<!-- /�ڰ������� �Ұ� -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=C_Weekend" class="btn mid green1">������û</a>
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

