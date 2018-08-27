<%
    Response.CacheControl = "no-cache"
    Response.AddHeader "Pragma", "no-cache"
    Response.Expires = -1 
%>
<html>
 <head>
     
     <meta http-equiv="Content-Language" content="ko">
     <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">


 <title>비트교육센터 홈페이지에 오신 것을 환영합니다.</title>

 <link href="/css/main.css" rel="stylesheet" type="text/css">
 <script language='javascript' src='/js/BITobject.js'></script>
 <script language='javascript' src='/js/main.js'></script>
<!--#include virtual="/member/IPIN/member_ipin_script.asp"-->
<script language="javascript">
<!--

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
            return;
        }

        window.open("checkid.asp?memid=" + document.memform.username.value, "ID중복확인", "scrollbars=no,status=no,historycopy=no,alwaysRaised=yes,top=120,left=150,resizable=no,width=450,height=220,maxbut");
    }

    //-->
</script>
</head>
  <body onLoad="MM_preloadImages('/image/member/menu_06_01.gif','/image/member/menu_07_01.gif','/image/member/menu_08_01.gif','/image/member/menu_09_01.gif','/image/member/menu_01_01.gif','/image/member/menu_02_01.gif','/image/member/menu_03_01.gif','/image/member/menu_04_01.gif','/image/member/menu_05_01.gif','/image/member/menu_01_01.gif','/image/member/menu_02_01.gif','/image/member/menu_03_01.gif','/image/member/menu_04_01.gif','/image/member/menu_05_01.gif','/image/member/menu_06_01.gif','/image/member/menu_07_01.gif','/image/member/menu_08_01.gif','/image/member/menu_09_01.gif')">

 <div id=divMenu  style="width:37px; height:233px; position:absolute; left:940px; top:286px; z-index:1;; visibility: visible">
   <table width="84" border="0" cellspacing="0" cellpadding="0">
	 <!-- Top 시작-->
	<!--#include virtual="/top.asp"-->
	 <!-- Top 끝-->
   <tr>
	 <td><img src="/image/member/flashimg.jpg" width="965" height="146"></td>
   </tr>
   <tr>
		<td>	 
			<!-- LEFT 시작-->
			<!--#include virtual="/member/member_left.asp"-->
			<!-- LEFT 끝-->
		</td>
         <td width="15">&nbsp;</td>
         <td width="701" valign="top"><table width="701" border="0" cellspacing="0" cellpadding="0">
           <tr>
             <td height="45" background="/image/member/menu_02_top.gif"><table width="701" border="0" cellspacing="0" cellpadding="0">
               <tr>
                 <td align="right"><img src="/img/spot.gif" width="7" height="9"> <span class="small">홈 &gt; 고객지원 &gt; 로그인  &nbsp;</span></td>
               </tr>
             </table></td>
           </tr>
           <tr>
             <td><table width="701" border="0" cellspacing="0" cellpadding="0">
               <tr>
                 <td><table width="701" border="0" cellspacing="0" cellpadding="0">
                     <!--회원정보 입력 시작 ---------------------------------------------------------->
                     <tr>
                       <td colspan="3"><img src="/image/member/member_title.gif" width="701" height="24"></td>
                     </tr>
                     <tr>
                       <td height="1" colspan="3" bgcolor="DADADA"></td>
                     </tr>
                     <tr>
                       <td width="34">&nbsp;</td>
                       <td width="630"><table width="630" border="0" cellspacing="0" cellpadding="0">
                           <tr>
                             <td width="6" valign="top">&nbsp;</td>
                             <td width="624" valign="top"><table width="624" border="0" cellpadding="0" cellspacing="9">
                                 <form name="memform" method="post"  action="/member/IPIN/member_ipin_result_ok.asp" >
								 <input type="hidden" name="idcheck" value="N">
                                   <tr>
										<td bgcolor="#EFEFEF" align="center">이름</td>
										<td><input name="name" type="text" class="slim_input" id="name5">
                                         <span class="ks1">성명 기입시 공백이 없이 입력 하여 주십시요.(예 : 홍길동)</span> </td>
                                   </tr>
                                   <tr>
										<td bgcolor="#EFEFEF" align="center">아이디</td>
		                                <td><input name="username" type="text" class="slim_input" id="id" size="25"><a href="javascript:openid();"> <img src="/member/images/bt_same.gif" width="57" height="18" align=absmiddle border="0"></a>
										<span class="ks1">4~8자 사이로 입력해 주시기 바랍니다. </span></td>
                                   </tr>
                                   <tr>
										<td bgcolor="#EFEFEF" align="center">비밀번호</td>
										<td><input name="password" type="password" class="slim_input" id="pw"> 대,소문자를 구분합니다.                                       </td>
                                   </tr>
                                   <tr>
										<td bgcolor="#EFEFEF" align="center">비밀번호 확인</td>
										<td><input name="confirm_pwd" type="password" class="slim_input" id="pw2">
                                         <span class="ks1">한번 더 비밀번호를 입력하여 주세요.</span></td>
                                   </tr>

                                   <tr>
										<td bgcolor="#EFEFEF" align="center">전화번호</td>
										<td><select name="telephone1" class="slim_select" id="select2">
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
                                       </select>
                          -
                           <input name="telephone2" type="text" class="slim_input" id="num13" size="5">
                           -
                           <input name="telephone3" type="text" class="slim_input" id="num2" size="7"></td>
                                   </tr>
                                   <tr>
										<td bgcolor="#EFEFEF" align="center">핸드폰번호</td>
										<td><select name="handphone1" class="slim_select" id="select3">
                                         <option value="010" selected>010</option>
                                         <option value="011" >011</option>
                                         <option value="016" >016</option>
                                         <option value="017" >017</option>
                                         <option value="018" >018</option>
                                         <option value="019" >019</option>
                                       </select>
                           -
                           <input name="handphone2" type="text" class="slim_input" id="num14" size="5">
                           -
                           <input name="handphone3" type="text" class="slim_input" id="num3" size="7"></td>
                                   </tr>
                                   <tr>
										<td bgcolor="#EFEFEF" align="center">이메일</td>
										<td>
										<input name="mail1" type="text" class="slim_input" id="mail" size="15">@<input name="mail2" type="text" class="slim_input" id="mail2" size="20">
										</td>
                                   </tr>
                                   <tr>
										<td bgcolor="#EFEFEF" align="center">메일수신</td>
										<td><table width="450" border="0" cellspacing="0" cellpadding="0">
                                         <tr>
                                           <td width="26"><input name="bitletter" type="radio" value="yes" checked></td>
                                           <td width="74">이메일수신</td>
                                           <td width="22"><input name="bitletter" type="radio" value="no"></td>
                                           <td width="328">이메일수신안함</td>
                                         </tr>
                                     </table></td>
                                   </tr>
                                   <tr>
										<td bgcolor="#EFEFEF" align="center">직업</td>
										<td><select name="job" class="slim_select">
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
                                     </select></td>
                                   </tr>
                                 </form>
                             </table></td>
                           </tr>
                       </table></td>
                       <td width="37">&nbsp;</td>
                     </tr>
                     <tr>
                       <td height="1" colspan="3" bgcolor="DADADA"></td>
                     </tr>
                     <tr>
                       <td height="5" colspan="3"></td>
                     </tr>
