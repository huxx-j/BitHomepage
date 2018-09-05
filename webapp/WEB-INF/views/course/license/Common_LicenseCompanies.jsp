<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script type="text/javascript">
    $(document).ready(function () {

    var countCompany;
    countCompany = 83;
    var strCompanies = new Array();

    strCompanies[0] = ["https://www.bit.kr/","/assets/Images/Main/img_logo_BITCOM.png","width:90px; margin-top:10px;","(주)비트컴퓨터"];
    strCompanies[1] = ["http://m2mi.co.kr/","/assets/Images/License/img_LOGO_M2MCoding.png","height:30px; margin-top:5px; ","(주)엠투엠코딩"];
    strCompanies[2] = ["http://www.entermate.com/","/assets/Images/License/img_LOGO_Entermate.jpg","width:90px; margin-top:10px;","(주)엔터메이트"];
    strCompanies[3] = ["http://www.ontune.co.kr/","/assets/Images/License/img_LOGO_TeemStone.jpg","height:30px; margin-top:5px;","(주)팀스톤"];
    strCompanies[4] = ["http://www.yest.co.kr/","/assets/Images/License/img_LOGO_YesT.jpg","width:90px;","(주)예스티"];
    strCompanies[5] = ["http://www.g-inno.com/","/assets/Images/License/img_LOGO_G-innoSystems.jpg","width:90px; margin-top:10px;","(주)지노시스템"];
    strCompanies[6] = ["http://adrftech.com/","/assets/Images/License/img_LOGO_ADRF.png","height:30px; margin-top:5px;","(주)에이디알에프코리아","line-height:12px;","height:46px !important;"];
    strCompanies[7] = ["http://www.r2ware.com","/assets/Images/License/img_LOGO_r2ware.png","height:30px; max-width:100%; margin-top:5px;", "(주)알투웨어"];
    strCompanies[8] = ["http://ivisolution.com","/assets/Images/License/img_LOGO_IVIS.png","height:24px; max-width:100%; margin-top:10px;","(주)아이비스"];
    strCompanies[9] = ["http://www.digitalone.co.kr","/assets/Images/License/img_LOGO_DigitalOne.png","height:30px; margin-top:8px;","(주)디지털원"];
    strCompanies[10] = ["http://www.bluecost.co.kr","/assets/Images/License/img_LOGO_CMX.png","max-width:100%; margin-top:0px;","(주)씨엠엑스"];
    strCompanies[11] = ["http://www.ssts.co.kr","/assets/Images/License/img_LOGO_ShinsungTongsang.png","max-width:100%; margin-top:10px;","(주)신성통상"];
    strCompanies[12] = ["http://kr.humuson.com/","/assets/Images/License/img_LOGO_Humuson.png","max-width:100%; margin-top:10px;","(주)휴머스온"];
    strCompanies[13] = ["http://www.bow-tech.co.kr/","/assets/Images/License/img_LOGO_BOWTech.png","max-width:100%; margin-top:10px;","(주)보우테크"];
    strCompanies[14] = ["http://www.coregate.com/","/assets/Images/License/img_LOGO_Coregate.png","max-width:100%; margin-top:10px;","(주)코어게이트"];
    strCompanies[15] = ["http://www.goodtv.co.kr/","/assets/Images/License/img_LOGO_GOODTV.png","max-width:100%; margin-top:10px;","GOODTV"];
    strCompanies[16] = ["http://www.kornicglory.co.kr/","/assets/Images/License/img_LOGO_KornicGlory.png","max-width:100%; margin-top:10px;","(주)코닉글로리"];
    strCompanies[17] = ["http://www.on-test.co.kr/","/assets/Images/License/img_LOGO_Ontest.png","max-width:100%; margin-top:10px;","(주)온테스트"];
    strCompanies[18] = ["http://www.power-gen.co.kr/","/assets/Images/License/img_LOGO_Powergen.png","max-width:100%; margin-top:10px;","(주)파워젠"];
    strCompanies[19] = ["http://www.gtplus.co.kr/","/assets/Images/License/img_LOGO_GTPlus.png","max-width:100%; margin-top:10px;","(주)지티플러스"];
    strCompanies[20] = ["http://www.fouroclockdg.com/","/assets/Images/License/img_LOGO_fouroclockdg.gif","height:40px; max-width:100%; ","포어클락디자인그룹","line-height:12px;"];
    strCompanies[21] = ["http://mcscience.com/","/assets/Images/License/img_LOGO_McScience.png","max-width:100%; margin-top:10px;","(주)맥사이언스"];
    strCompanies[22] = ["http://www.phoenixon.com/","/assets/Images/License/img_LOGO_Phoenixon.png","height:40px; max-width:100%;","(주)피닉슨컨트롤스","line-height:12px;"];
    strCompanies[23] = ["http://www.cesco.co.kr/Cesco/default.aspx","/assets/Images/License/img_LOGO_CESCO.png","max-width:90%; margin-top:0px;","(주)세스코"];
    strCompanies[24] = ["http://www.shhphone.com","/assets/Images/License/img_LOGO_shhphone.png","height:40px; max-width:90%; margin-top:0px;","(주)쉬폰코퍼레이션코리아","line-height:12px;"];
    strCompanies[25] = ["http://www.etechsystem.co.kr","/assets/Images/License/img_LOGO_eTechSystem.png","height:40px; max-width:90%; margin-top:0px;","(주)이테크시스템","line-height:12px;"];
    strCompanies[26] = ["http://www.digitron.kr/","/assets/Images/License/img_LOGO_Digitron.png","height:40px; max-width:90%; margin-top:10px;","(주)디지트론"];
    strCompanies[27] = ["http://www.feelaware.com/","/assets/Images/License/img_LOGO_Feelaware.png","height:40px; max-width:90%; margin-top:10px;","(주)필라웨어"];
    strCompanies[28] = ["http://www.sycns.com/sycns/main/main.asp","/assets/Images/License/img_LOGO_SeyunCNS.png","height:30px; max-width:90%; margin-top:5px;","(주)세윤씨앤에스","line-height:12px;"];
    strCompanies[29] = ["http://www.topes.com/en/html/common/index.asp","/assets/Images/License/img_LOGO_Topes.png","height:30px; max-width:90%; margin-top:10px;","(주)토페즈"];
    strCompanies[30] = ["http://www.unimation.co.kr/","/assets/Images/License/img_LOGO_UnimationKorea.png","height:25px; max-width:90%; margin-top:10px;","(주)유니메이션코리아","line-height:12px;"];
    strCompanies[31] = ["http://www.wisenut.co.kr/","/assets/Images/License/img_LOGO_WiseNut.png","height:30px; max-width:90%; margin-top:10px;","(주)와이즈넛"];
    strCompanies[32] = ["http://www.nitechs.co.kr/","/assets/Images/License/img_LOGO_NITechs.png","height:30px; max-width:90%; margin-top:10px;","엔아이티(주)"];
    strCompanies[33] = ["http://www.rfxsoft.com/main/","/assets/Images/License/img_LOGO_RFxSoft.png","height:30px; max-width:90%; margin-top:10px;","(주)알에프엑스소프트","line-height:12px;"];
    strCompanies[34] = ["http://www.siwancom.com/","/assets/Images/License/img_LOGO_SiwanCom.png","height:30px; max-width:90%; margin-top:10px;","(주)시완커뮤니케이션즈","line-height:12px;"];
    strCompanies[35] = ["http://kovifa.com/","/assets/Images/License/img_LOGO_KOVIFA.png","height:40px; max-width:100%; margin-top:5px;","KOVI FA"];
    strCompanies[36] = ["http://www.kstec.co.kr/main/","/assets/Images/License/img_LOGO_KSTEC.png","height:30px; max-width:90%; margin-top:10px;","(주)지식시스템"];
    strCompanies[37] = ["http://www.bizho.co.kr/","/assets/Images/License/img_LOGO_BHSoft.png", "height:30px; max-width:90%; margin-top:10px;","(주)비에이치소프트","line-height:12px;"];
    strCompanies[38] = ["http://www.woojinplaimm.com/kor/main/index.php","/assets/Images/License/img_LOGO_WoojinPlaimm.png","height:30px; max-width:90%; margin-top:10px;","(주)우진플라임"];
    strCompanies[39] = ["http://www.hbee.co.kr","/assets/Images/License/img_LOGO_hbee.png","height:30px; max-width:90%; margin-top:10px;","(주)에이치비"];
    strCompanies[40] = ["http://www.e-hcg.com","/assets/Images/License/img_LOGO_HumanConsultingGroup.png","height:30px; max-width:90%; margin-top:10px;","(주)휴먼컨설팅그룹","line-height:12px;"];
    strCompanies[41] = ["http://clseng.co.kr/html/","/assets/Images/License/img_LOGO_CLSeng.png","height:40px; max-width:100%; margin-top:0px;","(주)시엘에스이엔지","line-height:12px;"];
    strCompanies[42] = ["http://www.irm.kr/","/assets/Images/License/img_LOGO_IRM.png","height:40px; max-width:100%; margin-top:3px;","(주)아이알엠"];
    strCompanies[43] = ["http://www.asiainfo.co.kr/","/assets/Images/License/img_LOGO_AsiaInfoComm.png","height:30px; max-width:100%; margin-top:10px;","(주)아시아정보통신","line-height:12px;"];
    strCompanies[44] = ["http://www.citech.kr/","/assets/Images/License/img_LOGO_CITech.png","height:35px; max-width:90%; margin-top:5px;","(주)씨아이테크"];
    strCompanies[45] = ["http://www.eprime.or.kr/index.asp","/assets/Images/License/img_LOGO_ePrime.png","height:35px; max-width:90%; margin-top:5px;","(주)이프라임"];
    strCompanies[46] = ["http://www.cngone.co.kr/","/assets/Images/License/img_LOGO_CNGOne.png","height:40px; max-width:95%; margin-top:2px;","(주)시앤지원"];
    strCompanies[47] = ["http://www.redwoodk.com/","/assets/Images/License/img_LOGO_RedwoodK.png","height:30px; max-width:90%; margin-top:5px;","(주)레드우드케이","line-height:12px;"];
    strCompanies[48] = ["http://douzone.com/","/assets/Images/License/img_LOGO_Douzone.png","height:35px; max-width:90%; margin-top:-2px;","(주)더존비즈온"];
    strCompanies[49] = ["http://prinics.com/","/assets/Images/License/img_LOGO_Prinics.png","height:15px; max-width:100%; margin-top:17px;","(주)프리닉스"];
    strCompanies[50] = ["#","/assets/Images/License/img_LOGO_XRPTX.png","height:35px; max-width:90%; margin-top:5px;","(주)엑스알피티엑스","line-height:12px;"];
    strCompanies[51] = ["http://www.e-matrix.co.kr/","/assets/Images/License/img_LOGO_Matrix.png","height:35px; max-width:90%; margin-top:5px;","(주)매트릭스"];
    strCompanies[52] = ["#","/assets/Images/License/img_LOGO_NoteSquare.png","height:35px; max-width:90%; margin-top:5px;","(주)노트스퀘어"];
    strCompanies[53] = ["http://www.wishit.co.kr/","/assets/Images/License/img_LOGO_WishIT.png","height:35px; max-width:100%; margin-top:0px;","(주)위쉬정보기술","line-height:12px;"];
    strCompanies[54] = ["#","/assets/Images/License/img_LOGO_WisSys.png","height:35px; max-width:90%; margin-top:5px;","(주)위시스"];
    strCompanies[55] = ["http://www.picode.co.kr/","/assets/Images/License/img_LOGO_PICode.png","height:35px; max-width:90%; margin-top:5px;","(주)피아이코드"];
    strCompanies[56] = ["http://www.cleinsoft.com","/assets/Images/License/img_LOGO_CleinSoft.png","height:20px; max-width:100%; margin-top:11px;","(주)클라인소프트","line-height:12px;"];
    strCompanies[57] = ["http://www.piersnet.co.kr/","/assets/Images/License/img_LOGO_Piersnet.png","height:35px; max-width:90%; margin-top:5px;","(주)피어스넷"];
    strCompanies[58] = ["http://www.gndbiz.com/","/assets/Images/License/img_LOGO_GNDbiz.png","height:35px; max-width:90%; margin-top:5px;","(주)지엔디비즈"];
    strCompanies[59] = ["http://www.netween.co.kr/","/assets/Images/License/img_LOGO_Netween.png","min-height:15px; max-width:100%; margin-top:17px;","(주)네트윈"];
    strCompanies[60] = ["http://www.ironautomation.com","/assets/Images/License/img_LOGO_IronAutomation.png","height:35px; max-width:90%; margin-top:5px;","(주)아이언오토메이션","line-height:12px;"];
    strCompanies[61] = ["http://www.fissystem.com","/assets/Images/License/img_LOGO_FISSystem.png","height:40px; max-width:95%; margin-top:2px;","(주)FIS시스템"];
    strCompanies[62] = ["http://www.chemessen.com/index.html","/assets/Images/License/img_LOGO_ChemEssen.png","height:40px; max-width:95%; margin-top:2px;","(주)켐에쎈"];
    strCompanies[63] = ["http://www.biztalk.co.kr/","/assets/Images/License/img_LOGO_BizTalk.PNG","height:30px; max-width:90%; margin-top:2px;","(주)비즈톡"];
    strCompanies[64] = ["http://www.gdnet.co.kr/","/assets/Images/License/img_LOGO_GDNet.PNG","height:40px; max-width:95%; margin-top:2px;","(주)가디언이엔지","line-height:12px;"];
    strCompanies[65] = ["http://www.mvtech.co.kr/","/assets/Images/License/img_LOGO_MVTech.png","height:40px; max-width:95%; margin-top:2px;","(주)엠브이텍"];
    strCompanies[66] = ["http://www.tmonet.co.kr/","/assets/Images/License/img_LOGO_TMONet.png","height:40px; max-width:95%; margin-top:2px;","(주)티모넷"];
    strCompanies[67] = ["http://seedit.co.kr/","/assets/Images/License/img_LOGO_SeedIT.PNG","height:40px; max-width:95%; margin-top:2px;","(주)시드아이티"];
    strCompanies[68] = ["http://www.storyant.com/","/assets/Images/License/img_LOGO_StoryAnt.png","height:40px; max-width:95%; margin-top:2px;","(주)스토리안트"];
    strCompanies[69] = ["http://www.adeng.com/","/assets/Images/License/img_LOGO_AnDSystem.png","height:40px; max-width:95%; margin-top:2px;","(주)에이앤디시스템","line-height:12px;"];
    strCompanies[70] = ["http://kdexp.com/","/assets/Images/License/img_LOGO_KDlogistics.PNG","height:20px; max-width:95%; margin-top:13px;","(주)경동택배"];
    strCompanies[71] = ["http://gaondata.com/","/assets/Images/License/img_LOGO_GaOnData.png","height:30px; max-width:95%; margin-top:7px;","(주)가온데이터"];
    strCompanies[72] = ["http://www.smiledata.co.kr/","/assets/Images/License/img_LOGO_SmileData.png","height:30px; max-width:95%; margin-top:7px;","(주)스마일데이타","line-height:12px;"];
    strCompanies[73] = ["http://www.ecoda.kr/","/assets/Images/License/img_LOGO_Ecoda.png","height:35px; max-width:95%; margin-top:6px;","(주)에코다"];
    strCompanies[74] = ["https://www.auk.co.kr/","/assets/Images/License/img_LOGO_AUYauk.png","height:30px; max-width:95%; margin-top:7px;","(주)에이유와이"];
    strCompanies[75] = ["https://1solution.co.kr","/assets/Images/License/img_LOGO_MongTeRangInternational.png","height:30px; max-width:95%; margin-top:7px;","(주)몽태랑인터내셔날","line-height:12px;"];
    strCompanies[76] = ["http://tongyangnetworks.com","/assets/Images/License/img_LOGO_TongyangNetworks.png","height:20px; max-width:95%; margin-top:12px;","(주)동양네트웍스","line-height:12px;"];
    strCompanies[77] = ["http://fl-t.com","/assets/Images/License/img_LOGO_fl-t.png","height:30px; max-width:95%; margin-top:7px;","(주)플렉트론"];
    strCompanies[78] = ["http://safetydoor.co.kr/kor/main/main.php","/assets/Images/License/img_LOGO_STEN.png","height:30px; max-width:95%; margin-top:7px;","(주)에스티이엔"];
    strCompanies[79] = ["http://www.aurostech.com/main/main.php","/assets/Images/License/img_LOGO_AurosTech.png","height:30px; max-width:95%; margin-top:7px;","(주)오로스테크놀로지","line-height:12px;"];
    strCompanies[80] = ["http://www.mirtec.com","/assets/Images/License/img_LOGO_Mirtec.png","height:30px; max-width:95%; margin-top:7px;","(주)미르기술"];
    strCompanies[81] = ["http://www.cosery.com","/assets/Images/License/img_LOGO_Cosery.png","height:30px; max-width:95%; margin-top:7px;","(주)코세리"];
    strCompanies[82] = ["http://www.ubisam.com","/assets/Images/License/img_LOGO_Ubisam.png","height:25px; max-width:95%; margin-top:10px;","(주)유비샘"];
    // strCompanies[83] = ["http://igsinc.co.kr/","/assets/Images/License/img_LOGO_아이지에스.jpg","height:25px; max-width:95%; margin-top:10px;","(주)아이지에스"];
    // strCompanies[84] = ["http://www.inspien.co.kr/","/assets/Images/License/img_LOGO_인스피언.jpg", "height:25px; max-width:95%; margin-top:10px;","(주)인스피언"];
    // strCompanies[85] = ["http://www.syds.com","/assets/Images/License/img_LOGO_삼양데이타시스템.jpg","height:30px; max-width:98%; margin-top:5px;","(주)삼양데이타시스템"];
    // strCompanies[86] = ["http://www.i-det.com/kr/index.html","/assets/Images/License/img_LOGO_DEnT.jpg","height:40px; max-width:95%; margin-top:1px;","(주)DE&amp;T"];
    // strCompanies[87] = ["http://www.nexteye.com/","/assets/Images/License/img_LOGO_넥스트아이.jpg","height:25px; max-width:95%; margin-top:10px;","(주)넥스트아이"];
    // strCompanies[88] = ["http://www.obzen.com/","/assets/Images/License/img_LOGO_오브젠.jpg","height:25px; max-width:95%; margin-top:10px;","(주)오브젠"];
    // strCompanies[89] = ["http://www.ksign.com/","/assets/Images/License/img_LOGO_케이사인.png","height:35px; max-width:95%; margin-top:5px;","(주)케이사인"];
    // strCompanies[90] = ["http://www.iruja.kr/kor/main/main.php","/assets/Images/License/img_LOGO_이루자.png","height:35px; max-width:95%; margin-top:5px;","(주)이루자"];
    // strCompanies[91] = ["http://www.iqmc.co.kr/public_html/index.php","/assets/Images/License/img_LOGO_QMC.jpg","height:35px; max-width:95%; margin-top:5px;","(주)QMC"];
    // strCompanies[92] = ["http://www.itmaxpia.co.kr/","/assets/Images/License/img_LOGO_맥스피아.PNG","height:25px; max-width:95%; margin-top:10px;","(주)맥스피아"];
    // strCompanies[93] = ["http://www.navis-ams.com/main/main.php","/assets/Images/License/img_LOGO_나비스오토모티브시스템즈.jpg","height:25px; max-width:95%; margin-top:10px;","(주)나비스오토모티브시스템즈","letter-spacing:-2px;"];
    // strCompanies[94] = ["http://www.youlsys.co.kr/","/assets/Images/License/img_LOGO_율시스템.jpg","height:40px; max-width:95%; margin-top:1px;","(주)율시스템"];
    // strCompanies[95] = ["http://www.dongwha.com/main/main.asp","/assets/Images/License/img_LOGO_동화기업.jpg","height:25px; max-width:95%; margin-top:10px;","(주)동화기업"];
    // strCompanies[96] = ["http://www.picoandtera.com/","/assets/Images/License/img_LOGO_피코앤테라.jpg","height:25px; max-width:95%; margin-top:10px;","(주)피코앤테라"];
    // strCompanies[97] = ["http://www.rntime.com/","/assets/Images/License/img_LOGO_리치앤타임.png","height:25px; max-width:95%; margin-top:10px;","(주)리치앤타임"];
    // strCompanies[98] = ["http://www.qroad.net/","/assets/Images/License/img_LOGO_큐로드.png","height:25px; max-width:95%; margin-top:10px;","(주)큐로드"];
    // strCompanies[99] = ["http://www.miworks.co.kr/","/assets/Images/License/img_LOGO_엠아이웍스.jpg","height:25px; max-width:95%; margin-top:10px;","(주)엠아이웍스"];
    // strCompanies[100] = ["http://www.mocomsys.com/","/assets/Images/License/img_LOGO_모코엠시스.jpg","height:25px; max-width:95%; margin-top:10px;","(주)모코엠시스"];
    // strCompanies[101] = ["http://www.dat21.co.kr/","/assets/Images/License/img_LOGO_디에이테크놀로지.png","height:28px; max-width:99%; margin-top:5px;","(주)디에이테크놀로지"];
    // strCompanies[102] = ["http://www.etoos.com/home/","/assets/Images/License/img_LOGO_이투스교육.png","height:40px; max-width:95%; margin-top:1px;","(주)이투스교육"];
    // strCompanies[103] = ["http://boryungmall.com/","/assets/Images/License/img_LOGO_보령컨슈머헬스케어.jpg","height:40px; max-width:95%; margin-top:1px;","(주)보령컨슈머헬스케어"];
    // strCompanies[104] = ["http://www.tourok.co.kr/","/assets/Images/License/img_LOGO_여행창조.jpg","height:35px; max-width:95%; margin-top:5px;","(주)여행창조"];
    // strCompanies[105] = ["http://www.cimon.co.kr/","/assets/Images/License/img_LOGO_싸이몬.jpg","height:35px; max-width:95%; margin-top:5px;","(주)싸이몬"];
    // strCompanies[106] = ["http://www.twowins.com/new/kor/mastart/main.php","/assets/Images/License/img_LOGO_투윈스컴.jpg","height:35px; max-width:95%; margin-top:5px;","(주)투윈스컴"];
    // strCompanies[107] = ["http://www.mirtec.com/","/assets/Images/License/img_LOGO_미르기술.png","height:25px; max-width:95%; margin-top:10px;","(주)미르기술"];


        for (var i = 0; i < strCompanies.length; i++) {
            console.log(i);
            str = "";
            str += "<div class='divCompany'";
            if (strCompanies[i][4]!=null) {
            str +=    " style='"+ strCompanies[i][4] +"'";
            }
            str += " h_ref='"+ strCompanies[i][0] + "'>";
            str += "<div";
            if (strCompanies[i][5]!=null) {
            str +=  " style='" + strCompanies[i][5] + "'";
            }
            str += "><span href='" + strCompanies[i][0] + "' target='_blank'><img src='" + strCompanies[i][1] + "' style='" + strCompanies[i][2] + "'/></span></div>" + strCompanies[i][3];
            str += "</div>";

            $("#company-list").append(str);
        }

    });
    </script>

    <%----%>

