<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->

<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 
Session.CodePage  = 65001 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
 
Response.Cookies("flag")="1"
code = Request.QueryString("code")

Studid = TRIM(session("Studid"))
LoginID = TRIM(session("LoginID"))
'response.write "Studid:"&Studid&"<br>"

Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>

<%
	Sub fillTheHiddens(num)
		
	End Sub
%>
<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>

	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>	
	
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<!--<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">-->
	
	
	<!--
	<script type="text/javascript" src="/JS/main/jquery.avgrund.js"></script>
	<link rel="stylesheet" href="/JS/main/avgrund.css"/>
	-->
	<script type="text/javascript" src="/JS/main/jquery.magnific-popup.js"></script>
	<link rel="stylesheet" href="/JS/main/magnific-popup.css"/>	
	<!--
	<script type="text/javascript" src="/JS/main/jquery.leanModal.min.js"></script>
	-->
	<!--
	<script type="text/javascript" src="/JS/main/portBox.slimscroll.min.js"></script>
	<link rel="stylesheet" href="/JS/main/portBox.css"/>
	-->
	<script src="/JS/main/popModal.js"></script>
	<link type="text/css" rel="stylesheet" href="/JS/main/popModal.css">

	<script LANGUAGE="JavaScript">
			
		//var strTitle = "��Ʈ������Ʈ ȣ";
		
		// BitProject CoverFront�� ��ǥ�� ���� ������
		var BPnum = -1;
		var x1 = new Array();
		var x2 = new Array();
		var y1 = new Array();
		var y2 = new Array();
		var termnum = new Array();
		var groupnum = new Array();

		var bPositionOn=0; // mousemove event���� ����� ���� : ���� ���� ���� ���� �ִ��� ����.
	
		$(document).ready(function() {
			$(".snb .depth1").eq(0).addClass("on");
			$(".snb .depth2_wrap").eq(0).addClass("on");
			$(".snb .depth2_wrap.no1").find("li a").eq(5).addClass("on");
		
			
			// ǥ�� Ŭ���� �˾� ����
			$('.aOpenPopup').on('click', function(e) {
				
				var BPSerialNum = $(this).attr('id').substring(1); // ex. '125'
				$(".BitProjectNum").val(BPSerialNum);
				
				//alert("BPNUM : " + BPSerialNum);
				
				ajaxLoad('#myBox1', '', '/Course/Expert/PopupIncludeMain.asp?BPnum='+BPSerialNum);				
				
				//alert("hey " + $(this).attr('id').substring(1)); // hey 125
				e.preventDefault();
				
				$('.myBlurAll').css('display','block');
				$('#myBox1').css('display','block');
				$('body').css('overflow','hidden');

				//setTimeout(function() { $('#myBox1').click(); }, 500);
				
				//$('#pointMatch').trigger('focus');
				//$('#pointMatch').trigger('click');
				//$('#myBox1')[0].scrollIntoView();
				//$('.BitProjectNum').focus().trigger('click');
			});
			
			$('.myBlurAll').on('click', function() {
			
				$('.myPopup').css('display','none');
				$('.myPopup2').css('display','none');
				$('.myBlurAll').css('display','none');
				$('body').css('overflow','auto');
			});

			$(document).on('click', '#aClose1', function(e) {
				e.preventDefault();
				
				$('.myPopup').css('display','none');
				$('.myPopup2').css('display','none');
				$('.myBlurAll').css('display','none');			
				$('body').css('overflow','auto');
			});
			
/*			
			// �ӽ� -- CoverFront popup ���� Ŭ������ ��, ��ǥ�� �ľ��Ͽ� �߰� pop ���� ��	// �ϼ��� mousemove����.
			$(document).on('click', '#myCoverFront125', function(e) {
				//alert("Coords : " + e.offsetX + "/" + e.offsetY);
				//alert( $(".x1").eq(0).val());
				
				for(var i=0;i<=16;i++) {
					if(e.offsetX >= x1[i] && e.offsetX <= x2[i] && e.offsetY >= y1[i] && e.offsetY <= y2[i]) {
						
						//alert("TermNum : " + termnum[i] + "�� " + "GroupNum : " + groupnum[i] + "��");
						
						
					}						
				}
			});
*/
			
			var aTemp=0;  // mousemove ���� ���̴� �ӽú���.
			$(document).on('mousemove', '#myCoverFront125', function(e) {
				// ��ǥ�� ������ ��ǥ�� ����
				setVariablesBP();
				
				bPositionOn = 0;
				for(var i=0;i<=16;i++) {
					if(e.offsetX >= x1[i] && e.offsetX <= x2[i] && e.offsetY >= y1[i] && e.offsetY <= y2[i]) {
						// mousein ��Ȳ : bPositionOn => 1��.
						bPositionOn = 1;
						$('.myPopup2').css('display','block');
						$('#myBox2  ').css('display','block');
						//alert("TermNum : " + termnum[i] + "�� " + "GroupNum : " + groupnum[i] + "��");
						showUpContents(termnum[i], groupnum[i]);
					}
				}
				if(bPositionOn == 0) {
					// mouseout ��Ȳ : bPositionOn => 0����.
					$('.myPopup2').css('display','none');
					bPositionOn = 0;					
					$('.myPopup2').hide();
				}
				
			});
			
			
			//alert("well done.");
		});
		
		function setVariablesBP() {
			BPnum = $(".BitProjectNum").val();
			for(var i=0;i<=16;i++) {					
				x1[i] = $(".x1").eq(i).val();					
				y1[i] = $(".y1").eq(i).val();
				x2[i] = $(".x2").eq(i).val();
				y2[i] = $(".y2").eq(i).val();
				termnum[i] = $(".TermNum").eq(i).val();
				groupnum[i] = $(".GroupNum").eq(i).val();
			}	
		}
		
		function showUpContents(TermNumHere, GroupNumHere ) {
			for(var i=0;i<=16;i++) {
			
				if($('.TermNum').eq(i).val()==TermNumHere && $('.GroupNum').eq(i).val()==GroupNumHere ) {
					//alert("CHA CHANG! : TermNum = " + TermNumHere + " = " + $('.TermNum').eq(i).val());
					
					// USING this 'i' value, fill the contents to the right-side div.
					
					var strPre = '<div style="margin-top:30px; margin-bottom:5px; padding:5px; font-size:13pt; color:#8b6338; background-color:#fbfbec;">';
					var strMid = '</div><p style="font-size:11pt; color:#4f4f4f; line-height:15pt;">';
					var strPost = '</p>';
					
					var strSubject = '<div style="padding:10px; font-size:15pt; font-weight:900; border:1px solid #d7d7d7;">' + $('.Subject').eq(i).val() + '</div>';
					var str1 = strPre + '�� ��' + strMid + $('.Str1').eq(i).val() + strPost;
					var str2 = strPre + '������ �־���' + strMid + $('.Str2').eq(i).val() + strPost;
					var str3 = strPre + '���� �о�' + strMid + $('.Str3').eq(i).val() + strPost;
					var str4 = strPre + '��� ���' + strMid + $('.Str4').eq(i).val() + strPost;
					var str5 = strPre + '����' + strMid + $('.Str5').eq(i).val() + strPost;
					var strEtc = $('.StrEtc').eq(i).val();
					
					$('#myBox2').html(strSubject + str1 + str2 + str3 + str4 + str5 + strEtc);
					
					break;
				}
			}
		}
	</script>
	<style>
		.myPopup {
			position:fixed; 
			left:2%; 
			top:2%; 
			
			opacity:1; 
			z-index:10000; 
			
			background-color:#fff;
			font-family:'Nanum Gothic Bold'; 
			font-weight:800;
			
			width:615px;
			height:90%;
			padding:30px;
			border-radius:1px;
			box-shadow: 0 0 80px rgba(0,0,0,0.99);
			
			overflow: scroll;
		}
		.myPopup2 {
			position:fixed; 
			left:38%; 
			top:2%; 
			
			opacity:1; 
			z-index:10000; 
			
			background-color:#fff;
			font-family:'Nanum Gothic Bold'; 
			font-weight:800;
			
			width:615px;
			height:90%;
			padding:30px;
			border-radius:1px;
			box-shadow: 0 0 80px rgba(0,0,0,0.99);
			
			overflow: scroll;
		}
		.myBlurAll {
			position:fixed;
			left:0;
			top:0;
			width:100%;
			height:100%;
			
			opacity:0.6;
			z-index:9999;
			background-color:#000;
		}
	</style>
	<!--
			left:30%; 
			top:30%; 
	-->
	
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="font-size:10pt;">
	<form name="form1" style="height:10px;">  <!-- to share between ASP and JS -->
		<input type="hidden" class="BitProjectNum" value=""></input>
	</form>

	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<div class="banner_wrap">
			<div class="banner">
				<h3 class="pd_tow"><span class="courseName">��Ʈ������Ʈ</span></h3>
				<!--<h4>(write here)</h4>-->
				<h4>��Ʈ������Ʈ�� ��Ʈ���������� ��ǥ ���������� ������������ ������Ʈ ����� ���� å�ڷ�<br/> ��Ʈ���������� 27�� ���縦 �� ���� �� �� �ֽ��ϴ�.</h4>
			</div>
		</div>
		<hr>
		<div id="Container_Wrap">
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4>��Ʈ������Ʈ</h4>
						<p class="lineMap">
							<a href="http://www.bitacademy.com">Ȩ</a> 
							<a href="/Course/Expert/Course_Expert.asp">�����ȳ�</a>
							<a href="/Course/Expert/Course_Expert_BITproject.asp" class="last on">��Ʈ������Ʈ</a>
						</p>
					</div>
					<span class="blueTxt" style="margin-top:5px; float:right; margin-right:10px; font-size:9pt; font-family:'Nanum Gothic Bold';">���� : 02-3486-1780</span>
					<section class="section">
						<div class="con_wrap first last">
							<h5 style="font-size:13pt;">��Ʈ������Ʈ��</h5>
							<!--<p>��� ������Ʈ(3����)�� ���� ���α׷��� �ǹ��� �ʿ��� �ɷ��� �⸦ �� �ֽ��ϴ�. ü������ �̷б����� �׷콺�͵� �����Ͽ� ����Ʈ���� ���߿� �ʿ��� ����� ���а� ���� �ְ� ������ �� �ֽ��ϴ�. �����Ⱓ ���� ������ ���α׷� ���߿� �����ϴ� ������ �� �� �ֽ��ϴ�.</p>-->
							<!--<p>���� 27�� ������ IT ���� ���� �缺����� ��Ʈ�������ʹ� ���������� ������� ������Ʈ ������� å(��Ʈ������Ʈ)���� �߰��ϰ� �ֽ��ϴ�. ��Ʈ������Ʈ�� �Ǹ� ���� ������Ʈ ��������� ���ݱ��� �츮���� IT ���踦 �̲��� �������� �Ǿ� ������ ����Ʈ���� ������ �Ի�, ���� ������ IT ��� â�� ���� ���� �� ������� ���� �޾ҽ��ϴ�.</p>-->
							<p>27�� ������ IT���� �����η¾缺����� ��Ʈ�������ʹ� <span class="blueTxt">����������</span> ������� ������Ʈ ������� <b>��Ʈ������Ʈ</b>��� �̸��� �������� �߰��ϰ� �ֽ��ϴ�.</p>

							<p><b>��Ʈ������Ʈ�� �������� �Ǵ� ��������, ���ȭ�� ��ǰ�̶� ���ٹ�����̳� �����˰����� �ٸ� â������ ����</b>�� ������Ʈ �̸�, 6���� ���� ���������� ������ �ٽ��� ��� �ֽ��ϴ�.
							��Ʈ�������� ���������� ������Ʈ ��ǥȸ�� ���Ͽ� ������ ������Ʈ���� �� ��Ʈ������Ʈ å�� �Ǹ� �� ������, ������Ʈ�� ����Ƽ�� ������Ű�� ���ϸ� ������ų������ �� ������ �Ͽ� �Ϻ��� ����Ƽ�� �����մϴ�.</p>

							<p>�� ��Ʈ������Ʈ�� �Ǹ� ���� ������Ʈ������� ���� IT���踦 �̲��� �������� �Ǿ� ������, ����Ʈ���� ������� �Ի�, ���� ������ IT����� â���� �ٰ��� �Ǵ� ���� �� ������� ����Ƽ�� ���� �޾ҽ��ϴ�.</p>
							
							
						</div>
						<div class="popup-gallery" style="padding:6px;">
							<p class="redTxt">�� �Ʒ� ǥ���� Ŭ���Ͻø� �ش� ��Ʈ������Ʈ�� ���並 Ȯ���Ͻ� �� �ֽ��ϴ�</p>
							 <!--< ! - - # include virtual="/Course/Expert/ExpertPopup/PopupMain.asp" - - > -->
							<div id="myBox1" class="myPopup" style="display:none;"></div>
							<div id="myBox2" class="myPopup2" style="display:none;"></div>
							
							<div class="myBlurAll" style="display:none;"></div>
							<div style="background-color:#383838; padding:5px;">
								<a id="a125" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_125_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a124" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_124_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a123" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_123_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a122" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_122_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a121" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_121_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a120" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_120_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a119" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_119_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a118" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_118_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a117" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_117_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a116" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_116_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a115" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_115_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a114" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_114_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a113" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_113_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a112" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_112_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a111" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_111_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a110" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_110_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a109" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_109_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a108" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_108_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a107" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_107_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a106" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_106_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a105" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_105_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a104" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_104_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a103" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_103_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a102" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_102_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a101" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_101_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a100" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_100_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a99" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_99_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a98" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_98_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a97" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_97_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a96" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_96_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a95" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_95_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a94" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_94_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a93" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_93_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a92" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_92_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a91" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_91_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a90" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_90_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a89" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_89_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a88" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_88_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a87" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_87_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a86" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_86_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a85" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_85_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a84" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_84_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a83" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_83_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a82" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_82_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a81" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_81_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a80" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_80_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a79" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_79_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a78" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_78_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a77" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_77_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a76" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_76_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a75" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_75_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a74" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_74_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a73" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_73_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a72" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_72_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a71" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_71_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a70" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_70_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a69" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_69_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a68" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_68_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a67" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_67_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a66" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_66_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a65" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_65_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a64" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_64_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a63" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_63_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a62" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_62_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a61" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_61_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a60" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_60_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a59" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_59_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a58" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_58_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a57" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_57_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a56" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_56_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a55" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_55_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a54" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_54_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a53" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_53_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a52" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_52_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a51" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_51_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a50" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_50_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a49" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_49_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a48" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_48_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a47" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_47_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a46" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_46_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a45" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_45_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a44" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_44_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a43" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_43_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a42" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_42_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a41" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_41_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a40" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_40_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a39" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_39_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a38" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_38_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a37" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_37_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a36" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_36_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a35" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_35_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a34" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_34_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a33" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_33_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a32" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_32_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a31" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_31_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a30" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_30_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a29" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_29_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a28" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_28_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a27" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_27_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a26" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_26_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a25" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_25_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a24" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_24_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a23" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_23_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a22" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_22_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a21" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_21_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a20" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_20_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a19" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_19_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a18" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_18_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a17" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_17_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a16" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_16_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a15" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_15_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a14" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_14_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a13" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_13_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a12" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_12_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a11" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_11_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a10" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_10_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a9" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_9_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a8" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_8_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a7" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_7_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a6" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_6_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a5" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_5_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a4" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_4_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a3" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_3_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a2" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_2_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a id="a1" class="aOpenPopup" href="#" style="margin:0; padding:0; border:0;"><img src="/Images/BITproject/BITproject_cover_front_1_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>

