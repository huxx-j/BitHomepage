<%
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>
	<style>
	/*
	������ (position)�� �Ӽ��� absolute �� ��쿡�� �ΰ��� ���·� ������ �˴ϴ�.
	absolute �� ������Ʈ�� ���� ������Ʈ�� �Ӽ��� relative �ΰͰ� �ƴѰ����� �����ϴ�.
	�ƴ� ��쿡��, ������ (body) �� �������� �������� ��ġ�� ������ �ǰ�,
	���� ������Ʈ�� �Ӽ��� relative �� ��쿡�� ���� ������Ʈ�� �������� �������� ��ġ�� �̵��մϴ�.
	*/
		#Header_Outer_Wrap,{
			width:100%;
		}
		#Footer_Outer_Wrap {
			width:100%;;
			background-color:#122139; 
		}
		#Header_Wrap1709 {
			position:relative;
			margin:0 auto;
			width:960px;
		} 
		#Container_Wrap {
			position:relative;
			width:960px; 
			/* min-height:2000px; */
			margin:0 auto;
		}
		#mainTopBar { 
			background-color:#122139;
			height:40px;
			font-size:13px;
			font-weight:600;
		}
		/*
		height:27px; 
		background: url('Images/MainPage_TopBar.gif') repeat-x; 
		box-shadow:0px 1px 0px #dbdbdb;
		*/

		#mainLogoBar {
			height:56px;
		}
		#mainTopMenuBar {
			height:56px;
		}
		#mainTopMenuBar img, #mainWideBanner img, #mainSubMenu img, #Content_Wrap img.slot {
			float:left;
			cursor:pointer;
		}
		#mainWideBanner {
			margin-top:6px;
			margin-bottom:0px;
			overflow-y:hidden;
			height:345px;
		}
		#mainSubMenu {
			margin-bottom:33px;
		} /* 33. but in fact, it's 9px. why?? */
		
	</style>
	<script>
