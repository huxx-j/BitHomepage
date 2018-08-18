<%
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<script>
		var arrImage = new Array();	// preloaded images.
		var timerMainmenubar;
		var timerWidebanner;
		var NUM_OF_WIDEBANNERS = 3;
		var WIDEBANNER_CHANGE_DELAY = 5300;		// 2초마다 와이드배너 전환(transition)
		var WIDEBANNER_TRANSITION_DELAY = 800;	// 와이드배너 전환시 transition은 1초 동안(duration).
		var MAINMENU_DELAY = 50;
		var COLOR_SELECTED = "blue";
		
		$(document).ready(function() {
			preloadImages();
			
			// mainmenu(1~6,7~9) handlers.
			$(".mainmenu").on("mouseenter", function() {
				// clear the menubar
				for(var i=0; i<=5; i++) {
//메뉴반전					$(".mainmenu:eq("+i+")").attr("src","Images/Menus/MainPage_Menu__menu"+(i+1)+"off.png");
				}
				// hide MenuDropdown
				for(var i=0;i<=3;i++){ hideMenu(i); }
				
				var index = $(".mainmenu").index(this);
//메뉴반전				if(index<6) $(".mainmenu:eq("+(index)+")").attr("src","Images/Menus/MainPage_Menu__menu"+(index+1)+"on.png");
				
				showMenu(index,1,index);
				clearTimeout(timerMainmenubar);
			}).on("mouseleave", function() {
				var index = $(".mainmenu").index(this);
//메뉴반전				if(index<6) $(".mainmenu:eq("+(index)+")").attr("src","Images/Menus/MainPage_Menu__menu"+(index+1)+"off.png");
				timerMainmenubar = setTimeout(function() { for(var i=0;i<=3;i++){ hideMenu(i); } }, MAINMENU_DELAY);
			}).on("click", function() {
				var index = $(".mainmenu").index(this);
				if($(this).attr("h_ref")!=undefined) location.href = $(this).attr("h_ref");
			});
			$(".mainDropdownMenu .divMiddle").on("click", function() {
				var href = $(this).attr("href");
				if(href!="" && $(this).attr("href")!=undefined) location.href=href;
			});

			// WideBannerBtn(1~3) handlers
			/*
			$("#mainWideBanner img").on("mouseenter", function() {
				clearTimeout(timerWidebanner);
			}).on("mouseleave", function() {
				//var index = $(".wideBannerBtn").index(this);
				var index;
				for(var i=0; i<=NUM_OF_WIDEBANNERS-1; i++) {
					var str = ( $(".wideBannerBtn:eq("+i+")").attr("src") );
					if(str.substring(str.length-6) == "on.png") {
						index = i;
					}
				}
				clearTimeout(timerWidebanner);
				setTimerWidebanner(index);
			});
			$(".wideBannerBtn").on("mouseenter", function() {
				clearTimeout(timerWidebanner);
				var index = $(".wideBannerBtn").index(this);
				//$(".wideBannerBtn:eq("+(index)+")").attr("src","Images/Btns/MainPage_BannerBtn__"+(index+1)+"on.png");
				//$(".wideBannerBtn:eq("+(index)+")").css("margin-top","-10px");
				wideBannerHandler(index, false);
			}).on("mouseleave", function() {
				var index = $(".wideBannerBtn").index(this);
				clearTimeout(timerWidebanner);
				setTimerWidebanner(index);
			})
			*/
			/*
			.on("mouseleave", function() {
				var index = $(".wideBannerBtn").index(this);
				//$(".wideBannerBtn:eq("+(index)+")").attr("src","Images/Btns/MainPage_BannerBtn__"+(index+1)+"off.gif");
				if(index==0) {
					document.wideBannerBtn1.src = arrImage[3].src;			// preloaded[3]~[5] : wideBannerBtn off
				} else if(index==1) {
					document.wideBannerBtn2.src = arrImage[4].src;	// preloaded[3]~[5] : wideBannerBtn off
				}
				//else if(index==2) {
				//	document.wideBannerBtn3.src = arrImage[5].src;	// preloaded[3]~[5] : wideBannerBtn off
				//}
				$(".wideBannerBtn:eq("+(index)+")").css("margin-top","0px");
			})
			*/
			/*
			.on("click", function() {
				var index = $(".wideBannerBtn").index(this);
				//alert("배너버튼"+(index+1)+"번 선택");
			});
			*/

			// widebanner image handler
			$("#mainWideBanner img").on("click", function() {
				if($(this).attr("href")!=undefined) location.href = $(this).attr("href");
			});
			
			// submenu(1~9) handlers
			$(".submenu").on("mouseenter",function() {
				var index = $(".submenu").index(this);
				$(this).attr("src", "Images/Menus/submenu"+(index+1)+"on.png");
			}).on("mouseleave",function() {
				var index = $(".submenu").index(this);
				$(this).attr("src", "Images/Menus/submenu"+(index+1)+"off.png");
			}).on("click", function() {
				var index = $(".submenu").index(this);
				//alert("서브메뉴"+(index+1)+"번 선택");
				if($(this).attr("h_ref")!=undefined) location.href=$(this).attr("h_ref");
				/*
				if(index==0) { alert("비트교육센터 소개"); }
				else if(index==1) alert("청년실업해소펀드 안내");
				else if(index==2) alert("고용보험(재직자) 환급안내");
				else if(index==3) alert("자격증 및 확인서 신청");
				else if(index==4) alert("강의실 임대문의");
				else if(index==5) alert("비트교육센터 강사모집");
				else if(index==6) alert("자주묻는 질문");
				else if(index==7) alert("Q&A");
				else if(index==8) alert("찾아오시는 길");
				*/
			});
			
			// mainmenubar triangle handler.
			$(".mainmenuTriangle").on("mouseenter",function() {
				var index = $(".mainmenuTriangle").index(this);
//메뉴반전				$(".mainmenu:eq("+(index)+")").attr("src","Images/Menus/MainPage_Menu__menu"+(index+1)+"on.png");
				showMenu(index,1,index);
				clearTimeout(timerMainmenubar);
			});
			
			// mainmenu_dropdown  handlers.
			$(".mainDropdownMenu.depth0").on("mouseenter",function() {
				var index = $(".mainDropdownMenu.depth0").index(this);
//메뉴반전				$(".mainmenu:eq("+(index)+")").attr("src","Images/Menus/MainPage_Menu__menu"+(index+1)+"on.png");
				clearTimeout(timerMainmenubar);
			}).on("mouseleave",function() {
				timerMainmenubar = setTimeout(function() { 
					// Close all.
					for(var i=0; i<=3; i++) {
						hideMenu(i);
					}
					for(var i=0; i<=5; i++) {
//메뉴반전						$(".mainmenu:eq("+(i)+")").attr("src","Images/Menus/MainPage_Menu__menu"+(i+1)+"off.png");
					}
					// Clear all.
					clearMainmenuDepthnumber(1); // clear the depth1 :: set font color to #000.
					clearMainmenuDepthnumber(2); // clear the depth2 :: set font color to #000.
					clearMainmenuDepthnumber(3); // clear the depth3 :: set font color to #000.
					
				}, MAINMENU_DELAY);
			});
			
			$(".mainDropdownMenu .divMiddle").on("mouseenter",function() {
				clearMainmenuDepthnumber(1); // clear the depth1 :: set font color to #000.
				clearMainmenuDepthnumber(2); // clear the depth2 :: set font color to #000.
				$(this).css("color",COLOR_SELECTED);
				
				// .depth1.no1 : 0-[서울] / 1-[대전] / 2-[부산] / 3-[천안=x]
				var index = $(".mainDropdownMenu.depth1.no1 .divMiddle").index(this);
				if(index>-1) {
//매뉴반전					$(".mainmenu:eq(0)").attr("src","Images/Menus/MainPage_Menu__menu1on.png"); //단기프로그래밍 mainmenu on
					hideMenu(2);
					hideMenu(3);
					showMenu(0,2,index);
				}
				
				// .depth2.no1 : [서울] 비트교육센터 - 0:C 프로그래밍 / 1:Java / 2:C++ / 3:자료구조알고리즘 / 4:Python / 5:C#
				var index = $(".mainDropdownMenu.depth2.no1 .divMiddle").index(this);
				if(index>-1) {
					hideMenu(3);
					showMenu(0,3,index);
				}
				
				// .depth1.no2 : 
				var index = $(".mainDropdownMenu.depth1.no2 .divMiddle").index(this);
				if(index>-1) {
//매뉴반전					$(".mainmenu:eq(1)").attr("src","Images/Menus/MainPage_Menu__menu2on.png"); //단기핵심역량 mainmenu on
					hideMenu(2);
					showMenu(1,2,index);
				}
				// .depth1.no3 : 
				var index = $(".mainDropdownMenu.depth1.no3 .divMiddle").index(this);
				if(index>-1) {
//매뉴반전					$(".mainmenu:eq(2)").attr("src","Images/Menus/MainPage_Menu__menu3on.png"); //단기핵심역량 mainmenu on
					hideMenu(2);
					showMenu(2,2,index);
				}
				// .depth1.no2 : 
				var index = $(".mainDropdownMenu.depth1.no4 .divMiddle").index(this);
				if(index>-1) {
//매뉴반전					$(".mainmenu:eq(3)").attr("src","Images/Menus/MainPage_Menu__menu4on.png"); //단기핵심역량 mainmenu on
					hideMenu(2);
					showMenu(3,2,index);
				}
				// .depth1.no2 : 
				var index = $(".mainDropdownMenu.depth1.no5 .divMiddle").index(this);
				if(index>-1) {
//매뉴반전					$(".mainmenu:eq(4)").attr("src","Images/Menus/MainPage_Menu__menu5on.png"); //단기핵심역량 mainmenu on
					hideMenu(2);
					showMenu(4,2,index);
				}
				// .depth1.no2 : 
				var index = $(".mainDropdownMenu.depth1.no6 .divMiddle").index(this);
				if(index>-1) {
//매뉴반전					$(".mainmenu:eq(5)").attr("src","Images/Menus/MainPage_Menu__menu6on.png"); //단기핵심역량 mainmenu on
					hideMenu(2);
					//초중고SW교육은 아직 depth2가 없음.
					//showMenu(5,2,index);
				}
				
				/***************************** keeping the depth1 while the mouse is on the depth2   *********/
				// 단기프로그래밍1~4
				for(var i=1;i<=4;i++) {
					if( $(".mainDropdownMenu.depth0.no1 .depth2.no"+i+" .divMiddle").index(this)>-1) {
//메뉴반전						$(".mainmenu:eq(0)").attr("src","Images/Menus/MainPage_Menu__menu1on.png"); //단기프로그래밍 mainmenu on
						clearMainmenuDepthnumber(1);
						$(".mainDropdownMenu.depth0.no1 .depth1 .divMiddle:eq("+(i-1)+")").css("color",COLOR_SELECTED);
					}
				}
				
				// 핵심역량분류1~6
				for(var i=1;i<=6;i++) {
					if( $(".mainDropdownMenu.depth0.no2 .depth2.no"+i+" .divMiddle").index(this)>-1) {
//메뉴반전						$(".mainmenu:eq(1)").attr("src","Images/Menus/MainPage_Menu__menu2on.png"); //단기핵심역량 mainmenu on
						clearMainmenuDepthnumber(1);
						$(".mainDropdownMenu.depth0.no2 .depth1 .divMiddle:eq("+(i-1)+")").css("color",COLOR_SELECTED);
					}
				}
				/***************************** //keeping the depth1 while the mouse is on the depth2 **********/
				/***************************** keeping the depth2 while the mouse is on the depth3   *********/
				for(var i=1;i<=6;i++) {
					if( $(".mainDropdownMenu.depth0.no1 .depth3.no"+i+" .divMiddle").index(this)>-1) {
//메뉴반전						$(".mainmenu:eq(0)").attr("src","Images/Menus/MainPage_Menu__menu1on.png"); //단기프로그래밍 mainmenu on
						clearMainmenuDepthnumber(1);
						clearMainmenuDepthnumber(2);
						$(".mainDropdownMenu.depth0.no1 .depth1 .divMiddle:eq("+0+")").css("color",COLOR_SELECTED); // 단기프로그래밍.
						$(".mainDropdownMenu.depth0.no1 .depth2 .divMiddle:eq("+(i-1)+")").css("color",COLOR_SELECTED);
					}
				}
				/***************************** //keeping the depth2 while the mouse is on the depth3 **********/
				
			}).on("mouseleave",function() {
				//$(this).css("background-color","#fff");
				$(this).css("color","#000");
			});
			
			// slots handlers
			$("#Content .slot").on("click", function() {
				//var cn = $(this).find("p").eq(0).text();
				//alert("과정 선택 : " + cn);
				var href = $(this).attr("href");
				if(href!=undefined)  location.href = href;
				
			});
			
			// selectCampus handlers
			//$("#Content .selectCampus").on("click", function() {
			//	var numCampus = $(this).attr("numCampus");
			//	toggleCampusInfo(numCampus);
			//});
			
			// insideSlots handlers
			$(".insideSlot").on("mouseenter", function() {
				//$(this).css("opacity",1);
				$(this).stop(true,true).animate({"opacity":1},400,'easeOutElastic');
			}).on("mouseleave", function() {
				//$(this).css("opacity",0);
				$(this).stop(true,true).animate({"opacity":0},200);
			});

			
			/* 배너이미지가 1개 이므로 주석처리함(2017-08-12-YG)
			// WideBanner transition timer 시작! index 매개변수 = 2부터 시작.
			setTimerWidebanner(2);
			*/
		});  // the end of the $document.ready.

		// wideBannerHandler() : 매개변수 index는 0부터 시작. wideBannerBtn이 3개이면 0~2 사이의 값을 가짐. mouseover 시의 변화를 구현.
		// bAnimation 이 true이면 transition시 animation사용, false이면 trasition시 animation 없이 즉시 이미지변경.
		function wideBannerHandler(index, bAnimation) {
			var arrStr = new Array("/Center/Center_info.asp",
									"/Course/Industry4.0/Course_Expert_BigDataSystem.asp",
									"/Course/ShortCourse/Course_shortCourse_Vacation_Summer_2017.asp");
			if(index>=0 && index<=2) {
				// preloaded[0]~[2] : wideBannerBtn on
				// preloaded[3]~[5] : wideBannerBtn off
				// preloaded[18]~[20] : reserved for wide banners
				//$("#mainWideBanner img:eq(2)").attr("href",arrStr[index] );

				//$("#mainWideBanner img:eq(2)").attr("src",arrImage[18+index].src);		
				for(var i=0; i<=NUM_OF_WIDEBANNERS-1; i++) {
					if(i==index) {
						$("#mainWideBanner img:eq("+i+")").css("z-index","1");
						if(bAnimation==true) {
							$("#mainWideBanner img:eq("+i+")").css("opacity","0.0");
							$("#mainWideBanner img:eq("+i+")").stop();
							$("#mainWideBanner img:eq("+i+")").animate({"opacity":"1.0"},WIDEBANNER_TRANSITION_DELAY,"swing");							
						} else if(bAnimation==false) {
							$("#mainWideBanner img:eq("+i+")").css("opacity","1.0");
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
				document.wideBannerBtn1.src = (index==0) ? arrImage[0].src : arrImage[3].src;
				document.wideBannerBtn2.src = (index==1) ? arrImage[1].src : arrImage[4].src;
				document.wideBannerBtn3.src = (index==2) ? arrImage[2].src : arrImage[5].src;
				$(".wideBannerBtn:eq(0)").css("margin-top", (index==0) ? "-10px" : "0px");
				$(".wideBannerBtn:eq(1)").css("margin-top", (index==1) ? "-10px" : "0px");
				$(".wideBannerBtn:eq(2)").css("margin-top", (index==2) ? "-10px" : "0px");
			}
		}

		// setTimerWidebanner() : 매개변수 index는 0부터 시작. 와이드배너 개수가 3개이고 index가 2라면, 
		// 이 함수는 0번인덱스의 와이드배너로의 전환(transition)을 일정 딜레이 초 후에 실행하도록 타이머를 설정함.
		function setTimerWidebanner(index) {
			timerWidebanner = setTimeout(function() {
				// transition to the next wideBanner.
				wideBannerHandler(++index%NUM_OF_WIDEBANNERS, true);
				setTimerWidebanner(index);

			}, WIDEBANNER_CHANGE_DELAY);
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
			
			arrImage[6].src = "Images/Slots/MainPage_Slot__단기프_C프로그래밍.png";
			arrImage[7].src = "Images/Slots/MainPage_Slot__단기프_JAVA프로그래밍.png";
			arrImage[8].src = "Images/Slots/MainPage_Slot__단기프_Cpp프로그래밍.png";
			arrImage[9].src = "Images/Slots/MainPage_Slot__단기프_자료구조알고리즘.png";
			arrImage[10].src = "Images/Slots/MainPage_Slot__단기핵심_Javascript.png";
			arrImage[11].src = "Images/Slots/MainPage_Slot__단기핵심_Database.png";
			arrImage[12].src = "Images/Slots/MainPage_Slot__단기핵심_PM.png";
			arrImage[13].src = "Images/Slots/MainPage_Slot__단기핵심_모바일.png";
			arrImage[14].src = "Images/Slots/MainPage_Slot__고급_Iot.png";
			arrImage[15].src = "Images/Slots/MainPage_Slot__고급_임베디드.png";
			arrImage[16].src = "Images/Slots/MainPage_Slot__고급_윈도우닷넷.png";
			arrImage[17].src = "Images/Slots/MainPage_Slot__고급_빅데이터.png";
			
			arrImage[18].src = "Images/Banners/MainPage_Banner__BIT_Advantage.png";
			arrImage[19].src = "Images/Banners/MainPage_Banner__Industry40.png";
			arrImage[20].src = "Images/Banners/MainPage_Banner__Summer2017.png";		// reserved for a wide banner.
			////////////////////////////////////////////// Now working, why?
		}		
		
		// mainmenu를 보임. upperindex는 1~. depth는 0~3. index는 ".no"뒤에 붙는 숫자.
		function showMenu(upperindex,depth,index) {
			// show the mainmenu_dropdown specified by index.
			$(".mainDropdownMenu.depth0.no"+(upperindex+1)).show();
			$(".mainDropdownMenu.depth0.no"+(upperindex+1)+" .mainDropdownMenu.depth"+depth+".no"+(index+1)).show();  // index:0~
			//$(".mainDropdownMenu.no"+(index+1)+".depth"+depth).show();
			//$(".mainDropdownMenu.depth"+depth+".no"+(index+1)).show();
		}
		
		// mainmenu를 감춤. depth(0~3)단위로 감춤.
		function hideMenu(depth) {
			// hide the mainmenu_dropdown. depth:1~3.
			$(".mainDropdownMenu.depth"+depth).hide();
			//$(".mainDropdownMenu.no1.depth1").hide();
		}
		
		// COLOR_SELECTED로 바뀌었던 애들을(in the depth1~3) 기본색(#000)으로 리셋.
		function clearMainmenuDepthnumber(depth) {
			$(".mainDropdownMenu.depth"+depth+" .divMiddle").css("color","#000");
		}

		// 강의평가
		function openPopupInputFormLessonEvaluation(SubjectID) {
			window.open("/Popup/Lesson_Evaluation_InputForm2_Opener.asp?SubjectID="+SubjectID,"","left=-1500, top=-300, width=750, height=930, titlebar=no, location=no, toolbar=no, resizable=yes, scrollbars=yes");
		}

		// 프로젝트평가
		function openPopupInputFormLessonProjEvaluation(ProjectID) {
			window.open("/Popup/LessonProj_Evaluation_InputForm2_Opener.asp?ProjectID="+ProjectID,"","left=-1500, top=-300, width=750, height=930, titlebar=no, location=no, toolbar=no, resizable=yes, scrollbars=yes");
		}

		// 단기프로그래밍_과정 선택시 캠퍼스 선택지가 보이도록.(selectCampus)
		function toggleCampusInfo(numCampus) {
			var str="";
			if(numCampus==1) {		// C프로그래밍
				str 	= "<a href='/Course/ShortCourse/Courses_c.asp'><div><span class='campusName'>[서울]</span> 비트교육센터</div></a>" +
					"<a href='/Course/localCampus/DetailPage/localCampus_deajeon_c.asp'><div><span class='campusName'>[대전]</span> 우송비트캠퍼스</div></a>" +
					"<a href='/Course/localCampus/DetailPage/localCampus_busan_c.asp'><div><span class='campusName'>[부산]</span> 부산외대비트캠퍼스</div></a>";
			}
			else if(numCampus==2) {		// Java프로그래밍
				str 	= "<a href='/Course/ShortCourse/DetailPage/Course_Java.asp'><div><span class='campusName'>[서울]</span> 비트교육센터</div></a>" +
					"<a href='/Course/localCampus/DetailPage/localCampus_deajeon_java.asp'><div><span class='campusName'>[대전]</span> 우송비트캠퍼스</div></a>" +
					"<a href='/Course/localCampus/DetailPage/localCampus_busan_java.asp'><div><span class='campusName'>[부산]</span> 부산외대비트캠퍼스</div></a>";
			}
			else if(numCampus==3) {		// C++프로그래밍
				str 	= "<a href='/Course/ShortCourse/DetailPage/Course_cPlus.asp'><div><span class='campusName'>[서울]</span> 비트교육센터</div></a>" +
					"<a href='/Course/localCampus/DetailPage/localCampus_deajeon_cPlus.asp'><div><span class='campusName'>[대전]</span> 우송비트캠퍼스</div></a>";
			}
			else if(numCampus==4) {		// 자료구조/알고리즘
				str 	= "<a href='/Course/ShortCourse/DetailPage/Course_C2.asp'><div><span class='campusName'>[서울]</span> 비트교육센터</div></a>" +
					"<a href='/Course/localCampus/DetailPage/localCampus_busan_c2.asp'><div><span class='campusName'>[부산]</span> 부산외대비트캠퍼스</div></a>";
			}			
			if( $("div#selectCampus"+numCampus).html().length>0 )
				$("div#selectCampus"+numCampus).html("");
			else {
				$("div#selectCampus"+numCampus).html(str);
				$("div#selectCampus"+numCampus).attr("id","");
			}
		}
	</script>