<!--
								<a href="/Images/BITproject/BITproject_cover_front_104.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_104_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_103.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_103_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_102.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_102_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_101.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_101_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_100.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_100_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_99.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_99_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_98.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_98_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_97.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_97_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_96.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_96_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>

								<a href="/Images/BITproject/BITproject_cover_front_95.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_95_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_94.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_94_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_93.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_93_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_92.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_92_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_91.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_91_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_90.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_90_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_89.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_89_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_88.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_88_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_87.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_87_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_86.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_86_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_85.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_85_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_84.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_84_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_83.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_83_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_82.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_82_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_81.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_81_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_80.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_80_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_79.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_79_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_78.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_78_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_77.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_77_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_76.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_76_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_75.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_75_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_74.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_74_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_73.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_73_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_72.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_72_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_71.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_71_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_70.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_70_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_69.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_69_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_68.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_68_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_67.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_67_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_66.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_66_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_65.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_65_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_64.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_64_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_63.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_63_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_62.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_62_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_61.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_61_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_60.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_60_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_59.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_59_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_58.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_58_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_57.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_57_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_56.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_56_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_55.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_55_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_54.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_54_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_53.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_53_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_52.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_52_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_51.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_51_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_50.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_50_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_49.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_49_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_48.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_48_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_47.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_47_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_46.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_46_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_45.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_45_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_44.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_44_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_43.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_43_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_42.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_42_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_41.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_41_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_40.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_40_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_39.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_39_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_38.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_38_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_37.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_37_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_36.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_36_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_35.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_35_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_34.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_34_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_33.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_33_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_32.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_32_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_31.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_31_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_30.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_30_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_29.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_29_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_28.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_28_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_27.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_27_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_26.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_26_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_25.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_25_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_24.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_24_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_23.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_23_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_22.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_22_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_21.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_21_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_20.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_20_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_19.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_19_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_18.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_18_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_17.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_17_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_16.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_16_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_15.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_15_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_14.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_14_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_13.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_13_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_12.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_12_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_11.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_11_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_10.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_10_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_9.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_9_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_8.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_8_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_7.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_7_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_6.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_6_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_5.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_5_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_4.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_4_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_3.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_3_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_2.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_2_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
								<a href="/Images/BITproject/BITproject_cover_front_1.jpg" target="_blank"><img src="/Images/BITproject/BITproject_cover_front_1_(180x250).jpg" width="160" height="222" style="padding:6px;"></a>
-->
							</div>
							<div style="float:right;"><h4><span style="color:#7b5622">�� Ŭ���Ͻø� Ȯ���ؼ� ���� �� �ֽ��ϴ�.</span></h4></div>
						</div>
					</section>
					
					<a href="#this" class="moveTop">Top</a>
				</div>
				<!-- //Content -->
			</div>
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->					
	</div>
</body>
</html>

<%
	Dbcon.close
	Set Dbcon = Nothing
%>