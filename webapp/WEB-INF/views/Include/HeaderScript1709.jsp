<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<style>
    /*
    포지션 (position)의 속성이 absolute 일 경우에는 두가지 형태로 나뉘게 됩니다.
    absolute 된 엘리먼트의 상위 엘리먼트의 속성이 relative 인것과 아닌것으로 나뉩니다.
    아닐 경우에는, 브라우져 (body) 를 기준으로 절대적인 위치를 가지게 되고,
    상위 엘리먼트의 속성이 relative 일 경우에는 상위 엘리먼트를 기준으로 절대적인 위치로 이동합니다.
    */
    #Header_Outer_Wrap {
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
    var timerWidebanner;			// 일정시간 경과 후 와이드배너 이미지 변경
    var bxslider1;					// bxslider(C프로그래밍, 자료구조알고리즘)
    var MAINMENU_DELAY = 50;
    var WIDEBANNER_TRANSITION_DELAY = 400;  	//800;	// 와이드배너 전환시 transition은 1초 동안(duration).
    var COLOR_SELECTED = "blue";

    var WIDEBANNER_CHANGE_DELAY = 5300; //= 5300;		// 2초마다 와이드배너 전환(transition)
    var NUM_OF_WIDEBANNERS = 2;	// 와이드배너이미지 개수.							// NOT USED HERE :: SHOULD BE OVERRIDED.
    // arrWidebannerAddr : 와이드배너 주소 배열
    var arrWidebannerAddr = new Array("/Center/Center_info",
        "/course/employ/Course_Employ_BizTechPartners"
    );																					// NOT USED HERE :: SHOULD BE OVERRIDED.
    var arrWidebannerBgColor = new Array("#4c4c4c", "#2a2a2a");							// NOT USED HERE :: SHOULD BE OVERRIDED.

    // wideBannerHandler() : 매개변수 index는 0부터 시작. wideBannerBtn이 3개이면 0~2 사이의 값을 가짐. mouseover 시의 변화를 구현.
    // bAnimation 이 true이면 transition시 animation사용, false이면 trasition시 animation 없이 즉시 이미지변경.
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

    // setTimerWidebanner() : 매개변수 index는 0부터 시작. 와이드배너 개수가 3개이고 index가 2라면,
    // 이 함수는 0번인덱스의 와이드배너로의 전환(transition)을 일정 딜레이 초 후에 실행하도록 타이머를 설정함.
    function setTimerWidebanner(index) {
        timerWidebanner = setTimeout(function() {
            // transition to the next wideBanner.
            wideBannerHandler(++index%NUM_OF_WIDEBANNERS, true);
            setTimerWidebanner(index);

        }, WIDEBANNER_CHANGE_DELAY);
    }

    // fillNavigator(navigatorNum) : 내비게이터(filled동그라미, unfilled동그라미) 일괄변경 : navigatorNum(-->0부터시작!)만 filled,  나머지는 unfilled.
    function fillNavigator(navigatorNum) {
        for(var i=0; i<=NUM_OF_WIDEBANNERS-1; i++) {
            if(navigatorNum==i) {
                $(".navigatorWideBanner").eq(i).attr("src", "${pageContext.request.contextPath}/assets/Images/Icons/icn_Navigator_Filled.png");
            } else {
                $(".navigatorWideBanner").eq(i).attr("src", "${pageContext.request.contextPath}/assets/Images/Icons/icn_Navigator_NotFilled.png");
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
            arrImage[i].src = "${pageContext.request.contextPath}/assets/Images/Btns/MainPage_BannerBtn__"+(i+1)+"on.png";	// 0~2 : widebannerbtn(on)
        }
        for(var i=0; i<=2; i++) {
            arrImage[i+3] = new Image();
            arrImage[i+3].src = "${pageContext.request.contextPath}/assets/Images/Btns/MainPage_BannerBtn__"+(i+1)+"off.gif";	// 3~5 : widebannerbtn(off) 	MainPage_BannerBtn__3on
        }
        for(var i=6; i<=20; i++) arrImage[i] = new Image();

        arrImage[6].src = "${pageContext.request.contextPath}/assets/Images/Slots/MainPage_Slot__단기프_C프로그래밍.png";
        arrImage[7].src = "${pageContext.request.contextPath}/assets/Images/Slots/MainPage_Slot__단기프_JAVA프로그래밍.png";
        arrImage[8].src = "${pageContext.request.contextPath}/assets/Images/Slots/MainPage_Slot__단기프_Cpp프로그래밍.png";
        arrImage[9].src = "${pageContext.request.contextPath}/assets/Images/Slots/MainPage_Slot__단기프_자료구조알고리즘.png";
        arrImage[10].src = "${pageContext.request.contextPath}/assets/Images/Slots/MainPage_Slot__단기핵심_Javascript.png";
        arrImage[11].src = "${pageContext.request.contextPath}/assets/Images/Slots/MainPage_Slot__단기핵심_Database.png";
        arrImage[12].src = "${pageContext.request.contextPath}/assets/Images/Slots/MainPage_Slot__단기핵심_PM.png";
        arrImage[13].src = "${pageContext.request.contextPath}/assets/Images/Slots/MainPage_Slot__단기핵심_모바일.png";
        arrImage[14].src = "${pageContext.request.contextPath}/assets/Images/Slots/MainPage_Slot__고급_Iot.png";
        arrImage[15].src = "${pageContext.request.contextPath}/assets/Images/Slots/MainPage_Slot__고급_임베디드.png";
        arrImage[16].src = "${pageContext.request.contextPath}/assets/Images/Slots/MainPage_Slot__고급_윈도우닷넷.png";
        arrImage[17].src = "${pageContext.request.contextPath}/assets/Images/Slots/MainPage_Slot__고급_빅데이터.png";

        arrImage[18].src = "${pageContext.request.contextPath}/assets/Images/Banners/MainPage_Banner__BIT_Advantage.png";
        arrImage[19].src = "${pageContext.request.contextPath}/assets/Images/Banners/MainPage_Banner__Industry40.png";
        arrImage[20].src = "${pageContext.request.contextPath}/assets/Images/Banners/MainPage_Banner__Summer2017.png";		// reserved for a wide banner.
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
        //$(".mainDropdownMenu.depth"+depth+" .divMiddle").css("color","#000");
        //$(".mainDropdownMenu.depth"+depth+" .divMiddle").removeClass("on");
        //alert("clear depth:"+depth);
        $(".mainDropdownMenu.depth"+depth+" .divMiddle .divMiddleInner").removeClass("on");
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
            bxslider1.stopAuto();
            str 	= "<a href='/course/shortcourse/detailPage/Courses_C'><div><span class='campusName'>[서울]</span> 비트교육센터</div></a>" +
                "<a href='/course/localCampus/DetailPage/Daejeon_c'><div><span class='campusName'>[대전]</span> 대전캠퍼스</div></a>" +
                "<a href='/course/localCampus/DetailPage/Busan_c'><div><span class='campusName'>[부산]</span> 부산캠퍼스</div></a>";
        }
        else if(numCampus==2) {		// Java프로그래밍
            str 	= "<a href='/course/shortcourse/detailPage/Course_java'><div><span class='campusName'>[서울]</span> 비트교육센터</div></a>" +
                "<a href='/course/localCampus/DetailPage/Daejeon_java'><div><span class='campusName'>[대전]</span> 대전캠퍼스</div></a>" +
                "<a href='/course/localCampus/DetailPage/Busan_java'><div><span class='campusName'>[부산]</span> 부산캠퍼스</div></a>";
        }
        else if(numCampus==3) {		// C++프로그래밍
            str 	= "<a href='/course/shortcourse/detailPage/Course_cPlus'><div><span class='campusName'>[서울]</span> 비트교육센터</div></a>" +
                "<a href='/course/localCampus/DetailPage/Daejeon_cPlus'><div><span class='campusName'>[대전]</span> 대전캠퍼스</div></a>";
        }
        else if(numCampus==4) {		// 자료구조/알고리즘
            bxslider1.stopAuto();
            str 	= "<a href='/course/shortcourse/detailPage/Course_C2'><div><span class='campusName'>[서울]</span> 비트교육센터</div></a>" +
                "<a href='/course/localCampus/DetailPage/Busan_c2'><div><span class='campusName'>[부산]</span> 부산캠퍼스</div></a>";
        }
        if( $("div#selectCampus"+numCampus).html().length>0 )
            $("div#selectCampus"+numCampus).html("");
        else {
            $("div#selectCampus"+numCampus).html(str);
            $("div#selectCampus"+numCampus).attr("id","");
        }
    }
</script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/CSS/Base2017Webfont.css"/>

