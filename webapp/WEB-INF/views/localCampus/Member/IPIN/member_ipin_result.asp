<%
    Response.CacheControl = "no-cache"
    Response.AddHeader "Pragma", "no-cache"
    Response.Expires = -1 
%>
<html>
 <head>
     
     <meta http-equiv="Content-Language" content="ko">
     <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">


 <title>��Ʈ�������� Ȩ�������� ���� ���� ȯ���մϴ�.</title>

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
                alert("���̵�� ������� \n ������ ������ �����Դϴ�.\n(����/����:6~8��)");
                document.memform.username.value = "";
                document.memform.username.focus();
                return;
                break;
            }
        }
        if (id.length > 8 || id.length < 4) {
            alert("ID�� 4�����̻� 8���ڱ��� �Դϴ�!");
            document.memform.username.focus();
            return;
        }

        window.open("checkid.asp?memid=" + document.memform.username.value, "ID�ߺ�Ȯ��", "scrollbars=no,status=no,historycopy=no,alwaysRaised=yes,top=120,left=150,resizable=no,width=450,height=220,maxbut");
    }

    //-->
</script>
</head>
  <body onLoad="MM_preloadImages('/image/member/menu_06_01.gif','/image/member/menu_07_01.gif','/image/member/menu_08_01.gif','/image/member/menu_09_01.gif','/image/member/menu_01_01.gif','/image/member/menu_02_01.gif','/image/member/menu_03_01.gif','/image/member/menu_04_01.gif','/image/member/menu_05_01.gif','/image/member/menu_01_01.gif','/image/member/menu_02_01.gif','/image/member/menu_03_01.gif','/image/member/menu_04_01.gif','/image/member/menu_05_01.gif','/image/member/menu_06_01.gif','/image/member/menu_07_01.gif','/image/member/menu_08_01.gif','/image/member/menu_09_01.gif')">

 <div id=divMenu  style="width:37px; height:233px; position:absolute; left:940px; top:286px; z-index:1;; visibility: visible">
   <table width="84" border="0" cellspacing="0" cellpadding="0">
	 <!-- Top ����-->
	<!--#include virtual="/top.asp"-->
	 <!-- Top ��-->
   <tr>
	 <td><img src="/image/member/flashimg.jpg" width="965" height="146"></td>
   </tr>
   <tr>
		<td>	 
			<!-- LEFT ����-->
			<!--#include virtual="/member/member_left.asp"-->
			<!-- LEFT ��-->
		</td>
         <td width="15">&nbsp;</td>
         <td width="701" valign="top"><table width="701" border="0" cellspacing="0" cellpadding="0">
           <tr>
             <td height="45" background="/image/member/menu_02_top.gif"><table width="701" border="0" cellspacing="0" cellpadding="0">
               <tr>
                 <td align="right"><img src="/img/spot.gif" width="7" height="9"> <span class="small">Ȩ &gt; ������ &gt; �α���  &nbsp;</span></td>
               </tr>
             </table></td>
           </tr>
           <tr>
             <td><table width="701" border="0" cellspacing="0" cellpadding="0">
               <tr>
                 <td><table width="701" border="0" cellspacing="0" cellpadding="0">
                     <!--ȸ������ �Է� ���� ---------------------------------------------------------->
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
										<td bgcolor="#EFEFEF" align="center">�̸�</td>
										<td><input name="name" type="text" class="slim_input" id="name5">
                                         <span class="ks1">���� ���Խ� ������ ���� �Է� �Ͽ� �ֽʽÿ�.(�� : ȫ�浿)</span> </td>
                                   </tr>
                                   <tr>
										<td bgcolor="#EFEFEF" align="center">���̵�</td>
		                                <td><input name="username" type="text" class="slim_input" id="id" size="25"><a href="javascript:openid();"> <img src="/member/images/bt_same.gif" width="57" height="18" align=absmiddle border="0"></a>
										<span class="ks1">4~8�� ���̷� �Է��� �ֽñ� �ٶ��ϴ�. </span></td>
                                   </tr>
                                   <tr>
										<td bgcolor="#EFEFEF" align="center">��й�ȣ</td>
										<td><input name="password" type="password" class="slim_input" id="pw"> ��,�ҹ��ڸ� �����մϴ�.                                       </td>
                                   </tr>
                                   <tr>
										<td bgcolor="#EFEFEF" align="center">��й�ȣ Ȯ��</td>
										<td><input name="confirm_pwd" type="password" class="slim_input" id="pw2">
                                         <span class="ks1">�ѹ� �� ��й�ȣ�� �Է��Ͽ� �ּ���.</span></td>
                                   </tr>

                                   <tr>
										<td bgcolor="#EFEFEF" align="center">��ȭ��ȣ</td>
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
										<td bgcolor="#EFEFEF" align="center">�ڵ�����ȣ</td>
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
										<td bgcolor="#EFEFEF" align="center">�̸���</td>
										<td>
										<input name="mail1" type="text" class="slim_input" id="mail" size="15">@<input name="mail2" type="text" class="slim_input" id="mail2" size="20">
										</td>
                                   </tr>
                                   <tr>
										<td bgcolor="#EFEFEF" align="center">���ϼ���</td>
										<td><table width="450" border="0" cellspacing="0" cellpadding="0">
                                         <tr>
                                           <td width="26"><input name="bitletter" type="radio" value="yes" checked></td>
                                           <td width="74">�̸��ϼ���</td>
                                           <td width="22"><input name="bitletter" type="radio" value="no"></td>
                                           <td width="328">�̸��ϼ��ž���</td>
                                         </tr>
                                     </table></td>
                                   </tr>
                                   <tr>
										<td bgcolor="#EFEFEF" align="center">����</td>
										<td><select name="job" class="slim_select">
                                         <option selected>��������</option>
                                         <option value="�л�" >�л� </option>
                                         <option value="��ǻ��/���ͳ�" >��ǻ��/���ͳ�</option>
                                         <option value="���" >���</option>
                                         <option value="������" >������</option>
										 <option value="ȸ���" >ȸ���</option>
                                         <option value="����" >����</option>
                                         <option value="���񽺾�" >���񽺾�</option>
                                         <option value="����" >����</option>
                                         <option value="����/����/�����" >����/����/�����</option>
                                         <option value="�����" >�����</option>
                                         <option value="����" >����</option>
                                         <option value="�Ƿ�" >�Ƿ�</option>
                                         <option value="����" >����</option>
                                         <option value="�Ǽ���" >�Ǽ���</option>
                                         <option value="������" >������</option>
                                         <option value="�ε����" >�ε����</option>
                                         <option value="��۾�" >��۾�</option>
                                         <option value="��/����/�Ӿ�" >��/����/�Ӿ�</option>
                                         <option value="�����" >�����</option>
                                         <option value="�ֺ�" >�ֺ�</option>
                                         <option value="��Ÿ" >��Ÿ</option>
                                         <option value="����" >����</option>
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
                     <!--ȸ������ �Է� �� ---------------------------------------------------------->
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
                     <!-- ����/ ��� ��ư ����-->
                     <tr>
                       <td width="72"><a href="javascript:submit_it();"><img src="/image/member/but_completion.gif" width="72" height="31" border="0"></a></td>
                       <td width="26">&nbsp;</td>
                       <td width="72"><a href="javascript:history.bak();"><img src="/image/member/but_cancel.gif" width="72" height="32" border="0"></a></td>
                     </tr>
                     <!-- ����/ ��� ��ư ��-->
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
	<!-- BOTTOM ����-->
	<!--#include virtual="/bottom.asp"-->
	<!-- BOTTOM -->
 </table>

<form name="user" method="post">
	<input type="hidden" name="enc_data" value="<%= sResponseData %>"><br>
</form>
</table>

</body>
</html>