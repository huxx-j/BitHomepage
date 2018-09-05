<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>

<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->

<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <!--<meta charset="euc-kr">-->

    <script>
        $(document).ready(function() {
            var Num=${param.Num};
            console.log("들어감");
            $.ajax({
                url : "${pageContext.request.contextPath }/job/selectNum",
                type : "POST",
                //contentType : "application/json",
                data : {"Num": Num},
                dataType : "json",

                success : function(InterviewVo) {
                console.log("다녀옴");
                    $("input[name='InterviewDescription']").val(InterviewVo.InterviewDescription);
                    $("input[name='InterviewManner']").val(InterviewVo.InterviewManner);
                    $("input[name='InterviewOpinion']").val(InterviewVo.InterviewOpinion);
                    $("input[name='CompReputation']").val(InterviewVo.CompReputation);
                },
                error : function(XHR, status, error) {
                    console.error(status + " : " + error);
                }
            });
            /* NOT Working PROPERLY. 2016-11-21-YG
            $("#divContent1, #divContent2").bind("mousewheel", function(e) {
                // tell the browser we're handling this event
                e.preventDefault();
                e.stopPropagation();
            });
            */
        });

        function showUpInterviewContents() {
            var strPre = '<div style="margin-top:30px; margin-bottom:5px; padding:5px; font-size:13pt; color:#8b6338; background-color:#fbfbec;">';
            var strMid = '</div><p style="font-size:11pt; color:#4f4f4f; line-height:15pt;">';
            var strPost = '</p>';

            //var strSubject = '<div style="padding:10px; font-size:15pt; font-weight:900; border:1px solid #d7d7d7;">' + $('.Subject').eq(i).val() + '</div>';
            var str1 = strPre + '면접 내용' + strMid + $('.Str1').eq(0).val() + strPost;
            var str2 = strPre + '면접관 태도' + strMid + $('.Str2').eq(0).val() + strPost;
            var str3 = strPre + '느낀점' + strMid + $('.Str3').eq(0).val() + strPost;
            var str4 = strPre + '회사 평가' + strMid + $('.Str4').eq(0).val() + strPost;

            //$('#myBox1').html(str1 + str2 + str3 + str4);
            $('#divContent2').html(str1 + str2 + str3 + str4);
        }
    </script>
</head>
<body>
<form name="form2" style="height:10px;">  <!-- to share between ASP and JS -->
    <input type="hidden" name="InterviewDescription" class="Str1" value="${job.InterviewDescription}"/>
    <input type="hidden" name="InterviewManner" class="Str2" value="${job.InterviewManner}" />
    <input type="hidden" name="InterviewOpinion" class="Str3" value="${job.InterviewOpinion}"  />
    <input type="hidden" name="CompReputation" class="Str4" value="${job.CompReputation}" />
</form>

<div id="divContent1" style="margin-bottom:10px;">
    <div style="float:left;"><h2> <img src="${job.ImagePath}" style="max-width:175px; max-height:39px;"/><span class="blueTxt" style="font-size:1.6em;">${job.strCompName}" </span> 면접후기</h2></div>
    <div style="float:right; font-weight:900; font-size:1.25em;"><a id="aClose1" href="#"><span class="redTxt">[닫기]</span></a></div>
    <div style="clear:both;"></div>
    <div style="float:right; margin-right:10px; font-size:0.8em; "><a href="${job.HomepageURL}" target="_blank"><u><span style="color:#8f8f8f;">${job.HomepageURL}</span></u></a></div>
    <div style="clear:both;"></div>
</div>

<div id="divContent2" style="margin-bottom:10px;">

</div>

</body>