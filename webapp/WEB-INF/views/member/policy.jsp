<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->

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
    <!--#include virtual="/Member/id_pass_search_script.asp"-->

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

            //$(".snb .depth1").eq(6).addClass("on");
            $(".snb_1709 a.newdepth1").eq(3).addClass("on");  // 개인정보처리방침 ON
        });
    </script>
    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>

</head>
<body>
<div id="Wrapper">
    <form name="form_ipin" method="post" style="display:none">
        <input type="hidden" name="m" value="pubmain">
        <input type="hidden" name="enc_data" value="<%--<%= sRequestData %>--%>">
    </form>



    <!-- Header -->
    <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header -->

    <!-- Container_Wrap -->
    <div id="Container_Wrap" style="min-height:initial;">

        <!-- Content_Wrap -->
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
                    <h4 style="float:left;">개인정보처리방침</h4>
                    <div style="clear:both; height:10px;"></div>
                </div>

                <section class="section mar_t20">
                    <div class="con_wrap1709 mar_t40 bg_none">
                        <div class="con_inner">
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
                                            <li>- 필수 : 성명, ID, 비밀번호, i-pin, 전화번호, 휴대전화번호, 주소, e-mail, 메일수신여부, 직업, 학력사항</li>
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
                                <h5>3. 수집한 개인정보의 공유 및 제공 [개인정보의 제3자 제공 등]</h5>
                                <dl>
                                    <dd>회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다.
                                        <ul>
                                            <li>- 이용자들이 사전에 동의한 경우 </li>
                                            <li>- 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우</li>
                                            <li>- 학습자가 수강하는 과정에 따른 제3자 제공내역</li>
                                        </ul>
                                    </dd>
                                    <dd>
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
                                    </dd>
                                </dl>
                            </div>

                            <div class="layerBox mar_b10">
                                <h5>4. 개인정보의 처리위탁 </h5>
                                <!--<dt class="dis_none"> 개인정보의 취급위탁</dt>--> <!-- 방통위 요청에 의해, 익스플로러에서 이 항목이 안 보이는 문제를 수정함 (2015/8/17) -->
                                <dl>
                                    <dd>회사는 서비스 이행을 위해 아래와 같이 외부 전문업체에 위탁하여 운영하고 있습니다. </dd>
                                    <dd>
                                        <div class="divTable">
                                            <table>
                                                <colgroup>
                                                    <col style="width:33%">
                                                    <col style="width:33%">
                                                    <col style="width:33%">
                                                </colgroup>
                                                <thead>
                                                <tr>
                                                    <th scope="col">수탁업체</th>
                                                    <th scope="col">위탁업무 내용</th>
                                                    <th scope="col">개인정보의 보유 및 이용기간</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>㈜케이지이니시스</td>
                                                    <td>결제대행</td>
                                                    <td>해당 업체에서 이미 보유하고 있는 개인정보이기 때문에 별도로 저장하지 않음</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </dd>
                                </dl>
                            </div>

                            <div class="layerBox mar_b10">
                                <h5>5	수집한 개인정보의 보유ㆍ이용기간</h5>
                                <dl>
                                    <dt class="dis_none">수집한 개인정보의 보유ㆍ이용기간</dt>
                                    <dd>개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.</dd>
                                    <dd>회사 내부 방침에 의한 정보보유 사유
                                        <ul>
                                            <li>- 보존 항목 : 성명, 회원아이디, 비밀번호, 휴대폰번호, 이메일주소, 소속, 전화번호, 주소, 안내정보수신 이메일, 이메일 수신여부, 수강신청정보, 교육이력 </li>
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
                                    </dd>
                                    <dd>기타 사유
                                        <ul>
                                            <li>- 보유기간을 이용자에게 미리 고지하고 그 보유기간이 경과하지 아니한 경우와 개별적으로 이용자께 사전에 동의를 받은 경우에는 약속한 보유기간 동안 보유 </li>
                                        </ul>
                                    </dd>
                                </dl>
                            </div>

                            <div class="layerBox mar_b10">
                                <h5>6. 개인정보의 파기 절차 및 방법 </h5>
                                <dl>
                                    <dt class="dis_none">개인정보의 파기 절차 및 방법</dt>
                                    <dd>회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.</dd>
                                    <dd>파기절차
                                        <ul>
                                            <li>- 회원이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어 집니다. 동 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용 되지 않습니다.</li>
                                        </ul>
                                    </dd>
                                    <dd>
                                        <ul>파기방법
                                            <li>- 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기하고</li>
                                            <li>- 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.</li>
                                        </ul>
                                    </dd>
                                </dl>
                            </div>

                            <div class="layerBox mar_b10">
                                <h5>7. 개인정보의 안전성 확보 조치 </h5>
                                <dl>
                                    <dt class="dis_none">개인정보의 안전성 확보 조치 </dt>
                                    <dd>회사는 이용자들의 개인정보를 처리함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 대책을 강구하고 있습니다.</dd>
                                    <dd>내부관리계획의 수립 및 시행
                                        <ul>
                                            <li>- 회사의 내부관리계획 수립하여 개인정보 보호를 위해 실행합니다.</li>
                                        </ul>
                                    </dd>
                                    <dd>개인정보보호 담당자의 최소화 및 교육
                                        <ul>
                                            <li>- 개인정보를 처리하는 담당자를 지정하고 최소화하여 개인정보를 관리하는 대책을 시행하고 있습니다.</li>
                                        </ul>
                                    </dd>
                                    <dd>개인정보에 대한 접근 제한
                                        <ul>
                                            <li>- 개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</li>
                                        </ul>
                                    </dd>
                                    <dd>
                                        <ul>해킹 등에 대비한 기술적 대책
                                            <li>- 회사는 해킹이나 컴퓨터 바이러스 등에 의해 회원의 개인정보가 유출되거나 훼손되는 것을 막기 위해 최선을 다하고 있습니다.
                                                개인정보의 훼손에 대비해서 자료를 수시로 백업하고 있고, 최신 백신프로그램을 이용하여 이용자들의 개인정보나 자료가 누출되거나 손상되지 않도록 방지하고 있으며, 암호화통신 등을 통하여 네트워크상에서 개인정보를 안전하게 전송할 수 있도록 하고 있습니다.
                                                그리고 시스템적으로 보안성을 확보하기 위한 가능한 모든 기술적 장치를 갖추려 노력하고 있습니다.
                                            </li>
                                        </ul>
                                    </dd>
                                </dl>
                            </div>

                            <div class="layerBox mar_b10">
                                <h5>8. 이용자의 권리 및 행사방법</h5>
                                <dl>
                                    <dd>이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회/수정하거나 삭제를 요청할 수 있으며, 회사의 개인정보의 처리에 동의하지 않는 경우 동의를 거부하거나 가입해지(회원탈퇴)를 요청하실 수 있습니다. 다만, 그러한 경우 서비스의 일부 또는 전부 이용이 어려울 수 있습니다.</dd>
                                </dl>
                            </div>

                            <div class="layerBox mar_b10">
                                <!-- <h5>8.	이용자의 권리와 그 행사방법</h5> -->
                                <h5>9. 자동수집장치(쿠키) 설치/운영 및 거부에 관한 사항</h5>
                                <dl>
                                    <!-- <dt class="blueTxt">이용자의 권리와 그 행사방법</dt> -->
                                    <dd>
                                        <ul>
                                            <li>- 회사는 개인화되고 맞춤화된 서비스를 제공하기 위해서 이용자의 정보를 저장하고 수시로 불러오는 ‘쿠키(cookie)’를 사용합니다.</li>
                                            <li>- 쿠키는 웹사이트를 운영하는데 이용되는 서버가 이용자의 브라우저에게 보내는 아주 작은 텍스트 파일로 이용자 컴퓨터의 하드디스크에 저장됩니다. 이후 이용자가 웹 사이트에 방문할 경우 웹 사이트 서버는 이용자의 하드 디스크에 저장되어 있는 쿠키의 내용을 읽어 이용자의 환경설정을 유지하고 맞춤화된 서비스를 제공하기 위해 이용됩니다.</li>
                                            <li>- 쿠키는 개인을 식별하는 정보를 자동적/능동적으로 수집하지 않으며, 이용자는 언제든지 이러한 쿠키의 저장을 거부하거나 삭제할 수 있습니다.</li>
                                        </ul>
                                    </dd>
                                    <dd>쿠키 등 사용 목적
                                        <ul>
                                            <li>- 이용자들이 방문한 회사의 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 이용자 규모 등을 파악하여 이용자에게 광고를 포함한 최적화된 맞춤형 정보를 제공을 위해 사용합니다.</li>
                                        </ul>
                                    </dd>
                                    <dd>쿠키 설정 거부 방법
                                        <ul>
                                            <li>- 이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서 이용자는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.</li>
                                            <li>- 다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 회사의 일부 서비스는 이용에 어려움이 있을 수 있습니다.</li>
                                            <li>- 쿠키 설치 허용 여부를 지정하는 방법(Internet Explorer의 경우) 은 다음과 같습니다.
                                                <ul>
                                                    <li>가. [도구] 메뉴에서 [인터넷 옵션]을 선택합니다.</li>
                                                    <li>나. [개인정보 탭]을 클릭합니다.</li>
                                                    <li>다. [개인정보취급 수준]을 설정하시면 됩니다. </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </dd>
                                </dl>
                            </div>

                            <div class="layerBox mar_b10">
                                <h5>10. 개인정보보호책임자 또는 개인정보담당 부서</h5>
                                <dl>
                                    <dt class="dis_none">개인정보보호책임자 또는 개인정보담당 부서</dt>
                                    <dd>
                                        귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보보호책임자 혹은 담당부서로 신고하실 수 있습니다.<br>
                                        회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.
                                    </dd>
                                    <dd>
                                        <div class="divTable">
                                            <table>
                                                <caption>개인정보 보호 책임</caption>
                                                <colgroup>
                                                    <col style="width:30%">
                                                    <col style="width:20%">
                                                    <col style="width:30%">
                                                    <col style="width:20%">
                                                </colgroup>
                                                <thead>
                                                <tr>
                                                    <th scope="col" colspan="2">개인정보보호책임자</th>
                                                    <th scope="col" colspan="2">개인정보보호담당자</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>이름: 윤중구</td>
                                                    <td>소속: 경영지원</td>
                                                    <td>이름: 주지영</td>
                                                    <td>소속: 교육사업부</td>
                                                </tr>
                                                <tr>
                                                    <td>전화: 02)3486-1234</td>
                                                    <td>직위: 이사</td>
                                                    <td>전화: 02)3486-3456</td>
                                                    <td>직위: 팀장</td>
                                                </tr>
                                                <tr>
                                                    <td>메일: newguy2004@bit.kr</td>
                                                    <td></td>
                                                    <td>메일: job@bit.kr</td>
                                                    <td></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </dd>
                                    <dd>
                                        <ul>
                                            <li>개인분쟁조정위원회 (www.1336.or.kr/1336)</li>
                                            <li>정보보호마크인증위원회 (www.eprivacy.or.kr/02-580-0533~4)</li>
                                            <li>대검찰청 인터넷범죄수사센터 (http://icic.sppo.go.kr/02-3480-3600)</li>
                                            <li>경찰청 사이버테러대응센터 (www.ctrc.go.kr/02-392-0330)</li>
                                        </ul>
                                    </dd>
                                </dl>
                            </div>

                            <div class="layerBox mar_b10">
                                <h5>11. 개인정보 처리방침 변경</h5>
                                <dl>
                                    <dt class="blueTxt">(1) 수집항목</dt>
                                    <dd>이 개인정보 처리방침은 2014. 11. 27부터 적용됩니다.</dd>
                                    <dd>이전의 개인정보 처리방침은 아래에서 확인하실 수 있습니다.</dd>
                                    <ul>
                                        <li>- 2014.11.27 ~ 현재</li>
                                        <li>- 2007.11.12~2014.11.26</li>
                                    </ul>
                                    </dd>
                                </dl>
                            </div>

                        </div>
                    </div>
                </section>
                <!--<a href="#this" class="moveTop">Top</a>-->
            </div>
            <!-- //Content-->
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