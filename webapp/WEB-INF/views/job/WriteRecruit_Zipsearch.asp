
<html lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" Contents="IE=8" content="text/html; charset=euc-kr" />
<link rel="stylesheet" type="text/css" href="/css/normalize.css" media="all" />
<link rel="stylesheet" type="text/css" href="/CSS/zip.css?t=1400856767" media="all" />
<title>주소검색 시스템</title>
<script language="JavaScript">
    function getAddress(entry_address, entry_postcode6, entry_jibeon_address, entry_details) {
		window.opener.form.czipcode.value = entry_postcode6
		window.opener.form.caddr.value = entry_address + " (" + entry_jibeon_address + ")" + " " + entry_details
		window.close();
    }
</script>
<script src="//cdn.jsdelivr.net/jquery/1.11.1/jquery.min.js"></script>
<script src="//cdn.jsdelivr.net/jquery.postcodify/latest/search.min.js"></script>
<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

<body>
<div id="postcode_search_box">
    <div class="postcode_search_help">
        1. 도로명주소로 검색 : 도로명과 건물번호를 입력하세요. 예) 중앙로12길 6-3<br>
        2. 지번 주소로 검색 : "동" 또는 "리" 이름과 번지수를 입력하세요. 예) 상도동 450, 입석리 49<br>
        3. 건물명으로 검색 : 빌딩 또는 아파트 이름을 입력하세요. 예) 국제빌딩, 래미안, 주공3차아파트<br>
        4. 사서함으로 검색 : 사서함명과 번호를 입력하세요. 예) 광화문우체국사서함 123-4, 북면 사서함 56<br>
       <hr>
        &nbsp; &nbsp; ※ 비슷한 지명이 전국에 여러 군데가 있는 경우"삼척시 교동 60","상도동 래미안","부산 중구청"등<br>
        &nbsp; &nbsp; &#12288; 시/군/구/읍/면/동/리 이름을 넣어서 검색하시면 더욱 정확한 결과를 얻을 수 있습니다.<br>
        
        &nbsp; &nbsp; ※ 건물명보다는 정확한 도로명주소 또는 지번 주소로 검색하시는 것이 확실합니다.<br />
         &nbsp; &nbsp; ※ 주소가 나타나지 않을 시 해당 번호 02-3486-1061 드럭인포 개발팀 으로 연락주세요.<br />
    </div>
</div>
<div id="postcode_search_results"></div>
<div id="entry_box">
    <p><label>건물관리번호</label><input type="text" id="entry_dbid" /></p>
    <p><label>기초구역번호</label><input type="text" id="entry_postcode5" /></p>
    <p><label>우편번호</label><input type="text" id="entry_postcode6" value="entry_postcode6"/></p>
    <p><label>도로명주소</label><input type="text" id="entry_address" /></p>
    <p><label>상세주소</label><input type="text" id="entry_details" /></p>
    <p><label>참고항목</label><input type="text" id="entry_extra_info" /></p>
    <p><label>영문주소</label><input type="text" id="entry_english_address" /></p>
    <p><label>지번주소</label><input type="text" id="entry_jibeon_address" /></p>
    <p><label>검색완료</label><input type="button" id="" value="주소검색 완료" onclick="javascript: getAddress(entry_address.value, entry_postcode6.value, entry_jibeon_address.value, entry_details.value);" /></p>
</div>
<script type="text/javascript">
    $(function () {
        $("#postcode_search_results").postcodify({
            controls: "#postcode_search_box",
            insertDbid: "#entry_dbid",
            insertPostcode5: "#entry_postcode5",
            insertPostcode6: "#entry_postcode6",
            insertAddress: "#entry_address",
            insertDetails: "#entry_details",
            insertExtraInfo: "#entry_extra_info",
            insertEnglishAddress: "#entry_english_address",
            insertJibeonAddress: "#entry_jibeon_address",
            beforeSearch: function (keywords) {
                $("#postcode_search_results").show();
                $("#entry_box").hide();
            },
            afterSelect: function (selectedEntry) {
                $("#postcode_search_results").slideUp("fast", function () {
                    $("#entry_box").slideDown("fast", function () {
                        $("#entry_details").focus();
                    });
                });
            },
            useFullJibeon: true
        });
    });


</script>
</body>
</html>