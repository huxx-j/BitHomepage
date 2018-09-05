<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

    <style>
        .myTitle {
            font-size:20pt;
            font-weight:900;
            text-align:center;
            margin:10px;
        }
        .myWeight900 { font-weight:900; }
        .myHeadline {
            font-size:11pt;
            text-align:center;
        }
        .myUnderline {
            text-decoration:underline;
        }
        .myMarginL50 {
            margin-left:50px;
        }
        table tr td {
            text-align:center;
            border-radius:5px;
        }
        .myBorder1 {
            border: 1px solid black;
        }
        .my10percent {
            width:10%;
            height:55px;
        }
        .my9pt {
            font-size:6pt;
        }
        .myInterval {
            height:20px;
        }
        .myFinish {
            height:40px;
            weight:150px;
            font-size:13pt;
            border-radius:3px;
            background-color:#eeeead;
        }
        .myTable tr th {
            font-size:13pt;
            color:#8b6338;
            background-color:#fbfbec;
        }
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="font-size:10pt;">
<div class="myTitle">면접후기 작성</div>
<br/>
<form method="post" action="/job/InterviewComplete" name="Form1" onSubmit="checkForm(); return false;">
    <div>
        <table class="myTable">
            <colgroup>
                <col style="width:15%;">
                <col style="width:85%;">
            </colgroup>
            <tr>
                <th>회사명</th>
                <td style="text-align:left;"><input type="text" name="CompName" style="width:300px;" REQUIRED /></td>
            </tr>
            <tr style="display:none;">
                <th>설립년도</th>
                <td style="text-align:left;"><input type="text" name="EstablishYear" style="width:300px;" /></td>
            </tr>
            <tr style="display:none;">
                <th>주력사업</th>
                <td style="text-align:left;"><input type="text" name="Business" style="width:300px;" /></td>
            </tr>
            <tr style="display:none;">
                <th>주소</th>
                <td style="text-align:left;"><input type="text" name="Address" style="width:580px;" /></td>
            </tr>
            <tr>
                <th>홈페이지<span style="color:red;">*</span></th>
                <td style="text-align:left;"><input type="text" name="HomePage" style="width:300px;" REQUIRED /></td>
            </tr>
            <tr style="display:none;">
                <th>연매출액</th>
                <td style="text-align:left;"><input type="text" name="YearSell" style="width:300px;"/></td>
            </tr>
            <tr style="display:none;">
                <th>직원수</th>
                <td style="text-align:left;"><input type="text" name="StaffNum" style="width:300px;"/></td>
            </tr>
            <tr>
                <th>면접내용<span style="color:red;">*</span></th>
                <td><textarea name="InterviewDescription" cols="80" rows="10" REQUIRED></textarea></td>
            </tr>
            <tr>
                <th>면접관태도<span style="color:red;">*</span></th>
                <td><textarea name="InterviewManner" cols="80" rows="8" REQUIRED></textarea></td>
            </tr>
            <tr>
                <th>느낀점<span style="color:red;">*</span></th>
                <td><textarea name="InterviewOpinion" cols="80" rows="10" REQUIRED></textarea></td>
            </tr>
            <tr>
                <th>회사평가<span style="color:red;">*</span></th>
                <td><textarea name="CompReputiation" cols="80" rows="10" REQUIRED></textarea></td>
            </tr>


        </table>
    </div>
    <div style="text-align:center; margin-top:15px; margin-bottom:15px;">
        <input type="button" id="insertinterview" class="myFinish" value="작성완료">
    </div>
</form>

</body>
<script type="text/javascript">

    $(document).on("click","#insertinterview",function() {
        interviewVo={
            InterviewDescription:$("textarea[name='InterviewDescription']").val(),
            InterviewManner: $("textarea[name='InterviewManner']").val(),
            InterviewOpinion: $("textarea[name='InterviewOpinion']").val(),
            CompReputiation: $("textarea[name='CompReputiation']").val(),
            CompName: $("input[name='CompName']").val(),
            EstablishYear: $("input[name='EstablishYear']").val(),
            Business: $("input[name='Business']").val(),
            Address:$("input[name='Address']").val(),
            HomePage:$("input[name='HomePage']").val(),
            YearSell:$("input[name='YearSell']").val(),
            StaffNum:$("input[name='StaffNum']").val()
        }
        console.log(interviewVo);
        $.ajax({
            url : "${pageContext.request.contextPath }/job/InterviewComplete",
            type : "POST",
            contentType : "application/json",
            data : JSON.stringify(interviewVo),
            dataType : "json",
            success : function() {
            },
            error : function(XHR, status, error) {
                console.error(status + " : " + error);
            }
        });
        //location.reload();
        //$("#packageTab a:last").tab('show');
    });
</script>
</html>