<%--//    ' 배열인덱스는 0부터 n-1까지 사용하기로.--%>
<%--//    ' (n,0) : href--%>
<%--//    ' (n,1) : img src--%>
<%--//    ' (n,2) : img style--%>
<%--//    ' (n,3) : text name--%>
<%--//    ' (n,4) : outer div style (optional)--%>
<%--//    ' (n,5) : inner div style (optional)--%>
<%--var Company0 = ["https://www.bit.kr/","/assets/assets/Images/Main/img_logo_BITCOM.png","width:90px; margin-top:10px;","(주)비트컴퓨터"];--%>
<%--var Company1 = ["http://m2mi.co.kr/","/assets/Images/License/img_LOGO_M2MCoding.png","height:30px; margin-top:5px; ","(주)엠투엠코딩"];--%>
<%--var Company2 = ["http://www.entermate.com/","/assets/Images/License/img_LOGO_Entermate.jpg","width:90px; margin-top:10px;","(주)엔터메이트"];--%>
<%--var Company3 = ["http://www.ontune.co.kr/","/assets/Images/License/img_LOGO_TeemStone.jpg","height:30px; margin-top:5px;","(주)팀스톤"];--%>
<%--var Company4 = ["http://www.yest.co.kr/","/assets/Images/License/img_LOGO_YesT.jpg","width:90px;","(주)예스티"];--%>
<%--var Company5 = ["http://www.g-inno.com/","/assets/Images/License/img_LOGO_G-innoSystems.jpg","width:90px; margin-top:10px;","(주)지노시스템"];--%>
<%--var Company6 = ["http://adrftech.com/","/assets/Images/License/img_LOGO_ADRF.png","height:30px; margin-top:5px;","(주)에이디알에프코리아","line-height:12px;","height:46px !important;"];--%>
<%--var Company7 = ["http://www.r2ware.com","/assets/Images/License/img_LOGO_r2ware.png","height:30px; max-width:100%; margin-top:5px;", "(주)알투웨어"];--%>
<%--var Company8 = ["http://ivisolution.com","/assets/Images/License/img_LOGO_IVIS.png","height:24px; max-width:100%; margin-top:10px;","(주)아이비스"];--%>
<%--var Company9 = ["http://www.digitalone.co.kr","/assets/Images/License/img_LOGO_DigitalOne.png","height:30px; margin-top:8px;","(주)디지털원"];--%>
<%--var Company10 = ["http://www.bluecost.co.kr","/assets/Images/License/img_LOGO_CMX.png","max-width:100%; margin-top:0px;","(주)씨엠엑스"];--%>
<%--var Company11 = ["http://www.ssts.co.kr","/assets/Images/License/img_LOGO_ShinsungTongsang.png","max-width:100%; margin-top:10px;","(주)신성통상"];--%>
<%--var Company12 = ["http://kr.humuson.com/","/assets/Images/License/img_LOGO_Humuson.png","max-width:100%; margin-top:10px;","(주)휴머스온"];--%>
<%--var Company13 = ["http://www.bow-tech.co.kr/","/assets/Images/License/img_LOGO_BOWTech.png","max-width:100%; margin-top:10px;","(주)보우테크"];--%>
<%--var Company14 = ["http://www.coregate.com/","/assets/Images/License/img_LOGO_Coregate.png","max-width:100%; margin-top:10px;","(주)코어게이트"];--%>
<%--var Company15 = ["http://www.goodtv.co.kr/","/assets/Images/License/img_LOGO_GOODTV.png","max-width:100%; margin-top:10px;","GOODTV"];--%>
<%--var Company16 = ["http://www.kornicglory.co.kr/","/assets/Images/License/img_LOGO_KornicGlory.png","max-width:100%; margin-top:10px;","(주)코닉글로리"];--%>
<%--var Company17 = ["http://www.on-test.co.kr/","/assets/Images/License/img_LOGO_Ontest.png","max-width:100%; margin-top:10px;","(주)온테스트"];--%>
<%--var Company18 = ["http://www.power-gen.co.kr/","/assets/Images/License/img_LOGO_Powergen.png","max-width:100%; margin-top:10px;","(주)파워젠"];--%>
<%--var Company19 = ["http://www.gtplus.co.kr/","/assets/Images/License/img_LOGO_GTPlus.png","max-width:100%; margin-top:10px;","(주)지티플러스"];--%>
<%--var Company20 = ["http://www.fouroclockdg.com/","/assets/Images/License/img_LOGO_Fouroclockdg.gif","height:40px; max-width:100%; ","포어클락디자인그룹","line-height:12px;"];--%>
<%--var Company21 = ["http://mcscience.com/","/assets/Images/License/img_LOGO_McScience.png","max-width:100%; margin-top:10px;","(주)맥사이언스"];--%>
<%--var Company22 = ["http://www.phoenixon.com/","/assets/Images/License/img_LOGO_Phoenixon.png","height:40px; max-wi,dth:100%;","(주)피닉슨컨트롤스","line-height:12px;"];--%>
<%--var Company23 = ["http://www.cesco.co.kr/Cesco/default.aspx","/assets/Images/License/img_LOGO_CESCO.png","max-width:90%; margin-top:0px;","(주)세스코"];--%>
<%--var Company24 = ["http://www.shhphone.com","/assets/Images/License/img_LOGO_shhphone.png","height:40px; max-width:90%; margin-top:0px;","(주)쉬폰코퍼레이션코리아","line-height:12px;"];--%>
<%--var Company25 = ["http://www.etechsystem.co.kr","/assets/Images/License/img_LOGO_eTechSystem.png","height:40px; max-width:90%; margin-top:0px;","(주)이테크시스템","line-height:12px;"];--%>
<%--var Company26 = ["http://www.digitron.kr/","/assets/Images/License/img_LOGO_Digitron.png","height:40px; max-width:90%; margin-top:10px;","(주)디지트론"];--%>
<%--var Company27 = ["http://www.feelaware.com/","/assets/Images/License/img_LOGO_Feelaware.png","height:40px; max-width:90%; margin-top:10px;","(주)필라웨어"];--%>
<%--var Company28 = ["http://www.sycns.com/sycns/main/main.asp","/assets/Images/License/img_LOGO_SeyunCNS.png","height:30px; max-width:90%; margin-top:5px;","(주)세윤씨앤에스","line-height:12px;"];--%>
<%--var Company29 = ["http://www.topes.com/en/html/common/index.asp","/assets/Images/License/img_LOGO_Topes.png","height:30px; max-width:90%; margin-top:10px;","(주)토페즈"];--%>
<%--var Company30 = ["http://www.unimation.co.kr/","/assets/Images/License/img_LOGO_UnimationKorea.png","height:25px; max-width:90%; margin-top:10px;","(주)유니메이션코리아","line-height:12px;"];--%>
<%--var Company31 = ["http://www.wisenut.co.kr/","/assets/Images/License/img_LOGO_WiseNut.png","height:30px; max-width:90%; margin-top:10px;","(주)와이즈넛"];--%>
<%--var Company32 = ["http://www.nitechs.co.kr/","/assets/Images/License/img_LOGO_NITechs.png","height:30px; max-width:90%; margin-top:10px;","엔아이티(주)"];--%>
<%--var Company33 = ["http://www.rfxsoft.com/main/","/assets/Images/License/img_LOGO_RFxSoft.png","height:30px; max-width:90%; margin-top:10px;","(주)알에프엑스소프트","line-height:12px;"];--%>
<%--var Company34 = ["http://www.siwancom.com/","/assets/Images/License/img_LOGO_SiwanCom.png","height:30px; max-width:90%; margin-top:10px;","(주)시완커뮤니케이션즈","line-height:12px;"];--%>
<%--var Company35 = ["http://kovifa.com/","/assets/Images/License/img_LOGO_KOVIFA.png","height:40px; max-width:100%; margin-top:5px;","KOVI FA"];--%>
<%--var Company36 = ["http://www.kstec.co.kr/main/","/assets/Images/License/img_LOGO_KSTEC.png","height:30px; max-width:90%; margin-top:10px;","(주)지식시스템"];--%>
<%--var Company37 = ["http://www.bizho.co.kr/","/assets/Images/License/img_LOGO_BHSoft.png", "height:30px; max-width:90%; margin-top:10px;","(주)비에이치소프트","line-height:12px;"];--%>
<%--var Company38 = ["http://www.woojinplaimm.com/kor/main/index.php","/assets/Images/License/img_LOGO_WoojinPlaimm.png","height:30px; max-width:90%; margin-top:10px;","(주)우진플라임"];--%>
<%--var Company39 = ["http://www.hbee.co.kr","/assets/Images/License/img_LOGO_hbee.png","height:30px; max-width:90%; margin-top:10px;","(주)에이치비"];--%>
<%--var Company40 = ["http://www.e-hcg.com","/assets/Images/License/img_LOGO_HumanConsultingGroup.png","(주)휴먼컨설팅그룹","line-height:12px;"];--%>
<%--var Company41 = ["http://clseng.co.kr/html/","/assets/Images/License/img_LOGO_CLSeng.png","height:40px; max-width:100%; margin-top:0px;","(주)시엘에스이엔지","line-height:12px;"];--%>
<%--var Company42 = ["http://www.irm.kr/","/assets/Images/License/img_LOGO_IRM.png","height:40px; max-width:100%; margin-top:3px;","(주)아이알엠"];--%>
<%--var Company43 = ["http://www.asiainfo.co.kr/","/assets/Images/License/img_LOGO_AsiaInfoComm.png","height:30px; max-width:100%; margin-top:10px;","(주)아시아정보통신","line-height:12px;"];--%>
<%--var Company44 = ["http://www.citech.kr/","/assets/Images/License/img_LOGO_CITech.png","height:35px; max-width:90%; margin-top:5px;","(주)씨아이테크"];--%>
<%--var Company45 = ["http://www.eprime.or.kr/index.asp","/assets/Images/License/img_LOGO_ePrime.png","height:35px; max-width:90%; margin-top:5px;","(주)이프라임"];--%>
<%--var Company46 = ["http://www.cngone.co.kr/","/assets/Images/License/img_LOGO_CNGOne.png","height:40px; max-width:95%; margin-top:2px;","(주)시앤지원"];--%>
<%--var Company47 = ["http://www.redwoodk.com/","/assets/Images/License/img_LOGO_RedwoodK.png","height:30px; max-width:90%; margin-top:5px;","(주)레드우드케이","line-height:12px;"];--%>
<%--var Company48 = ["http://douzone.com/","/assets/Images/License/img_LOGO_Douzone.png","height:35px; max-width:90%; margin-top:-2px;","(주)더존비즈온"];--%>
<%--var Company49 = ["http://prinics.com/","/assets/Images/License/img_LOGO_Prinics.png","height:15px; max-width:100%; margin-top:17px;","(주)프리닉스"];--%>
<%--var Company50 = ["#","/assets/Images/License/img_LOGO_XRPTX.png","height:35px; max-width:90%; margin-top:5px;","(주)엑스알피티엑스","line-height:12px;"];--%>
<%--var Company51 = ["http://www.e-matrix.co.kr/","/assets/Images/License/img_LOGO_Matrix.png","height:35px; max-width:90%; margin-top:5px;","(주)매트릭스"];--%>
<%--var Company52 = ["#","/assets/Images/License/img_LOGO_NoteSquare.png","height:35px; max-width:90%; margin-top:5px;","(주)노트스퀘어"];--%>
<%--var Company53 = ["http://www.wishit.co.kr/","/assets/Images/License/img_LOGO_WishIT.png","height:35px; max-width:100%; margin-top:0px;","(주)위쉬정보기술","line-height:12px;"];--%>
<%--var Company54 = ["#","/assets/Images/License/img_LOGO_WisSys.png","height:35px; max-width:90%; margin-top:5px;","(주)위시스"];--%>
<%--var Company55 = ["http://www.picode.co.kr/","/assets/Images/License/img_LOGO_PICode.png","height:35px; max-width:90%; margin-top:5px;","(주)피아이코드"];--%>
<%--var Company56 = ["http://www.cleinsoft.com","/assets/Images/License/img_LOGO_CleinSoft.png","height:20px; max-width:100%; margin-top:11px;","(주)클라인소프트","line-height:12px;"];--%>
<%--var Company57 = ["http://www.piersnet.co.kr/","/assets/Images/License/img_LOGO_PiersNet.png","height:35px; max-width:90%; margin-top:5px;","(주)피어스넷"];--%>
<%--var Company58 = ["http://www.gndbiz.com/","/assets/Images/License/img_LOGO_GNDbiz.png","height:35px; max-width:90%; margin-top:5px;","(주)지엔디비즈"];--%>
<%--var Company59 = ["http://www.netween.co.kr/","/assets/Images/License/img_LOGO_Netween.png","min-height:15px; max-width:100%; margin-top:17px;","(주)네트윈"];--%>
<%--var Company60 = ["http://www.ironautomation.com","/assets/Images/License/img_LOGO_IronAutomation.png","height:35px; max-width:90%; margin-top:5px;","(주)아이언오토메이션","line-height:12px;"];--%>
<%--var Company61 = ["http://www.fissystem.com","/assets/Images/License/img_LOGO_FISSystem.png","height:40px; max-width:95%; margin-top:2px;","(주)FIS시스템"];--%>
<%--var Company62 = ["http://www.chemessen.com/index.html","/assets/Images/License/img_LOGO_ChemEssen.png","height:40px; max-width:95%; margin-top:2px;","(주)켐에쎈"];--%>
<%--var Company63 = ["http://www.biztalk.co.kr/","/assets/Images/License/img_LOGO_BizTalk.png","height:30px; max-width:90%; margin-top:2px;","(주)비즈톡"];--%>
<%--var Company64 = ["http://www.gdnet.co.kr/","/assets/Images/License/img_LOGO_GDNet.png","height:40px; max-width:95%; margin-top:2px;","(주)가디언이엔지","line-height:12px;"];--%>
<%--var Company65 = ["http://www.mvtech.co.kr/","/assets/Images/License/img_LOGO_MVTech.png","height:40px; max-width:95%; margin-top:2px;","(주)엠브이텍"];--%>
<%--var Company66 = ["http://www.tmonet.co.kr/","/assets/Images/License/img_LOGO_TMONet.png","height:40px; max-width:95%; margin-top:2px;","(주)티모넷"];--%>
<%--var Company67 = ["http://seedit.co.kr/","/assets/Images/License/img_LOGO_SeedIT.png","height:40px; max-width:95%; margin-top:2px;","(주)시드아이티"];--%>
<%--var Company68 = ["http://www.storyant.com/","/assets/Images/License/img_LOGO_StoryAnt.png","height:40px; max-width:95%; margin-top:2px;","(주)스토리안트"];--%>
<%--var Company69 = ["http://www.adeng.com/","/assets/Images/License/img_LOGO_AnDSystem.png","height:40px; max-width:95%; margin-top:2px;","(주)에이앤디시스템","line-height:12px;"];--%>
<%--var Company70 = ["http://kdexp.com/","/assets/Images/License/img_LOGO_KDlogistics.png","height:20px; max-width:95%; margin-top:13px;","(주)경동택배"];--%>
<%--var Company71 = ["http://gaondata.com/","/assets/Images/License/img_LOGO_GaOnData.png","height:30px; max-width:95%; margin-top:7px;","(주)가온데이터"];--%>
<%--var Company72 = ["http://www.smiledata.co.kr/","/assets/Images/License/img_LOGO_SmileData.png","height:30px; max-width:95%; margin-top:7px;","(주)스마일데이타","line-height:12px;"];--%>
<%--var Company73 = ["http://www.ecoda.kr/","/assets/Images/License/img_LOGO_Ecoda.png","height:35px; max-width:95%; margin-top:6px;","(주)에코다"];--%>
<%--var Company74 = ["https://www.auk.co.kr/","/assets/Images/License/img_LOGO_AUYauk.png","height:30px; max-width:95%; margin-top:7px;","(주)에이유와이"];--%>
<%--var Company75 = ["https://1solution.co.kr","/assets/Images/License/img_LOGO_MongTeRangInternational.png","height:30px; max-width:95%; margin-top:7px;","(주)몽태랑인터내셔날","line-height:12px;"];--%>
<%--var Company76 = ["http://tongyangnetworks.com","/assets/Images/License/img_LOGO_TongyangNetworks.png","height:20px; max-width:95%; margin-top:12px;","(주)동양네트웍스","line-height:12px;"];--%>
<%--var Company77 = ["http://fl-t.com","/assets/Images/License/img_LOGO_fl-t.png","height:30px; max-width:95%; margin-top:7px;","(주)플렉트론"];--%>
<%--var Company78 = ["http://safetydoor.co.kr/kor/main/main.php","/assets/Images/License/img_LOGO_STEN.png","height:30px; max-width:95%; margin-top:7px;","(주)에스티이엔"];--%>
<%--var Company79 = ["http://www.aurostech.com/main/main.php","/assets/Images/License/img_LOGO_AurosTech.png","height:30px; max-width:95%; margin-top:7px;","(주)오로스테크놀로지","line-height:12px;"];--%>
<%--var Company80 = ["http://www.mirtec.com","/assets/Images/License/img_LOGO_Mirtec.png","height:30px; max-width:95%; margin-top:7px;","(주)미르기술"];--%>
<%--var Company81 = ["http://www.cosery.com","/assets/Images/License/img_LOGO_Cosery.png","height:30px; max-width:95%; margin-top:7px;","(주)코세리"];--%>
<%--var Company82 = ["http://www.ubisam.com","/assets/Images/License/img_LOGO_Ubisam.png","height:25px; max-width:95%; margin-top:10px;","(주)유비샘"];--%>
<%--// var Company83 = ["http://igsinc.co.kr/","/assets/Images/License/img_LOGO_아이지에스.jpg","height:25px; max-width:95%; margin-top:10px;","(주)아이지에스"];--%>
<%--// var Company84 = ["http://www.inspien.co.kr/","/assets/Images/License/img_LOGO_인스피언.jpg", "height:25px; max-width:95%; margin-top:10px;","(주)인스피언"];--%>
<%--// var Company85 = ["http://www.syds.com","/assets/Images/License/img_LOGO_삼양데이타시스템.jpg","height:30px; max-width:98%; margin-top:5px;","(주)삼양데이타시스템"];--%>
<%--// var Company86 = ["http://www.i-det.com/kr/index.html","/assets/Images/License/img_LOGO_DEnT.jpg","height:40px; max-width:95%; margin-top:1px;","(주)DE&amp;T"];--%>
<%--// var Company87 = ["http://www.nexteye.com/","/assets/Images/License/img_LOGO_넥스트아이.jpg","height:25px; max-width:95%; margin-top:10px;","(주)넥스트아이"];--%>
<%--// var Company88 = ["http://www.obzen.com/","/assets/Images/License/img_LOGO_오브젠.jpg","height:25px; max-width:95%; margin-top:10px;","(주)오브젠"];--%>
<%--// var Company89 = ["http://www.ksign.com/","/assets/Images/License/img_LOGO_케이사인.png","height:35px; max-width:95%; margin-top:5px;","(주)케이사인"];--%>
<%--// var Company90 = ["http://www.iruja.kr/kor/main/main.php","/assets/Images/License/img_LOGO_이루자.png","height:35px; max-width:95%; margin-top:5px;","(주)이루자"];--%>
<%--// var Company91 = ["http://www.iqmc.co.kr/public_html/index.php","/assets/Images/License/img_LOGO_QMC.jpg","height:35px; max-width:95%; margin-top:5px;","(주)QMC"];--%>
<%--// var Company92 = ["http://www.itmaxpia.co.kr/","/assets/Images/License/img_LOGO_맥스피아.PNG","height:25px; max-width:95%; margin-top:10px;","(주)맥스피아"];--%>
<%--// var Company93 = ["http://www.navis-ams.com/main/main.php","/assets/Images/License/img_LOGO_나비스오토모티브시스템즈.jpg","height:25px; max-width:95%; margin-top:10px;","(주)나비스오토모티브시스템즈","letter-spacing:-2px;"];--%>
<%--// var Company94 = ["http://www.youlsys.co.kr/","/assets/Images/License/img_LOGO_율시스템.jpg","height:40px; max-width:95%; margin-top:1px;","(주)율시스템"];--%>
<%--// var Company95 = ["http://www.dongwha.com/main/main.asp","/assets/Images/License/img_LOGO_동화기업.jpg","height:25px; max-width:95%; margin-top:10px;","(주)동화기업"];--%>
<%--// var Company96 = ["http://www.picoandtera.com/","/assets/Images/License/img_LOGO_피코앤테라.jpg","height:25px; max-width:95%; margin-top:10px;","(주)피코앤테라"];--%>
<%--// var Company97 = ["http://www.rntime.com/","/assets/Images/License/img_LOGO_리치앤타임.png","height:25px; max-width:95%; margin-top:10px;","(주)리치앤타임"];--%>
<%--// var Company98 = ["http://www.qroad.net/","/assets/Images/License/img_LOGO_큐로드.png","height:25px; max-width:95%; margin-top:10px;","(주)큐로드"];--%>
<%--// var Company99 = ["http://www.miworks.co.kr/","/assets/Images/License/img_LOGO_엠아이웍스.jpg","height:25px; max-width:95%; margin-top:10px;","(주)엠아이웍스"];--%>
<%--// var Company100 = ["http://www.mocomsys.com/","/assets/Images/License/img_LOGO_모코엠시스.jpg","height:25px; max-width:95%; margin-top:10px;","(주)모코엠시스"];--%>
<%--// var Company101 = ["http://www.dat21.co.kr/","/assets/Images/License/img_LOGO_디에이테크놀로지.png","height:28px; max-width:99%; margin-top:5px;","(주)디에이테크놀로지"];--%>
<%--// var Company102 = ["http://www.etoos.com/home/","/assets/Images/License/img_LOGO_이투스교육.png","height:40px; max-width:95%; margin-top:1px;","(주)이투스교육"];--%>
<%--// var Company103 = ["http://boryungmall.com/","/assets/Images/License/img_LOGO_보령컨슈머헬스케어.jpg","height:40px; max-width:95%; margin-top:1px;","(주)보령컨슈머헬스케어"];--%>
<%--// var Company104 = ["http://www.tourok.co.kr/","/assets/Images/License/img_LOGO_여행창조.jpg","height:35px; max-width:95%; margin-top:5px;","(주)여행창조"];--%>
<%--// var Company105 = ["http://www.cimon.co.kr/","/assets/Images/License/img_LOGO_싸이몬.jpg","height:35px; max-width:95%; margin-top:5px;","(주)싸이몬"];--%>
<%--// var Company106 = ["http://www.twowins.com/new/kor/mastart/main.php","/assets/Images/License/img_LOGO_투윈스컴.jpg","height:35px; max-width:95%; margin-top:5px;","(주)투윈스컴"];--%>
<%--// var Company107 = ["http://www.mirtec.com/","/assets/Images/License/img_LOGO_미르기술.png","height:25px; max-width:95%; margin-top:10px;","(주)미르기술"];--%>