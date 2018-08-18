<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
    <!-- #include virtual="/Include/Meta.asp"-->
    <c:import url="/WEB-INF/views/Include/Meta.jsp"/>
    <title>비트교육센터</title>
    <!-- #include virtual="/Include/ContentStyle.asp"-->
    <c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
    <!-- #include virtual="/Include/Script.asp"-->
    <c:import url="/WEB-INF/views/Include/Script.jsp"/>
    <!--#include virtual="/Member/member_join_02_script.asp"-->
    <c:import url="./member_join_02_script.jsp"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <!-- 우편번호 DAUM API 적용 -->
    <script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>
    <script>
        function openDAUMapi() {
            new daum.Postcode({
                oncomplete: function(data) {
                    $("#inputZipCode").val(data.zonecode);
                    $("#inputAddress").val(data.roadAddress + " ");
                    $("#inputAddress").focus();
                    alert("입력되었습니다. 이제 상세주소를 입력해주세요.");
                },
                left: -900,
                top: 200
            }).open();

        }
    </script>

    <%--<%--%>
        <%--Function URLDecode(sConvert)--%>
            <%--Dim aSplit--%>
        <%--Dim sOutput--%>
        <%--Dim I--%>
        <%--If IsNull(sConvert) Then--%>
        <%--URLDecode = ""--%>
        <%--Exit Function--%>
        <%--End If--%>

        <%--' convert all pluses to spaces--%>
        <%--sOutput = REPLACE(sConvert, "+", " ")--%>

        <%--' next convert %hexdigits to the character--%>
        <%--aSplit = Split(sOutput, "%")--%>

        <%--If IsArray(aSplit) Then--%>
        <%--sOutput = aSplit(0)--%>
        <%--For I = 0 to UBound(aSplit) - 1--%>
        <%--sOutput = sOutput & _--%>
        <%--Chr("&H" & Left(aSplit(i + 1), 2)) &_--%>
        <%--Right(aSplit(i + 1), Len(aSplit(i + 1)) - 2)--%>
        <%--Next--%>
        <%--End If--%>

        <%--URLDecode = sOutput--%>
        <%--End Function--%>

    <%--%>--%>

    <%--<%--%>
        <%--DIM sDupInfo,sName--%>
        <%--sDupInfo=REQUEST("sDupInfo")--%>
        <%--sDupInfo=REPLACE(sDupInfo," ","+")--%>
        <%--sName=REQUEST("sName")--%>
    <%--%>--%>

    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720_1709.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720plus_1709.css" >

    <!-- #include virtual="/Include/HeaderScript1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderScript1709.jsp"/>
    <script language="javascript">
        $(document).ready(function(){
            <!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
            <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
            <!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
            <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>

            //$(".snb .depth1").eq(1).addClass("on");
            $(".snb_1709 a.newdepth1").eq(1).addClass("on");

            $("#inputZipCode").click(function() {
                alert("[우편번호검색]을 눌러주세요.");
            });
        });

            function openid() {
                id = document.memform.username.value;
                x = /^\w{2,8}$/;
                result = x.test(id)
                for (i = 0; i <= id.length; i++) {
                    if (!result && id.charCodeAt(i) < 12644) {
                        alert("아이디는 공백없이 \n 영문과 숫자의 조합입니다.\n(영문/숫자:6~8자)");
                        document.memform.username.value = "";
                        document.memform.username.focus();
                        return;
                        break;
                    }
                }
                if (id.length > 8 || id.length < 4) {
                    alert("ID는 4문자이상 8문자까지 입니다!");
                    document.memform.username.focus();
                    return ;
                }

                window.open("./checkid?memid=" + document.memform.username.value, "ID중복확인", "scrollbars=no,status=no,historycopy=no,alwaysRaised=yes,top=120,left=150,resizable=no,width=450,height=220,maxbut");
            }

        function submit_it() {
            if (document.memform.name.value == "") {
                alert("이름을 입력해 주세요.");
                document.memform.name.focus();
                return false;
            }
            else if (document.memform.name.value.indexOf(" ") != -1) {

                alert("이름을 공백없이 입력해 주세요.");
                document.memform.name.focus();
                return false;
            }
            else if (memform.username.value == "") {
                alert("아이디를 입력해 주세요.");
                document.memform.username.focus();
                openid();
                return false;
            }
            else if (memform.idcheck.value != "Y") {
                alert("아이디 중복확인을 해 주세요.");
                document.memform.username.focus();
                return false;
            }
            else if (document.memform.username.value.indexOf(" ") != -1) {

                alert("아이디를 공백없이 입력해 주세요.");
                document.memform.username.focus();
                return false;
            }

            else if ((document.memform.username.value.length < 4) || (document.memform.username.value.length > 8)) {
                alert("아이디는 4글자 이상 8글자 이하입니다!");
                document.memform.username.focus();
                return false;
            }

            else if (!check_char(document.memform.username.value)) {
                alert("id는 영문자,숫자만 사용하실수 있습니다.");
                document.memform.username.focus();
                return false;
                //return;
            }
            else if (memform.password.value == "") {
                alert("비밀번호를 입력해 주세요.");
                document.memform.password.focus();
                return false;
            }

            else if (memform.confirm_pwd.value == "") {
                alert("비밀번호 확인을 입력해 주세요.");
                document.memform.confirm_pwd.focus();
                return false;
            }

            else if (document.memform.password.value.indexOf(" ") != -1) {

                alert("첫번째 비밀번호를 공백없이 입력해 주세요.");
                document.memform.password.focus();
                return false;
            }

            else if (!check_char(document.memform.password.value)) {
                alert("password는 영문자,숫자만 사용하실수 있습니다.");
                document.memform.password.focus();
                //return;
                return false;
            }

            else if (document.memform.confirm_pwd.value.indexOf(" ") != -1) {

                alert("두번째 비밀번호를 공백없이 입력해 주세요.");
                document.memform.confirm_pwd.focus();
                return false;
            }

            else if (!check_char(document.memform.confirm_pwd.value)) {
                alert("password 확인은 영문자,숫자만 사용하실수 있습니다.");
                document.memform.confirm_pwd.focus();
                return false;
                //return;
            }

            else if (memform.password.value != memform.confirm_pwd.value) {
                alert("2번째 입력한 비밀번호가\n\n1번째 비밀번호와 같지 않습니다.");
                document.memform.confirm_pwd.focus();
                return false;
            }

            else if ((document.memform.password.value.length < 4) || (document.memform.password.value.length > 16)) {
                alert("첫번째 비밀번호는 4글자 이상 16글자 이하입니다!");
                document.memform.password.focus();
                return false;
            }

            else if ((document.memform.confirm_pwd.value.length < 4) || (document.memform.confirm_pwd.value.length > 16)) {
                alert("두번째 비밀번호는 4글자 이상 16글자 이하입니다!");
                document.memform.confirm_pwd.focus();
                return false;
            }


            else if (memform.telephone1.value == "") {
                alert("전화번호를 써주세요.");
                document.memform.telephone1.focus();
                return false;
            }

            else if (!check_num(memform.telephone1.value)) {
                alert("전화번호를 숫자로만 정확히 기재해주시길 바랍니다.");
                document.memform.telephone1.focus();
                return false;
            }

            else if (memform.telephone2.value == "") {
                alert("전화번호를 써주세요.");
                document.memform.telephone2.focus();
                return false;
            }

            else if (!check_num(memform.telephone2.value)) {
                alert("전화번호를 숫자로만 정확히 기재해주시길 바랍니다.");
                document.memform.telephone2.focus();
                return false;
            }

            else if (memform.telephone3.value == "") {
                alert("전화번호를 써주세요.");
                document.memform.telephone3.focus();
                return false;
            }

            else if (!check_num(memform.telephone3.value)) {
                alert("전화번호를 숫자로만 정확히 기재해주시길 바랍니다.");
                document.memform.telephone3.focus();
                return false;
            }

            else if (memform.handphone1.value == "") {
                alert("핸드폰 번호를 써주세요.");
                document.memform.handphone1.focus();
                return false;
            }

            else if (!check_num(memform.handphone1.value)) {
                alert("핸드폰 번호를 숫자로만 정확히 기재해주시길 바랍니다.");
                document.memform.handphone1.focus();
                return false;
            }

            else if (memform.handphone2.value == "") {
                alert("핸드폰 번호를 써주세요.");
                document.memform.handphone2.focus();
                return false;
            }

            else if (!check_num(memform.handphone2.value)) {
                alert("핸드폰 번호를 숫자로만 정확히 기재해주시길 바랍니다.");
                document.memform.handphone2.focus();
                return false;
            }

            else if (memform.handphone3.value == "") {
                alert("핸드폰 번호를 써주세요.");
                document.memform.handphone3.focus();
                return false;
            }

            else if (!check_num(memform.handphone3.value)) {
                alert("핸드폰 번호를 숫자로만 정확히 기재해주시길 바랍니다.");
                document.memform.handphone3.focus();
                return false;
            }
            else if (memform.mail1.value == "") {
                alert("이메일 아이디를 입력하여 주세요.");
                document.memform.mail1.focus();
                return false;
            }
            else if (memform.mail2.value == "") {
                alert("이메일 주소를 입력하여 주세요.");
                document.memform.mail.focus();
                return false;
            }
            else if (memform.caddr2.value == "") {
                alert("주소를 입력하여 주세요.");
                document.memform.caddr2.focus();
                return false;
            }
            document.memform.submit();
        }


    </script>
    <script language="javascript" runat="server">
        function decodeUTF8(str){
            return decodeURI(str); // 또는 return decodeURIComponent(str);
        }
        function encodeUTF8(str){
            // 특수문자도 인코딩 하기 위해서는 encodeURIComponent 를 사용한다.
            return encodeURI(str);
        }
    </script>

    <script>
        function zip_search2()
        {
            window.open("/Member/zipserch2.asp?tozip=C&path=comp","","height=800,width=700,status=no,scrollbars=yes,toolbar=no,titlebar=no,menubar=no,location=0,left=300,top=300")
        }
    </script>

    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
    <style type="text/css">
        span.star {
            color: red;
        }
    </style>
