<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">
<head>
    <!-- #include virtual="/Include/Meta.asp"-->
    <c:import url="/WEB-INF/views/Include/Meta.jsp"/>
    <title>비트교육센터</title>
    <!-- #include virtual="/Include/ContentStyle.asp"-->
    <c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
    <!-- #include virtual="/Include/Script.asp"-->
    <c:import url="/WEB-INF/views/Include/Script.jsp"/>
    <!--#include virtual="/Member/id_pass_search_script.asp"-->
    <%--<c:import url="/WEB-INF/views/Include/id_pass_search_script.jsp"/>--%>

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
            $(".snb_1709 a.newdepth1").eq(3).addClass("on");  // 개인정보처리방침 ON
        });
    </script>
    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
    <script type="text/javascript">
        var agree03_YN = -1;		// 0이면 No, 1이면 Yes. 미선택일 때엔 -1 유지.

        function logOut() {
            //alert("logout");
            location.href = "/member/logout";
            // location.href = "/Member/login_Reagree_NO.asp";
        }
        function check_agree(){
            if($(".agreeCheck_01").is(":checked") == false){
                alert("모든 약관에 동의하셔야 다음 단계로 진행 가능합니다.");
                $(".agreeCheck_01").focus();
                return;
            }else if($(".agreeCheck_02").is(":checked") == false){
                alert("모든 약관에 동의하셔야 다음 단계로 진행 가능합니다.");
                $(".agreeCheck_02").focus();
                return;
            }else if(agree03_YN<0) {
                alert("제3자 제공에 대한 동의여부를 클릭하셔야 다음 단계로 진행 가능합니다.");
                return;
            }else{
                $("#Login_Form").submit();
            }
        }

        function on_agree_03_Y() {
            //alert("동의함");
            agree03_YN = 1;
            $("#agree_03_Y").attr('class','btnBlueBorder');
            $("#agree_03_N").attr('class','btnWhiteBorder');
        }

        function on_agree_03_N() {
            //alert("동의안함");
            agree03_YN = 0;
            $("#agree_03_N").attr('class','btnBlueBorder');
            $("#agree_03_Y").attr('class','btnWhiteBorder');
        }

        function showDivHidden() {
            $("#divHidden").show();
            $("#btnGroup1").hide();
        }
    </script>
