
<%--<%--%>
    <%--Dim idx, page--%>
    <%--idx = trim(request("idx"))--%>
    <%--re = trim(request("re"))--%>

    <%--Set Dbcon = Server.CreateObject("ADODB.Connection")--%>
    <%--Dbcon.Open Con_bit_db--%>

    <%--if idx <> "" and re <> "YES" then--%>

    <%--SQL = "SELECT  idx, title, content, notice_yn, ref, re_step, re_level FROM online_qa WHERE idx ="&myIdx--%>

    <%--'// 로깅 추가 : 2017-12-02-YG.--%>
    <%--Call YGLogger("SQL", SQL, "/Support/Support_online_write.asp (1)", "Studid:"&TRIM(Session("studid")) )		'// USAGE : CALL YGLogger(logName, logText, logWhere, loginID)--%>

    <%--Set Rs = Dbcon.Execute(SQL)--%>
    <%--if Rs.EOF then--%>
    <%--response.write "<script> alert('선택하신 글의 내용이 삭제되었거나 존재하지 않습니다. \n다시 확인하여 주세요.');  history.back(-1);  </script> "--%>
    <%--response.end--%>
    <%--else--%>
    <%--idx = TRIM(Rs("idx"))--%>
    <%--title = TRIM(Rs("title"))--%>
    <%--content = TRIM(Rs("content"))--%>
    <%--htmlchk = TRIM(Rs("notice_yn"))--%>
    <%--myRef = TRIM(Rs("ref"))--%>
    <%--myRe_step = TRIM(Rs("re_step"))--%>
    <%--myRe_level = TRIM(Rs("re_level"))--%>

    <%--'		response.write "myTitle: "&myTitle&"<br>"--%>
    <%--'		response.write "myContent: "&myContent&"<br>"--%>
    <%--end if--%>

    <%--Set Rs = Nothing--%>
    <%--Dbcon.close--%>
    <%--Set Dbcon = Nothing--%>

    <%--Elseif re = "YES" then '답변일 경우--%>

    <%--SQL="SELECT  idx, username, name, title, content, notice_yn, ref, re_step, re_level FROM online_qa WHERE idx ="&myIdx--%>
    <%--'// 로깅 추가 : 2017-12-02-YG.--%>
    <%--Call YGLogger("SQL", SQL, "/Support/Support_online_write.asp (2)", "Studid:"&TRIM(Session("studid")) )		'// USAGE : CALL YGLogger(logName, logText, logWhere, loginID)--%>

    <%--Set Rs = Dbcon.Execute(SQL)--%>

    <%--idx = TRIM(Rs("idx"))--%>
    <%--username = TRIM(Rs("username"))--%>
    <%--name = TRIM(Rs("name"))--%>
    <%--'		title = TRIM(Rs("title"))--%>
    <%--title= ""--%>
    <%--content = TRIM(Rs("content"))--%>
    <%--htmlchk = TRIM(Rs("notice_yn"))--%>
    <%--myRef = TRIM(Rs("ref"))--%>
    <%--myRe_step = CINT(TRIM(Rs("re_step")))--%>
    <%--myRe_level = CINT(TRIM(Rs("re_level")))--%>

    <%--content = "" & content--%>
    <%--'		content = replace(content,vbCrLf,vbCrLf&">")--%>
    <%--aa = "~~~~~~~~~~ " & trim(name) & " 님의 글입니다. ~~~~~~~~~" & vbCrLf--%>
    <%--content = vbCrLf & vbCrLf & vbCrLf & vbCrLf & aa & content--%>

    <%--Set Rs = Nothing--%>
    <%--Dbcon.close--%>
    <%--Set Dbcon = Nothing--%>
    <%--else--%>
    <%--End if--%>
