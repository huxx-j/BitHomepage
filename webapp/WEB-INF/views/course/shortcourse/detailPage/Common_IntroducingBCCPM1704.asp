<%
Response.CharSet = "euc-kr"
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "Expires", "0"
%>

<link rel="stylesheet" href="/JS/main/gallerot.css"/>
<script src="/JS/main/jquery.gallerot.js"></script>

<style>
	.myTable2 tbody tr th {
		background:#fffae9;
	}
	.myHyperlink {
		text-decoration: underline;
		color: #0000FF;
		cursor:pointer;
	}
	.divCompany {
		width:90px; 
		margin:4px 3px 3px 3px;
		padding:5px;
		text-align:center;
		border:1px solid #afafaf;
		font-weight:900;
		font-size:9pt;
	} 
	.divCompany div {
		height:46px;
	}
</style>

<!-- con_wrap -->
<div class="con_wrap1703 last">
	<h5>BCCPM (BIT Certified C Programming Master) 자격증</h5>
	<p>
		BCCPM은 미래창조과학부가 승인하고 비트가 인증한 C 프로그래밍 마스터 민간자격증 입니다.<br/>
		BCCPM 자격증 소지자는 C 프로그래밍 활용한 개발자 수준의 능력을 갖추었음을 증명합니다.<br/>
		본 자격증 소지자는 협약기업뿐만 아니라 입사서류 전형에서 채용우대 또는 가산점을 받습니다.
	</p>
	
	<table class="table_col_type1" style="width:100%;">
		<colgroup>
			<col style="width:25%">
			<col style="width:75%">
		</colgroup>
		<tbody>
			<tr>
				<th>자격증명</th>
				<td>C프로그래밍 마스터<br/>BCCPM (BIT Certified C Programming Master)</td>
			</tr>
			<tr>
				<th>평가방법</th>
				<td>필기시험 (주관식, 15문제)</td>
			</tr>
			<tr>
				<th>검정과목</th>
				<td>
					C 언어<br/>
					자료구조/알고리즘
				</td>
			</tr>
			<tr>
				<th>합격기준</th>
				<td>평균 60점 이상</td>
			</tr>
			<tr>
				<th>자격증 유효기간</th>
				<td>자격증 취득일로부터 5년</td>
			</tr>
			<tr>
				<th>시험장소</th>
				<td>비트컴퓨터 비트교육센터 4층 테스트센터 (강남역 5번출구 5분 이내)</td>
			</tr>
		</tbody>
	</table>
	<!--<a href="/Course/License/Course_Licenses.asp" target="_blank" style="float:right;" class="btn sml blue"> 자격증 내용 자세히 보기</a>-->
	
	<div style="clear:both;"></div>
	
	<h5>시험일정</h5>
	<table class="table_col_type1 tableSchedule">
		<tr>
			<td>1월 3일</td>
			<td>2월 2일</td>
			<td>3월 3일</td>
			<td>4월 29일</td>
			<td>5월 27일</td>
			<td>6월 24일</td>
		</tr>
		<tr>
			<td>7월 29일</td>
			<td>8월 26일</td>
			<td>9월 30일</td>
			<td>10월 28일</td>
			<td>11월 25일</td>
			<td>12월 30일</td>
		</tr>
	</table>
	
	<h5>시험시간</h5>
	<p>오전 10시</p>
	
	<h5>자격증 샘플</h5>
	<div style="width:240px; float:left; margin-right:4px;">
		<a href="/Images/Content/img_BIT_LICENSE_C_PROGRAMMING_MASTER.jpg"><img src="/Images/Content/img_BIT_LICENSE_C_PROGRAMMING_MASTER.jpg" width="240"/></a>
	</div> 
	<div style="width:240px; float:left; ">
		<a href="/Images/Content/img_BIT_LICENSE_JAVA_PROGRAMMING_MASTER.jpg"><img src="/Images/Content/img_BIT_LICENSE_JAVA_PROGRAMMING_MASTER.jpg" width="240"/></a>
	</div>
	<div style="clear:both;"></div>
	
	<h5>협약기업</h5>
	<!-- BSPM Slider -->
	<!--#include virtual="/Course/License/Common_LicenseCompanies.inc" -->
	
	<div id="gallerot1" class="gallerot-container" style="width:720px; height:110px; LINE-HEIGHT:24PX;">
		<ul>
		<%
			For i=0 To countCompany-1 Step 1
				Response.Write "<li>"
				Response.Write "<div class='divCompany' style='" & strCompanies(i,4) & "'>"
				Response.Write "<div style=' " & strCompanies(i,5) & "'><a href='" & strCompanies(i,0) & "' target='_blank'><img src='" & strCompanies(i,1) & "' style='" & strCompanies(i,2) & "'/></a></div>" & strCompanies(i,3)
				Response.Write "</div>"
				Response.Write "</li>"
			Next
		%>
		</ul>
	</div>
	<div style="clear:both;"></div>
	<a href="/Course/License/Course_Licenses.asp" target="_blank" class="btn sml blue" style="margin-bottom:15px;"> 협약기업(총 <%=countCompany%>개 기업) 전체보기</a>
	<script>
		$('#gallerot1').gallerot({
			width: 720,
			height: 90,
			slidingSpeed: 2000,
			enableAutoSliding: true,
			autoSlidingDelay: 2000,
			stopAutoSlidingOnHover: true
		});
	</script>
	<!-- //BSPM Slider -->
	
</div>
<!-- con_wrap -->
