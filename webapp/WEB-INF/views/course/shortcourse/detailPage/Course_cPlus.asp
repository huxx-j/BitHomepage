<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "CP2_core"
'//SubjectName = "C++ Programming"
' C++ Programming
%>

<!DOCTYPE html>
<!-- not REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!--#include virtual="/Include/config.asp"--> 
	
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

			/********************* ��뺸��ȯ�� div, btn ����. *******************************************************/
			$("#btnOpenSaGn1").on("click", function(event) {
				var height = document.body.scrollHeight * 1.0;
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
			/*
			$("#btnOpenSa").on("click", function() {
				$("#divSa").show();
				$("#btnOpenSa").animate({opacity:0.01},300,function() { })
			})
			$("#btnOpenGn").on("click", function() {
				$("#divGn").show();
				$("#btnOpenGn").animate({opacity:0.01},300,function() { })
			})
			*/

			//��Ư $(".snb_1709 a.newdepth1").eq(6).addClass("on");								// ����Ư�� - C++ ���α׷���
			
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [����] ��Ʈ�������� ON
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [����] ��Ʈ�������� SUB - OPEN
			$(".snb_1709 .newdepth3.newwrap.no3").addClass("on").removeClass("plus").addClass("minus");	// C++ ���α׷��� ON 
			$(".snb_1709 .newdepth4_wrap.no3").addClass("on").css('display','block');	// C++ ���α׷��� SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no3 li:eq(0) a").addClass("on");				// ���߹� ON

		})
		
	</script>
	<script language="javascript"> 
	/*******
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_cPlus.asp";
	***********/
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>C++ ���α׷���
						</p>
						<h4>C++ ���α׷���</h4>
					</div>
					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
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
											<th>�����Ⱓ</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__CP2_core.inc" -->
												<!--
												2017.12.18 ~ 2018.1.16 <span class='greenTxt'>(�����)</span>
												-->
											</td>
											<th>���ǽð�</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__CP2_core.inc" -->
												<!--
												����� 19:00 ~ 22:00 (3�ð�/�� 60�ð�)
												-->
											</td>
										</tr>
										<tr>
											<th>�������</th>
											<td>
												394,440��<br/>
												<span>* 27,000�� ��� ���߱��� ����</span>
											</td>
											<th>����������</th>
											<td>��뺸�� ��ȯ�� <!--<a href="#" id="btnOpenSaGn1" class="btnBlueBorder">�ڼ�������</a>--></td>
										</tr>
										<tr>
											<th>��������</th>
											<td>30��</td>
											<th>����</th>
											<td>�ֱ��� 070-4166-2491</td>
										</tr>
									</tbody>
								</table> 
								<!-- ������ûbtn -->
								<a href="https://pf.kakao.com/_SmhqV" title="īī���� ����û" style="float:right; margin:12px 5px;" class="btnApply">
									<img src="/Images/Btns/btn_Kakao.png"/>
								</a>
								
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->

						<div style="clear:both;"></div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p>�� ������ ����Ʈ���� ���� ���� �� ��ü ���� ���� ������� �����Ͽ�, C++�� ���� ��ü���� ���α׷��� ����� ������, Ŭ���� ���̺귯�� ���� �� ��ü ���� ����Ʈ��� �ۼ��� �� �ֵ��� �����Ͽ� C++ ���α׷��ְ� UML�� Ȱ���� �ǽ� ������ ������ ���� �ǹ� ������Ʈ�� ���� �������� ����ų �� �ֵ��� �����Ǿ� �ֽ��ϴ�.</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>C++ ���α׷����� �������� �帧 �ľ�</li>
								<li>��ü���� ���α׷��� �ɷ� �Ծ�</li>
								<li>���α׷��� ���� ������ ���� �� Ȱ�� �ɷ� �Ծ�</li>
								<li>������ ������ �ǹ� ������Ʈ ������ ���</li>
								<!--<li>�ó������� ���� �� ���� �������� �ؾ� �� �ϵ��� �����̰� ��� �� ������ �ϴ����� �ǽ� ������ ���Ƿ� ���� (�̷� : �ǽ� = 3 : 7)</li>-->
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<div style="float:left; width:180px;">
								<h5>���� ����</h5>
								<img src="/Images/Content/img_BookCover_PassionOfCpp.jpg" style="margin-left:15px; width:160px;"/>
							</div>
							<div style="float:left; width:250px; margin-top:27px; margin-left:15px;">
								<p style="margin-top:203px;">
									���� C++ ���α׷��� <br/>������ �� / �������̵��
								</p>
							</div>
							<div style="clear:both;"></div>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<caption>C++ Programming Ŀ��ŧ��</caption><!--ver20160730-->
									<colgroup>
										<col style="width:15%">
										<col style="width:35%">
										<col style="width:50%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">������</th>
											<th scope="col">������</th>
											<th scope="col">��������</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" rowspan="8">�⺻</td>
											<td rowspan="4">C ���� ���� C++</td>
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
											<td rowspan="4">Class</td>
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
										<tr>
											<td class="darker c" rowspan="7">��ȭ</td>
											<td rowspan="3">Inheritance</td>
											<td>���� �����ڿ� ���� ������</td>
										</tr>
										<tr>
											<td>override function</td>
										</tr>
										<tr>
											<td>up-casting, binding, virtual function</td>
										</tr>
										<tr>
											<td rowspan="3">Operator Overloading</td>
											<td>������ ������ ����, ���� ���� ������</td>
										</tr>
										<tr>
											<td>���Կ����� / <<,>> ������ / �迭������ / ��ȯ������</td>
										</tr>
										<tr>
											<td>new/delete�� ������</td>
										</tr>
										<tr>
											<td>Template</td>
											<td>�Լ� template / Ŭ���� template</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="4">Ȱ��</td>
											<td rowspan="4">STL</td>
											<td>Iterators</td>
										</tr>
										<tr>
											<td>Sequence Algorithms / Sequence Containers</td>
										</tr>
										<tr>
											<td>Associative Containers</td>
										</tr>
										<tr>
											<td>Adaptors</td>
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
						
						<!-- con_wrap1709 ��뺸��ȯ�� -->
						<div class="con_wrap1709 dnone">
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
								</div>
								<!--<span class="redTxt">�� �������Ź�Ʒ��� ��� ������ 350,000�� �����ϰ�, �⼮�� 80% �̻��� ��� ȯ�ޱ��� �ǵ��� ���� �� �ֽ��ϴ�</span><br/>-->
								<span class="redTxt"> �� �������Ź�Ʒ��� ��� ������ 394,440�� �����ϰ�, �⼮�� 80% �̻��� ��� ȯ�ޱ��� �ǵ��� ���� �� �ֽ��ϴ�.</span><br/>
								<span class="redTxt"> �� �Ϲ���(�Ǿ��� �Ǵ� ���л�)�� ������ ���� ���� �δ��Դϴ�.</span><br/>
							</div>
										
							<div id="divGn" style="DISPLAY:NONE;" class="con_wrap1709ul">
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
								</div>
								<!--
								<span class="redTxt">�� �ٷ��� �����ɷ��������(ī��߱� �����)�� ���κδ�� 70,000���� �����մϴ�</span><br/>
								<span class="redTxt">�� �Ϲ���(�Ǿ��� �Ǵ� ���л�)�� ������ ���� ���� �δ��Դϴ�</span>
								-->
							</div>
						</div>
						<!-- //con_wrap1709 ��뺸��ȯ�� -->
								
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=CP2_core" class="btn mid green1">�����ϱ�</a>-->
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=cppVacation" class="btn mid green1">�����ϱ�</a>-->
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

