<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>
		<!-- main dropdown menu -->
			<style>
				.mainDropdownMenu.depth0 { z-index:30; }
				.mainDropdownMenu.depth0.no1 { min-width:260px; /* min-width:154px; */ }
				.mainDropdownMenu.depth0.no1 .mainDropdownMenu.depth2.no1 { min-width:107px; }
				.mainDropdownMenu.depth0.no1 .mainDropdownMenu.depth2.no2 { min-width:107px; }
				.mainDropdownMenu.depth0.no1 .mainDropdownMenu.depth2.no3 { min-width:107px; }
				.mainDropdownMenu.depth0.no1 .mainDropdownMenu.depth2.no4 { min-width:107px; }
				.mainDropdownMenu.depth3.no1 { min-width:145px; }
				.mainDropdownMenu.depth0.no2 { min-width:124px; }
				.mainDropdownMenu.depth0.no2 .depth2.no1 { min-width:215px; }
				.mainDropdownMenu.depth0.no2 .depth2.no2 { min-width:215px; }
				.mainDropdownMenu.depth0.no2 .depth2.no3 { min-width:215px; }
				.mainDropdownMenu.depth0.no2 .depth2.no4 { min-width:215px; }
				.mainDropdownMenu.depth0.no2 .depth2.no5 { min-width:215px; }
				.mainDropdownMenu.depth0.no2 .depth2.no6 { min-width:215px; }
				.mainDropdownMenu.depth0.no2 .depth2.no7 { min-width:215px; }
				.mainDropdownMenu.depth0.no3 { min-width:124px; }
				.mainDropdownMenu.depth0.no3 .depth2.no1 { min-width:165px; }
				.mainDropdownMenu.depth0.no3 .depth2.no2 { min-width:165px; }
				.mainDropdownMenu.depth0.no3 .depth2.no3 { min-width:165px; }
				.mainDropdownMenu.depth0.no3 .depth2.no4 { min-width:165px; }
				.mainDropdownMenu.depth0.no4 { min-width:124px; }
				.mainDropdownMenu.depth0.no4 .depth2.no1 { min-width:145px; }
				.mainDropdownMenu.depth0.no4 .depth2.no2 { min-width:145px; }
				.mainDropdownMenu.depth0.no4 .depth2.no3 { min-width:145px; }
				.mainDropdownMenu.depth0.no4 .depth2.no4 { min-width:145px; }
				.mainDropdownMenu.depth0.no5 { min-width:124px; }
				.mainDropdownMenu.depth0.no5 .depth2.no1 { min-width:145px; }
				.mainDropdownMenu.depth0.no5 .depth2.no2 { min-width:145px; }
				.mainDropdownMenu.depth0.no5 .depth2.no3 { min-width:145px; }
				.mainDropdownMenu.depth0.no5 .depth2.no4 { min-width:145px; }
				.mainDropdownMenu.depth0.no6 { min-width:124px; }
				
				.mainDropdownMenu.depth0.no1 { left:0px; }
				.mainDropdownMenu.depth0.no2 { left:119px; }
				.mainDropdownMenu.depth0.no3 { left:237px; }
				.mainDropdownMenu.depth0.no4 { left:362px; }
				.mainDropdownMenu.depth0.no5 { left:482px; }
				/*.mainDropdownMenu.depth0.no6 { left:535px; }*/
				
				.mainDropdownMenu {
					display:none;
					font-size:15px;
					font-weight:400;
					background-color:#fff;
				}
				.mainDropdownMenu.depth0 {
					position:absolute;
					top:-1px;
					left:0px;
					box-shadow:0px 3px 7px #797979;  /* old : #373737 */
					border-left:2px solid #1b499b;
					border-right:2px solid #1b499b;
					border-bottom:2px solid #1b499b;
					/*
					border-right:1px solid #a5a5a4;
					border-bottom:1px solid #a5a5a4;
					*/
				} /* top:142px; top:-20px;*/
				
				.mainDropdownMenu.depth1 {
					position:relative;
				} 
				.mainDropdownMenu.depth2 {
					position:relative;
					left:-1px;
					top:0px;
				}
				.mainDropdownMenu.depth3 {
					position:relative;
					left:-1px;
					top:0px;
				}
				
				.mainDropdownMenu .divTop1 {
					height:8px;
				}
				.mainDropdownMenu .divTop2 {
					height:8px;
				} 
				.mainDropdownMenu .divBlank {
					padding-left:15px;
					padding-right:15px;
				}
				.mainDropdownMenu .divMiddle {
					padding-left:1px;
					padding-right:1px;
					/* margin-left:15px; */
					margin-right:15px;
					height:33px;
					line-height:33px;
					cursor:pointer;
				}
				.mainDropdownMenu .divMiddle .divMiddleInner {
					margin-left:15px; 
				}
				.mainDropdownMenu .divMiddle .divMiddleInner.on {
					/* background-color:#1b499b; */
					background:#1b499b url('/Images/Icons/icn_ArrowRightOnBlue.png') no-repeat 208px 9px;
					color:#ffffff !important;				
				}
				

				.mainDropdownMenu.depth2 .divMiddle .divMiddleInner.on { /* all the depth2 */
					background:#1b499b;
				}
				.mainDropdownMenu.depth3.no4 .divMiddle .divMiddleInner.on {
					background:#1b499b;
				}
				.mainDropdownMenu.depth0.no2 .depth1 .divMiddle .divMiddleInner.on { /* ��ް��� */
					background:#1b499b url('/Images/Icons/icn_ArrowRightOnBlue.png') no-repeat 158px 7px;
				}
				.mainDropdownMenu.depth0.no3 .depth1 .divMiddle .divMiddleInner.on { /* ���������� */
					background:#1b499b;
				}
				.mainDropdownMenu.depth0.no5 .depth1 .divMiddle .divMiddleInner.on { /* ���߰�SW���� */
					background:#1b499b;
				}
				.mainDropdownMenu.depth0.no1 .depth2.no1 .divMiddle .divMiddleInner.on { /* �ܱ��ٽɰ���(Programming)-����,����,... */
					background:#1b499b url('/Images/Icons/icn_ArrowRightOnBlue.png') no-repeat 170px 7px; 
				}
				.mainDropdownMenu.depth0.no1 .depth3.no1 .divMiddle .divMiddleInner.on { /* �ܱ��ٽɰ���(Programming)-����-Java,... */
					background:#1b499b url('/Images/Icons/icn_ArrowRightOnBlue.png') no-repeat 160px 7px; 
				}
				.mainDropdownMenu.depth0.no1 .depth1 .divMiddle .divMiddleInner.on { /* �ܱ��ٽɰ��� - all the depth1 */
					background:#1b499b url('/Images/Icons/icn_ArrowRightOnBlue.png') no-repeat 198px 7px; 
				}
				.mainDropdownMenu.depth0.no1 .depth2.no1 .divMiddle .divMiddleInner.on { /* �ܱ��ٽɰ��� - all the depth2.no1 : Programming */
					background:#1b499b url('/Images/Icons/icn_ArrowRightOnBlue.png') no-repeat 173px 7px; 
				}
				.mainDropdownMenu.depth0.no4 .depth1 .divMiddle .divMiddleInner.on { /* ��������������� - all the depth1 */
					background:#1b499b url('/Images/Icons/icn_ArrowRightOnBlue.png') no-repeat 180px 7px; 
				}
				
				.mainDropdownMenu .divMiddleInner {
					padding-left:15px;
					padding-right:15px;
					height:28px;
					line-height:28px;
				}
				.mainDropdownMenu .divMiddleInner.twolines {
					height:56px;
				}
				.mainDropdownMenu.depth1 .divMiddle {
				} 
				.mainDropdownMenu.depth2 .divBlank {
					border-left:1px solid #e5e5e4; 
					height:33px;
				}
				.mainDropdownMenu.depth2 .divMiddle {
					/* padding-left:15px; */
					border-left:1px solid #e5e5e4; 
				}
				.mainDropdownMenu.depth3 .divBlank {
					border-left:1px solid #e5e5e4; 
					height:33px;
				}
				.mainDropdownMenu.depth3 .divMiddle {
					/* padding-left:15px; */
					border-left:1px solid #e5e5e4; 
				}
				.mainDropdownMenu.depth4 .divBlank {
					border-left:1px solid #e5e5e4; 
					height:33px;
				}
				.mainDropdownMenu.depth4 .divMiddle {
					/* padding-left:15px; */
					border-left:1px solid #e5e5e4; 
				}
				.mainDropdownMenu .divMiddle.long {
					letter-spacing:-1px;
				}
				.mainDropdownMenu .divMiddle.twolines {
					/*
					padding-top:5px;
					padding-bottom:5px;
					*/
					height:61px;
				}
				.mainDropdownMenu .divBottom {
					height:8px;

				}
				.fl {
					float:left;
				}
				.dnone {
					display:none;
				}
			</style>
			<!-- depth0 no1 : �ܱ��ٽɰ��� -->
			<div class="mainDropdownMenu depth0 no1" >
				<!--<img src="Images/Icons/MainPage_Menubar__triangle.png" style="position:relative; top:-13px; left:-91px;"/>-->
				<div class="mainDropdownMenu depth1 no1 fl" style="width:250px;">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">Programming</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">Data Science</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">Java</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">JavaScript</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">Database</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">Project Management(PM)</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">Mobile</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">SW Engineering</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:190px;">Embedded</div></div>
					<div class="divMiddle" href="/Course/ShortCourse/Course_Summer2018.asp"><div class="divMiddleInner blueTxt" style="width:190px; background-image: url();"><b>��������Ư��</b></div></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no1 fl" style="width:220px;">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle"><div class="divMiddleInner " style="width:160px;">[����] ��Ʈ��������</div></div>
					<div class="divMiddle"><div class="divMiddleInner " style="width:160px;">[����] ����ķ�۽�</div></div>
					<div class="divMiddle"><div class="divMiddleInner " style="width:160px;">[�λ�] �λ�ķ�۽�</div></div>
					<div class="divMiddle"><div class="divMiddleInner " style="width:160px;">[����] ����ķ�۽�</div></div>
					<div class="divMiddle"><div class="divMiddleInner " style="width:160px;">[����] ����ķ�۽�</div></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth3 no1 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:150px;">C Master</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:150px;">Java ���α׷���</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:150px;">C++ ���α׷���</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:150px;">�ڷᱸ��/�˰���</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:150px;">Python ���α׷���</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:150px;">C# ���α׷���</div></div>
					<div class="divMiddle"><div class="divMiddleInner" style="width:150px; letter-spacing:-2px;">SW �����н� ���� Ŀ�´�Ƽ</div></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth4 no1 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_c.asp">
						<div class="divMiddleInner" style="width:140px;">[���߹�] C Master</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_C_Weekend.asp">
						<div class="divMiddleInner" style="width:140px;">[�ָ���] C Master</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth4 no2 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_Java.asp">
						<div class="divMiddleInner" style="width:160px;">[���߹�] Java ���α׷���</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_Java_Weekend.asp">
						<div class="divMiddleInner" style="width:160px;">[�ָ���] Java ���α׷���</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth4 no3 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_cPlus.asp">
						<div class="divMiddleInner" style="width:160px;">[���߹�] C++ ���α׷���</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_cPlus_Weekend.asp">
						<div class="divMiddleInner" style="width:160px;">[�ָ���] C++ ���α׷���</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth4 no4 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_c2.asp">
						<div class="divMiddleInner" style="letter-spacing:0px;">[�ָ���] �ڷᱸ��</div>
					</div>
					<!--
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_algorithmIntermediate.asp">
						<div class="divMiddleInner" style="letter-spacing:-2px;">[�ָ���/�߱�] �����ذ��� ���� �˰���</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_algorithmAdvanced.asp">
						<div class="divMiddleInner" style="letter-spacing:-2px;">[�ָ���/���] �����ذ��� ���� �˰���</div>
					</div>
					-->
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth4 no5 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_Python.asp">
						<div class="divMiddleInner" style="width:180px;">[���߹�] Python ���α׷���</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_Python_Weekend.asp">
						<div class="divMiddleInner" style="width:180px;">[�ָ���] Python ���α׷���</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth4 no6 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_cSharp.asp">
						<div class="divMiddleInner" style="width:160px;">[���߹�] C# ���α׷���</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth4 no7 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_SelfLearning.asp">
						<div class="divMiddleInner" style="width:170px; letter-spacing:-1px;">�̷� / ������Ʈ ���丵 ����</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<!-- no2 : ����ķ�۽� -->
				<div class="mainDropdownMenu depth3 no2 fl">
					<div class="divTop1"></div>
					<div class="divTop2" ></div>
					<div class="divBlank"></div>
					<div class="divMiddle" href="/Course/localCampus/localCampus_Daejeon_introduction.asp">
						<div class="divMiddleInner" style="width:140px;">����ķ�۽� �Ұ�</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Daejeon_c.asp">
						<div class="divMiddleInner" style="width:140px;">C ���α׷���</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Daejeon_cPlus.asp">
						<div class="divMiddleInner" style="width:140px;">C++ ���α׷���</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Daejeon_java.asp">
						<div class="divMiddleInner" style="width:140px;">Java ���α׷���</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<!-- // no2 : ����ķ�۽� -->
				<!-- no3 : �λ�ķ�۽� -->
				<div class="mainDropdownMenu depth3 no3 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/localCampus/localCampus_Busan_introduction.asp">
						<div class="divMiddleInner" style="width:140px;">�λ�ķ�۽� �Ұ�</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Busan_c.asp">
						<div class="divMiddleInner" style="width:140px;">C ���α׷���</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Busan_java.asp">
						<div class="divMiddleInner" style="width:140px;">Java ���α׷���</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Busan_c2.asp">
						<div class="divMiddleInner" style="width:140px;">�ڷᱸ��</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<!-- // no3 : �λ�ķ�۽� -->
				<!-- no4 : ����ķ�۽� -->
				<div class="mainDropdownMenu depth3 no4 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/localCampus/localCampus_Gunpo_introduction.asp">
						<div class="divMiddleInner" style="width:140px;">����ķ�۽� �Ұ�</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Gunpo_c.asp">
						<div class="divMiddleInner" style="width:140px;">C ���α׷���</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Gunpo_cPlus.asp">
						<div class="divMiddleInner" style="width:140px;">C++ ���α׷���</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Gunpo_c2.asp">
						<div class="divMiddleInner" style="width:140px;">�ڷᱸ��</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<!-- // no4 : ����ķ�۽� -->
				<!-- no5 : ����ķ�۽� -->
				<div class="mainDropdownMenu depth3 no5 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/localCampus/localCampus_Gimhae_introduction.asp">
						<div class="divMiddleInner" style="width:140px;">����ķ�۽� �Ұ�</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Gimhae_c.asp">
						<div class="divMiddleInner" style="width:140px;">C ���α׷���</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Gimhae_java.asp">
						<div class="divMiddleInner" style="width:140px;">JAVA ���α׷���</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Gimhae_c2.asp">
						<div class="divMiddleInner" style="width:140px;">�ڷᱸ��/�˰���</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<!-- // no5 : ����ķ�۽� -->
				<div class="mainDropdownMenu depth2 no2 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_AnalysisMachineLearning.asp">
						<div class="divMiddleInner long" style="width:295px;">R�� ����� ������ �м��� �ӽŷ��� (�ʱ�)</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_AnalysisMachineLearning2.asp">
						<div class="divMiddleInner long" style="width:295px;">R�� ����� ������ �м��� �ӽŷ��� (�߱�)</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_PracticalMachineLearningPython.asp">
						<div class="divMiddleInner" style="width:295px;">Python�� Ȱ���� �ǿ�ӽŷ��� - �ʱ�</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_ExcelMachineLearning.asp">
						<div class="divMiddleInner" style="width:295px; letter-spacing:-1px;">�ﰢ Ȱ���ϴ� Excel�� ����� ������ ���̾� �Թ�</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no3 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_servletJsp.asp">
						<div class="divMiddleInner" style="width:220px;">Servlet &amp; JSP ���α׷���</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_spring.asp">
						<div class="divMiddleInner" style="width:220px;">Spring Framework ����</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_aiojava.asp">
						<div class="divMiddleInner" style="width:220px;">All-in-One Java Application ����</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no4 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle long" href="/Course/ShortCourse/DetailPage/Course_HTML5.asp">
						<div class="divMiddleInner" style="width:260px;">�������ڸ� ���� HTML5(HTML5+CSS3)</div>
					</div>
					<div class="divMiddle" href="javascript:alert('�غ����Դϴ�. ����(02-3486-3456)');">
						<div class="divMiddleInner" style="width:260px;">���� jQuery</div>
					</div>
					<div class="divMiddle long" href="/Course/ShortCourse/DetailPage/Course_JavaScript.asp">
						<div class="divMiddleInner" style="width:260px;">�������ڸ� ���� JavaScript &amp; Ajax</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_WebPublishing.asp">
						<div class="divMiddleInner" style="width:260px;">Web Publishing �ǹ�</div>
					</div>
					<div class="divMiddle" href="javascript:alert('�غ����Դϴ�. ����(02-3486-3456)');">
						<div class="divMiddleInner" style="width:260px;">AngularJS ���α׷���</div>
					</div>
					<div class="divMiddle" href="javascript:alert('�غ����Դϴ�. ����(02-3486-3456)');">
						<div class="divMiddleInner" style="width:260px;">ReactJS ���α׷���</div>
					</div>
					<div class="divMiddle long" href="javascript:alert('�غ����Դϴ�. ����(02-3486-3456)');">
						<div class="divMiddleInner" style="width:260px;">Front-End JavaScript Framework</div>
					</div>
					<div class="divMiddle long" href="/Course/ShortCourse/DetailPage/Course_Nodejs.asp">
						<div class="divMiddleInner" style="width:260px;">��ü���� JavaScript�� Node.js ���α׷���</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no5 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_SearchEngine.asp">
						<div class="divMiddleInner" style="width:240px;">������ �˻�����<!-- ����--></div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_dataBaseModeling.asp">
						<div class="divMiddleInner" style="width:240px;">�����ͺ��̽� �𵨸�</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_dataBase.asp">
						<div class="divMiddleInner" style="width:240px;">�����ͺ��̽� ����Ʃ��</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_springData.asp">
						<div class="divMiddleInner" style="width:240px;">Spring Data + noSQL</div>
					</div>
					<div class="divMiddle" href="javascript:alert('�غ����Դϴ�. ����(02-3486-3456)');">
						<div class="divMiddleInner" style="width:240px;">MySQL  ����ȭ</div>
					</div>
					<div class="divMiddle long" href="/Course/ShortCourse/DetailPage/Course_sqlJdbc.asp">
						<div class="divMiddleInner" style="width:240px;">����Ŭ�� �����ͺ��̽� ���� ���α׷���</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no6 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_Agile4Developer.asp">
						<div class="divMiddleInner" style="width:240px;">Agile ����Ʈ���� ���� �ǹ�</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_ArchitectureBasic.asp">
						<div class="divMiddleInner" style="width:240px;">����Ʈ���� ��Ű��ó �Թ�</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_ITIL.asp">
						<div class="divMiddleInner" style="width:240px;">ITILv3 ��� IT Service Management</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no7 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_Android.asp">
						<div class="divMiddleInner" style="width:140px;">�ȵ���̵� �� ����</div>
					</div>
					<div class="divMiddle" href="javascript:alert('�غ����Դϴ�. ����(02-3486-3456)');">
						<div class="divMiddleInner" style="width:140px;">UX/UI ���� �ǹ�</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no8 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_javaPlan.asp">
						<div class="divMiddleInner" style="width:250px;">Java �������</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_realUml.asp">
						<div class="divMiddleInner" style="width:250px;">UML ���������� �̰͸� ����</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_uml.asp">
						<div class="divMiddleInner" style="width:250px;">����! �м�����</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_designPattern.asp">
						<div class="divMiddleInner" style="width:250px;">��ü���� ����� ������ ����</div>
					</div>
					<div class="divMiddle" href="/Course/ShortCourse/DetailPage/Course_codingTuning.asp">
						<div class="divMiddleInner" style="width:250px;">Java JDBC ����� SQL ����Ʃ��</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no9 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle long" href="/Course/ShortCourse/DetailPage/Course_RaspberryPi.asp">
						<div class="divMiddleInner" style="width:240px;">���¼ҽ� ��������̸� Ȱ���� IoT ����</div>
					</div>
					<div class="divMiddle long" href="/Course/ShortCourse/DetailPage/Course_StorageSystem_FMBased.asp">
						<div class="divMiddleInner" style="width:240px;">Flash Memory��� Storage System</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div style="clar:both;"></div>
			</div>

			<!-- depth0 no2 : ��ް��� -->
			<div class="mainDropdownMenu depth0 no2" >
				<!--<img src="Images/Icons/MainPage_Menubar__triangle.png" style="position:relative; top:-13px; left:-40px;"/>-->
				<div class="mainDropdownMenu depth1 no2 fl" >
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle">
						<div class="divMiddleInner" style="width:150px;">[����] ��Ʈ��������</div>
					</div>
					<div class="divMiddle">
						<div class="divMiddleInner" style="width:150px;">[����] ����ķ�۽�</div>
					</div>
					<div class="divMiddle">
						<div class="divMiddleInner" style="width:150px;">[�λ�] �λ�ķ�۽�</div>
					</div>
					<div class="divMiddle">
						<div class="divMiddleInner" style="width:150px;">[����] ����ķ�۽�</div>
					</div>
					<div class="divMiddle">
						<div class="divMiddleInner" style="width:150px;">[����] ����ķ�۽�</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no1 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle" href="javascript:alert('�غ����Դϴ�. ����(02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">�ڹ� Front-End ��ް���</div>
					</div>
					<div class="divMiddle" href="javascript:alert('�غ����Դϴ�. ����(02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">�ڹ� Back-End ��ް���</div>
					</div>
					<div class="divMiddle" href="javascript:alert('�غ����Դϴ�. ����(02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">IoT ��ް���</div>
					</div>
					<div class="divMiddle" href="javascript:alert('�غ����Դϴ�. ����(02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">�Ӻ���� �ý��� ��ް���</div>
					</div>
					<div class="divMiddle" href="javascript:alert('�غ����Դϴ�. ����(02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">������ ��� ��ް���</div>
					</div>
					<div class="divMiddle" href="javascript:alert('�غ����Դϴ�. ����(02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">������ ���̾�Ƽ��Ʈ ����</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<!-- no2 : ����ķ�۽�(��ް���) -->
				<div class="mainDropdownMenu depth2 no2 fl">
					<div class="divTop1"></div>
					<div class="divTop2" ></div>
					<div class="divBlank"></div>
					<div class="divMiddle" href="/Course/localCampus/localCampus_Daejeon_introduction.asp">
						<div class="divMiddleInner" style="width:140px;">����ķ�۽� �Ұ�</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Daejeon_windowNet.asp">
						<div class="divMiddleInner" style="width:140px;">������ ��� ��ް���</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<!-- // no2 : ����ķ�۽�(��ް���) -->
				<!-- no3 : �λ�ķ�۽�(��ް���) -->
				<div class="mainDropdownMenu depth2 no3 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/localCampus/localCampus_Busan_introduction.asp">
						<div class="divMiddleInner" style="width:130px;">�λ�ķ�۽� �Ұ�</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Busan_javaHigh.asp">
						<div class="divMiddleInner" style="width:130px;">��&amp;����� ��ް���</div><!--�ڹٰ�ް���???-->
					</div>
					<div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>
				<!-- // no3 : �λ�ķ�۽�(��ް���) -->
				<!-- no4 : ����ķ�۽�(��ް���) -->
				<div class="mainDropdownMenu depth2 no4 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/localCampus/localCampus_Gunpo_introduction.asp">
						<div class="divMiddleInner" style="width:140px;">����ķ�۽� �Ұ�</div>
					</div>
					<div class="divMiddle" href="/Course/localCampus/DetailPage/Gunpo_windowNet.asp">
						<div class="divMiddleInner" style="width:140px;">������ ��� ��ް���</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<!-- // no4 : ����ķ�۽�(��ް���) -->
				<!-- no4 : ����ķ�۽�(��ް���) -->
				<div class="mainDropdownMenu depth2 no5 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<div class="divMiddle" href="/Course/localCampus/localCampus_Gimhae_introduction.asp">
						<div class="divMiddleInner" style="width:140px;">����ķ�۽� �Ұ�</div>
					</div>
					<div class="divMiddle twolines" href="javascript:alert('�غ����Դϴ�.(���� 02-3486-3456)'); // /Course/localCampus/DetailPage/Gimhae_BigData.asp">
						<div class="divMiddleInner twolines" style="width:140px;">������ �����Ͼ �ǹ����� ��ް���</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<!-- // no4 : ������ķ�۽�(��ް���) -->
				<div style="clar:both;"></div>
			</div>
			
			<!-- depth0 no3 : ���������� -->
			<div class="mainDropdownMenu depth0 no3" >
				<!--<img src="Images/Icons/MainPage_Menubar__triangle.png" style="position:relative; top:-13px; left:-50px;"/>-->
				<div class="mainDropdownMenu depth1 no3 fl" >
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle" href="/Course/Expert/Course_Expert_JavaExpert.asp">
						<div class="divMiddleInner" style="width:180px;">�ڹ� ����������</div>
					</div>
					<div class="divMiddle" href="javascript:alert('�غ����Դϴ�. (���� 02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">������ ��� ����������</div>
					</div>
					<div class="divMiddle" href="/Course/Expert/Course_Expert_Embedded.asp">
						<div class="divMiddleInner" style="width:180px;">�Ӻ���� �ý��� ����������</div>
					</div>
					<div class="divMiddle" href="javascript:alert('�غ����Դϴ�. (���� 02-3486-3456)');">
						<div class="divMiddleInner" style="width:180px;">û��Ǿ� �ؼ��ݵ�</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div style="clar:both;"></div>
			</div>
			
			<!-- depth0 no4 : ��������������� -->
			<div class="mainDropdownMenu depth0 no4" >
				<!--<img src="Images/Icons/MainPage_Menubar__triangle.png" style="position:relative; top:-13px; left:-93px;"/>-->
				<div class="mainDropdownMenu depth1 no4 fl" >
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle dnone">
						<div class="divMiddleInner" style="width:170px;">4����������η¾缺</div>
					</div>
					<div class="divMiddle"><!-- href="/Course/Kukka/Course_Kukka_2018.asp">-->
						<div class="divMiddleInner" style="width:170px;">�����Ⱓ�����������</div>
					</div>
					<div class="divMiddle"><!-- href="/Course/Employ/Course_Employ.asp">-->
						<div class="divMiddleInner" style="width:170px;">���Ի�� ä�뱳��</div>
					</div>
					<div class="divMiddle">
						<div class="divMiddleInner" style="width:170px;">���������ڿ��������ҽþ�</div>
					</div>
					<div class="divMiddle" href="/Course/Chung/Course_Chung_2018.asp">
						<div class="divMiddleInner" style="width:170px; background-image: url();">û�������ī����</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no1 fl dnone">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle long" href="/Course/Industry4.0/Course_Industry40_FinTech_Expert.asp">
						<div class="divMiddleInner" style="width:220px;">AI��� ����ũ ���� ����������</div>
					</div>
					<div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div><div class="divBlank"></div>
					<!--
					<div class="divMiddle long twolines" href="/Course/Industry4.0/Course_Industry40_BigData_Expert.asp">
						<div class="divMiddleInner twolines" style="width:220px;">AI��� ������ �����Ͼ�/���̾�Ƽ��Ʈ ����������</div>
					</div>
					-->
					<!--
					<div class="divMiddle long twolines" href="/Course/Industry4.0/Course_Industry40_IoTSelfDriving_Expert.asp">
						<div class="divMiddleInner twolines" style="width:220px;">IoT�� Ȱ���� AI ��� �������� ����������</div>
					</div>
					-->

					<div class="divBottom"></div>
				</div>

				<div class="mainDropdownMenu depth2 no2 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<!--
					<div style="DISPLAY:NONE;" class="divMiddle  " href="/Course/Kukka/Course_Kukka_Projects2070929.asp">
						<div class="divMiddleInner" style="width:200px;">������Ʈ ��ǥȸ</div>
					</div>
					-->
					<div class="divMiddle  " href="/Course/Kukka/Course_Kukka_Introduction.asp">
						<div class="divMiddleInner" style="width:200px;">�����Ⱓ������������Ʒ� �Ұ�</div>
					</div>
					<div class="divMiddle long twolines" href="/Course/Kukka/Course_Kukka_RaspberryPiIoTService_2018.asp">
						<div class="divMiddleInner twolines" style="width:200px;">��������̸� Ȱ���� IoT ����<br/>����η� �缺����</div>
					</div>
					<div class="divMiddle long twolines" href="/Course/Kukka/Course_Kukka_FinTech_2018.asp">
						<div class="divMiddleInner twolines" style="width:200px;">���� IT��� ����ũ ������<br/> �缺����</div>
					</div>

					<!--
					<div class="divMiddle long twolines" href="/Course/Kukka/Course_Kukka_AWSCloudWeb_2018.asp">
						<div class="divMiddleInner twolines" style="width:200px; letter-spacing:-2px;">AWS�� Ȱ���� Ŭ���� ��� �� ����<br/>����η� �缺����</div>
					</div>
					-->
					<!--
					<div class="divMiddle long twolines" href="/Course/Kukka/Course_Kukka_EmbeddedDrone_2018.asp">
						<div class="divMiddleInner twolines" style="width:200px;">�Ӻ���� �ý��� ��� ��� ����<br/>����η� �缺����</div>
					</div>
					-->
					<!--
					<div class="divMiddle long twolines" href="/Course/Kukka/Course_Kukka_JavaBigData_2018.asp">
						<div class="divMiddleInner twolines" style="width:200px;">JAVA ��� ������ �м��� ���� <br/>������ �缺����</div>
					</div>
					<div class="divMiddle long twolines" href="/Course/Kukka/Course_Kukka_RaspberryPiIoTEmbedded_2017.asp">
						<div class="divMiddleInner twolines" style="width:200px; letter-spacing:-2px;">��������̸� Ȱ���� IoT�Ӻ����<br/>�ý��� ������ �缺����</div>
					</div>
					-->
					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no3 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div>

					<div class="divMiddle" href="/Course/Employ/Course_Employ.asp">
						<div class="divMiddleInner" style="width:190px;">���Ի�� ä�뱳�� �Ұ�</div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_ITtelecom.asp">
						<div class="divMiddleInner" style="width:190px;">�߾���Ƽ�ڷ��� <span style="font-size:13px;">[������]</span></div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_BAinfra.asp">
						<div class="divMiddleInner" style="width:190px;">�ߺ��������� <span style="font-size:13px;">[������]</span></div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_ivis.asp">
						<div class="divMiddleInner" style="width:190px;">�߾��̺� <span style="font-size:13px;">[������]</span></div>
					</div>
					<div class="dnone divMiddle" href="/Course/Employ/Course_Employ_Cafe24.asp">
						<div class="divMiddleInner" style="width:190px;">��ī��24<span style="font-size:13px;">[������]</span></div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_BitComputer.asp">
						<div class="divMiddleInner" style="width:190px;">�ߺ�Ʈ��ǻ�� <span style="font-size:13px;">[������]</span></div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_AurosTech.asp">
						<div class="divMiddleInner" style="width:190px;">�߿��ν���ũ����� <span style="font-size:13px;">[������]</span></div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_PSK.asp">
						<div class="divMiddleInner" style="width:190px;">���ǿ������� <span style="font-size:13px;">[������]</span></div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_BizTechPartners.asp">
						<div class="divMiddleInner" style="width:190px;">�ߺ�����ũ��Ʈ�ʽ� <span style="font-size:13px;">[������]</span></div>
					</div>
					<div class="divMiddle" href="/Course/Employ/Course_Employ_TaehaMechatronics.asp">
						<div class="divMiddleInner" style="width:190px;">�����ϸ�īƮ�δн� <span style="font-size:13px;">[������]</span></div>
					</div>
					<div class="dnone divMiddle" href="/Course/Employ/Course_Employ_LEETECH.asp">
						<div class="divMiddleInner" style="width:190px;">�߸��� <span style="font-size:13px;">[������]</span></div>
					</div>
					<div class="dnone divMiddle" href="/Course/Employ/Course_Employ_voiceye.asp">
						<div class="divMiddleInner" style="width:190px;">�ߺ��̽����� <span style="font-size:13px;">[������]</span></div>
					</div>
					<!--
					<div class="divMiddle" href="/Course/Employ/Course_Employ_WhiteInfoComm.asp">
						<div class="divMiddleInner" style="width:190px;">��ȭ��Ʈ������� <span style="font-size:13px;">[������]</span></div>
					</div>
					-->

					<div class="divBottom"></div>
				</div>
				<div class="mainDropdownMenu depth2 no4 fl">
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divBlank"></div><div class="divBlank"></div>

					<div class="divMiddle long" href="/Course/Kukka/Course_Consortium_RaspberryPi_IoT.asp">
						<div class="divMiddleInner" style="width:220px; letter-spacing:-2px;">��������̸� Ȱ���� IoT���� �ǹ�����</div>
					</div>
					<div class="divBlank"></div>
					<div class="divBottom"></div>
				</div>

				<div style="clar:both;"></div>
			</div>
			<!-- depth0 no5 : ���߰�SW���� -->
			<div class="mainDropdownMenu depth0 no5" >
				<!--<img src="Images/Icons/MainPage_Menubar__triangle.png" style="position:relative; top:-13px; left:-52px;"/>-->
				<div class="mainDropdownMenu depth1 no5 fl" >
					<div class="divTop1"></div>
					<div class="divTop2"></div>
					<div class="divMiddle long" href="javascript:alert('�غ����Դϴ�. (���� : 02-3486-3456)'); ///Course/ShortCourse/DetailPage/Course_RaspberryPi_Audio.asp">
						<div class="divMiddleInner" style="width:260px;">����� �����ϴ� ��������� ����� �����</div>
					</div>
					<div class="divBottom"></div>
				</div>
				<div style="clar:both;"></div>
			</div>
			
			<div style="clar:both;"></div>
			<!--//main dropdown menu -->
			