<%--%>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual="/Include/Meta.asp"-->
    <c:import url="/WEB-INF/views/Include/Meta.jsp"/>
    <meta http-equiv="X-UA-Compatible" content="IE=8">
    <link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">
    <title>비트교육센터</title>

    <!-- #include virtual="/Include/ContentStyle.asp"-->
    <c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
    <!-- #include virtual="/Include/Script.asp"-->
    <c:import url="/WEB-INF/views/Include/Script.jsp"/>

    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
            $(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Q&A ON
        });

        /*기존 서브밋 함수*/
        function submit_it()
        {
            if (FrmWrite.title.value=="")
            {
                alert("제목을 입력해 주세요.");
                document.FrmWrite.title.focus();
            }
            else if (FrmWrite.content.value=="")
            {
                alert("내용을입력해 주세요.");
                document.FrmWrite.content.focus();
            }
            else
                document.FrmWrite.submit();
        }

        /*새로바뀐 서브밋 함수*/
        function check_submit(oForm){
            var ans1 = oForm.title.value;
            var ans2 = oForm.content.value;

            if (ans1=="")
            {
                alert("제목을 입력해 주세요.");
                oForm.title.focus();
                return false;
            }
            else if (ans2=="")
            {
                alert("내용을입력해 주세요.");
                oForm.content.focus();
                return false;
            }
            else{
                var checkNum = 0; // 0 이면 성공 1 이면 안됨.
                var i = 0;
                var special=new Array("$","==","\""); // 특수문자 배열

                /*제목 체크*/
                for(i=0; i< special.length;i++){
                    var output = ans1.indexOf(special[i],0);  //해당문자열에 특수문자열이 있는지 확인
                    if (output != -1) //특수문자가 없다면 -1을 반환 -1이외의값에 alert 수행후 함수 종료
                    {
                        alert("특수문자를 사용하실수 없습니다.  "+special[i]+"를 삭제하신후 다시눌러주세요");
                        checkNum = -1;
                        oForm.title.focus();
                        return false;
                    }
                }

                /*내용 체크*/
                for(i=0; i< special.length;i++){
                    var output = ans2.indexOf(special[i],0);  //해당문자열에 특수문자열이 있는지 확인
                    if (output != -1) //특수문자가 없다면 -1을 반환 -1이외의값에 alert 수행후 함수 종료
                    {
                        alert("특수문자를 사용하실수 없습니다.  "+special[i]+"를 삭제하신후 다시눌러주세요");
                        checkNum = -1;
                        oForm.content.focus();
                        return false;
                    }
                }

                // +++++ 특수문자 없다면 submit.  +++++++
                if(checkNum != -1){
                    oForm.submit();
                    return false;
                }
            }
            return true;
        }
        //-->
    </script>
    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>
