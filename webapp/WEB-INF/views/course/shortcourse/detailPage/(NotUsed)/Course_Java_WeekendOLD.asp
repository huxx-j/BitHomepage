<%
dim strDate
strDate = "2017.06.10 ~ 2017.07.02"
%>

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');
			
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("JAVA")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no8").addClass("on").removeClass("down").addClass("up"); 	
			$(".snb_1702 .newdepth3_wrap.no8").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no8 li:eq(1) a").addClass("on");
			
			$("#btnOpenSa").on("click", function() {
				$("#divSa").show();
				$("#btnOpenSa").animate({opacity:0.01},300,function() { })
			})
			$("#btnOpenGn").on("click", function() {
				$("#divGn").show();
				$("#btnOpenGn").animate({opacity:0.01},300,function() { })
			})
			
		});
	</script>
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">JAVA Programming (�ָ�)</span></h3>
				<h4>���α׷��� �ʼ����� ����� �����ͺ��̽��� �ڹٰ��� ������ ���� �ǹ��� ���� ������ ���α׷����� <br>���� �� �ֵ��� �ɷ��� �� �ܰ� ���׷��̵� �� �� �ִ� ����</h4>
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
						<h4 class="fl">JAVA Programming (�ָ�)</h4>
						<a href="/Register/Request/register_shortCourse.asp?cID=Java_Weekend" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���α׷��ְ���</a>
							<a href="#this">JAVA</a>
							<a href="#this" class="last on">JAVA Programming (�ָ�)</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>JAVA Programming (�ָ�)</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">JAVA Programming (�ָ�)</td>
										</tr>

										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul>
													<li style="min-height:20px;"><%=strDate%></li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<span class="blueTxt">1�� 5�ð� * 8��(�� 40�ð�) </span>
												
												<ul class="ul_dot_gray">
													<li>��/��</li>
													<li>���� : 13:00 ~ 18:00(5�ð�)</li>
												</ul>	
												
											</td>
										</tr>
										

										<tr>
											<th scope="row" class="tit">������</th>
											<td>400,000��<!--262,960��--> <span class="blueTxt">(������ ȯ�� ����)</span> </td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
								<span class="redTxt">* �� ������ ��ø����̸� ���� �ּ��ο��� ���� ��, ���� ���� �� ���������ڵ鿡�� �����Ͽ� �����˴ϴ�.</span>
								
								<div> <!-- div ȯ�޺� -->
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										�������Ź�Ʒ� <a href="javascript:openSa();" id="btnOpenSa" class="mar_l10 btn sml blue">ȯ�ޱݾ� �ڼ�������</a>
										<!--<span style="margin-left:663px;"><a href="#this" class="mar_l10 btn sml blue btn_refundView2">ȯ�޳��� �ڼ�������</a></span>-->
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
												<col style="width:19%">
												<col style="width:19%">
												<col style="width:11%">
												<col style="width:11%">
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
													<td rowspan="4">400,000��</td>
													<td>262,960��</td>
													<td>137,040��</td>
													<td>65%</td>
													<!--<td rowspan="4"></td>-->
												</tr>
												<tr>
													<td>50�� �̻�</td>
													<td>236,660��</td>
													<td>163,340��</td>
													<td>59%</td>
												</tr>
												<tr>
													<td rowspan="2">�߰� �Ǵ� ����</td>
													<td>1,000�� �̸�</td>
													<td>157,770��</td>
													<td>242,230��</td>
													<td>39%</td>
												</tr>
												<tr>
													<td>1,000�� �̻�</td>
													<td>105,180��</td>
													<td>294,820��</td>
													<td>26%</td>
												</tr>
												
											</tbody>
										</table>
										<span class="redTxt"> �� �������Ź�Ʒ��� ��� ������ 400,000�� �����ϰ�, �⼮�� 80% �̻��� ��� ȯ�ޱ��� �ǵ��� ���� �� �ֽ��ϴ�.</span><br/>
										<span class="redTxt"> �� �Ϲ���(�Ǿ��� �Ǵ� ���л�)�� ������ ���� ���� �δ��Դϴ�.</span><br/>
									</div>
									
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										�ٷ��� �����ɷ�������� <a href="javascript:openGn();" id="btnOpenGn" class="mar_l10 btn sml blue">ȯ�ޱݾ� �ڼ�������</a>
										<!--<span style="margin-left:607px;"><a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></span>-->
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
												<col style="width:19%">
												<col style="width:26%">
												<col style="width:10%">
												<col style="width:12%">
												<col style="width:12%">
											</colgroup>
											<tbody style="text-align:center;">
												<tr>
													<th>������� �з�</th>
													<th>���</th>
													<th>������</th>
													<th>���κδ��</th>
													<th>�ںδ����</th>
													
												</tr>
												<tr>
													<td rowspan="4">�켱���������<br/>(�߼ұ��)</td>
													<td>��������</td>
													<td rowspan="9">400,000��</td>
													<td rowspan="4">137,040��</td>
													<td rowspan="4">34%</td>
												</tr>
												<tr>
													<td>���� ������</td>
												</tr>
												<tr>
													<td>���� ������</td>
												</tr>
												<tr>
													<td>������</td>
												</tr>
												<tr>
													<td rowspan="5">�߰� �Ǵ� ����</td>
													<td>��������</td>
													<td>137,040��</td>
													<td>34%</td>
												</tr>
												<tr>
													<td>���� ������</td>
													<td>189,630��</td>
													<td>47%</td>
												</tr>
												<tr>
													<td>���� ������</td>
													<td>137,040��</td>
													<td>34%</td>
												</tr>
												<tr>
													<td>������(50���̻�)</td>
													<td>189,630��</td>
													<td>47%</td>
												</tr>
												<tr>
													<td>3�Ⱓ ��������<br/>(3�Ⱓ �ٷ��������ɷ������ �̱�����)</td>
													<td>189,630��</td>
													<td>47%</td>
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

						<!-- con_wrap -->
						<div class="con_wrap" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>�����Ұ�</h5>
							<!--<p>�� ������ �ڹ� ���α׷��� ��ü���������� ����� ����� ���ؼ� �н��ϰ�, �ڷᱸ���� ���ؼ� �����ϰ� �ڹٸ� �̿��� �̸� ���� �����غ��� Collection �����ӿ�ũ�� ������ Ȱ���ϰ� ����� ���α׷��� ���ؼ� �����ϰ� java.io ��Ű���� �����Ǵ� �پ��� ����� Ŭ������ Ư¡�� �н��ϸ� �����带 �����ϰ� �ǹ��� ������ �� �ֵ��� �ϸ� ��Ʈ��ũ�� ���ؼ� �����ϰ� ���ڼ��� �� ä�ü��� ���α׷��� �ۼ��Ѵ�. ���α׷��� �ʼ����� ����� �����ͺ��̽��� �ڹٰ��� ������ ���� �ǹ��� ���� ������ ���α׷����� ���� �� �ֵ��� �ɷ��� �� �ܰ� ���׷��̵� �� �� �ִ� �����̴�.</p>-->
							<p>JAVA���� ���� ��� ���忡�� ���䰡 ���� ���� ��ü�������Դϴ�. �� ���� ���ݿ� ���� �η� Ȱ��� �Ӹ� �ƴ϶� �ڵ� ���뼺�� ���� ���������� ������ ���� �ȵ���̵� ���ð��� �� ���� ȭ�ΰ� �ǰ� �ִ� ���� it ����� �߿��� ���ʰ� �Ǵ� ����Դϴ�. �� ������ �ڹ� ���α׷��� ��ü���������� ����� ����� ���ؼ� �н��ϴ� �������� JAVA�� �⺻ ������ źź�� ���� �� �ִ� ���� �����Դϴ�.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>�ڹ� ���α׷��� ��ü���������� ����� ����� ���ؼ� �н��Ͽ� ������ �� �ִ�.</li>
								<li>�ڷᱸ���� ���ؼ� �����ϰ� �ڹٸ� �̿��� �̸� ���� �����غ��� Collection �����ӿ�ũ�� ������ Ȱ���� �� �ִ�.</li>
								<li>����� ���α׷��� ���ؼ� �����ϰ� java.io ��Ű���� �����Ǵ� �پ��� ����� Ŭ������ Ư¡�� ������ �� �ִ�. </li>
								<li>�����带 �����ϰ� �ǹ��� ������ �� �ִ�.</li>
								<li>��Ʈ��ũ�� ���ؼ� �����ϰ� ���ڼ��� �� ä�ü��� ���α׷��� �ۼ��� �� �ִ�. </li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>Java �� ó�� ���ô� ��</li>
								<!--<li>Java ����� ���� �������� �����Ϸ��� �� </li>-->
								<li>��ü���� ���α׷����� ������ ������ �Ͻô� ��</li>
								<li>�ȵ���̵� ���� ���߿� ������ �ִ� ��</li>
								<li>�� ���� ���� ����� �����ϰ��� �Ͻô� ��</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<div style="float:left; width:180px;">
								<h5>���� ����</h5>
								<img src="/Images/Content/img_BookCover_iamjava.jpg" style="margin-left:15px; width:160px;  border:solid 1px #565656;"/>
							</div>
							<div style="float:left; width:650px; margin-top:27px; margin-left:15px;">
								<p style="margin-top:235px;">
									'�� ���� JAVA�� ������ ���� ���ٱ���' <Br/>������ �� / �������̵��
									
								</p>
							</div>
							<div style="clear:both;"></div>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>Ŀ��ŧ��</h5>
							<table class="table_col_type1" style="margin-left:2%;">
								<caption>JAVA Web Ŀ��ŧ��</caption>
								<colgroup>
									<col style="width:20%">
									<col style="width:20%">
									<col style="width:60%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">������</th>
										<th scope="col">������</th>
										<th scope="col">�󼼳���</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" rowspan="4">Java Beginning</th>
										<td rowspan="4" class="c">�ڹ� �⺻����</td>
										<td>�ڹ��� ����� ���� ȯ�� ����, �������� ������ ���� �ڹ��� �ڷ����� �н��Ѵ�.</td>
									</tr>
									<tr>
										<td>�����͸� �����ϱ� ���� ������, �ʿ��� �۾����� ���������� �ؾ� �� ��� ����ϴ� ���ù� �н��Ѵ�.</td>
									</tr>
									<tr>
										<td>Ư�� �κ��� ������ �ݺ��ϰ� ����� �ִ� �ݺ��� �н� �Ѵ�.</td>
									</tr>
									<tr>
										<td>�ڷ����� ������ ���� ���� ���� ���̾� ������ �� �ֵ��� �ϴ� ��� ������ ����ü�� �迭�� �޼ҵ� ���ǿ� ȣ������ ������.</td>
									</tr>

									<tr>
										<th scope="row" rowspan="6">Java Fundamental</th>
										<td rowspan="2" class="c">��ü ���� ���α׷���</td>
										<td>��ü������ ����� Ŭ���� ����, ��ü �ν��Ͻ� ���� �н��Ѵ�.</td>
									</tr>
									<tr>
										<td>�޼ҵ� �����ε��� �����ڸ� �н��Ѵ�.</td>
									</tr>
									<tr>
										<td rowspan="4" class="c">���</td>
										<td>�ڵ� ��Ȱ���� ���� ����� �����Ѵ�.</td>
									</tr>
									<tr>
										<td>�޼ҵ� �������̵��� ��ĳ���� �ٿ� ĳ������ �н��Ѵ�</td>
									</tr>
									<tr>
										<td>�߻� Ŭ������ �����ϰ� �����ϴ� ����� ������.</td>
									</tr>
									<tr>
										<td>�������̽��� ����� ���� ��ӿ� ���� �˾ƺ���.</td>
									</tr>

									<tr>
										<th scope="row" rowspan="8">Java Advanced</th>
										<td rowspan="3" class="c">�ڹ� �ֿ� Ŭ����</td>
										<td>�ڹ� ��Ű�� �� ���� ���Ǵ� Ŭ������ ���ɴ�.</td>
									</tr>
									<tr>
										<td>�ڷᱸ���� �÷��ǿ� ���ؼ� �н��Ѵ�.</td>
									</tr>
									<tr>
										<td>�ڹ�Ŭ���� �ǽ�</td>
									</tr>
									<tr>
										<td rowspan="5" class="c">IO/������</td>
										<td>����� ���α׷��� ���ؼ� �����Ѵ�.</td>
									</tr>
									<tr>
										<td>java.io ��Ű���� �����Ǵ� �پ��� ����� Ŭ������ Ư¡�� ������ �� �ִ�.</td>
									</tr>
									<tr>
										<td>�����带 �����ϰ� �ǹ��� ������ �� �ִ�.</td>
									</tr>
									<tr>
										<td>��Ƽ������ ���α׷����� �н��Ѵ�.</td>
									</tr>
									<tr>
										<td>�������� ����ȭ�� ���ؼ� �н��Ѵ�.</td>
									</tr>
									
								</tbody>
							</table>
							<p class="mar_t10"><span class="fb">����</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>
						</div>
						
						<!-- �ڰ������� �Ұ� -->
						<!-- #include virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCJPM.asp"-->
						<!-- /�ڰ������� �Ұ� -->
						
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=Java_Weekend" class="btn mid green1">�����ϱ�</a>
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