<!-- 
                     <tr>
                       <td>&nbsp;</td>
                       <td><img src="/image/member/member_certainly.gif" width="249" height="24"></td>
                       <td>&nbsp;</td>
                     </tr>
 -->
                     <!--회원정보 입력 끝 ---------------------------------------------------------->
                 </table></td>
               </tr>
               <tr>
                 <td>&nbsp;</td>
               </tr>
 			   <tr>
                 <td>&nbsp;</td>
               </tr>
               <tr>
                 <td align="center"><table width="170" border="0" cellspacing="0" cellpadding="0">
                     <!-- 다음/ 취소 버튼 시작-->
                     <tr>
                       <td width="72"><a href="javascript:submit_it();"><img src="/image/member/but_completion.gif" width="72" height="31" border="0"></a></td>
                       <td width="26">&nbsp;</td>
                       <td width="72"><a href="javascript:history.bak();"><img src="/image/member/but_cancel.gif" width="72" height="32" border="0"></a></td>
                     </tr>
                     <!-- 다음/ 취소 버튼 끝-->
                 </table></td>
               </tr>
             </table></td>
           </tr>
           <tr>
             <td>&nbsp;</td>
           </tr>
         </table></td>
       </tr>
     </table></td>
   </tr>
	<!-- BOTTOM 시작-->
	<!--#include virtual="/bottom.asp"-->
	<!-- BOTTOM -->
 </table>

<form name="user" method="post">
	<input type="hidden" name="enc_data" value="<%= sResponseData %>"><br>
</form>
</table>

</body>
</html>