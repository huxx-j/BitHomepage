<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->

<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript">
        $(document).ready(function() {
            var bpnum =<c:out value="${param.BPnum}"/>

            $.ajax({
                url : "${pageContext.request.contextPath}/course/ajax/getLocationInfo",
                type : "POST",
                data : {"BPNum": bpnum},
                dataType : "json",
                success : function(list) {
                    for (var i=0; i<list.length; i++){
                        $("#x1"+i).val(list[i].x1);
                        $("#y1"+i).val(list[i].y1);
                        $("#x2"+i).val(list[i].x2);
                        $("#y2"+i).val(list[i].y2);
                        $("#TermNum"+i).val(list[i].termNum);
                        $("#GroupNum"+i).val(list[i].groupNum);
                        getProjectInfo(list[i].termNum, list[i].groupNum, i)
                    }
                },
                error : function(XHR, status, error) {
                    console.error(status + " : " + error);
                }
            });

            function getProjectInfo(termNum, groupNum, i) {
                $.ajax({
                    url : "${pageContext.request.contextPath}/course/ajax/getProjectInfo",
                    type : "POST",
                    data : {"termNum": termNum,
                            "groupNum":groupNum},
                    dataType : "json",
                    success : function(pamphletVo) {
                        $("#Subject"+i).val(pamphletVo.subject);
                        $("#Str1"+i).val(pamphletVo.str1);
                        $("#Str2"+i).val(pamphletVo.str2);
                        $("#Str3"+i).val(pamphletVo.str3);
                        $("#Str4"+i).val(pamphletVo.str4);
                        $("#Str5"+i).val(pamphletVo.str5);
                        $("#StrEtc"+i).val(pamphletVo.strEtc);
                    },
                    error : function(XHR, status, error) {
                        console.error(status + " : " + error);
                    }
                });
            }
        });
    </script>