</head>
<body>
<div id="Wrapper">

    <!-- Header -->
    <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header -->

    <!-- Container_Wrap -->
    <div id="Container_Wrap" style="min-height:250px;">
        <div id="Content_Wrap">
            <!-- SNB_Wrap-->
            <!-- #include virtual = "/Include/SNB_Member_1709.asp"-->
            <c:import url="/WEB-INF/views/Include/SNB_Member_1709.jsp"/>
            <!-- //SNB_Wrap-->

            <!-- Content -->
            <div id="Content">
                <div class="hGroup1709">
                    <p>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>홈
                    </p>
                    <h4 style="float:left;">회원가입</h4>
                    <div style="clear:both; height:10px;"></div>
                </div>

                <section class="section">
                    <div class="con_wrap1709">
                        <h5>회원정보입력</h5>
                    </div>

                    <div class="con_wrap1709">
                        <form name="memform" method="post"  action="https://www.bitschool.com/Member/member_ipin_result_ok_old.asp" >
                            <input type="hidden" name="idcheck" value="N">
                            <input type="hidden" name="sDupInfo" value='<%--<%=sDupInfo%>--%>'>
                            <input type="hidden" name="sName" value='<%--<%=sName%>--%>'>
                            <div class="divTable">
                                <table>
                                    <colgroup>
                                        <col width="18%">
                                        <col width="*">
                                    </colgroup>
                                    <tbody>
                                    <!-- // 2016-02-22-YG : 이름 to readonly.
                                    <tr>
                                        <th scope="row" class="tit"><label for="name">이름<span class="star">*</span></th>
                                        <td colspan="2"><input type="text" name="name" id="joinInfo_01" value='< % = sname% >' class="w167">
                                        <span>성명 가입시 공백이 없이 입력하여 주십시요.(예:홍길동)</span></td>
                                    </tr>
                                    -->
                                    <tr>
                                        <td scope="row" class="darker c" scope="row" class="tit"><label for="name">이름<span class="star"> *</span></label></td>
                                        <td colspan="2">
                                            <input type="text" name="name" id="joinInfo_01" value='<%--<%=sname%>--%>' style="background-color:#efefef;" class="w167"  />
                                            <!--<span>성명 가입시 공백이 없이 입력하여 주십시요.(예:홍길동)</span>-->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c" scope="row" class="tit"><label for="username">아이디 <span class="star"> *</span></label></td>
                                        <td colspan="2"><input type="text" name="username" id="joinInfo_02" class="w167">
                                            <span><a href="javascript:openid();" class="btnGreenBorder mar_r5">중복확인</a>4~8자 사이로 입력해 주시기 바랍니다</span></td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c" scope="row" class="tit"><label for="password">비밀번호<span class="star"> *</span></label></td>
                                        <td colspan="2"><input type="password" name="password" id="joinInfo_03" class="w167">
                                            <span>대,소문자를 구분합니다.</span></td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c" scope="row" class="tit"><label for="confirm_pwd">비밀번호 확인<span class="star"> *</span></label></td>
                                        <td colspan="2"><input type="password" name="confirm_pwd" id="joinInfo_04" class="w167">
                                            <span>한번 더 비밀번호를 입력하여 주세요</span></td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c" scope="row" class="tit">우편번호<span class="star"> *</span></td>
                                        <td>
                                            <input id="inputZipCode" type="text" name="czipcode2" maxLength="7" size="7" style="background-color:#f0efef;"/>
                                            <!--<input type="button" onclick="zip_search2()" value="우편번호검색" size="16">-->
                                            <!--<input type="button" onclick="javascript:openDAUMapi();" value="우편번호검색" size="16" style="background-color:#8fd9e7; padding:1px 5px; height:25px; border:1px solid #777777;">-->
                                            <a type="button" onclick="javascript:openDAUMapi();" style="width:80px;" class="btnBlueBorder">우편번호검색</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c" scope="row" class="tit">주소<span class="star">*</span></td>
                                        <td><input id="inputAddress" type="text" maxlength="50" size="50" name="caddr2" style="width:550px"></td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c" scope="row" class="tit"><label for="telephone1">전화번호<span class="star"> *</span></label></td>
                                        <td colspan="2">
                                            <select name="telephone1" class="slim_select" id="select1">
                                                <option value="02" selected>02</option>
                                                <option value="031" >031</option>
                                                <option value="032" >032</option>
                                                <option value="033" >033</option>
                                                <option value="041" >041</option>
                                                <option value="042" >042</option>
                                                <option value="043" >043</option>
                                                <option value="051" >051</option>
                                                <option value="052" >052</option>
                                                <option value="053" >053</option>
                                                <option value="054" >054</option>
                                                <option value="055" >055</option>
                                                <option value="061" >061</option>
                                                <option value="062" >062</option>
                                                <option value="063" >063</option>
                                                <option value="064" >064</option>
                                                <option value="064" >070</option>
                                            </select> -
                                            <input type="text" name="telephone2" id="joinInfo_05" class="w50"> -
                                            <input type="text" name="telephone3" id="joinInfo_05" class="w50">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c" scope="row" class="tit"><label for="handphone1">핸드폰번호<span class="star"> *</span></label></td>
                                        <td colspan="2">
                                            <select name="handphone1" class="slim_select" id="select4">
                                                <option value="010" selected>010</option>
                                                <option value="011" >011</option>
                                                <option value="016" >016</option>
                                                <option value="017" >017</option>
                                                <option value="018" >018</option>
                                                <option value="019" >019</option>
                                            </select> -
                                            <input type="text" name="handphone2" id="joinInfo_05" class="w50"> -
                                            <input type="text" name="handphone3" id="joinInfo_05" class="w50">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c" scope="row" class="tit"><label for="mail1">이메일<span class="star"> *</span></label></td>
                                        <td colspan="2">
                                            <input type="text" name="mail1" id="joinInfo_05" class="w83"> @
                                            <input type="text" name="mail2" id="joinInfo_05" class="w83">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c" scope="row" class="tit"><label for="bitletter">메일수신<span class="star"> *</span></label></td>
                                        <td colspan="2">
                                            <span><input name="bitletter" type="radio" value="yes" checked> 이메일 수신</span>
                                            <span class="mar_l20"><input name="bitletter" type="radio" value="no"> 이메일 수신안함</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c" scope="row" class="tit"><label for="joinInfo_10">직업<span class="star"> *</span></label></td>
                                        <td colspan="2">
                                            <select name="job" id="" class="jobSelect">
                                                <option selected>직업선택</option>
                                                <option value="학생" >학생 </option>
                                                <option value="컴퓨터/인터넷" >컴퓨터/인터넷</option>
                                                <option value="언론" >언론</option>
                                                <option value="공무원" >공무원</option>
                                                <option value="회사원" >회사원</option>
                                                <option value="군인" >군인</option>
                                                <option value="서비스업" >서비스업</option>
                                                <option value="교육" >교육</option>
                                                <option value="금융/증권/보험업" >금융/증권/보험업</option>
                                                <option value="유통업" >유통업</option>
                                                <option value="예술" >예술</option>
                                                <option value="의료" >의료</option>
                                                <option value="법률" >법률</option>
                                                <option value="건설업" >건설업</option>
                                                <option value="제조업" >제조업</option>
                                                <option value="부동산업" >부동산업</option>
                                                <option value="운송업" >운송업</option>
                                                <option value="농/수산/임업" >농/수산/임업</option>
                                                <option value="광산업" >광산업</option>
                                                <option value="주부" >주부</option>
                                                <option value="기타" >기타</option>
                                                <option value="무직" >무직</option>
                                            </select>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>

                    <div class="btn_wrap c mar_t40">
                        <a href="javascript:submit_it();" title="" class="btnGreenBorder big">완료</a>
                        <a href="javascript:history.back();" title="" class="btnWhiteBorder big">취소</a>
                    </div>
                </section>
                <!--<a href="#this" class="moveTop">Top</a>-->
            </div>
            <!-- //Content -->
        </div>
    </div>
    <!-- Container_Wrap -->
    <hr>
    <!-- Footer_Wrap -->
    <!-- #include virtual = "/Include/FooterHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer_Wrap -->
</div>
</body>
</html>