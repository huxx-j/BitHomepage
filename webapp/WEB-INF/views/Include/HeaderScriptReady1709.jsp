<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

//preloadImages();

// mainmenu(2~6,7~9) handlers.
$(".mainmenu").on("mouseenter", function() {
// clear the menubar
for(var i=0; i<=7; i++) {
$(".mainmenu:eq("+i+")").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu"+(i+2)+"off.png");
}
// hide MenuDropdown
for(var i=0;i<=3;i++){ hideMenu(i); }

var index = $(".mainmenu").index(this);
if(index<8) $(".mainmenu:eq("+(index)+")").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu"+(index+2)+"on.png");

showMenu(index,1,index);
clearTimeout(timerMainmenubar);
}).on("mouseleave", function() {
var index = $(".mainmenu").index(this);
if(index<8) $(".mainmenu:eq("+(index)+")").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu"+(index+2)+"off.png");
timerMainmenubar = setTimeout(function() { for(var i=0;i<=3;i++){ hideMenu(i); } }, MAINMENU_DELAY);
}).on("click", function() {
var index = $(".mainmenu").index(this);
if($(this).attr("h_ref")!=undefined) location.href = $(this).attr("h_ref");
});
$(".mainDropdownMenu .divMiddle").on("click", function() {
var href = $(this).attr("href");
if(href!="" && $(this).attr("href")!=undefined) location.href=href;
});

// mainmenu click to introduction pages.
$(".mainmenu").on("click", function() {
var index = $(".mainmenu").index(this);
//console.log("index : "+index);   // 0 : 단기핵심, 3 : 국비지원무료과정
if(index==0) {
location.href="/Course/ShortCourse/Course_ShortCourse.asp";
} else if(index==3) {
location.href="/Course/Kukka/Course_Support.asp";
}
});

// mainmenu_dropdown  handlers.
$(".mainDropdownMenu.depth0").on("mouseenter",function() {
var index = $(".mainDropdownMenu.depth0").index(this);
$(".mainmenu:eq("+(index)+")").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu"+(index+2)+"on.png");
clearTimeout(timerMainmenubar);
}).on("mouseleave",function() {
timerMainmenubar = setTimeout(function() {
// Close all.
for(var i=0; i<=3; i++) {
hideMenu(i);
}
for(var i=0; i<=4; i++) {
$(".mainmenu:eq("+(i)+")").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu"+(i+2)+"off.png");
}
// Clear all.
//No. clearMainmenuDepthnumber(1); // clear the depth1 :: set font color to #000.
//No. clearMainmenuDepthnumber(2); // clear the depth2 :: set font color to #000.
//No. clearMainmenuDepthnumber(3); // clear the depth3 :: set font color to #000.
clearMainmenuDepthnumber(1); // remove the ".on"
clearMainmenuDepthnumber(2); // remove the ".on"
clearMainmenuDepthnumber(3); // remove the ".on"

}, MAINMENU_DELAY);
});

