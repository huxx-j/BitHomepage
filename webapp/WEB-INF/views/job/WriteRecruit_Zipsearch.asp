
<html lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" Contents="IE=8" content="text/html; charset=euc-kr" />
<link rel="stylesheet" type="text/css" href="/css/normalize.css" media="all" />
<link rel="stylesheet" type="text/css" href="/CSS/zip.css?t=1400856767" media="all" />
<title>�ּҰ˻� �ý���</title>
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
        1. ���θ��ּҷ� �˻� : ���θ�� �ǹ���ȣ�� �Է��ϼ���. ��) �߾ӷ�12�� 6-3<br>
        2. ���� �ּҷ� �˻� : "��" �Ǵ� "��" �̸��� �������� �Է��ϼ���. ��) �󵵵� 450, �Լ��� 49<br>
        3. �ǹ������� �˻� : ���� �Ǵ� ����Ʈ �̸��� �Է��ϼ���. ��) ��������, ���̾�, �ְ�3������Ʈ<br>
        4. �缭������ �˻� : �缭�Ը�� ��ȣ�� �Է��ϼ���. ��) ��ȭ����ü���缭�� 123-4, �ϸ� �缭�� 56<br>
       <hr>
        &nbsp; &nbsp; �� ����� ������ ������ ���� ������ �ִ� ���"��ô�� ���� 60","�󵵵� ���̾�","�λ� �߱�û"��<br>
        &nbsp; &nbsp; &#12288; ��/��/��/��/��/��/�� �̸��� �־ �˻��Ͻø� ���� ��Ȯ�� ����� ���� �� �ֽ��ϴ�.<br>
        
        &nbsp; &nbsp; �� �ǹ����ٴ� ��Ȯ�� ���θ��ּ� �Ǵ� ���� �ּҷ� �˻��Ͻô� ���� Ȯ���մϴ�.<br />
         &nbsp; &nbsp; �� �ּҰ� ��Ÿ���� ���� �� �ش� ��ȣ 02-3486-1061 �巰���� ������ ���� �����ּ���.<br />
    </div>
</div>
<div id="postcode_search_results"></div>
<div id="entry_box">
    <p><label>�ǹ�������ȣ</label><input type="text" id="entry_dbid" /></p>
    <p><label>���ʱ�����ȣ</label><input type="text" id="entry_postcode5" /></p>
    <p><label>�����ȣ</label><input type="text" id="entry_postcode6" value="entry_postcode6"/></p>
    <p><label>���θ��ּ�</label><input type="text" id="entry_address" /></p>
    <p><label>���ּ�</label><input type="text" id="entry_details" /></p>
    <p><label>�����׸�</label><input type="text" id="entry_extra_info" /></p>
    <p><label>�����ּ�</label><input type="text" id="entry_english_address" /></p>
    <p><label>�����ּ�</label><input type="text" id="entry_jibeon_address" /></p>
    <p><label>�˻��Ϸ�</label><input type="button" id="" value="�ּҰ˻� �Ϸ�" onclick="javascript: getAddress(entry_address.value, entry_postcode6.value, entry_jibeon_address.value, entry_details.value);" /></p>
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