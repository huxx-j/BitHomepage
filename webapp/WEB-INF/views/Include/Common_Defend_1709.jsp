<script type="text/javascript">
    function SQLClean(strString) {
        if (strString!=""){
            strString = strString.trim();
            strString = strString.replace("-shutdown","");
            strString = strString.replace("\\","\\\\");
            strString = strString.replace("/*","");
            strString = strString.replace("*/","");
            strString = strString.replace("-","_");
            strString = strString.replace("=","\=");
            strString = strString.replace(",","\,");
            strString = strString.replace("`","\`");
            strString = strString.replace("&","\&");
            strString = strString.replace("/","\/");
            strString = strString.replace("[","\[");
            strString = strString.replace("]","\]");
            strString = strString.replace("{","\{");
            strString = strString.replace("}","\}");
            strString = strString.replace("(","\(");
            strString = strString.replace(")","\)");
            strString = strString.replace(";","\;");
            strString = strString.replace("+","\+");
            strString = strString.replace("<","\<");
            strString = strString.replace(">","\>");
            strString = strString.replace("^","\^");
            // 'strString = strString.replace("@","\@");
            strString = strString.replace("$","\$");
            strString = strString.replace("%","\%");
            strString = strString.replace("!","\!");
            strString = strString.replace("*","\*");
            strString = strString.replace("~","\~");
            strString = strString.replace("#","\#");
            strString = strString.replace("?","");
            strString = strString.replace("'","");
            strString = strString.replace("\"\"","");
            strString = strString.replace("select","\select");
            strString = strString.replace("insert","\insert");
            strString = strString.replace("update","\\update");
            strString = strString.replace("delete","\delete");
            strString = strString.replace(" or "," \or ");
            strString = strString.replace(" and "," \and ");
            strString = strString.replace("drop","\drop");
            strString = strString.replace("union","\\union");
            strString = strString.replace("into","\into");

        }
    }