$(".mainDropdownMenu .divMiddle").on("mouseenter",function() {
//clearMainmenuDepthnumber(1); // clear the depth1 :: set font color to #000.
//clearMainmenuDepthnumber(2); // clear the depth2 :: set font color to #000.

clearMainmenuDepthnumber(1); // remove the ".on"
clearMainmenuDepthnumber(2); // remove the ".on"
clearMainmenuDepthnumber(3); // remove the ".on"

//$(this).css("color",COLOR_SELECTED);
$(this).find("div").addClass("on");

// .depth1.no1 : ----------------------------------------------XXXXXXXXXXXXXXXX0-[서울] / 1-[대전] / 2-[부산] //////////// 3-[천안=x]
// .depth1.no1 : Programming / Java / JavaScript / Database / PM / Mobile / SW Engineering / Embedded
var index = $(".mainDropdownMenu.depth1.no1 .divMiddle").index(this);
if(index>-1) {
//$(".mainmenu:eq(0)").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu1on.png"); //단기프로그래밍 mainmenu on
$(".mainmenu:eq(0)").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu2on.png"); //단기프로그래밍 mainmenu on
hideMenu(2);
hideMenu(3);
hideMenu(4);
showMenu(0,2,index);
}

// .depth2.no1 : [서울] 비트교육센터 - 0:C 프로그래밍 / 1:Java / 2:C++ / 3:자료구조알고리즘 / 4:Python / 5:C#
var index = $(".mainDropdownMenu.depth2.no1 .divMiddle").index(this);
if(index>-1) {
hideMenu(3);
hideMenu(4);
showMenu(0,3,index);
}
var index = $(".mainDropdownMenu.depth3.no1 .divMiddle").index(this);
if(index>-1) {
hideMenu(4);
showMenu(0,4,index);
}

// .depth1.no2 :
var index = $(".mainDropdownMenu.depth1.no2 .divMiddle").index(this);
if(index>-1) {
//$(".mainmenu:eq(0)").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu2on.png"); //고급과정 mainmenu on
hideMenu(2);
hideMenu(3);
showMenu(1,2,index);
}
// .depth1.no3 :
var index = $(".mainDropdownMenu.depth1.no3 .divMiddle").index(this);
if(index>-1) {
//$(".mainmenu:eq(1)").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu3on.png"); //전문가과정 mainmenu on
hideMenu(2);
hideMenu(3);
showMenu(2,2,index);
}
// .depth1.no4 :
var index = $(".mainDropdownMenu.depth1.no4 .divMiddle").index(this);
if(index>-1) {
//$(".mainmenu:eq(2)").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu4on.png"); //국비지원무료과정 mainmenu on
hideMenu(2);
hideMenu(3);
showMenu(3,2,index);
}
// .depth1.no5 :
var index = $(".mainDropdownMenu.depth1.no5 .divMiddle").index(this);
if(index>-1) {
//$(".mainmenu:eq(3)").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu5on.png"); //초중고SW교육 mainmenu on
hideMenu(2);
hideMenu(3);
showMenu(4,2,index);
}
/***************************** keeping the depth1 while the mouse is on the depth2   *********/
// 단기핵심과정1~9  :: 1=Programming , ... , 9=Embedded
for(var i=1;i<=9;i++) {
if( $(".mainDropdownMenu.depth0.no1 .depth2.no"+i+" .divMiddle").index(this)>-1) {
$(".mainmenu:eq(0)").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu2on.png"); //단기핵심과정 mainmenu on
clearMainmenuDepthnumber(1);
$(".mainDropdownMenu.depth0.no1 .depth1 .divMiddle:eq("+(i-1)+") .divMiddleInner").addClass("on");
}
}

/*
// 단기핵심과정 1~7
for(var i=1;i<=7;i++) {
if( $(".mainDropdownMenu.depth0.no2 .depth2.no"+i+" .divMiddle").index(this)>-1) {
//$(".mainmenu:eq(1)").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu2on.png"); //단기핵심과정 mainmenu on
$(".mainmenu:eq(0)").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu2on.png"); //단기핵심과정 mainmenu on
clearMainmenuDepthnumber(1);
//$(".mainDropdownMenu.depth0.no2 .depth1 .divMiddle:eq("+(i-1)+")").css("color",COLOR_SELECTED);
$(".mainDropdownMenu.depth0.no2 .depth1 .divMiddle:eq("+(i-1)+") .divMiddleInner").addClass("on");
}
}
*/

// 고급과정 1~4
for(var i=1; i<=4; i++) {
if( $(".mainDropdownMenu.depth0.no2 .depth2.no"+i+" .divMiddle").index(this)>-1) {
$(".mainmenu:eq(1)").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu3on.png"); //고급과정 mainmenu on
clearMainmenuDepthnumber(1);
$(".mainDropdownMenu.depth0.no2 .depth1 .divMiddle:eq("+(i-1)+") .divMiddleInner").addClass("on");
}
}

// 국비지원무료과정 1~4
for(var i=1; i<=4; i++) {
if( $(".mainDropdownMenu.depth0.no4 .depth2.no"+i+" .divMiddle").index(this)>-1) {
$(".mainmenu:eq(3)").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu5on.png"); //국비지원무료과정 mainmenu on
clearMainmenuDepthnumber(1);
$(".mainDropdownMenu.depth0.no4 .depth1 .divMiddle:eq("+(i-1)+") .divMiddleInner").addClass("on");
}
}

/***************************** / keeping the depth1 while the mouse is on the depth2 **********/

/***************************** keeping the depth2 while the mouse is on the depth3   *********/
for(var i=1;i<=7;i++) {											// no1 ~ no7 of depth4
if( $(".mainDropdownMenu.depth0.no1 .depth3.no"+i+" .divMiddle").index(this)>-1) {
$(".mainmenu:eq(0)").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu2on.png"); //단기핵심과정 mainmenu on
clearMainmenuDepthnumber(1);
clearMainmenuDepthnumber(2);
$(".mainDropdownMenu.depth0.no1 .depth1 .divMiddle:eq("+0+") .divMiddleInner").addClass("on"); // 단기핵심과정.
$(".mainDropdownMenu.depth0.no1 .depth2 .divMiddle:eq("+(i-1)+") .divMiddleInner").addClass("on");
}
}
/***************************** / keeping the depth2 while the mouse is on the depth4 **********/

/***************************** keeping the depth3 while the mouse is on the depth4   *********/
for(var i=1;i<=7;i++) {											// no1 ~ no7 of depth4
if( $(".mainDropdownMenu.depth0.no1 .depth4.no"+i+" .divMiddle").index(this)>-1) {
$(".mainmenu:eq(0)").attr("src","${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu2on.png"); // 단기핵심과정 mainmenu on
clearMainmenuDepthnumber(1);
clearMainmenuDepthnumber(2);
clearMainmenuDepthnumber(3);
$(".mainDropdownMenu.depth0.no1 .depth1 .divMiddle:eq("+0+") .divMiddleInner").addClass("on"); // 단기핵심과정.
$(".mainDropdownMenu.depth0.no1 .depth3 .divMiddle:eq("+(i-1)+") .divMiddleInner").addClass("on");
for(var j=1; j<=7; j++) {									// no1 ~ no7 of depth4
// turn on the depth2
if( $(".mainDropdownMenu.depth0.no1 .depth4.no"+j+" .divMiddle").index(this)>-1) {
$(".mainDropdownMenu.depth0.no1 .depth2 .divMiddle:eq("+0+") .divMiddleInner").addClass("on"); // [서울]비트교육센터 on
}
}
}
}
/***************************** / keeping the depth3 while the mouse is on the depth4 **********/

}).on("mouseleave",function() {
//$(this).css("background-color","#fff");
//$(this).css("color","#000");
$(this).find("div").removeClass("on");

});