</head>
<body>
<form name="form2" style="height:10px;">  <!-- to share between ASP and JS -->
    <input type="hidden" class="BitProjectNum" name="hidden_BitProjectNum" value="${param.BPnum}">

    <input type="hidden" id="x10" class="x1" name="hidden_x1" value="">
    <input type="hidden" id="x11" class="x1" name="hidden_x1" value="">
    <input type="hidden" id="x12" class="x1" name="hidden_x1" value="">
    <input type="hidden" id="x13" class="x1" name="hidden_x1" value="">
    <input type="hidden" id="x14" class="x1" name="hidden_x1" value="">
    <input type="hidden" id="x15" class="x1" name="hidden_x1" value="">
    <input type="hidden" id="x16" class="x1" name="hidden_x1" value="">
    <input type="hidden" id="x17" class="x1" name="hidden_x1" value="">
    <input type="hidden" id="x18" class="x1" name="hidden_x1" value="">
    <input type="hidden" id="x19" class="x1" name="hidden_x1" value="">
    <input type="hidden" id="x110" class="x1" name="hidden_x1" value="">
    <input type="hidden" id="x111" class="x1" name="hidden_x1" value="">
    <input type="hidden" id="x112" class="x1" name="hidden_x1" value="">
    <input type="hidden" id="x113" class="x1" name="hidden_x1" value="">
    <input type="hidden" id="x114" class="x1" name="hidden_x1" value="">
    <input type="hidden" id="x115" class="x1" name="hidden_x1" value="">
    <input type="hidden" id="x116" class="x1" name="hidden_x1" value="">

    <input type="hidden" id="y10" class="y1" name="hidden_y1" value="">
    <input type="hidden" id="y11" class="y1" name="hidden_y1" value="">
    <input type="hidden" id="y12" class="y1" name="hidden_y1" value="">
    <input type="hidden" id="y13" class="y1" name="hidden_y1" value="">
    <input type="hidden" id="y14" class="y1" name="hidden_y1" value="">
    <input type="hidden" id="y15" class="y1" name="hidden_y1" value="">
    <input type="hidden" id="y16" class="y1" name="hidden_y1" value="">
    <input type="hidden" id="y17" class="y1" name="hidden_y1" value="">
    <input type="hidden" id="y18" class="y1" name="hidden_y1" value="">
    <input type="hidden" id="y19" class="y1" name="hidden_y1" value="">
    <input type="hidden" id="y110" class="y1" name="hidden_y1" value="">
    <input type="hidden" id="y111" class="y1" name="hidden_y1" value="">
    <input type="hidden" id="y112" class="y1" name="hidden_y1" value="">
    <input type="hidden" id="y113" class="y1" name="hidden_y1" value="">
    <input type="hidden" id="y114" class="y1" name="hidden_y1" value="">
    <input type="hidden" id="y115" class="y1" name="hidden_y1" value="">
    <input type="hidden" id="y116" class="y1" name="hidden_y1" value="">

    <input type="hidden" id="x20" class="x2" name="hidden_x2" value="">
    <input type="hidden" id="x21" class="x2" name="hidden_x2" value="">
    <input type="hidden" id="x22" class="x2" name="hidden_x2" value="">
    <input type="hidden" id="x23" class="x2" name="hidden_x2" value="">
    <input type="hidden" id="x24" class="x2" name="hidden_x2" value="">
    <input type="hidden" id="x25" class="x2" name="hidden_x2" value="">
    <input type="hidden" id="x26" class="x2" name="hidden_x2" value="">
    <input type="hidden" id="x27" class="x2" name="hidden_x2" value="">
    <input type="hidden" id="x28" class="x2" name="hidden_x2" value="">
    <input type="hidden" id="x29" class="x2" name="hidden_x2" value="">
    <input type="hidden" id="x210" class="x2" name="hidden_x2" value="">
    <input type="hidden" id="x211" class="x2" name="hidden_x2" value="">
    <input type="hidden" id="x212" class="x2" name="hidden_x2" value="">
    <input type="hidden" id="x213" class="x2" name="hidden_x2" value="">
    <input type="hidden" id="x214" class="x2" name="hidden_x2" value="">
    <input type="hidden" id="x215" class="x2" name="hidden_x2" value="">
    <input type="hidden" id="x216" class="x2" name="hidden_x2" value="">

    <input type="hidden" id="y20" class="y2" name="hidden_y2" value="">
    <input type="hidden" id="y21" class="y2" name="hidden_y2" value="">
    <input type="hidden" id="y22" class="y2" name="hidden_y2" value="">
    <input type="hidden" id="y23" class="y2" name="hidden_y2" value="">
    <input type="hidden" id="y24" class="y2" name="hidden_y2" value="">
    <input type="hidden" id="y25" class="y2" name="hidden_y2" value="">
    <input type="hidden" id="y26" class="y2" name="hidden_y2" value="">
    <input type="hidden" id="y27" class="y2" name="hidden_y2" value="">
    <input type="hidden" id="y28" class="y2" name="hidden_y2" value="">
    <input type="hidden" id="y29" class="y2" name="hidden_y2" value="">
    <input type="hidden" id="y210" class="y2" name="hidden_y2" value="">
    <input type="hidden" id="y211" class="y2" name="hidden_y2" value="">
    <input type="hidden" id="y212" class="y2" name="hidden_y2" value="">
    <input type="hidden" id="y213" class="y2" name="hidden_y2" value="">
    <input type="hidden" id="y214" class="y2" name="hidden_y2" value="">
    <input type="hidden" id="y215" class="y2" name="hidden_y2" value="">
    <input type="hidden" id="y216" class="y2" name="hidden_y2" value="">

    <input type="hidden" id="TermNum0" class="TermNum" name="hidden_TermNum" value="">
    <input type="hidden" id="TermNum1" class="TermNum" name="hidden_TermNum" value="">
    <input type="hidden" id="TermNum2" class="TermNum" name="hidden_TermNum" value="">
    <input type="hidden" id="TermNum3" class="TermNum" name="hidden_TermNum" value="">
    <input type="hidden" id="TermNum4" class="TermNum" name="hidden_TermNum" value="">
    <input type="hidden" id="TermNum5" class="TermNum" name="hidden_TermNum" value="">
    <input type="hidden" id="TermNum6" class="TermNum" name="hidden_TermNum" value="">
    <input type="hidden" id="TermNum7" class="TermNum" name="hidden_TermNum" value="">
    <input type="hidden" id="TermNum8" class="TermNum" name="hidden_TermNum" value="">
    <input type="hidden" id="TermNum9" class="TermNum" name="hidden_TermNum" value="">
    <input type="hidden" id="TermNum10" class="TermNum" name="hidden_TermNum" value="">
    <input type="hidden" id="TermNum11" class="TermNum" name="hidden_TermNum" value="">
    <input type="hidden" id="TermNum12" class="TermNum" name="hidden_TermNum" value="">
    <input type="hidden" id="TermNum13" class="TermNum" name="hidden_TermNum" value="">
    <input type="hidden" id="TermNum14" class="TermNum" name="hidden_TermNum" value="">
    <input type="hidden" id="TermNum15" class="TermNum" name="hidden_TermNum" value="">
    <input type="hidden" id="TermNum16" class="TermNum" name="hidden_TermNum" value="">

    <input type="hidden" id="GroupNum0" class="GroupNum" name="hidden_GroupNum" value="">
    <input type="hidden" id="GroupNum1" class="GroupNum" name="hidden_GroupNum" value="">
    <input type="hidden" id="GroupNum2" class="GroupNum" name="hidden_GroupNum" value="">
    <input type="hidden" id="GroupNum3" class="GroupNum" name="hidden_GroupNum" value="">
    <input type="hidden" id="GroupNum4" class="GroupNum" name="hidden_GroupNum" value="">
    <input type="hidden" id="GroupNum5" class="GroupNum" name="hidden_GroupNum" value="">
    <input type="hidden" id="GroupNum6" class="GroupNum" name="hidden_GroupNum" value="">
    <input type="hidden" id="GroupNum7" class="GroupNum" name="hidden_GroupNum" value="">
    <input type="hidden" id="GroupNum8" class="GroupNum" name="hidden_GroupNum" value="">
    <input type="hidden" id="GroupNum9" class="GroupNum" name="hidden_GroupNum" value="">
    <input type="hidden" id="GroupNum10" class="GroupNum" name="hidden_GroupNum" value="">
    <input type="hidden" id="GroupNum11" class="GroupNum" name="hidden_GroupNum" value="">
    <input type="hidden" id="GroupNum12" class="GroupNum" name="hidden_GroupNum" value="">
    <input type="hidden" id="GroupNum13" class="GroupNum" name="hidden_GroupNum" value="">
    <input type="hidden" id="GroupNum14" class="GroupNum" name="hidden_GroupNum" value="">
    <input type="hidden" id="GroupNum15" class="GroupNum" name="hidden_GroupNum" value="">
    <input type="hidden" id="GroupNum16" class="GroupNum" name="hidden_GroupNum" value="">

    <input type="hidden" id="Subject0" class="Subject" name="hidden_Subject" value="">
    <input type="hidden" id="Subject1" class="Subject" name="hidden_Subject" value="">
    <input type="hidden" id="Subject2" class="Subject" name="hidden_Subject" value="">
    <input type="hidden" id="Subject3" class="Subject" name="hidden_Subject" value="">
    <input type="hidden" id="Subject4" class="Subject" name="hidden_Subject" value="">
    <input type="hidden" id="Subject5" class="Subject" name="hidden_Subject" value="">
    <input type="hidden" id="Subject6" class="Subject" name="hidden_Subject" value="">
    <input type="hidden" id="Subject7" class="Subject" name="hidden_Subject" value="">
    <input type="hidden" id="Subject8" class="Subject" name="hidden_Subject" value="">
    <input type="hidden" id="Subject9" class="Subject" name="hidden_Subject" value="">
    <input type="hidden" id="Subject10" class="Subject" name="hidden_Subject" value="">
    <input type="hidden" id="Subject11" class="Subject" name="hidden_Subject" value="">
    <input type="hidden" id="Subject12" class="Subject" name="hidden_Subject" value="">
    <input type="hidden" id="Subject13" class="Subject" name="hidden_Subject" value="">
    <input type="hidden" id="Subject14" class="Subject" name="hidden_Subject" value="">
    <input type="hidden" id="Subject15" class="Subject" name="hidden_Subject" value="">
    <input type="hidden" id="Subject16" class="Subject" name="hidden_Subject" value="">

    <input type="hidden" id="Str10" class="Str1" name="hidden_Str1" value="">
    <input type="hidden" id="Str11" class="Str1" name="hidden_Str1" value="">
    <input type="hidden" id="Str12" class="Str1" name="hidden_Str1" value="">
    <input type="hidden" id="Str13" class="Str1" name="hidden_Str1" value="">
    <input type="hidden" id="Str14" class="Str1" name="hidden_Str1" value="">
    <input type="hidden" id="Str15" class="Str1" name="hidden_Str1" value="">
    <input type="hidden" id="Str16" class="Str1" name="hidden_Str1" value="">
    <input type="hidden" id="Str17" class="Str1" name="hidden_Str1" value="">
    <input type="hidden" id="Str18" class="Str1" name="hidden_Str1" value="">
    <input type="hidden" id="Str19" class="Str1" name="hidden_Str1" value="">
    <input type="hidden" id="Str110" class="Str1" name="hidden_Str1" value="">
    <input type="hidden" id="Str111" class="Str1" name="hidden_Str1" value="">
    <input type="hidden" id="Str112" class="Str1" name="hidden_Str1" value="">
    <input type="hidden" id="Str113" class="Str1" name="hidden_Str1" value="">
    <input type="hidden" id="Str114" class="Str1" name="hidden_Str1" value="">
    <input type="hidden" id="Str115" class="Str1" name="hidden_Str1" value="">
    <input type="hidden" id="Str116" class="Str1" name="hidden_Str1" value="">

    <input type="hidden" id="Str20" class="Str2" name="hidden_Str2" value="">
    <input type="hidden" id="Str21" class="Str2" name="hidden_Str2" value="">
    <input type="hidden" id="Str22" class="Str2" name="hidden_Str2" value="">
    <input type="hidden" id="Str23" class="Str2" name="hidden_Str2" value="">
    <input type="hidden" id="Str24" class="Str2" name="hidden_Str2" value="">
    <input type="hidden" id="Str25" class="Str2" name="hidden_Str2" value="">
    <input type="hidden" id="Str26" class="Str2" name="hidden_Str2" value="">
    <input type="hidden" id="Str27" class="Str2" name="hidden_Str2" value="">
    <input type="hidden" id="Str28" class="Str2" name="hidden_Str2" value="">
    <input type="hidden" id="Str29" class="Str2" name="hidden_Str2" value="">
    <input type="hidden" id="Str210" class="Str2" name="hidden_Str2" value="">
    <input type="hidden" id="Str211" class="Str2" name="hidden_Str2" value="">
    <input type="hidden" id="Str212" class="Str2" name="hidden_Str2" value="">
    <input type="hidden" id="Str213" class="Str2" name="hidden_Str2" value="">
    <input type="hidden" id="Str214" class="Str2" name="hidden_Str2" value="">
    <input type="hidden" id="Str215" class="Str2" name="hidden_Str2" value="">
    <input type="hidden" id="Str216" class="Str2" name="hidden_Str2" value="">

    <input type="hidden" id="Str30" class="Str3" name="hidden_Str3" value="">
    <input type="hidden" id="Str31" class="Str3" name="hidden_Str3" value="">
    <input type="hidden" id="Str32" class="Str3" name="hidden_Str3" value="">
    <input type="hidden" id="Str33" class="Str3" name="hidden_Str3" value="">
    <input type="hidden" id="Str34" class="Str3" name="hidden_Str3" value="">
    <input type="hidden" id="Str35" class="Str3" name="hidden_Str3" value="">
    <input type="hidden" id="Str36" class="Str3" name="hidden_Str3" value="">
    <input type="hidden" id="Str37" class="Str3" name="hidden_Str3" value="">
    <input type="hidden" id="Str38" class="Str3" name="hidden_Str3" value="">
    <input type="hidden" id="Str39" class="Str3" name="hidden_Str3" value="">
    <input type="hidden" id="Str310" class="Str3" name="hidden_Str3" value="">
    <input type="hidden" id="Str311" class="Str3" name="hidden_Str3" value="">
    <input type="hidden" id="Str312" class="Str3" name="hidden_Str3" value="">
    <input type="hidden" id="Str313" class="Str3" name="hidden_Str3" value="">
    <input type="hidden" id="Str314" class="Str3" name="hidden_Str3" value="">
    <input type="hidden" id="Str315" class="Str3" name="hidden_Str3" value="">
    <input type="hidden" id="Str316" class="Str3" name="hidden_Str3" value="">

    <input type="hidden" id="Str40" class="Str4" name="hidden_Str4" value="">
    <input type="hidden" id="Str41" class="Str4" name="hidden_Str4" value="">
    <input type="hidden" id="Str42" class="Str4" name="hidden_Str4" value="">
    <input type="hidden" id="Str43" class="Str4" name="hidden_Str4" value="">
    <input type="hidden" id="Str44" class="Str4" name="hidden_Str4" value="">
    <input type="hidden" id="Str45" class="Str4" name="hidden_Str4" value="">
    <input type="hidden" id="Str46" class="Str4" name="hidden_Str4" value="">
    <input type="hidden" id="Str47" class="Str4" name="hidden_Str4" value="">
    <input type="hidden" id="Str48" class="Str4" name="hidden_Str4" value="">
    <input type="hidden" id="Str49" class="Str4" name="hidden_Str4" value="">
    <input type="hidden" id="Str410" class="Str4" name="hidden_Str4" value="">
    <input type="hidden" id="Str411" class="Str4" name="hidden_Str4" value="">
    <input type="hidden" id="Str412" class="Str4" name="hidden_Str4" value="">
    <input type="hidden" id="Str413" class="Str4" name="hidden_Str4" value="">
    <input type="hidden" id="Str414" class="Str4" name="hidden_Str4" value="">
    <input type="hidden" id="Str415" class="Str4" name="hidden_Str4" value="">
    <input type="hidden" id="Str416" class="Str4" name="hidden_Str4" value="">

    <input type="hidden" id="Str50" class="Str5" name="hidden_Str5" value="">
    <input type="hidden" id="Str51" class="Str5" name="hidden_Str5" value="">
    <input type="hidden" id="Str52" class="Str5" name="hidden_Str5" value="">
    <input type="hidden" id="Str53" class="Str5" name="hidden_Str5" value="">
    <input type="hidden" id="Str54" class="Str5" name="hidden_Str5" value="">
    <input type="hidden" id="Str55" class="Str5" name="hidden_Str5" value="">
    <input type="hidden" id="Str56" class="Str5" name="hidden_Str5" value="">
    <input type="hidden" id="Str57" class="Str5" name="hidden_Str5" value="">
    <input type="hidden" id="Str58" class="Str5" name="hidden_Str5" value="">
    <input type="hidden" id="Str59" class="Str5" name="hidden_Str5" value="">
    <input type="hidden" id="Str510" class="Str5" name="hidden_Str5" value="">
    <input type="hidden" id="Str511" class="Str5" name="hidden_Str5" value="">
    <input type="hidden" id="Str512" class="Str5" name="hidden_Str5" value="">
    <input type="hidden" id="Str513" class="Str5" name="hidden_Str5" value="">
    <input type="hidden" id="Str514" class="Str5" name="hidden_Str5" value="">
    <input type="hidden" id="Str515" class="Str5" name="hidden_Str5" value="">
    <input type="hidden" id="Str516" class="Str5" name="hidden_Str5" value="">

    <input type="hidden" id="StrEtc0" class="StrEtc" name="hidden_StrEtc" value="">
    <input type="hidden" id="StrEtc1" class="StrEtc" name="hidden_StrEtc" value="">
    <input type="hidden" id="StrEtc2" class="StrEtc" name="hidden_StrEtc" value="">
    <input type="hidden" id="StrEtc3" class="StrEtc" name="hidden_StrEtc" value="">
    <input type="hidden" id="StrEtc4" class="StrEtc" name="hidden_StrEtc" value="">
    <input type="hidden" id="StrEtc5" class="StrEtc" name="hidden_StrEtc" value="">
    <input type="hidden" id="StrEtc6" class="StrEtc" name="hidden_StrEtc" value="">
    <input type="hidden" id="StrEtc7" class="StrEtc" name="hidden_StrEtc" value="">
    <input type="hidden" id="StrEtc8" class="StrEtc" name="hidden_StrEtc" value="">
    <input type="hidden" id="StrEtc9" class="StrEtc" name="hidden_StrEtc" value="">
    <input type="hidden" id="StrEtc10" class="StrEtc" name="hidden_StrEtc" value="">
    <input type="hidden" id="StrEtc11" class="StrEtc" name="hidden_StrEtc" value="">
    <input type="hidden" id="StrEtc12" class="StrEtc" name="hidden_StrEtc" value="">
    <input type="hidden" id="StrEtc13" class="StrEtc" name="hidden_StrEtc" value="">
    <input type="hidden" id="StrEtc14" class="StrEtc" name="hidden_StrEtc" value="">
    <input type="hidden" id="StrEtc15" class="StrEtc" name="hidden_StrEtc" value="">
    <input type="hidden" id="StrEtc16" class="StrEtc" name="hidden_StrEtc" value="">
</form>
<div style="margin-bottom:10px;">
    <div style="float:left;"><h2>비트프로젝트 ${param.BPnum}호</h2></div>
    <div style="float:left; margin-left:560px;"><a id="aClose1" href="#">[닫기]</a></div>
</div>
<div style="clear:both;"></div>

<img id="myCoverFront125" src="${pageContext.request.contextPath}/assets/Images/BITproject/BITproject_cover_front_${param.BPnum}.jpg" style="width:600px; border:1px solid #373737;"/><br/>

</body>