</head>
<body>
<div id="Wrapper">
    <!-- Header -->
    <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header -->

    <!-- Container_Wrap -->
    <div id="Container_Wrap" style="min-height:390px;">
        <!-- Content_Wrap -->
        <div id="Content_Wrap" style="min-height:390px;">
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
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>멤버
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>회원정보 재동의
                    </p>
                    <h4>회원정보 재동의</h4>
                </div>
                <div class="con_wrap1709">
                    <h5>회원정보 재동의 안내<br/></h5>

                    <p style="font-size:13pt;">
                        비트교육센터 홈페이지는 보다 안전한 웹사이트 이용을 위해 개인정보보호법에 따라 <br/>회원정보 재동의를 시행합니다.<br/><br/>
                        <span class="blueTxt">표준개인정보보호지침에 의거 2년마다 재동의 절차를 거쳐 동의하신 경우에만 <br/>회원자격을 유지하실 수 있게 됩니다.</span><br/> (동의하신 개인정보는 수료이력확인 및 교육확인서 발급을 위해 보관될 예정입니다.)<br/><br/>
                        ${sessionScope.authUser.nameHan} 회원님께서는 <b>회원정보 재동의 하지 않으실 경우 </b>회원님의 개인정보 보호를 위해<br/><b>자동으로 회원탈퇴 처리</b>됨을 알려드립니다.
                    </p>
                </div>
                <section class="section mar_t20">
                    <div id="divHidden" style="display:none; margin-bottom:30px;" >
                        <section class="section">
                            <%--<form id="Login_Form" method="post" action="http://www.bitacademy.com/Member/login_Reagree_ok.asp">--%>
                                <div class="con_wrap1709">
                                    <h5>이용약관</h5>
                                </div>
                                <style>
                                    .contentBox.policy {
                                        overflow-y: scroll;
                                        height: 300px;
                                        width: 720px;
                                        padding: 20px;
                                        border: 1px solid #d1d1d1;
                                    }
                                    .contentBox.policy h5 {
                                        padding-left: 5px;
                                        border-left: 5px solid #0f4d86;
                                        font-size: 15px;
                                        color: #0f4d86;
                                        margin-bottom: 15px;
                                    }
                                    .contentBox.policy dt {
                                        font-weight: bold;
                                        margin-top: 10px;
                                        margin-bottom: 5px;
                                    }
                                    .contentBox.policy dd {
                                        line-height:20px;
                                        color:#4a4a4a;
                                    }
                                </style>

                                <section class="section">
                                    <form id="Login_Form" method="post" action="${pageContext.request.contextPath}/member/ReAgree">
                                    <%--<form id="agreeForm" action="${pageContext.request.contextPath}/member/Join_Step2">--%>
                                        <div class="contentBox policy">
                                            <h5>제 1 장 총칙</h5>
                                            <dl>
                                                <dt>제 1 조 (목적)</dt>
                                                <dd>이 약관은 주식회사비트컴퓨터 부설 비트교육센터(이하 센터라 합니다)가 제공하는 IT교육사업 관련 서비스(이하 서비스라 합니다)를 이용함에 있어 이용조건 및 절차와 기타 필요한 사항을 규정하는 것을 목적으로 합니다. </dd>
                                            </dl>
                                            <dl>
                                                <dt>제 2 조 (약관의 효력 및 변경)</dt>
                                                <dd>
                                                    <ol>
                                                        <li>약관은 사이트를 이용하고자 하는 모든 회원에 대하여 그 효력을 발생합니다.</li>
                                                        <li>회사는 본 약관의 내용과 회사의 상호, 소재지, 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, e-mail주소 등) 등을 이용자가 알 수 있도록 사이트의 초기 서비스화면에 게시합니다.</li>
                                                        <li>회사는 약관의규제에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진및정보보호등에관한법률, 전자상거래등에서의소비자보호에관한법률, 방문판매등에관한법률, 소비자보호법, 개인정보보호법 등 관련법을 위배하지 않는 범위에서 본 약관을 변경할 수 있습니다.</li>
                                                        <li>회사는 필요하다고 인정되는 경우 본 약관을 변경할 수 있으며, 약관이 변경되는 경우에는 변경된 약관의 적용일자 및 사유를 명시한 변경된 약관과 현행 약관을 함께 지체없이 제8조에서 정한 방법으로 회원에게 공시합니다. 약관 변경 이전의 기존 회원이 제4항의 공시 기간 동안 변경된 약관에 동의하는 경우 변경약관의 조항이 적용됩니다.</li>
                                                        <li>회원이 변경된 약관에 동의하지 않으면 사이트를 탈퇴하여 서비스의 이용 계약을 해지할 수 있습니다. 단, 이의가 있음에도 제4항에 정한 바에 따른 회사의 고지가 있은 후 30일 이내에 이용 계약을 해지하지 않은 회원은 변경된 약관에 동의한 것으로 간주합니다.</li>
                                                    </ol>
                                                </dd>
                                            </dl>
                                            <dl>
                                                <dt>제 3 조 (약관 외 준칙)</dt>
                                                <dd>이 약관에 명시되지 않은 사항이 관계 법령에 규정되어 있을 경우에는 그 규정에 따릅니다. </dd>
                                            </dl>
                                            <dl>
                                                <dt>제 4 조 (용어의 정의)</dt>
                                                <dd>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</dd>
                                                <dd>
                                                    <ol>
                                                        <li>회원 : 사이트에 접속하여 본 약관에 동의하고 개인정보를 제공하여 회원등록을 하고 회사가 제공하는 서비스를 이용하는 자</li>
                                                        <li>아이디 : 회원의 식별과 회원의 서비스 이용을 위하여 회원이 선정하고  회사가 승인하는 문자나 숫자 혹은 그 조합을 말합니다(이하 "ID"라 합니다).</li>
                                                        <li>비밀번호 : 회원이 부여받은 ID와 일치된 회원임을 확인하고, 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와 숫자의 조합을 말합니다. </li>
                                                        <li>해지 : 회사 또는 회원이 서비스 사용 후 이용계약을 해약하는 것을 말합니다.</li>
                                                    </ol>
                                                </dd>
                                            </dl>

                                            <h5>제 2 장 서비스 이용 계약</h5>
                                            <dl>
                                                <dt>제 5 조 (이용 계약의 성립)<dt>
                                                <dd>
                                                    <ol>
                                                        <li>서비스 가입 신청시 본 약관을 읽고 "동의함" 버튼을 클릭하면 이 약관에 동의하는 것으로 간주됩니다.</li>
                                                        <li>이용계약은 서비스 이용희망자의 이용약관 동의 후 이용 신청에 대하여 회사가 승낙함으로써 성립합니다. </li>
                                                    </ol>
                                                </dd>
                                            </dl>
                                            <dl>
                                                <dt>제 6 조 (이용 신청)<dt>
                                                <dd>
                                                    <ol>
                                                        <li>회원으로 가입하여 서비스를 이용하기를 희망하는 자는 회사가 요청하는 소정의 가입신청 양식에서 요구하는 사항을 기록하여 신청합니다..</li>
                                                        <li>온라인 가입신청 양식에 기재하는 모든 회원 정보는 실제 데이터인 것으로 간주하며 실명이나 실제 정보를 입력하지 않은 사용자는 법적인 보호를 받을 수 없으며, 서비스 사용의 제한을 받으실 수 있습니다.</li>
                                                    </ol>
                                                </dd>
                                            </dl>
                                            <dl>
                                                <dt>제 7 조 (개인정보보호 의무) <dt>
                                                <dd>"회사"는 "정보통신망법" 등 관계 법령이 정하는 바에 따라 "회원"의 개인정보를 보호하기 위해 노력합니다. 개인정보의 보호 및 사용에 대해서는 관련법 및 "회사"의 개인정보처리방침이 적용됩니다. 다만, "회사"의 공식 사이트 이외의 링크된 사이트에서는 "회사"의 개인정보처리방침이 적용되지 않습니다.</dd>
                                            </dl>
                                            <dl>
                                                <dt>제 8 조 (서비스 이용의 제한 및 이용계약의 해지)<dt>
                                                <dd>
                                                    <ol>
                                                        <li>회사는 제 6 조에 따른 이용신청에 대하여 특별한 사정이 없는 한 접수 순서대로 이용 신청을 승낙합니다.</li>
                                                        <li>회사는 다음 각 호의 1에 해당하는 경우 이용신청에 대한 승낙을 제한할 수 있고, 그 사유가 해소될 때까지 승낙을 유보할 수 있습니다.
                                                            <ol class="listLower">
                                                                <li>서비스 관련 설비에 여유가 없는 경우 </li>
                                                                <li>기술상 지장이 있는 경우</li>
                                                                <li>기타 회사의 사정상 필요하다고 인정되는 경우</li>
                                                            </ol>
                                                        </li>
                                                        <li>회사는 다음 각 호의 1에 해당하는 이용계약 신청에 대하여는 이를 승낙하지 아니 할 수 있습니다.
                                                            <ol class="listLower">
                                                                <li>본인의 실명으로 신청하지 않은 경우</li>
                                                                <li>다른 사람의 명의를 사용하여 신청한 경우</li>
                                                                <li>이용 신청시 필요 사항을 허위로 기재하여 신청한 경우</li>
                                                                <li>사회의 안녕과 질서 혹은 미풍양속을 저해할 목적으로 신청한 경우</li>
                                                                <li>기타 회사가 정한 이용 신청 요건이 미비된 경우</li>
                                                            </ol>
                                                        </li>
                                                        <li>제 2 항 또는 3항에 의하여 이용신청의 승낙을 유보하거나 승낙하지 아니하는 경우, 회사는 이를 이용신청자에게 알려야 합니다. 다만, 회사의 귀책사유없이 이용신청자에게 통지할 수 없는 경우는 예외로 합니다.</li>
                                                    </ol>
                                                </dd>
                                            </dl>
                                            <dl>
                                                <dt>제 9 조 (계약 사항의 변경) <dt>
                                                <dd>
                                                    <ol>
                                                        <li>회원은 개인정보관리를 통해 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. </li>
                                                        <li>회원은 이용신청시 기재한 사항이 변경되었을 경우 온라인으로 수정을 해야 하며 회원정보의 미변경으로 인하여 발생되는 문제의 책임은 회원에게 있습니다.</li>
                                                    </ol>
                                                </dd>
                                            </dl>

                                            <h5>제 3 장 저작권</h5>
                                            <dl>
                                                <dt>제 10 조 (회사의 의무)</dt>
                                                <dd>
                                                    <ol>
                                                        <li>회사는 특별한 사정이 없는 한 회원이 서비스 이용을 신청한 날에 서비스를 이용할 수 있도록 합니다.</li>
                                                        <li>회사는 이 약관에서 정한 바에 따라 계속적이고 안정적인 서비스의 제공을 위하여 지속적으로 노력하며, 설비에 장애가 생기거나 멸실된 때에는 지체없이 이를 수리 복구하여야 합니다. 다만, 천재지변, 비상사태 또는 그 밖에 부득이한 경우에는 그 서비스를 일시 중단하거나 중지할 수 있습니다.</li>
                                                        <li>회사는 회원으로부터 소정의 절차에 의해 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 적절한 절차를 거처 처리하여야 합니다. 처리시 일정 기간이 소요될 경우 회원에게 그 사유와 처리 일정을 알려주어야 합니다.</li>
                                                        <li>회사는 회원의 프라이버시 보호와 관련하여 제 7 조 제 1, 2, 3, 5항에 제시된 내용을 지킵니다.</li>
                                                        <li>회사는 이용계약의 체결, 계약사항의 변경 및 해지 등 이용고객과의 계약 관련 절차 및 내용 등에 있어 이용고객에게 편의를 제공하도록 노력합니다.</li>
                                                    </ol>
                                                </dd>
                                            </dl>

                                            <dl>
                                                <dt>제 11 조 (회원의 의무)</dt>
                                                <dd>
                                                    <ol>
                                                        <li>회원은 이 약관에서 규정하는 사항과 서비스 이용안내 또는 주의사항 등 회사가 공지 혹은 통지하는 사항을 준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 하여서는 아니됩니다.</li>
                                                        <li>회원의 ID와 비밀번호에 관한 모든 관리책임은 회원에게 있습니다. 회원에게 부여된 ID와 비밀번호의 관리 소홀, 부정 사용에 의하여 발생하는 모든 결과에 대한 책임은 회원에게 있습니다.</li>
                                                        <li>회원은 자신의 ID나 비밀번호가 부정하게 사용되었다는 사실을 발견한 경우에는 즉시 회사에 신고하여야 하며, 신고를 하지 않아 발생하는 모든 결과에 대한 책임은 회원에게 있습니다.</li>
                                                        <li>회원은 내용별로 회사가 서비스 공지사항에 게시하거나 별도로 공지한 이용제한 사항을 준수하여야 합니다.</li>
                                                        <li>회원은 회사의 사전승낙 없이는 서비스를 이용하여 영업활동을 할 수 없으며, 그 영업활동의 결과와 회원이 약관에 위반한 영업활동을 하여 발생한 결과에 대하여 회사는 책임을 지지 않습니다. 회원은 이와 같은 영업활동으로 회사가 손해를 입은 경우 회원은 회사에 대하여 손해배상의무를 집니다.</li>
                                                        <li>회원은 회사의 명시적인 동의가 없는 한 서비스의 이용권한, 기타 이용계약상 지위를 타인에게 양도,증여할 수 없으며, 이를 담보로 제공할 수 없습니다.</li>
                                                        <li>회원은 서비스 이용과 관련하여 다음 각 호의 1에 해당되는 행위를 하여서는 안됩니다.
                                                            <ul class="listLower">
                                                                <li>다른 회원의 ID와 비밀번호, 주민등록번호 등을 도용하는 행위</li>
                                                                <li>본 서비스를 통하여 얻은 정보를 회사의 사전승낙 없이 회원의 이용 이외 목적으로 복제하거나 이를 출판 및 방송 등에 사용하거나 제3자에게 제공하는 행위</li>
                                                                <li>타인의 특허, 상표, 영업비밀, 저작권 기타 지적재산권을 침해하는 내용을 게시, 전자메일 또는 기타의 방법으로 타인에게 유포하는 행위</li>
                                                                <li>공공질서 및 미풍양속에 위반되는 저속, 음란한 내용의 정보, 문장, 도형 등을 전송, 게시, 전자메일 또는 기타의 방법으로 타인에게 유포하는 행위</li>
                                                                <li>모욕적이거나 위협적이어서 타인의 프라이버시를 침해할 수 있는 내용을 전송, 게시, 전자메일 또는 기타의 방법으로 타인에게 유포하는 행위</li>
                                                                <li>범죄와 결부된다고 객관적으로 판단되는 행위</li>
                                                                <li>회사의 승인을 받지 않고 다른 사용자의 개인정보를 수집 또는 저장하는 행위</li>
                                                                <li>기타 관계법령에 위배되는 행위</li>
                                                            </ul>
                                                        </li>
                                                    </ol>
                                                </dd>
                                            </dl>

                                            <h5>제 4 장 서비스이용</h5>
                                            <dl>
                                                <dt>제 12 조 (서비스 이용 범위)</dt>
                                                <dd>회원은 회사를 통한 가입시 발급된 ID 하나로 사이트의 해당 정보를 이용할 수 있습니다.</dd>
                                            </dl>

                                            <dl>
                                                <dt>제 13 조 (서비스 내용)</dt>
                                                <dd>
                                                    <ol>
                                                        <li>회사가 제공하는 서비스는 다음과 같습니다.
                                                            <ul class="listLower">
                                                                <li>전문교육 온라인 신청</li>
                                                                <li>장기교육 온라인 지원</li>
                                                                <li>강사모집 이메일 지원</li>
                                                                <li>교육확인서 및 자격증 이메일 신청</li>
                                                            </ul>
                                                        </li>
                                                        <li>회사는 필요한 경우 서비스의 내용을 추가 또는 변경할 수 있습니다.</li>
                                                    </ol>
                                                </dd>
                                            </dl>

                                            <dl>
                                                <dt>제 14 조 (요금 및 유료정보 등)</dt>
                                                <dd>회사가 제공하는 서비스는 무료서비스와 유료서비스로 구분됩니다.</dd>
                                            </dl>
                                            <dl>
                                                <dt>제15조 [정보의 제공]</dt>
                                                <dd>
                                                    <ol>
                                                        <li>회사는 서비스를 운영함에 있어 각종 정보를 사이트 화면에 게재하거나 e-mail, SMS 등의 방법으로 회원에게 제공할 수 있습니다.</li>
                                                        <li>회사는 서비스 운영과 관련하여 사이트화면, SMS, e-mail 등에 광고 등의 정보를 게재할 수 있습니다.</li>
                                                        <li>회원이 게재되어 있는 광고를 이용하거나 광고주와 교신 또는 거래를 하는 것은 전적으로 회원과 광고주 간의 문제입니다. 따라서 회원과 광고주 간에 문제가 발생한 경우 회사는 책임이 없습니다.</li>
                                                    </ol>
                                                </dd>
                                            </dl>
                                            <dl>
                                                <dt>제 16 조 (회원의 게시물)</dt>
                                                <dd>회사는 회원이 게시하거나 등록하는 서비스내의 내용물이 다음 각 호의 1에 해당한다고 판단되는 경우에 사전통지 없이 삭제할 수 있습니다.</dd>
                                                <dd>
                                                    <ol>
                                                        <li>다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우</li>
                                                        <li>공공질서 및 미풍양속에 위반되는 내용인 경우</li>
                                                        <li>범죄적 행위에 결부된다고 인정되는 내용일 경우</li>
                                                        <li>회사의 저작권, 제 3 자의 저작권 등 기타 권리를 침해하는 내용인 경우</li>
                                                        <li>회사에서 규정한 게시기간을 초과한 경우</li>
                                                        <li>회원이 자신의 홈페이지와 게시판에 음란물을 게재하거나 음란사이트를 링크하는 경우</li>
                                                        <li>회원이 자신의 홈페이지와 게시판에 음란물을 게재하거나 음란사이트를 링크하는 경우</li>
                                                        <li>기타 관계법령에 위반된다고 판단되는 경우</li>
                                                    </ol>
                                                </dd>
                                            </dl>
                                            <dl>
                                                <dt>제 17 조 (게시물의 저작권)</dt>
                                                <dd>서비스에 게재된 자료에 대한 권리는 다음 각 호의 1과 같습니다.
                                                    <ol>
                                                        <li>게시물에 대한 권리와 책임은 게시자에게 있으며 회사는 게시자의 동의 없이는 이를 서비스내 게재 이외에 영리적 목적으로 사용할 수 없습니다. 단, 비영리적인 경우에는 그러하지 아니하며 또한 회사는 서비스내의 게재권을 갖습니다.</li>
                                                        <li>회원은 서비스를 이용하여 얻은 정보를 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적으로 사용할 수 없습니다.</li>
                                                    </ol>
                                                </dd>
                                            </dl>

                                            <h5>제 5 장 교육서비스의 이용</h5>
                                            <dl>
                                                <dt>제 18조 [수강신청]</dt>
                                                <dd>
                                                    <ol>
                                                        <li>교육 신청자는 회사가 정한 수강신청절차를 통하여 수강신청을 할 수 있습니다.</li>
                                                        <li>교육 수강신청자는 반드시 실명으로 수강신청을 하여야 합니다.</li>
                                                    </ol>
                                                </dd>
                                            </dl>

                                            <dl>
                                                <dt>제 19조 [수강신청 효력발생] </dt>
                                                <dd>수강신청은 수강신청 희망자의 수강신청을 회사가 승인함으로써 효력이 발생합니다.</dd>
                                            </dl>

                                            <dl>
                                                <dt>제 20조 [수강료] </dt>
                                                <dd>
                                                    <ol>
                                                        <li>교육 서비스를 이용하고자 하는 회원은 수강료를 납입하여야 합니다.</li>
                                                        <li>제1항의 규정에 의한 수강료, 그 납입방법 및 납입기간은 다음 각호에 따릅니다.
                                                            <ul class="listLower">
                                                                <li>수강료는 회사가 정한 요금체계에 의하며 사이트에서 공지한 가격을 기준으로 합니다.</li>
                                                                <li>수강료는 회사가 정한 지정은행 및 지정계좌 또는 신용카드로 납입합니다.</li>
                                                                <li>납입기간은 수강신청 종료일을 납입종료일로 합니다.</li>
                                                            </ul>
                                                        </li>
                                                        <li>미성년자는 법정대리인을 수강료 납입자로 하여 수강신청을 할 수 있습니다.</li>
                                                        <li>개인명의로 교육 서비스를 이용하고 개인이 수강료를 납부하는 경우 회원명은 반드시 회원 자신의 본명(실명)이어야 하며, 수강료 납부 책임자는 유료서비스 이용 회원 외에 타인으로 지정할 수 있습니다. 단, 유료서비스 이용자와 수강료 납부 책임자가 다른 경우 회사는 이를 확인할 수 있는 제증명을 요구할 수 있습니다.</li>
                                                        <li>개인명의로 교육 서비스를 이용하고 개인이 속한 법인 등 단체가 수강료를 납부하는 경우 회원명은 반드시 서비스를 이용하는 회원 자신의 본명(실명)이어야 하며, 수강료 납부는 서비스 이용 회원과 이용 회원이 속한 법인 등의 단체가 연대하여 책임을 집니다.</li>
                                                        <li>법인명의로 교육 서비스를 이용하고 법인 등 단체가 수강료를 납부하는 경우 사업자등록증 1부를 팩스, 우편, 방문 등으로 제출하여야 합니다.</li>
                                                    </ol>
                                                </dd>
                                            </dl>
                                            <dl>
                                                <dt>제 21조 [세금계산서 발급] </dt>
                                                <dd>수강료 납입과 관련하여 세금계산서 발급을 원하는 경우 수강신청자는 즉시 회사에 사업자등록증 1부를 팩스, 우편, 방문 등으로 제출하여야 합니다.</dd>
                                            </dl>
                                            <dl>
                                                <dt>제 22조 [결제수단 및 방법] </dt>
                                                <dd>회사는 회원이 게시하거나 등록하는 서비스내의 내용물이 다음 각 호의 1에 해당한다고 판단되는 경우에 사전통지 없이 삭제할 수 있습니다.</dd>
                                                <dd>수강료의 결제 수단은 현금으로 한정하며 무통장 입금, 계좌이체, 신용카드 또는 기타 회사가 인정하는 결제수단으로 할 수 있습니다.</dd>
                                            </dl>
                                            <dl>
                                                <dt>제23조 [수강승인] </dt>
                                                <dd>
                                                    <ol>
                                                        <li>회사는 수강신청에 대하여 회사가 정한 지정은행 및 지정계좌에 수강료 납입 사실 확인 후 또는 신용카드 결제승인 후 수강신청을 승인합니다.</li>
                                                        <li>회사가 수강신청을 승인하는 경우 회원에 대하여 서비스를 통하여 다음 각 호의 사항을 통지합니다.
                                                            <ul class="listLower">
                                                                <li>수강신청 과목, 기간</li>
                                                                <li>수료기준</li>
                                                                <li>교육 전 준비사항</li>
                                                            </ul>
                                                        </li>
                                                        <li>회사는 다음 각 호의 1에 해당하는 경우 수강신청에 대한 승인을 제한할 수 있고, 그 사유가 해소될 까지 승인을 유보할 수 있습니다.
                                                            <ul class="listLower">
                                                                <li>교육 유료서비스 과정의 수강료를 납입하는데 지연이 되는 경우</li>
                                                                <li>수강신청 사항 중 계산서 발급에 필요한 회사명, 사업자등록번호 등이 누락된 경우</li>
                                                                <li>기타 회사가 필요하다고 인정되는 경우 </li>
                                                            </ul>
                                                        </li>
                                                        <li>회사는 다음 각 호의 1에 해당하는 사항을 인지하는 경우 등 수강신청을 승인하지 아니합니다.
                                                            <ul class="listLower">
                                                                <li>교육 서비스 과정의 수강료를 납입하지 아니하고 수강신청 기간을 경과한 경우</li>
                                                                <li>이름이 실명이 아닌 경우 </li>
                                                                <li>수강신청서의 내용을 허위로 기재한 경우 </li>
                                                                <li>기타 회사 소정의 수강신청요건을 충족하지 못하는 경우</li>
                                                            </ul>
                                                        </li>
                                                        <li>제3항 또는 제4항에 의하여 수강신청의 승인을 유보하거나 승인하지 아니하는 경우, 회사는 이를 수강신청자에 알려야 합니다. 다만, 회사의 귀책사유 없이 수강신청자에게 통지할 수 없는 경우는 예외로 합니다.</li>
                                                    </ol>
                                                </dd>
                                            </dl>
                                            <dl>
                                                <dt>제 24조 [수강취소 및 환불신청] </dt>
                                                <dd>
                                                    <ol>
                                                        <li>회사는 회원이 사이트의 &lt;지원취소&gt;메뉴를 이용하여 교육 서비스의 수강취소를 요청하는 경우, 다음 각 호의 요건에 따라 환불이 가능합니다.
                                                            <ul class="listLower">
                                                                <li>학습비 징수기간 1개월 이하인 경우
                                                                    <ul class="list_none">
                                                                        <li>구분 사용대금 반환금액 </li>
                                                                        <li>수업시작 전 없음 총 학습비 - 사용대금</li>
                                                                        <li>총 수업시간 1/3 이하 학습비의 1/3</li>
                                                                        <li>총 수업시간 1/2 이하 학습비의 1/2</li>
                                                                        <li>총 수업시간 1/2 초과 학습비 전액</li>
                                                                        <li>※ 학습비 징수기간은 학습시작일부터 학습종료일까지의 기간을 의미함.</li>
                                                                        <li>※ 총수업시간은 학습비 징수기간 중의 총수업시간을 의미함.</li>
                                                                        <li>※ 산정은 반환사유가 발생한 날까지 경과된 수업시간을 기준으로 함.</li>
                                                                    </ul>
                                                                </li>
                                                                <li>학습비 징수기간이 1개월 초과인 경우 사유가 발생한 달의 반환금액(상기 1개월 이하 기준 적용)과 나머지 달의 학습비 전액을 합산하여 반환금액 산정함.</li>
                                                            </ul>
                                                        </li>
                                                        <li>수강취소 시 제공받은 교보재 등은 환불처리를 위하여 반드시 반납하셔야 합니다.</li>
                                                        <li>회사의 귀책사유로 인해 수강취소 처리된 경우에는 상기 조항이 적용되지 않습니다.</li>
                                                        <li>수강신청자에게 수강취소 전에 받은 수강료에 대해서는 지체없이 환불에 필요한 조치를 취합니다. </li>
                                                    </ol>
                                                </dd>
                                            </dl>
                                            <dl>
                                                <dt>제 25조 [수료확인] </dt>
                                                <dd>
                                                    <ol>
                                                        <li>교육 서비스 수강자의 수료처리는 회사가 정한 기준과 절차에 따라 처리를 합니다.</li>
                                                        <li>교육의 수료여부 및 수료증은 전화 혹은 방문으로 확인할 수 있습니다.</li>
                                                    </ol>
                                                </dd>
                                            </dl>
                                            <dl>
                                                <dt>제 26조 [고용보험 환급]</dt>
                                                <dd>교육 서비스 수강자가 고용보험법상의 환급을 신청하는 경우에는 관계법 및 법령에서 요구하는 기준 및 요건에 부합되어야 하며, 이를 위해 수강자 소속의 고용보험 담당자를 통해 충분히 숙지하여야 합니다.</dd>
                                            </dl>

                                            <h5>제 6 장 손해배상 등</h5>
                                            <dl>
                                                <dt>제 27조 [손해배상] </dt>
                                                <dd>
                                                    <ol>
                                                        <li>회원이 본 약관의 규정을 위반함으로 인하여 회사에 손해가 발생하게 되는 경우, 이 약관을 위반한 회원은 회사에 발생하는 모든 손해를 배상하여야 합니다.</li>
                                                        <li>회원이 서비스를 이용함에 있어 행한 불법행위나 본 약관 위반행위로 인하여 회사가 당해 회원 이외의 제3자로부터 손해배상 청구 또는 소송을 비롯한 각정 이의제기를 받는 경우 당해 회원은 자신의 책임과 비용으로 회사를 면책시켜야 하며, 회사가 면책되지 못한 경우 당해 회원은 그로 인하여 회사에 발생한 모든 손해를 배상하여야 합니다.</li>
                                                    </ol>
                                                </dd>
                                            </dl>

                                            <dl>
                                                <dt>제 28조 [면책사항]</dt>
                                                <dd>
                                                    <ul>
                                                        <li>회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.</li>
                                                        <li>회사는 회원의 귀책사유로 인한 서비스의 이용장애에 대하여 책임을 지지 않습니다.</li>
                                                        <li>회사는 회원 상호간 또는 회원과 제3자 상호간에 서비스를 매개로 발생한 분쟁에 대해서는 개입할 의무가 없으며 이로 인한 손해를 배상할 책임도 없습니다.</li>
                                                    </ul>
                                                </dd>
                                            </dl>

                                            <dl>
                                                <dt>제 29조 [관할법원]</dt>
                                                <dd>
                                                    <ol>
                                                        <li>회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.</li>
                                                        <li>회사는 회원의 귀책사유로 인한 서비스의 이용장애에 대하여 책임을 지지 않습니다.</li>
                                                        <li>회사는 회원 상호간 또는 회원과 제3자 상호간에 서비스를 매개로 발생한 분쟁에 대해서는 개입할 의무가 없으며 이로 인한 손해를 배상할 책임도 없습니다.</li>
                                                    </ol>
                                                </dd>
                                                <dd>이 약관은 2014년 11월 27일부터 시행됩니다.</dd>
                                            </dl>

                                        </div>

                                        <!-- check_wrap -->
                                        <div class="check_wrap">
                                            <input type="checkbox" name="agreeChk" id="agree_01" class="agreeCheck_01"><label for="agree_01">위의 "이용 약관"에 동의합니다.</label>
                                            <!--<input type="checkbox" name="agreeChk" id="agree_07" class="agreeCheck_07"><label for="agree_07">전체동의</label>-->
                                        </div>
                                        <!-- //check_wrap -->

                                        <div class="con_wrap1709">
                                            <h5>개인정보처리방침</h5>
                                        </div>

                                        <div class="contentBox policy">
                                            <div class="layerBox mar_b10">
                                                '㈜비트컴퓨터'(이하 “회사” 또는 “비트교육센터”라 함)는 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법, 통신비밀보호법, 전기통신사업법, 등 정보통신서비스제공자가 준수하여야 할 관련 법령상의 개인정보보호 규정을 준수하며, 관련 법령에 의거한 개인정보처리방침을 정하여 이용자 권익 보호에 최선을 다하고 있습니다.
                                            </div>
                                            <div class="layerBox mar_b10">
                                                <h5>1. 수집하는 개인정보의 항목 및 수집방법 </h5>
                                                <dl>
                                                    <dt class="blueTxt">(1) 수집항목</dt>
                                                    <dd>회사는 회원가입, 서비스 신청, 변경 및 해지, A/S 서비스, 상담, 교육과정 소개, 이벤트 안내 및 이용자관리 등을 위하여 아래와 같은 개인정보를 수집하고 있습니다.</dd>
                                                    <dd>교육관련정보
                                                        <ul>
                                                            <li>- 필수 : 성명, ID, 비밀번호, i-pin, 전화번호, 휴대전화번호, e-mail, 메일수신여부, 직업, 학력사항</li>
                                                        </ul>
                                                    </dd>
                                                    <dd>고용보험환급관련 정보 (고용보험 환급과정 수강신청 시 별도 수집)
                                                        <ul>
                                                            <li>- 주민등록번호</li>
                                                        </ul>
                                                    </dd>
                                                    <dd>보험가입관련 정보 (보험가입 필수과정 수강신청 시 별도 수집)
                                                        <ul>
                                                            <li>- 주민등록번호</li>
                                                        </ul>
                                                    </dd>
                                                    <dd>이용자는 동의를 거부할 권리가 있습니다. 동의를 거부할 경우 상기의 정보수집을 필요로 하는 서비스를 제공받으실 수 없습니다.</dd>
                                                    <dd>또한, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 생성되어 수집될 수 있습니다.
                                                        <ul>
                                                            <li>- 서비스 이용기록, 결제수단에 대한 기록여부(계좌, 신용카드), 결제기록 </li>
                                                        </ul>
                                                    </dd>
                                                </dl>
                                                <dl>
                                                    <dt class="blueTxt">(2) 수집방법</dt>
                                                    <dd>회사는 다음과 같은 방법으로 개인정보를 수집합니다.
                                                        <ul>
                                                            <li>- 회사는 제공하는 서비스에 대하여 고객의 원활한 사용지원을 위해 홈페이지(회원가입), 서면양식, 고객에 대한 상담, 서비스 신청, 배송지 정보 수정/입력, 이벤트/설문 참여 등의 방법으로 고객의 개인정보를 수집하고 있습니다</li>
                                                        </ul>
                                                    </dd>
                                                </dl>
                                            </div>

                                            <div class="layerBox mar_b10">
                                                <h5>2 개인정보의 수집 및 이용목적 </h5>
                                                <dl>
                                                    <dd>회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.
                                                        <ul>
                                                            <li>- 교육지원 및 교육이력 관리 </li>
                                                            <li>- 고용보험 환급 관련 업무</li>
                                                            <li>- 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산 목적, 학습진행, 구매 및 요금 결제 </li>
                                                            <li>- 물품배송 또는 청구지 등 발송</li>
                                                            <li>- 회원 관리</li>
                                                        </ul>
                                                    </dd>
                                                    <dd>회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가사용 방지, 가입 의사 확인, 연령확인, 불만처리 등 민원처리, 고지사항 전달
                                                        <ul>
                                                            <li>- 마케팅 및 광고에 이용</li>
                                                        </ul>
                                                    </dd>
                                                    <dd>신규 서비스(제품) 개발 및 특화, 이벤트 등 광고성 정보 전달, 인구통계학적 특성에 따른 서비스 제공 및 광고 게재 </dd>
                                                </dl>
                                            </div>

                                            <div class="layerBox mar_b10">
                                                <h5>5	수집한 개인정보의 보유ㆍ이용기간</h5>
                                                <dl>
                                                    <dt class="dis_none">수집한 개인정보의 보유ㆍ이용기간</dt>
                                                    <dd>개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.</dd>
                                                    <dd>회사 내부 방침에 의한 정보보유 사유
                                                        <ul>
                                                            <li>- 보존 항목 : 성명, 회원아이디, 비밀번호, 휴대폰번호, 이메일주소, 소속, 전화번호, 주소, 안내정보 이메일 수신여부, 수강신청정보, 학력사항, 교육이력 </li>
                                                            <li>- 보존 이유 : 교육 이력 관리</li>
                                                            <li>- 보존 기간 : 학습자 회원 탈퇴 시, 회원 삭제 요청시까지</li>
                                                        </ul>
                                                    </dd>
                                                    <dd>관련법령에 의한 정보보유 사유
                                                        <ul>
                                                            <li>- 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다. </li>
                                                        </ul>
                                                    </dd>
                                                    <dd>
                                                        <div class="con_wrap1709">
                                                            <div class="divTable">
                                                                <table>
                                                                    <colgroup>
                                                                        <col style="width:45%">
                                                                        <col style="width:10%">
                                                                        <col style="width:45%">
                                                                    </colgroup>
                                                                    <thead>
                                                                    <tr>
                                                                        <th scope="col">보존항목/내용</th>
                                                                        <th scope="col">보존기간</th>
                                                                        <th scope="col">보존사유/근거</th>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td>개인정보(이름, 자택 전화번호, 자택주소, 휴대전화번호, 이메일, 회사명, 주민등록번호)</td>
                                                                        <td>3년</td>
                                                                        <td>근로자 직업능력 개발법 고용보험 환급 적정성 심의</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>계약 또는 청약철회 등에 관한 기록</td>
                                                                        <td>5년</td>
                                                                        <td rowspan="3">전자상거래 등에서의 소비자 보호에 관한 법률</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>대금결제 및 재화 등의 공급에 관한 기록</td>
                                                                        <td>5년</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>소비자의 불만 또는 분쟁처리에 관한 기록</td>
                                                                        <td>5년</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>본인확인에 관한 기록</td>
                                                                        <td>6개월</td>
                                                                        <td>정보통신 이용촉진 및 정보보호 등에 관한 법률</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>방문에 관한 기록</td>
                                                                        <td>3개월</td>
                                                                        <td>통신비밀보호법</td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                    <dd>기타 사유
                                                        <ul>
                                                            <li>- 보유기간을 이용자에게 미리 고지하고 그 보유기간이 경과하지 아니한 경우와 개별적으로 이용자께 사전에 동의를 받은 경우에는 약속한 보유기간 동안 보유 </li>
                                                        </ul>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>

                                        <!-- check_wrap -->
                                        <div class="check_wrap">
                                            <input type="checkbox" name="agreeChk" id="agree_02" class="agreeCheck_02"><label for="agree_02">위의 "개인정보처리방침"에 동의합니다.</label><br><br><br><br>
                                        </div>
                                        <!-- //check_wrap -->

                                        <div class="con_wrap1709">
                                            <h5>제3자 제공에 대한 동의</h5>
                                        </div>
                                        <div class="contentBox policy">

                                            <div class="layerBox mar_b10">
                                                <!--<h5>3. 수집한 개인정보의 공유 및 제공 [개인정보의 제3자 제공 등]</h5>-->
                                                <dl>
                                                    <dd>회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다.
                                                        <ul>
                                                            <li>- 이용자들이 사전에 동의한 경우 </li>
                                                            <li>- 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우</li>
                                                            <li>- 학습자가 수강하는 과정에 따른 제3자 제공내역</li>
                                                        </ul>
                                                    </dd>
                                                    <dd>
                                                        <div class="con_wrap1709">
                                                            <div class="divTable">
                                                                <table>
                                                                    <caption></caption>
                                                                    <colgroup>
                                                                        <col style="width:25%">
                                                                        <col style="width:15%">
                                                                        <col style="width:25%">
                                                                        <col style="width:20%">
                                                                        <col style="width:15%">
                                                                    </colgroup>
                                                                    <thead>
                                                                    <tr>
                                                                        <th scope="col">구분</th>
                                                                        <th scope="col">제공받는 자</th>
                                                                        <th scope="col">제공받는 자의 이용목적</th>
                                                                        <th scope="col">제공받는 개인정보</th>
                                                                        <th scope="col">보유 및 이용기간</th>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td>내일배움카드제 과정</td>
                                                                        <td>고용노동부</td>
                                                                        <td>내일배움카드제 과정 신청</td>
                                                                        <td>성명, 주민등록번호</td>
                                                                        <td>5년</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>국가기간전략산업직종훈련과정</td>
                                                                        <td>고용노동부</td>
                                                                        <td>국가기간전략산업직종훈련과정 위탁계약 체결</td>
                                                                        <td>성명, 주민등록번호, 연락처, 이메일, 주소, 계좌번호</td>
                                                                        <td>5년</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>고용보험환급과정</td>
                                                                        <td rowspan="2">한국산업인력공단</td>
                                                                        <td>고용보험환급과정 환급관련 업무</td>
                                                                        <td>성명, 주민등록번호, 연락처</td>
                                                                        <td>5년</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>청년취업아카데미교육</td>
                                                                        <td>청년취업아카데미교육 수강/수료/교육지원 대상확인 및 관리</td>
                                                                        <td>성명, 주민등록번호, 수료번호, 연락처, 취업일자, 취업업체명,사업장관리번호</td>
                                                                        <td>3년</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>청년취업아카데미교육</td>
                                                                        <td>동부화재</td>
                                                                        <td>청년취업아카데미교육 재해보험가입</td>
                                                                        <td>성명, 주민등록번호</td>
                                                                        <td>2년</td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <!-- check_wrap(방통위 요청에 의해 버튼 모양으로 함) -->
                                        <div class="check_wrap mar_b20" style="margin-bottom: 0px; height: 30px;">
                                            <!--<input type="checkbox" name="agreeChk" id="agree_02" class="agreeCheck_02"><label for="agree_02">위의 "개인정보처리방침"에 동의합니다.</label><br><br><br><br>-->
                                            <a name="agreeChk" id="agree_03_Y" class="btnWhiteBorder" onclick="on_agree_03_Y()" style="width:100px; padding-left:5px; padding-right:5px; border-width:2px;">동의함</a>&nbsp;&nbsp;
                                            <a name="agreeChk" id="agree_03_N" class="btnWhiteBorder" onclick="on_agree_03_N()" style="width:100px; padding-left:5px; padding-right:5px; border-width:2px;">동의안함</a><br/><br/><br/><br/>
                                        </div>
                                        <!-- //check_wrap -->
                                <div class="btn_wrap c mar_t40">
                                    <button type="button" value="회원정보 재동의" id="btnShow" class="btnBlueBorder big" style="width:370px; margin-bottom: 15px;" onclick="javascript:check_agree();">회원정보 재동의</button> <br/>
                                    <button type="button" value="동의하지 않음" class="btnBlueBorder big" onclick="javascript:logOut();" style="width:370px;">동의하지 않음</button>
                                </div>
                            </form>
                        </section>
                    </div>

                    <div class="btn_wrap c mar_t40" id="btnGroup1">
                        <button type="submit" value="회원정보 재동의" id="btnShow" class="btnBlueBorder big" style="width:370px; margin-bottom: 15px;" onclick="javascript:showDivHidden();">회원정보 재동의</button> <br/>
                        <button type="button" value="동의하지 않음" class="btnBlueBorder big" onclick="javascript:logOut();" style="width:370px;">동의하지 않음</button>
                    </div>

                  <%--  </div>--%>
                    </div>
                </section>
            </div>
            <!-- //Content -->
        </div>
        <!-- Content_Wrap -->
    </div>
    <!-- Container_Wrap -->

    <!-- Footer_Wrap -->
    <!-- #include virtual = "/Include/FooterHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer_Wrap -->
</div>
</body>

</html>