<body>
<div id="Wrapper">
    <!-- Header_Wrap -->
    <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header_Wrap -->

    <div id="Container_Wrap">
        <!-- Content_Wrap -->
        <div id="Content_Wrap">
            <!-- SNB_Wrap-->
            <!-- #include virtual = "/Include/SNB_Support_1709.asp"-->
            <c:import url="/WEB-INF/views/Include/SNB_Support_1709.jsp"/>
            <!-- //SNB_Wrap-->
            <!-- Content -->
            <div id="Content">
                <div class="hGroup1709">
                    <p>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>지원안내
                    </p>
                    <h4>온라인문의 (Q&amp;A) -  글쓰기</h4>
                </div>

                <style>
                    .myTitle {
                        font-family:'Nanum Gothic Bold';
                        font-size:13pt;
                        color:#8b6338;
                        text-shadow: 1px 1px 2px #b9b9b9;
                    }
                    .divTable table {
                        border-top: 1px solid #e0e0e0;
                        border-bottom: 1px solid #e0e0e0;
                    }
                    .divTable table th {
                        border-bottom: 1px solid #e0e0e0;
                        font-size:18px;
                        padding: 10px 8px;
                    }
                    .divTable table td {
                        font-size:15px;
                        border-bottom: 1px solid #e0e0e0;
                        padding: 10px 8px;

                    } /* color: #555; */
                    .gradBg {
                        background: linear-gradient(to right, #f2f6f8, #fffae9);
                    }
                    /*
                    A:link {
                        color:#004366;
                    }
                    A:visited {
                        color:#73808c;
                    }*/ /* 73808c */
                    #Content_Wrap {
                        min-height:800px;
                    }
                    a.btn.mid.dGray {
                        font-size:15px !important;
                        padding:1px 25px;
                        margin-top:0px;
                    } /* 목록 */
                    .btn.white {
                        font-size:15px !important;
                    }
                </style>

                <section class="section">
                    <form name="FrmWrite" method="post" action="${pageContext.request.contextPath}/support/Support_online_write_ok" onsubmit="return check_submit(this);">
                        <input type="hidden" name="idx" value="${content.idx==null?'0':content.idx}">
                        <input type="hidden" name="ref" value="${content.ref==null?'0':content.ref}">
                        <input type="hidden" name="re_Step" value="${content.re_Step==null?'0':content.re_Step}">
                        <input type="hidden" name="re_Level" value="${content.re_Level==null?'0':content.re_Level}">
                        <input type="hidden" name="page" value="${page}">
                        <input type="hidden" name="re" value="${re}">
                        <input type="hidden" name="field" value="${field}">
                        <input type="hidden" name="field_value" value="${field_value}">
                        <input type="hidden" name="loginID" value="${authUser.loginID}">
                        <input type="hidden" name="nameHan" value="${authUser.nameHan}">
                        <div class="divTable">
                            <table>
                                <colgroup>
                                    <col style="width:10%">
                                    <col style="width:90%">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th scope="row" class="gradBg c">제목</th>
                                    <td>
                                        <input type="text" name="title" class="form" value="${content.title==null?'':content.title}" style="width:98%">
                                        <c:if test="${authUser.loginID eq 'aa' and re != 'YES'}">
                                            공지사항<input name="chkNotice" type="checkbox">
                                        </c:if>

                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" class="gradBg c">이름</th>
                                    <td>
                                     <%--
//                                            ' 관리자ID일 경우 이름이 관리자로 바뀜 ID : k0sm0s1 (로 변경 = 2016-10-31 YG)
//                                            ' 관리자ID 추가 : 조희준(vntltl92), 강기윤(bowery24), yglee (2017-04-07 YG)
//                                            ' 관리자ID 추가 : 백아란(qor20211) (2017-04-21-YG)
//                                            ' 관리자ID 추가 : 최광원주임님(crespo04) / 제거 김윤정(k0sm0s1) (2017-05-16-YG)
//                                            ' 제거 bowery24 : 강기윤 (2017-12-21-YG)
//                                            ' 제거 qor20211 : 백아란 인턴 (2017-12-21-YG)
//                                            ' 추가 jepark : 박지은(2017.10~) (2017-12-21-YG)
//                                            ' acidstar : 임 대리님
//                                            ' job : 팀장님
//                                            ' k0sm0s1 : 김윤정 x
//                                            ' hoone : 이지훈 x
//                                            ' karnmou : 정경진
//                                            ' vntltl92 : 조희준
//                                            ' shkwon : 권선희 대리님
//                                            ' dagi1227 : 김건태
//                                            ' crespo04 : 최광원 주임님
                                    --%>
                                        <c:choose>
                                            <c:when test="${authUser.loginID eq 'aa'}">
                                                관리자
                                            </c:when>
                                            <c:otherwise>
                                                ${authUser.nameHan}
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" class="gradBg c">내용</th>
                                    <td>
                                        <textarea name="content" rows="20" class="form" style="width:100%">${content.content==null?'':content.content}</textarea>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                            <div class="btn_wrap mar_t40 c">
                                <button class="btnGreenBorder big" type="submit" style="font-size:18px !important;">확인</button>
                                <a href="${pageContext.request.contextPath}/support/Support_online_list?page=${page}" class="btnWhiteBorder big mar_l10" style="font-size:18px !important;">취소</a>
                            </div>
                        </div>
                    </form>
                </section>
            </div>
            <!-- // Content -->
        </div>
        <!-- //Content_Wrap -->
    </div>

    <!-- Footer_Wrap -->
    <!-- #include virtual="/Include/FooterHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer_Wrap -->
</div>
</body>
</html>