var arrImage = new Array();	// preloaded images.
		var timerMainmenubar;
		var timerWidebanner;			// �����ð� ��� �� ���̵��� �̹��� ����
		var bxslider1;					// bxslider(C���α׷���, �ڷᱸ���˰���)
		var MAINMENU_DELAY = 50;
		var WIDEBANNER_TRANSITION_DELAY = 400;  	//800;	// ���̵��� ��ȯ�� transition�� 1�� ����(duration).
		var COLOR_SELECTED = "blue";

		var WIDEBANNER_CHANGE_DELAY = 5300; //= 5300;		// 2�ʸ��� ���̵��� ��ȯ(transition)		
		var NUM_OF_WIDEBANNERS = 2;	// ���̵����̹��� ����.							// NOT USED HERE :: SHOULD BE OVERRIDED.
		// arrWidebannerAddr : ���̵��� �ּ� �迭
		var arrWidebannerAddr = new Array("/Center/Center_info.asp",
					"/Course/Employ/Course_Employ_BizTechPartners.asp"
					);																					// NOT USED HERE :: SHOULD BE OVERRIDED.
		var arrWidebannerBgColor = new Array("#4c4c4c", "#2a2a2a");							// NOT USED HERE :: SHOULD BE OVERRIDED.

		// wideBannerHandler() : �Ű����� index�� 0���� ����. wideBannerBtn�� 3���̸� 0~2 ������ ���� ����. mouseover ���� ��ȭ�� ����.
		// bAnimation �� true�̸� transition�� animation���, false�̸� trasition�� animation ���� ��� �̹�������.
		function wideBannerHandler(index, bAnimation) {
			if(index>=0 && index<=NUM_OF_WIDEBANNERS-1) {
				// preloaded[0]~[2] : wideBannerBtn on
				// preloaded[3]~[5] : wideBannerBtn off
				// preloaded[18]~[20] : reserved for wide banners

				//$("#mainWideBanner img:eq(2)").attr("src",arrImage[18+index].src);		
				for(var i=0; i<=NUM_OF_WIDEBANNERS-1; i++) {
					if(i==index) {
						$("#mainWideBanner img:eq("+i+")").css("z-index","1");
						if(bAnimation==true) {
							$("#mainWideBanner img:eq("+i+")").css("opacity","0.0");
							$("#mainWideBanner img:eq("+i+")").stop();
							$("#mainWideBanner img:eq("+i+")").animate({"opacity":"1.0"},WIDEBANNER_TRANSITION_DELAY,"swing");
							$("#mainWideBanner").parent().animate({"background-color":arrWidebannerBgColor[i]},WIDEBANNER_TRANSITION_DELAY,"swing");
						} else if(bAnimation==false) {
							$("#mainWideBanner img:eq("+i+")").stop();
							$("#mainWideBanner img:eq("+i+")").css("opacity","1.0");
							$("#mainWideBanner").parent().css( "background-color", arrWidebannerBgColor[i] );
						}
					} else {
						$("#mainWideBanner img:eq("+i+")").css("z-index","0");
						//$("#mainWideBanner img:eq("+i+")").css("opacity","0.0");
						if(bAnimation==true) {
							$("#mainWideBanner img:eq("+i+")").stop();
							$("#mainWideBanner img:eq("+i+")").animate({"opacity":"0.0"},WIDEBANNER_TRANSITION_DELAY,"swing");
						} else if(bAnimation==false) {
							$("#mainWideBanner img:eq("+i+")").css("opacity","0.0");
						}
					}
				}
				fillNavigator(index);
				/*
				document.wideBannerBtn1.src = (index==0) ? arrImage[0].src : arrImage[3].src;
				document.wideBannerBtn2.src = (index==1) ? arrImage[1].src : arrImage[4].src;
				document.wideBannerBtn3.src = (index==2) ? arrImage[2].src : arrImage[5].src;
				$(".wideBannerBtn:eq(0)").css("margin-top", (index==0) ? "-10px" : "0px");
				$(".wideBannerBtn:eq(1)").css("margin-top", (index==1) ? "-10px" : "0px");
				$(".wideBannerBtn:eq(2)").css("margin-top", (index==2) ? "-10px" : "0px");
				*/
			}
		}

		// setTimerWidebanner() : �Ű����� index�� 0���� ����. ���̵��� ������ 3���̰� index�� 2���, 
		// �� �Լ��� 0���ε����� ���̵��ʷ��� ��ȯ(transition)�� ���� ������ �� �Ŀ� �����ϵ��� Ÿ�̸Ӹ� ������.
		function setTimerWidebanner(index) {
			timerWidebanner = setTimeout(function() {
				// transition to the next wideBanner.
				wideBannerHandler(++index%NUM_OF_WIDEBANNERS, true);
				setTimerWidebanner(index);

			}, WIDEBANNER_CHANGE_DELAY);
		}
		
		// fillNavigator(navigatorNum) : ���������(filled���׶��, unfilled���׶��) �ϰ����� : navigatorNum(-->0���ͽ���!)�� filled,  �������� unfilled.
		function fillNavigator(navigatorNum) {
			for(var i=0; i<=NUM_OF_WIDEBANNERS-1; i++) {
				if(navigatorNum==i) {
					$(".navigatorWideBanner").eq(i).attr("src", "/Images/Icons/icn_Navigator_Filled.png");
				} else {
					$(".navigatorWideBanner").eq(i).attr("src", "/Images/Icons/icn_Navigator_NotFilled.png");
				}
			}
		
//				<img class="navigatorWideBanner" src="Images/Icons/icn_Navigator_Filled.png" style="position:absolute; height:11px; left:1170px; top:170px; z-index:10;"/>
//				<img class="navigatorWideBanner" src=style="position:absolute; height:11px; left:1190px; top:170px; z-index:10;"/>
		
		}
		
		// image preloader
		function preloadImages() {
			// 0~2 : widebannerbtn(on)
			// 3~5 : widebannerbtn(off)
			
			for(var i=0; i<=2; i++) {		
				arrImage[i] = new Image();
				arrImage[i].src = "Images/Btns/MainPage_BannerBtn__"+(i+1)+"on.png";	// 0~2 : widebannerbtn(on)
			}
			for(var i=0; i<=2; i++) {		
				arrImage[i+3] = new Image();
				arrImage[i+3].src = "Images/Btns/MainPage_BannerBtn__"+(i+1)+"off.gif";	// 3~5 : widebannerbtn(off) 	MainPage_BannerBtn__3on
			}
			for(var i=6; i<=20; i++) arrImage[i] = new Image();
			
			arrImage[6].src = "Images/Slots/MainPage_Slot__�ܱ���_C���α׷���.png";
			arrImage[7].src = "Images/Slots/MainPage_Slot__�ܱ���_JAVA���α׷���.png";
			arrImage[8].src = "Images/Slots/MainPage_Slot__�ܱ���_Cpp���α׷���.png";
			arrImage[9].src = "Images/Slots/MainPage_Slot__�ܱ���_�ڷᱸ���˰���.png";
			arrImage[10].src = "Images/Slots/MainPage_Slot__�ܱ��ٽ�_Javascript.png";
			arrImage[11].src = "Images/Slots/MainPage_Slot__�ܱ��ٽ�_Database.png";
			arrImage[12].src = "Images/Slots/MainPage_Slot__�ܱ��ٽ�_PM.png";
			arrImage[13].src = "Images/Slots/MainPage_Slot__�ܱ��ٽ�_�����.png";
			arrImage[14].src = "Images/Slots/MainPage_Slot__���_Iot.png";
			arrImage[15].src = "Images/Slots/MainPage_Slot__���_�Ӻ����.png";
			arrImage[16].src = "Images/Slots/MainPage_Slot__���_��������.png";
			arrImage[17].src = "Images/Slots/MainPage_Slot__���_������.png";
			
			arrImage[18].src = "Images/Banners/MainPage_Banner__BIT_Advantage.png";
			arrImage[19].src = "Images/Banners/MainPage_Banner__Industry40.png";
			arrImage[20].src = "Images/Banners/MainPage_Banner__Summer2017.png";		// reserved for a wide banner.
			////////////////////////////////////////////// Now working, why?
		}		
		
		// mainmenu�� ����. upperindex�� 1~. depth�� 0~3. index�� ".no"�ڿ� �ٴ� ����.
		function showMenu(upperindex,depth,index) {
			// show the mainmenu_dropdown specified by index.
			$(".mainDropdownMenu.depth0.no"+(upperindex+1)).show();
			$(".mainDropdownMenu.depth0.no"+(upperindex+1)+" .mainDropdownMenu.depth"+depth+".no"+(index+1)).show();  // index:0~
			//$(".mainDropdownMenu.no"+(index+1)+".depth"+depth).show();
			//$(".mainDropdownMenu.depth"+depth+".no"+(index+1)).show();
		}
		
		// mainmenu�� ����. depth(0~3)������ ����.
		function hideMenu(depth) {
			// hide the mainmenu_dropdown. depth:1~3.
			$(".mainDropdownMenu.depth"+depth).hide();
			//$(".mainDropdownMenu.no1.depth1").hide();
		}
		
		// COLOR_SELECTED�� �ٲ���� �ֵ���(in the depth1~3) �⺻��(#000)���� ����.
		function clearMainmenuDepthnumber(depth) {
			//$(".mainDropdownMenu.depth"+depth+" .divMiddle").css("color","#000");
			//$(".mainDropdownMenu.depth"+depth+" .divMiddle").removeClass("on");
			//alert("clear depth:"+depth);
			$(".mainDropdownMenu.depth"+depth+" .divMiddle .divMiddleInner").removeClass("on");
		}

		// ������
		function openPopupInputFormLessonEvaluation(SubjectID) {
			window.open("/Popup/Lesson_Evaluation_InputForm2_Opener.asp?SubjectID="+SubjectID,"","left=-1500, top=-300, width=750, height=930, titlebar=no, location=no, toolbar=no, resizable=yes, scrollbars=yes");
		}

		// ������Ʈ��
		function openPopupInputFormLessonProjEvaluation(ProjectID) {
			window.open("/Popup/LessonProj_Evaluation_InputForm2_Opener.asp?ProjectID="+ProjectID,"","left=-1500, top=-300, width=750, height=930, titlebar=no, location=no, toolbar=no, resizable=yes, scrollbars=yes");
		}

		// �ܱ����α׷���_���� ���ý� ķ�۽� �������� ���̵���.(selectCampus)
		function toggleCampusInfo(numCampus) {
			var str="";
			if(numCampus==1) {		// C���α׷���
				bxslider1.stopAuto();
				str 	= "<a href='/Course/ShortCourse/Courses_c.asp'><div><span class='campusName'>[����]</span> ��Ʈ��������</div></a>" +
					"<a href='/Course/localCampus/DetailPage/Daejeon_c.asp'><div><span class='campusName'>[����]</span> ����ķ�۽�</div></a>" +
					"<a href='/Course/localCampus/DetailPage/Busan_c.asp'><div><span class='campusName'>[�λ�]</span> �λ�ķ�۽�</div></a>";
			}
			else if(numCampus==2) {		// Java���α׷���
				str 	= "<a href='/Course/ShortCourse/DetailPage/Course_Java.asp'><div><span class='campusName'>[����]</span> ��Ʈ��������</div></a>" +
					"<a href='/Course/localCampus/DetailPage/Daejeon_java.asp'><div><span class='campusName'>[����]</span> ����ķ�۽�</div></a>" +
					"<a href='/Course/localCampus/DetailPage/Busan_java.asp'><div><span class='campusName'>[�λ�]</span> �λ�ķ�۽�</div></a>";
			}
			else if(numCampus==3) {		// C++���α׷���
				str 	= "<a href='/Course/ShortCourse/DetailPage/Course_cPlus.asp'><div><span class='campusName'>[����]</span> ��Ʈ��������</div></a>" +
					"<a href='/Course/localCampus/DetailPage/Daejeon_cPlus.asp'><div><span class='campusName'>[����]</span> ����ķ�۽�</div></a>";
			}
			else if(numCampus==4) {		// �ڷᱸ��/�˰���
				bxslider1.stopAuto();
				str 	= "<a href='/Course/ShortCourse/DetailPage/Course_C2.asp'><div><span class='campusName'>[����]</span> ��Ʈ��������</div></a>" +
					"<a href='/Course/localCampus/DetailPage/Busan_c2.asp'><div><span class='campusName'>[�λ�]</span> �λ�ķ�۽�</div></a>";
			}			
			if( $("div#selectCampus"+numCampus).html().length>0 )
				$("div#selectCampus"+numCampus).html("");
			else {
				$("div#selectCampus"+numCampus).html(str);
				$("div#selectCampus"+numCampus).attr("id","");
			}
		}
	</script>
	<link rel="stylesheet" type="text/css" href="/CSS/Base2017Webfont.css"/>

