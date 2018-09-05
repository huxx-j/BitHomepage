<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1
%>

<!DOCTYPE html>
<!-- REDIRECTABLE TO MOBILE -->

<head>

	<!--#include virtual="/Include/config.asp"-->
	<!--#include Virtual="/Include/javaScriptFun.asp"-->
	<!--#include virtual="/Include/Common_Defend_1709.asp"-->

	<!--#include file="include/jobLoginChk.asp"--> 

	<script language="JavaScript1.1">
	function right(e) 
	{  
	if (navigator.appName == 'Netscape' &&   (e.which == 3 || e.which == 2))  
	return false;  
	else if (navigator.appName == 'Microsoft Internet Explorer' &&   (event.button == 2 || event.button == 3)) 
		{  
		alert("��Ʈ���������Դϴ�.");  
		return false;  
		}  
	return true;  
	}  

	</script>

	<!--#include file="include/dbconn.inc"-->

	<%
	Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Con_bit_db
	%>

	<%
	page = Request.QueryString("page")
	IF page="" THEN
		page=1
		'response.write page & "<br/>"
	END IF

	Dim strQuerySearch
	'//search = Request.QueryString("search")
	search = SQLClean(Request.QueryString("search"))
	IF search<>"" THEN
		strQuerySearch = " WHERE CompName like '%" & search & "%' "
	END IF

	'StudID = session("StudID")

	set rs = server.CreateObject("adodb.recordset") 
	'//sql = "SELECT * FROM db_bit.dbo.Interview " & strQuerySearch & " ORDER BY num DESC" 
	sql = "SELECT * FROM db_bit.dbo.Interview " & strQuerySearch & " ORDER BY num DESC" 
	
	rs.PageSize = 10 '�������� ����� ���� ...�ݵ�� ��ũ��¿������� �������־�� �Ѵ�.
	rs.Open sql, oConn, 1 '���ڵ� Ŀ�� Ÿ��(1)�� ������ �־�� �Ѵ�. ���� ������ �ȵǸ� ����¡�� �ȵȴ�.

	IF NOT rs.EOF THEN
		totalpage =rs.PageCount 
		rs.AbsolutePage = page
		totalNum = rs.RecordCount 
	END IF
		'response.write "totalpage : " & totalpage & "<br/>"
		'response.write "rs.AbsolutePage : " & rs.AbsolutePage & "<br/>"
		'response.write "totalNum : " & totalNum & "<br/>"
	%>
	<link rel="stylesheet" type="text/css" href="/job/bodyStyle.css"> 
	<link rel= "shortcut icon" href="/images/favicon.ico">
	
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
			//$(".snb_1702 .newdepth1").eq(3).addClass("on");
			$(".snb_1709 a.newdepth1").eq(3).addClass("on");
			
			$("#inputSearch").keypress(function(e) {
				if(e.keyCode == 13) {
					btnSearch();
				}
			});
			
			// ȸ��� Ŭ���� �˾� ���� & ���� ���̱�.
			$('.aOpenPopup').on('click', function(e) {
				
				var Num = $(this).attr('id').substring(1); // ex. '125'
				//alert("NUM : " + Num);
				
				ajaxLoad('#myBox1', '', 'InterviewPopupInclude.asp?Num='+Num);
				//showUpInterviewContents();

				e.preventDefault();
				
				//$('.myBlurAll').css('display','block');
				$('#myBox1').css('display','block');
				//$('body').css('overflow','hidden');
				
				openNav();
			});
			
			$('.myBlurAll').on('click', function() {
				
				$('.myPopup').css('display','none');
				//$('.myBlurAll').css('display','none');
				//$('body').css('overflow','auto');
				
				closeNav();
			});

			$("#myNav").on("click", function() {
				closeNav();
				$('.myPopup').hide();
				
			})
			
			$(document).on('click', '#aClose1', function(e) {
				e.preventDefault();
				
				$('.myPopup').css('display','none');
				//$('.myBlurAll').css('display','none');			
				//$('body').css('overflow','auto');
				
				closeNav();
			});

		});
		
		
		/* Open when someone clicks on the span element */
		function openNav() {
			document.getElementById("myNav").style.width = "100%";
		}

		/* Close when someone clicks on the "x" symbol inside the overlay */
		function closeNav() {
			document.getElementById("myNav").style.width = "0%";
		}
		
		
		function btnSearch() {
			//location.replace("");
			//alert( "http://www.bitacademy.com/job/Interview.asp?search=" + $("#inputSearch").val() );
			if( $("#inputSearch").val().trim()=="") { alert("�˻��Ͻ÷��� �˻�� �Է��ϼ���."); return; }
			location.href = "http://www.bitacademy.com/job/Interview.asp?search=" + $("#inputSearch").val();
		}
		
		function btnCancel() {
			location.href = "http://www.bitacademy.com/job/Interview.asp";
		}
		
		function btnWrite() {
			window.open("/Popup/Interview_InputForm.asp","","left=-1500, top=-300, width=710, height=950, titlebar=no, location=no, toolbar=no, resizable=no, scrollbars=yes");
		}
		
		function showUpInterviewContents() {
			alert("begin.");
			
			var strPre = '<div style="margin-top:30px; margin-bottom:5px; padding:5px; font-size:13pt; color:#8b6338; background-color:#fbfbec;">';
			var strMid = '</div><p style="font-size:11pt; color:#4f4f4f; line-height:15pt;">';
			var strPost = '</p>';

			//var strSubject = '<div style="padding:10px; font-size:15pt; font-weight:900; border:1px solid #d7d7d7;">' + $('.Subject').eq(i).val() + '</div>';
			var str1 = strPre + '��������' + strMid + $('.Str1').eq(0).val() + strPost;
			var str2 = strPre + '�������µ�' + strMid + $('.Str2').eq(0).val() + strPost;
			var str3 = strPre + '������' + strMid + $('.Str3').eq(0).val() + strPost;
			var str4 = strPre + 'ȸ����' + strMid + $('.Str4').eq(0).val() + strPost;
			
			//$('#myBox1').html(str1 + str2 + str3 + str4);
			$('#divContent').html(str1 + str2 + str3 + str4);

			
		}
	</script>
	
	<!--<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">-->
	<script language="javascript"> 
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
		//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/job/M/Interview.asp";
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="font-size:10pt; margin:0;" >
	<style>
		/* The Overlay (background) */
		.overlay {
			/* Height & width depends on how you want to reveal the overlay (see JS below) */    
			height: 100%;
			width: 0;
			position: fixed; /* Stay in place */
			z-index: 1; /* Sit on top */
			left: 0;
			top: 0;
			background-color: rgb(0,0,0); /* Black fallback color */
			background-color: rgba(0,0,0, 0.55); /* Black w/opacity */
			overflow-x: hidden; /* Disable horizontal scroll */
			transition: 0.5s; /* 0.5 second transition effect to slide in or slide down the overlay (height or width, depending on reveal) */
		}

		/* Position the content inside the overlay */
		.overlay-content {
			position: relative;
			top: 25%; /* 25% from the top */
			width: 100%; /* 100% width */
			text-align: center; /* Centered text/links */
			margin-top: 30px; /* 30px top margin to avoid conflict with the close button on smaller screens */
		}

		/* The navigation links inside the overlay */
		.overlay a {
			padding: 8px;
			text-decoration: none;
			font-size: 36px;
			color: #818181;
			display: block; /* Display block instead of inline */
			transition: 0.3s; /* Transition effects on hover (color) */
		}

		/* When you mouse over the navigation links, change their color */
		.overlay a:hover, .overlay a:focus {
			color: #f1f1f1;
		}

		/* Position the close button (top right corner) */
		.overlay .closebtn {
			position: absolute;
			top: 20px;
			right: 45px;
			font-size: 60px;
		}

		/* When the height of the screen is less than 450 pixels, change the font-size of the links and position the close button again, so they don't overlap */
		@media screen and (max-height: 450px) {
			.overlay a {font-size: 20px}
			.overlay .closebtn {
				font-size: 40px;
				top: 15px;
				right: 35px;
			}
		}
	</style>
	<style>
		.courseName {
			font-size:15pt !important;
		}
		.detailName {
			font-size:23pt !important;
		}
	</style>
	<!-- The overlay -->
	<div id="myNav" class="overlay">
		<!-- Button to close the overlay navigation -->
		<!--<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>-->
		<!-- Overlay content -->
		<div class="overlay-content">
			<a href="#"></a>
		</div>
	</div>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		
		<style>
			.myTitle {
				font-family:'Nanum Gothic Bold';
				font-size:13pt;
				color:#8b6338;
				text-shadow: 1px 1px 2px #b9b9b9;
			}
			.divTable table th {
				padding:10px 8px;
				font-family:'Nanum Gothic Bold';
				font-size:18px;
			}
			.divTable table td {
				padding:10px 8px;
				font-size:15px;
				font-family:'Nanum Gothic Bold';
			}
			.gradBg {
				background: linear-gradient(to bottom, #f2f6f8, #fffae9); 
			}
			A:link {
				color:#0053c6;
			} /* color:#0073e6; */
			A:visited {
				color:#73808c;
			}
		</style>

		<div id="Container_Wrap" style="min-height:210px;">
			<div id="Content_Wrap" style="min-height:210px;">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_JobCenter_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Ȩ
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�����������
						</p>
						<h4 style="float:left;">�����ı�</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
								
					<style>
						.myTitle {
							font-family:'Nanum Gothic Bold';
							font-size:11pt;
							color:#8b6338;
						}
						.myPopup {
							position:fixed; 
							left:36%; 
							top:5%; 
							
							opacity:1; 
							z-index:10000; 
							
							background-color:#fff;
							font-family:'Nanum Gothic Bold'; 
							font-weight:800;
							
							width:615px;
							height:80%;
							padding:30px;
							border-radius:5px;
							box-shadow: 3px 3px 8px rgba(0,0,0,0.8);
							
							overflow: scroll;
						}
						.myBlurAll {
							position:fixed;
							left:0;
							top:0;
							width:100%;
							height:100%;
							
							opacity:0.2;
							z-index:9999;
							background-color:#000;
						}
						/* for placeholder */
						::-webkit-input-placeholder { /* Chrome/Opera/Safari */
						  color: #dcdcdc;
						}
						::-moz-placeholder { /* Firefox 19+ */
						  color: #dcdcdc;
						}
						:-ms-input-placeholder { /* IE 10+ */
						  color: #dcdcdc;
						}
						:-moz-placeholder { /* Firefox 18- */
						  color: #dcdcdc;
						}
					</style>
					<div style="margin-top:25px;">
						<div id="myBox1" class="myPopup" style="display:none;"></div>
						<div class="myBlurAll" style="display:none;"></div>
						<%
							IF search<>"" THEN
						%>
							<p class="blueTxt">
								ȸ��� '<%=search%>' ���� �˻��� ����Դϴ� : <a href="javascript:btnCancel();" class="btnWhiteBorder" style="height:24px; margin-left:30px; padding:2px 5px; "><span style="line-height:24px;">�˻����</span></a>						
							</p>
						<%
							END IF
						%>
						<!-- Search -->
						<div style="height:60px; margin:20px 0 10px 0px; ">
							<input type="text" id="inputSearch" class="form-control" placeholder="(�˻�� �Է��ϼ���)" value="" style="height:32px; width:40%; font-size:1.5em; border-radius:5px; float:left;"/>
							<a href="javascript:btnSearch();" style="float:left;" class="aButton" ><img src="/Images/Content/Mobile/icn_Search.png" style="width:30px; margin-left:2px; border:1px solid #c9c9c9; padding:2px; border-radius:5px; box-shadow:0px 0px 3px #c9c9c9;"/></a>
							
							<!--<a href="javascript:btnSearch();" class="btn sml red" style="height:24px; margin-left:5px; padding:2px 5px;; float:left;"><span style="line-height:30px;">�˻�</span></a>-->
							<div style="clear:both;"></div>
						</div>
						<!-- //Search -->
						<style>
							.tit {
								background-color:ivory !important;
							}
							table tr {
								border-top: 1px solid #e0e0e0;
								border-bottom: 1px solid #e0e0e0;
							}
						</style>
						<div class="divTable">
							<table><!-- border="0" cellPadding="0" cellSpacing="2" style="margin-top:10px; width:80%;" class="table_col_type3">-->
								<colgroup>
									<col style="width:10%;">
									<col style="width:70%;">
									<col style="width:20%;">
								</colgroup>
								<thead>
									<tr>
										<th class="gradBg" >��ȣ</th> <!-- tit -->
										<th class="gradBg c" >ȸ���</th> <!-- tit -->
										<th class="gradBg" >�����</th> <!-- tit -->
									</tr>
								</thead>
								<tbody>
									<%
									'do while rs.eof = false
									FOR i=1 TO rs.PageSize STEP 1
										IF NOT rs.EOF THEN
										
											sql2 = "SELECT * FROM db_bit.dbo.InterviewImageLogoPath WHERE CompName like '%"&rs("CompName")&"%'"
											Set Rs2 = Dbcon.Execute(sql2)
											
											if Rs2.eof = false then
												ImagePath = Rs2("ImageLogoPath")
												HomepageURL = Rs2("HomepageURL")
											else
												ImagePath = ""
												HomepageURL = ""
											end if
											Rs2.Close
											
									%>
									<tr>
										<td style="font-size:1.1em; font-weight:800;"><%= rs("Num") %></td>
										<td>
											<a href="#" id="a<%=rs("Num") %>" class="aOpenPopup">
												<span style="font-size:1.75em; font-weight:900; text-shadow:1px 1px 1px #828282; margin-right:5px;"><%= rs("CompName") %></span>
												<img src="<%=ImagePath%>" style="max-width:175px; max-height:39px; margin-top:0px;"/>
												
											</a>
										</td>
										<td style="font-size:1.25em; font-weight:700;"><%= Left(rs("UpdateDate"), 10) %></td>
									</tr>
									<%

											rs.moveNext
										END IF
									NEXT
										'loop
									%>
								</tbody>
							</table>
						</div>
						<!-- Paging -->
						<%
							Dim pagingStartNum 
							Dim pagingEndNum
							Dim pagingPrevNum
							Dim pagingNextNum
							
							pagingStartNum = page - (page mod 10) + 1
							pagingEndNum = page - (page mod 10) + 10
							IF (page mod 10) = 0 THEN
								pagingStartNum = PagingStartNum - 10
								pagingEndNum = PagingEndNum - 10
							END IF
							IF pagingEndNum > totalpage THEN
								pagingEndNum = totalpage
							END IF
							
							pagingPrevNum = pagingStartNum - 10
							pagingNextNum = pagingStartNum + 10
							IF pagingPrevNum < 1 THEN
								pagingPrevNum = 1
							END IF
							IF pagingNextNum > totalpage THEN
								pagingNextNum = totalpage - (totalpage mod 10) + 1
							END IF
						%>
						<style>
							.btnPaging {
								border:1px solid #c9c9c9;
								border-radius:1px;
								margin-left:-1px;
								width:40px;
								height:30px;
								padding-top:10px;
								float:left;
							}
						</style>
						<div style="text-align:center; margin-left:50px; margin-top:30px; font-weight:800; font-size:1.1em;"> 
							<a href="/job/interview.asp?page=1"><div class="btnPaging" style="color:#393939;">ó��</div></a>
							<a href="/job/interview.asp?page=<%=pagingPrevNum %>"><div class="btnPaging" style="color:#393939;">����</div></a>
							<%
								FOR i=pagingStartNum TO pagingEndNum STEP 1
							%>
							<!--<span style="margin-left:12px;">-->
								<%
									IF Cint(page) = Cint(i) THEN
								%>
									<!-- font-weight:800; text-decoration:underline; -->
										<div style="background-color:#ffffb6;" class="redTxt btnPaging"><%=i %></div> 
								<%
									ELSE
								%>
										<a href="/job/interview.asp?page=<%=i %>"><div class="btnPaging" style="color:#393939;"><%=i %></div></a>
								<%
									END IF
								%>
							<!--</span>-->
							<%
								NEXT
							%>
							<a href="/job/interview.asp?page=<%=pagingNextNum %>" style="color:#393939;"><div class="btnPaging" >����</div></a>
							<a href="/job/interview.asp?page=<%=totalpage %>"><div class="btnPaging" style="color:#393939;">��</div></a>
						</div>
						<div style="clear:both;"></div>
						<!-- //Paging -->
						
						<!-- btnWrite -->
						<div style="width:60%; height:60px; margin:20px auto; text-align:center;" class="con_wrap1709">
							<a href="javascript:btnWrite();" class="btnGreenBorder big" style="color:#75902f !important;">�����ı� �ۼ�</a>
							
						</div>
						<!-- //btnWrite -->
						
					</div>
					
					<!--
					<div style="height:20px; background:url('/Images/Common/ico_dotted_gray.png') 0 bottom repeat-x;">
					</div>
					-->
					
				</div>
				
			</div>
		</div>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->	
	</div>
</body>
</html>
<%
rs.Close 
Dbcon.Close
set rs=nothing
set Rs2=nothing
set Dbcon =nothing
%>