<Script language=JavaScript>
<!--
function submit_it()   
     {
		if(AppForm.select1.value==""){
			alert("���������� �����Ͽ� �ֽʽÿ�");
			AppForm.select1.focus();
			return;
			}
		if(AppForm.select2.value==""){
			alert("���������� �����Ͽ� �ֽʽÿ�");
			AppForm.select2.focus();
			return;
			}		
		if(AppForm.select3.value==""){
			alert("�������ڸ� �����Ͽ� �ֽʽÿ�");
			AppForm.select3.focus();
			return;
			}		
		/*
		if(AppForm.user_nameEng_first.value.length<1){
			alert("�����̸��� �Է��Ͽ� �ֽʽÿ�.������������ �����Ͻ� �� �ֽ��ϴ�");
			AppForm.user_nameEng_first.focus();
			return;
			}
		*/
		/*
		if(AppForm.email.value.length<1){
			alert("�����ּҸ� �Է��Ͽ� �ֽʽÿ�.������������ �����Ͻ� �� �ֽ��ϴ�");
			AppForm.email.focus();
			return;
			}
		*/
     	//�����ȣ
		/*
		str=AppForm.czipcode.value;
		if (str=="")
		{
			alert("�����ȣ�� �Էµ��� �ʾҽ��ϴ�.������������ �����Ͻ� �� �ֽ��ϴ�");
			AppForm.czipcode.focus();
			return;
		}
		*/
				
		//���ּ�	
		/*
		str=AppForm.caddr.value;
		if (str=="")
		{
			alert("�ֹε�ϻ� �ּҰ� �Էµ���  �ʾҽ��ϴ�.������������ �����Ͻ� �� �ֽ��ϴ�");
			AppForm.caddr.focus (); 
			return;
		}
		
		str=AppForm.czipcode2.value;
		if (str=="")
		{
			alert("���ּ��� �����ȣ�� �Էµ��� �ʾҽ��ϴ�.������������ �����Ͻ� �� �ֽ��ϴ�");
			AppForm.czipcode2.focus();
			return;
		}

		str=AppForm.caddr2.value;
		if (str=="")
		{
			alert("���ּҰ� �Էµ���  �ʾҽ��ϴ�.������������ �����Ͻ� �� �ֽ��ϴ�");
			AppForm.caddr2.focus (); 
			return;
		}
		
		if(AppForm.HomeTel1.value.length<2 || AppForm.HomeTel2.value.length<3 || AppForm.HomeTel3.value.length<4 ){
			alert("����ó�� �Է��Ͽ� �ֽʽÿ�.������������ �����Ͻ� �� �ֽ��ϴ�");
			AppForm.HomeTel1.focus();
			return;
			}
		*/
		if(AppForm.DteFr_0.value.length<1 || AppForm.DteEnd_0.value.length<1 ){		
			alert("�з��� �Է��Ͽ� �ֽʽÿ�")
			AppForm.DteFr_0.focus();
			return;
			}

		if(AppForm.DteFr_0.value.length<4 || AppForm.DteEnd_0.value.length<4 ){		
			alert("�⵵�� 4�ڸ��� �Է��Ͽ� �ֽʽÿ�(YYYY)")
			AppForm.DteFr_0.focus();
			return;
			}
			
		if(AppForm.School_0.value.length<1 && AppForm.schoolclassify_0.value=="����б�"){			
			alert("�з������� Ȯ���Ͽ� �ֽʽÿ�")
			AppForm.School_0.focus();
			return;
			}
		
		if(AppForm.Bigo_0.value==""){			
			alert("�з������� Ȯ���Ͽ� �ֽʽÿ�")
			AppForm.Bigo_0.focus();
			return;
			}
			
		<%for i=1 to 3%>			
			if(AppForm.DteFr_<%=i%>.value.length > 0){
				if(AppForm.DteFr_<%=i%>.value.length<4 || AppForm.DteEnd_<%=i%>.value.length<4 ){
					alert("�⵵�� 4�ڸ��� �Է��Ͽ� �ֽʽÿ�")
					AppForm.DteFr_<%=i%>.focus();
					return;
					}	
				if(AppForm.DayFr_<%=i%>.value.length < 1 ||AppForm.DayEnd_<%=i%>.value.length<1 ){
					alert("���� �Է��Ͽ� �ֽʽÿ�")
					AppForm.DayFr_<%=i%>.focus();
					return;			
				}				
				if(AppForm.School_<%=i%>.value.length<1 || AppForm.schoolclassify_<%=i%>.value.length<1 ){
					alert("�б��� �� �б������� �Է��Ͽ� �ֽʽÿ�");
					AppForm.School_<%=i%>.focus();				
					return;
				}				
				if(AppForm.SchLocation_<%=i%>.value.length<1){
					alert("�������� �Է��Ͽ� �ֽʽÿ�")
					AppForm.SchLocation_<%=i%>.focus();				
					return;
				}
				
				if(AppForm.SchDepartment_<%=i%>.value.length<1){
					alert("������ �Է��Ͽ� �ֽʽÿ�")
					AppForm.SchDepartment_<%=i%>.focus();								
					return;
				}				
				if(AppForm.Bigo_<%=i%>.value.length<1){
					alert("���������� �Է��Ͽ� �ֽʽÿ�");
					AppForm.Bigo_<%=i%>.focus();								
					return;
				}
			}			
		<%next%>
		/*
		if(AppForm.hope(0).checked==false && AppForm.hope(1).checked==false)
		{
			alert("���� ���������� ���� ������θ� üũ���ֽʽÿ�");
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
		alert("�⵵�� 4�ڸ��� �Է��Ͻʽÿ�(YYYY)");
		obj.focus();
	}
}
  
function onlyNumber()//���ڸ� �Է��ϰ� �ϴ� ���
{
	if((event.keyCode<48)||(event.keyCode>57))
		event.returnValue = false;
}
	//-->		
</script>
