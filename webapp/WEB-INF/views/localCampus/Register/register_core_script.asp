<Script language=JavaScript>
<!--
function submit_it()   
     {
		if(AppForm.select1.value==""){
			alert("지원과정을 선택하여 주십시요");
			AppForm.select1.focus();
			return;
			}
		if(AppForm.select2.value==""){
			alert("지원종류를 선택하여 주십시요");
			AppForm.select2.focus();
			return;
			}		
		if(AppForm.select3.value==""){
			alert("개강일자를 선택하여 주십시요");
			AppForm.select3.focus();
			return;
			}		
		/*
		if(AppForm.user_nameEng_first.value.length<1){
			alert("영문이름을 입력하여 주십시요.개인정보에서 수정하실 수 있습니다");
			AppForm.user_nameEng_first.focus();
			return;
			}
		*/
		/*
		if(AppForm.email.value.length<1){
			alert("메일주소를 입력하여 주십시요.개인정보에서 수정하실 수 있습니다");
			AppForm.email.focus();
			return;
			}
		*/
     	//우편번호
		/*
		str=AppForm.czipcode.value;
		if (str=="")
		{
			alert("우편번호가 입력되지 않았습니다.개인정보에서 수정하실 수 있습니다");
			AppForm.czipcode.focus();
			return;
		}
		*/
				
		//현주소	
		/*
		str=AppForm.caddr.value;
		if (str=="")
		{
			alert("주민등록상 주소가 입력되지  않았습니다.개인정보에서 수정하실 수 있습니다");
			AppForm.caddr.focus (); 
			return;
		}
		
		str=AppForm.czipcode2.value;
		if (str=="")
		{
			alert("현주소의 우편번호가 입력되지 않았습니다.개인정보에서 수정하실 수 있습니다");
			AppForm.czipcode2.focus();
			return;
		}

		str=AppForm.caddr2.value;
		if (str=="")
		{
			alert("현주소가 입력되지  않았습니다.개인정보에서 수정하실 수 있습니다");
			AppForm.caddr2.focus (); 
			return;
		}
		
		if(AppForm.HomeTel1.value.length<2 || AppForm.HomeTel2.value.length<3 || AppForm.HomeTel3.value.length<4 ){
			alert("연락처를 입력하여 주십시요.개인정보에서 수정하실 수 있습니다");
			AppForm.HomeTel1.focus();
			return;
			}
		*/
		if(AppForm.DteFr_0.value.length<1 || AppForm.DteEnd_0.value.length<1 ){		
			alert("학력을 입력하여 주십시요")
			AppForm.DteFr_0.focus();
			return;
			}

		if(AppForm.DteFr_0.value.length<4 || AppForm.DteEnd_0.value.length<4 ){		
			alert("년도는 4자리로 입력하여 주십시요(YYYY)")
			AppForm.DteFr_0.focus();
			return;
			}
			
		if(AppForm.School_0.value.length<1 && AppForm.schoolclassify_0.value=="고등학교"){			
			alert("학력정보를 확인하여 주십시요")
			AppForm.School_0.focus();
			return;
			}
		
		if(AppForm.Bigo_0.value==""){			
			alert("학력정보를 확인하여 주십시요")
			AppForm.Bigo_0.focus();
			return;
			}
			
		<%for i=1 to 3%>			
			if(AppForm.DteFr_<%=i%>.value.length > 0){
				if(AppForm.DteFr_<%=i%>.value.length<4 || AppForm.DteEnd_<%=i%>.value.length<4 ){
					alert("년도는 4자리로 입력하여 주십시요")
					AppForm.DteFr_<%=i%>.focus();
					return;
					}	
				if(AppForm.DayFr_<%=i%>.value.length < 1 ||AppForm.DayEnd_<%=i%>.value.length<1 ){
					alert("월을 입력하여 주십시요")
					AppForm.DayFr_<%=i%>.focus();
					return;			
				}				
				if(AppForm.School_<%=i%>.value.length<1 || AppForm.schoolclassify_<%=i%>.value.length<1 ){
					alert("학교명 및 학교구분을 입력하여 주십시요");
					AppForm.School_<%=i%>.focus();				
					return;
				}				
				if(AppForm.SchLocation_<%=i%>.value.length<1){
					alert("소재지를 입력하여 주십시요")
					AppForm.SchLocation_<%=i%>.focus();				
					return;
				}
				
				if(AppForm.SchDepartment_<%=i%>.value.length<1){
					alert("전공을 입력하여 주십시요")
					AppForm.SchDepartment_<%=i%>.focus();								
					return;
				}				
				if(AppForm.Bigo_<%=i%>.value.length<1){
					alert("졸업구분을 입력하여 주십시요");
					AppForm.Bigo_<%=i%>.focus();								
					return;
				}
			}			
		<%next%>
		/*
		if(AppForm.hope(0).checked==false && AppForm.hope(1).checked==false)
		{
			alert("향후 전문가과정 지원 희망여부를 체크해주십시요");
			AppForm.hope(0).focus();
			return;
		}
		*/
		
  //return true;
  document.AppForm.submit();
}

function cngSelectDay(value) {
	iSelectDay.location = "/localCampus/Register/register_core_selectcourse.asp?courseid=" + value;
}

function chkApplication(value1, value2) {
	iSelectDay.location = "/localCampus/Register/register_core_check.asp?courseid=" + value1 + "&d=" + value2 + "&studid=<%=Studid%>";
}

/*function SelectCourse(fm)
{

	if(fm.select1.selectedIndex==1)
		document.AppForm.select3.value="C";
	if(fm.select1.selectedIndex==2)
		document.AppForm.select3.value="Java";	
	if(fm.select1.selectedIndex==3)
		document.AppForm.select3.value="C++";
}*/	
function SelectKind(fm)
{
	if(fm.select2.selectedIndex==2){
		//window.open("../main/aboutpay.asp","","location=0,menubar=0,resizable=no,scrollbars=yes,status=0,titlebar=0,toolbar=0,screeny=0,left=300,top=50,width=550,height=450");
		fm.select2.selectedIndex=2;
		}
}

  function chknext(obj)
  {
	if(obj.value.length < 4){
		alert("년도는 4자리를 입력하십시요(YYYY)");
		obj.focus();
	}
}
  
function onlyNumber()//숫자만 입력하게 하는 방법
{
	if((event.keyCode<48)||(event.keyCode>57))
		event.returnValue = false;
}
	//-->		
</script>