</script>
<%--<%--%>
    <%--Private Function SQLClean(ByVal strString)--%>
    <%--If strString <> "" Then--%>
    <%--strString = Trim(strString)--%>

    <%--'Remove malisous charcters from sql\--%>
    <%--strString = replace(strString,"-shutdown","", 1, -1, 1)--%>
    <%--strString = replace(strString,"\","\\", 1, -1, 1)--%>
    <%--strString = replace(strString,"/*","", 1, -1, 1)--%>
    <%--strString = replace(strString,"*/","", 1, -1, 1)--%>
    <%--strString = replace(strString,"-","_", 1, -1, 1)--%>
    <%--strString = replace(strString,"=","\=", 1, -1, 1)--%>
    <%--strString = replace(strString,",","\,", 1, -1, 1)--%>
    <%--strString = replace(strString,"`","\`", 1, -1, 1)--%>
    <%--strString = replace(strString,"&","\&", 1, -1, 1)--%>
    <%--strString = replace(strString,"/","\/", 1, -1, 1)--%>
    <%--strString = replace(strString,"[","\[", 1, -1, 1)--%>
    <%--strString = replace(strString,"]","\]", 1, -1, 1)--%>
    <%--strString = replace(strString,"{","\{", 1, -1, 1)--%>
    <%--strString = replace(strString,"}","\}", 1, -1, 1)--%>
    <%--strString = replace(strString,"(","\(", 1, -1, 1)--%>
    <%--strString = replace(strString,")","\)", 1, -1, 1)--%>
    <%--strString = replace(strString,";","\;", 1, -1, 1)--%>
    <%--strString = replace(strString,"+","\+", 1, -1, 1)--%>
    <%--strString = replace(strString,"<","\<", 1, -1, 1)--%>
    <%--strString = replace(strString,">","\>", 1, -1, 1)--%>
    <%--strString = replace(strString,"^","\^", 1, -1, 1)--%>
    <%--'strString = replace(strString,"@","\@", 1, -1, 1)--%>
    <%--strString = replace(strString,"$","\$", 1, -1, 1)--%>
    <%--strString = replace(strString,"%","\%", 1, -1, 1)--%>
    <%--strString = replace(strString,"!","\!", 1, -1, 1)--%>
    <%--strString = replace(strString,"*","\*", 1, -1, 1)--%>
    <%--strString = replace(strString,"~","\~", 1, -1, 1)--%>
    <%--strString = replace(strString,"#","\#", 1, -1, 1)--%>
    <%--strString = replace(strString,"?","", 1, -1, 1)--%>
    <%--strString = replace(strString,"'","", 1, -1, 1)--%>
    <%--strString = replace(strString,"""","", 1, -1, 1)--%>
    <%--strString = replace(strString,"select","\select", 1, -1, 1)--%>
    <%--strString = replace(strString,"insert","\insert", 1, -1, 1)--%>
    <%--strString = replace(strString,"update","\update", 1, -1, 1)--%>
    <%--strString = replace(strString,"delete","\delete", 1, -1, 1)--%>
    <%--strString = replace(strString," or "," \or ", 1, -1, 1)--%>
    <%--strString = replace(strString," and "," \and ", 1, -1, 1)--%>
    <%--strString = replace(strString,"drop","\drop", 1, -1, 1)--%>
    <%--strString = replace(strString,"union","\union", 1, -1, 1)--%>
    <%--strString = replace(strString,"into","\into", 1, -1, 1)--%>

    <%--'Return cleaned value.--%>
    <%--SQLClean = Trim(strString)--%>

    <%--End If--%>
    <%--End Function--%>

    <%--Private Function SQLCleanURL(ByVal strString)--%>
    <%--If strString <> "" Then--%>
    <%--strString = Trim(strString)--%>

    <%--'Remove malisous charcters from sql\--%>
    <%--strString = replace(strString,"-shutdown","", 1, -1, 1)--%>
    <%--strString = replace(strString,"\","\\", 1, -1, 1)--%>
    <%--strString = replace(strString,"/*","", 1, -1, 1)--%>
    <%--strString = replace(strString,"*/","", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"-","", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"-","_", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"=","\=", 1, -1, 1)--%>
    <%--strString = replace(strString,",","\,", 1, -1, 1)--%>
    <%--strString = replace(strString,"`","\`", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"&","\&", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"/","\/", 1, -1, 1)      --%>
    <%--strString = replace(strString,"[","\[", 1, -1, 1)--%>
    <%--strString = replace(strString,"]","\]", 1, -1, 1)--%>
    <%--strString = replace(strString,"{","\{", 1, -1, 1)--%>
    <%--strString = replace(strString,"}","\}", 1, -1, 1)--%>
    <%--strString = replace(strString,"(","\(", 1, -1, 1)--%>
    <%--strString = replace(strString,")","\)", 1, -1, 1)--%>
    <%--strString = replace(strString,";","\;", 1, -1, 1)--%>
    <%--strString = replace(strString,"+","\+", 1, -1, 1)--%>
    <%--strString = replace(strString,"<","\<", 1, -1, 1)--%>
    <%--strString = replace(strString,">","\>", 1, -1, 1)--%>
    <%--strString = replace(strString,"^","\^", 1, -1, 1)--%>
    <%--strString = replace(strString,"@","\@", 1, -1, 1)--%>
    <%--strString = replace(strString,"$","\$", 1, -1, 1)--%>
    <%--strString = replace(strString,"%","\%", 1, -1, 1)--%>
    <%--strString = replace(strString,"!","\!", 1, -1, 1)--%>
    <%--strString = replace(strString,"*","\*", 1, -1, 1)--%>
    <%--strString = replace(strString,"~","\~", 1, -1, 1)--%>
    <%--strString = replace(strString,"#","\#", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"?","", 1, -1, 1)--%>
    <%--strString = replace(strString,"'","", 1, -1, 1)--%>
    <%--strString = replace(strString,"""","", 1, -1, 1)--%>
    <%--strString = replace(strString,"select","\select", 1, -1, 1)--%>
    <%--strString = replace(strString,"insert","\insert", 1, -1, 1)--%>
    <%--strString = replace(strString,"update","\update", 1, -1, 1)--%>
    <%--strString = replace(strString,"delete","\delete", 1, -1, 1)--%>
    <%--strString = replace(strString," or "," \or ", 1, -1, 1)--%>
    <%--strString = replace(strString," and "," \and ", 1, -1, 1)--%>
    <%--strString = replace(strString,"drop","\drop", 1, -1, 1)--%>
    <%--strString = replace(strString,"union","\union", 1, -1, 1)--%>
    <%--strString = replace(strString,"into","\into", 1, -1, 1)--%>

    <%--'Return cleaned value.--%>
    <%--SQLCleanURL = Trim(strString)--%>

    <%--End If--%>
    <%--End Function--%>

    <%--Private Function SQLCleanCONTENT(ByVal strString)--%>
    <%--If strString <> "" Then--%>
    <%--strString = Trim(strString)--%>

    <%--'Remove malisous charcters from sql\--%>
    <%--'//strString = replace(strString,"-shutdown","", 1, -1, 1)--%>
    <%--strString = replace(strString,"--","__", 1, -1, 1)--%>
    <%--strString = replace(strString,"\","\\", 1, -1, 1)--%>
    <%--strString = replace(strString,"/*","", 1, -1, 1)--%>
    <%--strString = replace(strString,"*/","", 1, -1, 1)--%>
    <%--strString = replace(strString,"`","\`", 1, -1, 1)--%>
    <%--strString = replace(strString,";","\;", 1, -1, 1)--%>
    <%--strString = replace(strString,"$","\$", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"%","\%", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"*","\*", 1, -1, 1)--%>
    <%--strString = replace(strString,"#","\#", 1, -1, 1)--%>
    <%--strString = replace(strString,"'","", 1, -1, 1)--%>
    <%--strString = replace(strString,"""","", 1, -1, 1)--%>
    <%--strString = replace(strString,"select","\select", 1, -1, 1)--%>
    <%--strString = replace(strString,"insert","\insert", 1, -1, 1)--%>
    <%--strString = replace(strString,"update","\update", 1, -1, 1)--%>
    <%--strString = replace(strString,"delete","\delete", 1, -1, 1)--%>
    <%--strString = replace(strString," or "," \or ", 1, -1, 1)--%>
    <%--strString = replace(strString," and "," \and ", 1, -1, 1)--%>
    <%--strString = replace(strString,"drop","\drop", 1, -1, 1)--%>
    <%--strString = replace(strString,"union","\union", 1, -1, 1)--%>
    <%--strString = replace(strString,"into","\into", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"-","", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"-","_", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"=","\=", 1, -1, 1)--%>
    <%--'//strString = replace(strString,",","\,", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"&","\&", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"/","\/", 1, -1, 1)      --%>
    <%--'//strString = replace(strString,"[","\[", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"]","\]", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"{","\{", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"}","\}", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"(","\(", 1, -1, 1)--%>
    <%--'//strString = replace(strString,")","\)", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"+","\+", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"<","\<", 1, -1, 1)--%>
    <%--'//strString = replace(strString,">","\>", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"^","\^", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"@","\@", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"!","\!", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"~","\~", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"?","", 1, -1, 1)--%>

    <%--'Return cleaned value.--%>
    <%--SQLCleanCONTENT = Trim(strString)--%>

    <%--End If--%>
    <%--End Function--%>

    <%--Private Function SQLCleanMINIMUM(ByVal strString)--%>
    <%--If strString <> "" Then--%>
    <%--strString = Trim(strString)--%>

    <%--'Remove malisous charcters from sql\--%>
    <%--'//strString = replace(strString,"-shutdown","", 1, -1, 1)--%>
    <%--strString = replace(strString,"--","__", 1, -1, 1)--%>
    <%--strString = replace(strString,"\","\\", 1, -1, 1)--%>
    <%--strString = replace(strString,"`","\`", 1, -1, 1)--%>
    <%--strString = replace(strString,";","\;", 1, -1, 1)--%>
    <%--strString = replace(strString,"'","", 1, -1, 1)--%>
    <%--strString = replace(strString,"""","", 1, -1, 1)--%>
    <%--strString = replace(strString," or "," \or ", 1, -1, 1)--%>
    <%--strString = replace(strString," and "," \and ", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"/*","", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"*/","", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"$","\$", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"%","\%", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"*","\*", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"#","\#", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"select","\select", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"insert","\insert", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"update","\update", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"delete","\delete", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"drop","\drop", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"union","\union", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"into","\into", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"-","", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"-","_", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"=","\=", 1, -1, 1)--%>
    <%--'//strString = replace(strString,",","\,", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"&","\&", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"/","\/", 1, -1, 1)      --%>
    <%--'//strString = replace(strString,"[","\[", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"]","\]", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"{","\{", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"}","\}", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"(","\(", 1, -1, 1)--%>
    <%--'//strString = replace(strString,")","\)", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"+","\+", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"<","\<", 1, -1, 1)--%>
    <%--'//strString = replace(strString,">","\>", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"^","\^", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"@","\@", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"!","\!", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"~","\~", 1, -1, 1)--%>
    <%--'//strString = replace(strString,"?","", 1, -1, 1)--%>

    <%--'Return cleaned value.--%>
    <%--SQLCleanMINIMUM = Trim(strString)--%>

    <%--End If--%>
    <%--End Function--%>


    <%--'sub(���ν���)�� ���� �ϰ��� ó���� �ַ� �ϰ� �ȴ�.--%>
    <%--'--%>
    <%--'Sub �Լ���(param)--%>
    <%--'--%>
    <%--'       If param = "a" Then--%>
    <%--'--%>
    <%--'               Response.Write "aaaa"--%>
    <%--'--%>
    <%--'       Else--%>
    <%--'--%>
    <%--'               Response.Write "none"--%>
    <%--'--%>
    <%--'       End If--%>
    <%--'--%>
    <%--'End Sub--%>
    <%--'--%>
    <%--'------------------------------------%>
    <%--'--%>
    <%--'Call Sub("a") �Ǵ� Sub "a"--%>

    <%--dim YGLoggerPower--%>
    <%--YGLoggerPower = true		'// true�̸� �α� �۵�. false �̸� ���۵�.--%>
    <%--'YGLoggerPower = false--%>
    <%--SUB YGLogger(logName, logText, logWhere, loginID)--%>
    <%--myFilename = "D:\LOG\" & Date & "(" & logName & ")" & ".txt"--%>

    <%--IF YGLoggerPower = true THEN--%>
    <%--Const ForReading = 1, ForWriting = 2, ForAppending = 8--%>
    <%--set FSO = Server.CreateObject("scripting.FileSystemObject")--%>

    <%--IF FSO.FileExists(myFilename) = false THEN--%>
    <%--set myFile = FSO.CreateTextFile(myFilename, true)--%>
    <%--myFile.Close--%>
    <%--END IF--%>

    <%--set myFile = FSO.OpenTextFile(myFilename, 8)--%>
    <%--myFile.WriteLine("")--%>
    <%--myFile.WriteLine("")--%>
    <%--myFile.WriteLine("[" & loginID & " / logname:" & logName & " / @:" & logWhere & "] " & "   " & Now)--%>
    <%--myFile.WriteLine(logText)--%>
    <%--myFile.Close--%>

    <%--END IF--%>
    <%--END SUB--%>
<%--%>--%>
