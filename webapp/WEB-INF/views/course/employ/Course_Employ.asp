<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<!DOCTYPE html>
<!-- NOT REDIRECTABLE to Mobile -->
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

			$(".myConList").on("mouseenter", function() {
				//$(this).stop(true,true).animate({'backgroundColor':'#ffffea',"borderColor":"#2f2fff"},400,'easeOutElastic');
				$(this).stop(true,true).animate({"borderColor":"#2f2fff"},400,'easeOutElastic');
				$(this).css("cursor","pointer");
				$(this).css("box-shadow","0px 0px 5px #7f7fff")
			}).on("mouseleave", function() {
				$(this).stop(true,true).animate({'borderColor':'#d1d1d1'},1000,'easeOutElastic');
				$(this).css("box-shadow","none");
			}).on("click", function() {
				if(typeof $(this).attr("h_ref") != 'undefined') location.href = $(this).attr("h_ref"); 
			});
			
			$(".snb_1709 a.newdepth1").eq(2).addClass("on");
			$(".snb_1709 .newdepth2_wrap").eq(2).addClass("on");
			$(".snb_1709 .newdepth2_wrap.no3").find("li a").eq(0).addClass("on");  
		});
	</script>
	<style>
		.conImg a img { width:90% !important; }
		.conImg { height:80px; }
		
		/* BELOW : for 4 boxes in one row: */
		.myConList { border:1px solid #d1d1d1; float:left; width:23.7%; height:204px; margin-left:5px; margin-bottom:6px; background-color:#f9f9f9; }
		.conImg { height:100px; }
		.companyName { font-size:18px; letter-spacing:-1px; font-weight:600; line-height:18px; }
		.companyCnt { min-height:60px; letter-spacing:-1.5px; }
		.divName { height:40px; overflow-y:hidden; }

		/* 
			--DEPRECATED--
			BELOW : for 5 boxes in one row :
			.myConList { border:1px solid #d1d1d1; float:left; width:19%; height:174px; margin-left:5px; background-color:#f9f9f9; }
			.companyName { font-size:14px; font-weight:800; line-height:18px; }
			.divName { height:40px; }
		*/
		
		/* 
			--DEPRECATED--
			BELOW : for 6 boxes in one row: 
			.myConList { border:1px solid #d1d1d1; float:left; width:15.6%; height:184px; margin-left:5px; margin-bottom:6px; background-color:#f9f9f9; }
			.companyName { font-size:12px; letter-spacing:-1px; font-weight:800; line-height:18px; }
			.companyCnt { min-height:60px; letter-spacing:-1.5px; }
			.divName { height:40px; overflow-y:hidden; }
		*/
	</style>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseSupport_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>���������������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>���Ի�� ä�뱳��
						</p>
						<h4 style="float:left;">���Ի�� ä�뱳�� �Ұ�</h4>
						<div style="clear:both;"></div>
					</div>
					<section class="section">
						<div style="padding-top:30px; DISPLAY:NONE;">
							<!-- BANNER : IVIS -->
							<div class="myConList courseEmploy" h_ref="/Course/Employ/Course_Employ_ivis.asp">
								<div class="conCnt conCntDynamic" style="padding:0;">
									<div class="conImg"><a href="/Course/Employ/Course_Employ_ivis.asp">
										<img src="/Images/Main/img_logo_05.jpg" style="width:50%; margin-top:16px; margin-left:7px;">
									</a></div>
									<div class="divName">
										<p class="companyName" align=center><span href="/Course/Employ/Course_Employ_ivis.asp">�߾��̺�</span></p>
									</div>
									<p class="companyCnt" align=center>
										<span href="/Course/Employ/Course_Employ_ivis.asp">
											<span class="blueTxt">������ SW ����<br/>�� ������</span><br/><br/>
											<span style="font-weight:900; color:#ff0000;">������</span>
										</span>
									</p>
								</div>
							</div>
							<!-- BANNER : ���ν���ũ����� -->
							<div class="myConList courseEmploy" h_ref="/Course/Employ/Course_Employ_AurosTech.asp">
								<div class="conCnt conCntDynamic" style="padding:0;">
									<div class="conImg"><a href="/Course/Employ/Course_Employ_AurosTech.asp">
										<img src="/Images/Content/Employ/img_LOGO_AurosTech.png" style="width:95% !important; margin-top:25px; ">
									</a></div>
									<div class="divName">
										<p class="companyName" align=center><span href="/Course/Employ/Course_Employ_AurosTech.asp">�߿��ν���ũ�����</span></p>
									</div>
									<p class="companyCnt" align=center>
										<span href="/Course/Employ/Course_Employ_ivis.asp">
											<span class="blueTxt">�ݵ�ü Overlay ��� SW<br/>���� ����</span><br/><br/>
											<span style="font-weight:900; color:#ff0000;">������</span>
										</span>
									</p>
								</div>
							</div>
							<!-- BANNER : BizTechPartners -->
							<div class="myConList courseEmploy " h_ref="/Course/Employ/Course_Employ_BizTechPartners.asp">
								<div class="conCnt conCntDynamic" style="padding:0;" >
									<div class="conImg" ><a href="http://www.bitacademy.com/Course/Employ/Course_Employ_BizTechPartners.asp">
										<img src="/Images/Content/Employ/img_LOGO_BizTechPartners.png" style="width:80%; margin-top:11px; margin-left:7px;">
									</a></div>
									<div class="divName">
										<p class="companyName" align=center><span href="http://www.bitacademy.com/Course/Employ/Course_Employ_BizTechPartners.asp">�ߺ�����ũ��Ʈ�ʽ�<br/><span style="display:block; font-size:0.9em; line-height:10pt !important;">(LG CNS ��ȸ��)</span></span></p>
									</div>
									<p class="companyCnt" align=center>
										<span href="http://www.bitacademy.com/Course/Employ/Course_Employ_BizTechPartners.asp">
											<span class="blueTxt">������ / ����� �� �� ����<br/>����</span><br/><br/>
											<span style="font-weight:900; color:#ff0000;">������</span>
										</span>
									</p>
								</div>
							</div>
							<!-- BANNER : PSK -->		
							<div class="myConList courseEmploy " h_ref="/Course/Employ/Course_Employ_PSK.asp">
								<div class="conCnt conCntDynamic" style="padding:0;" >
									<div class="conImg"><a href="http://www.bitacademy.com/Course/Employ/Course_Employ_PSK.asp">
										<img src="/Images/Content/Employ/img_LOGO_PSK.png" style="width:80% !important; margin-top:5px; margin-left:14px;">
									</a></div>
									<div class="divName">
										<p class="companyName" align=center><span href="http://www.bitacademy.com/Course/Employ/Course_Employ_PSK.asp">���ǿ�������</span></p>
									</div>
									<p class="companyCnt" align=center>
										<span href="http://www.bitacademy.com/Course/Employ/Course_Employ_PSK.asp">
											<span class="blueTxt">������ ��� ����</span><br/><br/><br/>
											<span style="font-weight:900; color:#ff0000;">������</span>
										</span>
									</p>
								</div>
							</div>
							<!-- BANNER : Cafe24 -->		
							<div class="myConList courseEmploy " h_ref="/Course/Employ/Course_Employ_Cafe24.asp">
								<div class="conCnt conCntDynamic" style="padding:0;" >
									<div class="conImg"><a href="http://www.bitacademy.com/Course/Employ/Course_Employ_Cafe24.asp">
										<img src="/Images/Content/Employ/img_LOGO_Cafe24.png" style="width:90% !important; margin-top:25px; margin-left:8px;">
									</a></div>
									<div class="divName">
										<p class="companyName" align=center><span href="http://www.bitacademy.com/Course/Employ/Course_Employ_Cafe24.asp">��ī��24</span></p>
									</div>
									<p class="companyCnt" align=center>
										<span href="http://www.bitacademy.com/Course/Employ/Course_Employ_Cafe24.asp">
											<span class="blueTxt">������</span><br/><br/><br/>
											<span style="font-weight:900; color:#ff0000;">������</span>
										</span>
									</p>
								</div>
							</div>
							<!-- BANNER : BIT Computer -->
							<div class="myConList courseEmploy " h_ref="/Course/Employ/Course_Employ_BitComputer.asp">
								<div class="conCnt conCntDynamic" style="padding:0;" >
									<div class="conImg"><a href="http://www.bitacademy.com/Course/Employ/Course_Employ_BitComputer.asp">
										<img src="/Images/Main/img_logo_BITCOM.png" style="width:90% !important; margin-top:25px; margin-left:8px;">
									</a></div>
									<div class="divName">
										<p class="companyName" align=center><span href="http://www.bitacademy.com/Course/Employ/Course_Employ_BitComputer.asp">�ߺ�Ʈ��ǻ��</span></p>
									</div>
									<p class="companyCnt" align=center>
										<span href="http://www.bitacademy.com/Course/Employ/Course_Employ_BitComputer.asp">
											<span class="blueTxt">JAVA �ַ�� ����</span><br/><br/><br/>
											<span style="font-weight:900; color:#ff0000;">������</span>
										</span>
									</p>
								</div>
							</div>
							<!-- BANNER : TaehaMechatronics -->
							<div class="myConList courseEmploy " h_ref="/Course/Employ/Course_Employ_TaehaMechatronics.asp">
								<div class="conCnt conCntDynamic" style="padding:0;" >
									<div class="conImg"><a href="/Course/Employ/Course_Employ_TaehaMechatronics.asp">
										<img src="/Images/Content/Employ/img_LOGO_TaehaMechatronics.png" style="width:90%; margin-top:28px; margin-left:7px;">
									</a></div>
									<div class="divName">
										<p class="companyName" align=center><span href="/Course/Employ/Course_Employ_TaehaMechatronics.asp">�����ϸ�īƮ�δн�</span></p>
									</div>
									<p class="companyCnt" align=center>
										<span href="/Course/Employ/Course_Employ_TaehaMechatronics.asp">
											<span class="blueTxt">Embedded System ����</span><br/><br/><br/>
											<span style="font-weight:900; color:#ff0000;">������</span>
										</span>
									</p>
								</div>
							</div>
							<!-- BANNER : LEETECH -->
							<div class="myConList courseEmploy" h_ref="/Course/Employ/Course_Employ_LEETECH.asp">
								<div class="conCnt conCntDynamic" style="padding:0;">
									<div class="conImg"><a href="/Course/Employ/Course_Employ_LEETECH.asp">
										<img src="/Images/Content/Employ/img_LOGO_LEETECH.PNG" style="width:90%; margin-top:18px; margin-left:8px; ">
									</a></div>
									<div class="divName">
										<p class="companyName" align=center><span href="/Course/Employ/Course_Employ_LEETECH.asp">�߸���</span></p>
									</div>
									<p class="companyCnt" align=center>
										<span href="/Course/Employ/Course_Employ_LEETECH.asp">
											<span class="blueTxt">������ ��� ����</span><br/><br/><br/>
											<span style="font-weight:900; color:#ff0000;">������</span>
										</span>
									</p>
								</div>
							</div>
							<!-- BANNER : VOICEYE -->
							<div class="myConList courseEmploy" h_ref="/Course/Employ/Course_Employ_voiceye.asp">
								<div class="conCnt conCntDynamic" style="padding:0;">
									<div class="conImg"><a href="/Course/Employ/Course_Employ_voiceye.asp">
										<img src="/Images/Content/Employ/img_LOGO_voiceye.jpg" style="width:90%; margin-top:27px; margin-left:8px; ">
									</a></div>
									<div class="divName">
										<p class="companyName" align=center><span href="/Course/Employ/Course_Employ_voiceye.asp">�ߺ��̽�����</span></p>
									</div>
									<p class="companyCnt" align=center>
										<span href="/Course/Employ/Course_Employ_voiceye.asp">
											<span class="blueTxt">������ ��� ����</span><br/><br/><br/>
											<span style="font-weight:900; color:#ff0000;">������</span>
										</span>
									</p>
								</div>
							</div>
						
							<div style="clear:both;"></div>
						</div>
						<div class="con_wrap1709 mar_t20">
							<h5>���Ի�� ä�뱳��</h5>
							<p>
								�Ƿ� �� �����ɷ��� ���� ������ ä���� ����, ����� �����, ������ȭ, ����Ư���� �´� ����� ���⿡ �����ϰ�, ��Ʈ�������� ���������� ��Ź�Ͽ�, ü�����̰� ���� ���� ��������� ���� ���� �̼� �� �� �ٷ� ������ ������ �� �ִ� �η��� �缺�ϴ� ���� ���� 
							</p>
						</div>
						<div class="con_wrap1709">
							<h5>������ ����</h5>
							<p>
								1.	�Ƿ� �� �����ɷ��� ���� �η��� ����, ����, �缺, ä����� �ѹ��� ����<br/>
								2.	���Ի�� ä�뱳���� ����δ�� ����<br/>
								3.	�����Ⱓ ���� ������ �ΰǺ� �δ� ����<br/>
								4.	����� ���㱳�� �� ���Ϸ� ������Ʈ ����<br/>
								5.	����� �����, ������ȭ �´� �η� �缺<br/>
								6.	�系������ ��ȯ���� ��Ʈ�������͸� ���Ի�� ������ ��Ź�Ͽ� �ǽ� ����<br/>
							</p>
						</div>
						<div class="con_wrap1709">
							<h5>�����о�</h5>
							<p>
								1.	�ڹ� �迭<br/>
								2.	�Ӻ���� �ý��� �迭<br/>
								3.	������ �迭<br/>
								4.	��� �迭<br/>
								5.	��Ʈ��ũ �迭<br/>
								6.	IoT �迭<br/>
								7.	������ �迭<br/>
								8.	�� ��Ÿ
							</p>
						</div>
						<div class="con_wrap1709">
							<h5>���� ���</h5>
							<p>
								���̴н��ݵ�ü,  NHN, ������ICT, SK C&C, �޸ƽ�, ��ȭS&C, ��Ʈ��ǻ��, ������, ���Ǵ�Ƽ�ｺ�ɾ�, ���¹̵��, ��ũ����, Ƽ�ƽ�����Ʈ, ��︲�������, �̷��, ��Ƽ��, ��Ƽ�÷���, �ؽ�Ʈ������Ʈ, ���������Ʈ, ȭ��Ʈ�������, SGA, �׺����, ���������ö�Ʈ, ž�����Ͼ, �����п���, ǻó�ý���, ��Ʈ��, ���÷������ͳ�, �������ͳ�, �ڽ���, ������ũ��Ʈ�ʽ�, �μռ���Ʈ, ���̺극�γ�, QMC, ��ͽ�, �ٷ����̿���, ���Ǿ�, �𸮾�, �ھƹ�ũ, ��ũŸ��, ����, �丶��ý���, �ν�����Ʈ, �ַ�ǹڽ�, ��Ͼ���, �ѱ���������, ��ī���ͳ�, ���Ʈ��ũ�����, ���ص�����, ���͵���, ������, �Ľ�����, ����ý���, ����Ƽ����, ��������, ����, ���ͽ���Ʈ����, �����ڵ�, ����������, �ڵ����Ʈ, �����ũ, ����Ʈ����, �帮��, ����ũ��Ʈ, ���������, ����������, �޸ռ���Ʈ, ������ť��, ��ũ����۷ι�, �ƹٵ�, �̽�Ʈ����Ʈ, ��Ʈ����, ��Ʈ�δн�,��������Ʈ, �����, �ϳ�I&S, ���̹�������, ����Ƽ�ؾ�, M3�����, �������, ��������, �����ũ�����, ���̺�, ������Ʈ, ������, ��ũ����, �н���ũ, ���걸��, ��ũ�ִ�, ���۽�, ��Ʈ��, �Ľ�����, �¿�����Ʈ, ���ε�����, �ѱ����̿���ũ, �Ĺ�, FIS�ý��� �� 
							</p>
						</div>
						
						<div class="con_wrap1709 bg_none">
							<p>����) ������ ���� (tablet18@bit.kr / 02-3486-1055)</p>
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
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>