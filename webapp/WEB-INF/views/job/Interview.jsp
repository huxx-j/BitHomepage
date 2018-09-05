<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<!-- REDIRECTABLE TO MOBILE -->

<head>

    <!--#include virtual="/Include/config.asp"-->
    <!--#include Virtual="/Include/javaScriptFun.asp"-->
    <!--#include virtual="/Include/Common_Defend_1709.asp"-->
    <c:import url="/WEB-INF/views/Include/Common_Defend_1709.jsp"/>
    <!--#include file="include/jobLoginChk.asp"-->

    <script language="JavaScript1.1">
	function right(e)
	{
	if (navigator.appName == 'Netscape' &&   (e.which == 3 || e.which == 2))
	return false;
	else if (navigator.appName == 'Microsoft Internet Explorer' &&   (event.button == 2 || event.button == 3))
		{
		alert("비트교육센터입니다.");
		return false;
		}
	return true;
	}

	</script>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/CSS/bodyStyle.css">
    <link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico">

    <!-- #include virtual="/Include/Meta.asp"-->
    <c:import url="/WEB-INF/views/Include/Meta.jsp"/>
    <title>비트교육센터</title>
    <!-- #include virtual="/Include/ContentStyle.asp"-->
    <c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
    <!-- #include virtual="/Include/Script.asp"-->
    <c:import url="/WEB-INF/views/Include/Script.jsp"/>

    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720_1709.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720plus_1709.css" >

    <!-- #include virtual="/Include/HeaderScript1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderScript1709.jsp"/>
    <script type="text/javascript">
        $(document).ready(function(){
            <!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
            <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
            <!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
            <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>
            //$(".snb_1702 .newdepth1").eq(3).addClass("on");
            $(".snb_1709 a.newdepth1").eq(3).addClass("on");

            $("#inputSearch").keypress(function(e) {
                if(e.keyCode == 13) {
                    btnSearch();
                }
            });
            function resize(obj) {
                obj.style.height = "1px";
                obj.style.height = (12+obj.scrollHeight)+"px";
            }

            // 회사명 클릭시 팝업 열기 & 내용 보이기.
            $('.aOpenPopup').on('click', function(e) {

                var Num = $(this).attr('id').substring(1); // ex. '125'
                //alert("NUM : " + Num);

                console.log("아작스전"+Num);
                viewDetail(Num);
                // showUpInterviewContents();
                e.preventDefault();
                //$('.myBlurAll').css('display','block');
                $('#myBox1').css('display','block');
                //$('body').css('overflow','hidden');
                openNav();
            });
            function viewDetail(Num){
                console.log("아작스후"+Num);
            $.ajax({
                url : "${pageContext.request.contextPath }/job/InterviewPopupInclude",
                type : "POST",
                //contentType : "application/json",
                data : {"Num": Num},
                dataType : "json",
                success : function(InterviewVo) {
                    console.log(InterviewVo);
                    $("#delpoint").remove();
                    var str=" ";
                    str+='<div id="delpoint">';
                    str+='<div style="margin-top:30px; margin-bottom:5px; padding:5px; font-size:13pt; color:#8b6338; background-color:#fbfbec;">면접내용</div>';
                    str+='    <p class="autosize" onkeydown="resize(this)" onkeyup="resize(this)" style="font-size:11pt; color:#4f4f4f; line-height:15pt; border:none; width: 598px; resize:none;" readonly="disable"  value="" name="InterviewDescription" >';
                    str+= InterviewVo.interviewDescription;
                    str+='    </p>';
                    str+='   <div style="margin-top:30px; margin-bottom:5px; padding:5px; font-size:13pt; color:#8b6338; background-color:#fbfbec;">면접관태도</div>';
                    str+='   <p style="font-size:11pt; color:#4f4f4f; line-height:15pt; border:none; width: 598px;">';
                    str+= InterviewVo.interviewManner;
                    str+='   </p>';
                    str+='    <div style="margin-top:30px; margin-bottom:5px; padding:5px; font-size:13pt; color:#8b6338; background-color:#fbfbec;">느낀점</div>';
                    str+='  <p style="font-size:11pt; color:#4f4f4f; line-height:15pt; border:none; width: 598px;">';
                    str+= InterviewVo.interviewOpinion;
                    str+='   </p>';
                    str+='  <div style="margin-top:30px; margin-bottom:5px; padding:5px; font-size:13pt; color:#8b6338; background-color:#fbfbec;">회사평가</div>';
                    str+='   <p style="font-size:11pt; color:#4f4f4f; line-height:15pt; border:none; width: 598px;">';
                    str+= InterviewVo.compReputiation;
                    str+='   </p>';
                    str+='</div>'
                    $("#divContent2").append(str);
                    console.log(str);
                    $("#ImagePath").attr('src',"${pageContext.request.contextPath}/assets"+InterviewVo.imageLogoPath);
                },
                error : function(XHR, status, error) {
                    console.error(status + " : " + error);
                }
            });
            }

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
            if( $("#inputSearch").val().trim()=="") { alert("검색하시려면 검색어를 입력하세요."); return; }
            var inputSearch=$("#inputSearch").val();
            $.ajax({
                url : "${pageContext.request.contextPath }/job/search",
                type : "POST",
                //contentType : "application/json",
                data : {"id": id},
                dataType : "json",
                success : function(d) {
                    location.reload();
                    console.log(d);
                },
                error : function(XHR, status, error) {
                    console.error(status + " : " + error);
                }
            });
            location.href = "http://www.bitacademy.com/job/Interview.asp?search=" + $("#inputSearch").val();
        }

        function btnCancel() {
            location.href = "http://www.bitacademy.com/job/Interview.asp";
        }

        function btnWrite() {
            window.open("${pageContext.request.contextPath }/job/Interview_InputForm","","left=-1500, top=-300, width=710, height=950, titlebar=no, location=no, toolbar=no, resizable=no, scrollbars=yes");
        }

        function showUpInterviewContents() {
            //alert("begin.");

            var strPre = '<div style="margin-top:30px; margin-bottom:5px; padding:5px; font-size:13pt; color:#8b6338; background-color:#fbfbec;">';
            var strMid = '</div><p style="font-size:11pt; color:#4f4f4f; line-height:15pt;">';
            var strPost = '</p>';

            //var strSubject = '<div style="padding:10px; font-size:15pt; font-weight:900; border:1px solid #d7d7d7;">' + $('.Subject').eq(i).val() + '</div>';
            var str1 = strPre + '면접내용' + strMid + $('.Str1').eq(0).val() + strPost;
            var str2 = strPre + '면접관태도' + strMid + $('.Str2').eq(0).val() + strPost;
            var str3 = strPre + '느낀점' + strMid + $('.Str3').eq(0).val() + strPost;
            var str4 = strPre + '회사평가' + strMid + $('.Str4').eq(0).val() + strPost;

           // $('#myBox1').html(str1 + str2 + str3 + str4);
            $('#divContent2').html(str1 + str2 + str3 + str4);
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
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="font-size:10pt; margin:0;" >
<style>
    textarea.autosize { min-height: 50px; }
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
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
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
            <c:import url="/WEB-INF/views/Include/SNB_JobCenter_1709.jsp"/>
            <!-- //SNB_Wrap-->
            <!-- Content -->
            <div id="Content">
                <div class="hGroup1709">
                    <p>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>홈
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>취업지원센터
                    </p>
                    <h4 style="float:left;">면접후기</h4>
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
                    <div id="myBox1" class="myPopup" style="display:none;">
                        <%--<form name="form2" style="height:10px;">  <!-- to share between ASP and JS -->--%>
                            <%--<input type="hidden" name="InterviewDescription" class="Str1" value=""/>--%>
                            <%--<input type="hidden" name="InterviewManner" class="Str2" value="" />--%>
                            <%--<input type="hidden" name="InterviewOpinion" class="Str3" value=""  />--%>
                            <%--<input type="hidden" name="CompReputiation" class="Str4" value="" />--%>
                        <%--</form>--%>
                        <div id="divContent1" style="margin-bottom:10px;">
                            <div style="float:left;"><h2> <img id="ImagePath" src="" style="max-width:175px; max-height:39px;"/><span class="blueTxt" style="font-size:1.6em;">${vo.CompName} </span> 면접후기</h2></div>
                            <div style="float:right; font-weight:900; font-size:1.25em;"><a id="aClose1" href="#"><span class="redTxt">[닫기]</span></a></div>
                            <div style="clear:both;"></div>
                            <div style="float:right; margin-right:10px; font-size:0.8em; "><a href="${vo.HomePage}" target="_blank"><u><span style="color:#8f8f8f;"></span></u></a></div>
                            <div style="clear:both;"></div>
                        </div>
                        <div id="divContent2" style="margin-bottom:10px;">

                        </div>
                    </div>
                    <div class="myBlurAll" style="display:none;"></div>

                    <div style="height:60px; margin:20px 0 10px 0px; ">
                        <input type="text" id="inputSearch" class="form-control" placeholder="(검색어를 입력하세요)" value="" style="height:32px; width:40%; font-size:1.5em; border-radius:5px; float:left;"/>
                        <a href="javascript:btnSearch();" style="float:left;" class="aButton" ><img src="${pageContext.request.contextPath}/assets/Images/Content/Mobile/icn_Search.png" style="width:30px; margin-left:2px; border:1px solid #c9c9c9; padding:2px; border-radius:5px; box-shadow:0px 0px 3px #c9c9c9;"/></a>

                        <!--<a href="javascript:btnSearch();" class="btn sml red" style="height:24px; margin-left:5px; padding:2px 5px;; float:left;"><span style="line-height:30px;">검색</span></a>-->
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
                                <th class="gradBg" >번호</th> <!-- tit -->
                                <th class="gradBg c" >회사명</th> <!-- tit -->
                                <th class="gradBg" >등록일</th> <!-- tit -->
                            </tr>
                            </thead>
                            <tbody>

                            <c:forEach items="${list}" var="vo" begin="${interMap.fristitem}" end="${interMap.enditem}" step="1">
                            <tr>
                                <td style="font-size:1.1em; font-weight:800;">${vo.num}</td>
                                <td>
                                    <a href="#" id="a${vo.num}" class="aOpenPopup">
                                        <span style="font-size:1.75em; font-weight:900; text-shadow:1px 1px 1px #828282; margin-right:5px;">${vo.compName}</span>
                                        <c:if test="${vo.imageLogoPath ne null}">
                                            <img src="${pageContext.request.contextPath}/assets${vo.imageLogoPath}" style="max-width:175px; max-height:39px; margin-top:0px;"/>
                                        </c:if>
                                       </a>
                                </td>
                                <td style="font-size:1.25em; font-weight:700;">${vo.updateDate}</td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>

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
                        <a href="/job/Interview?page=1"><div class="btnPaging" style="color:#393939;">처음</div></a>
                        <a href="/job/Interview?page=${interMap.pagingPrevNum}"><div class="btnPaging" style="color:#393939;">이전</div></a>
                        <!--<span style="margin-left:12px;">-->
                        <c:forEach begin="${interMap.pagingStartNum}" end="${interMap.pagingEndNum}" step="1" var="i">
                        <!-- font-weight:800; text-decoration:underline; -->
                            <c:if  test="${page eq i}">
                            <div style="background-color:#ffffb6;" class="redTxt btnPaging">${i}</div>
                            </c:if>
                            <c:if  test="${page ne i}">
                            <a href="/job/Interview?page=${i}"> <div class="btnPaging" style="color:#393939;">${i}</div></a>
                            </c:if>
                        </c:forEach>
                        <!--</span>-->
                        <a href="/job/Interview?page=${interMap.pagingNextNum}" style="color:#393939;"><div class="btnPaging" >다음</div></a>
                        <a href="/job/Interview?page=${interMap.totalPage}"><div class="btnPaging" style="color:#393939;">끝</div></a>
                    </div>
                    <div style="clear:both;"></div>
                    <!-- //Paging -->
                    <!-- btnWrite -->
                    <div style="width:60%; height:60px; margin:20px auto; text-align:center;" class="con_wrap1709">
                        <a href="javascript:btnWrite();" class="btnGreenBorder big" style="color:#75902f !important;">면접후기 작성</a>
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
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer_Wrap -->
</div>
</body>
<script type="text/javascript">

</script>
</html>
