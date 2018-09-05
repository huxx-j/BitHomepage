<%
	dim countCompany
	countCompany = 83		' 83개 기업 / 인덱스번호 0~82.
	
	' 배열인덱스는 0부터 n-1까지 사용하기로.
	' (n,0) : href
	' (n,1) : img src
	' (n,2) : img style
	' (n,3) : text name
	' (n,4) : outer div style (optional)
	' (n,5) : inner div style (optional)
	redim strCompanies(countCompany-1, 5)
	
	strCompanies(0,0) = "https://www.bit.kr/"
	strCompanies(0,1) = "/Images/Main/img_logo_BITCOM.png"
	strCompanies(0,2) = "width:90px; margin-top:10px;"
	strCompanies(0,3) = "(주)비트컴퓨터"
	
	strCompanies(1,0) = "http://m2mi.co.kr/"
	strCompanies(1,1) = "/Images/License/img_LOGO_M2MCoding.png"
	strCompanies(1,2) = "height:30px; margin-top:5px; "
	strCompanies(1,3) = "(주)엠투엠코딩"
	
	strCompanies(2,0) = "http://www.entermate.com/"
	strCompanies(2,1) = "/Images/License/img_LOGO_Entermate.jpg"
	strCompanies(2,2) = "width:90px; margin-top:10px;"
	strCompanies(2,3) = "(주)엔터메이트"
	
	strCompanies(3,0) = "http://www.ontune.co.kr/"
	strCompanies(3,1) = "/Images/License/img_LOGO_TeemStone.jpg"
	strCompanies(3,2) = "height:30px; margin-top:5px;"
	strCompanies(3,3) = "(주)팀스톤"
	
	strCompanies(4,0) = "http://www.yest.co.kr/"
	strCompanies(4,1) = "/Images/License/img_LOGO_YesT.jpg"
	strCompanies(4,2) = "width:90px;"
	strCompanies(4,3) = "(주)예스티"
	
	strCompanies(5,0) = "http://www.g-inno.com/"
	strCompanies(5,1) = "/Images/License/img_LOGO_G-innoSystems.jpg"
	strCompanies(5,2) = "width:90px; margin-top:10px;"
	strCompanies(5,3) = "(주)지노시스템"
	
	strCompanies(6,0) = "http://adrftech.com/"
	strCompanies(6,1) = "/Images/License/img_LOGO_ADRF.png"
	strCompanies(6,2) = "height:30px; margin-top:5px;"
	strCompanies(6,3) = "(주)에이디알에프코리아"
	strCompanies(6,4) = "line-height:12px;"
	strCompanies(6,5) = "height:46px !important;"
	
	strCompanies(7,0) = "http://www.r2ware.com"
	strCompanies(7,1) = "/Images/License/img_LOGO_r2ware.png"
	strCompanies(7,2) = "height:30px; max-width:100%; margin-top:5px;"
	strCompanies(7,3) = "(주)알투웨어"
	
	strCompanies(8,0) = "http://ivisolution.com"
	strCompanies(8,1) = "/Images/License/img_LOGO_IVIS.png"
	strCompanies(8,2) = "height:24px; max-width:100%; margin-top:10px;"
	strCompanies(8,3) = "(주)아이비스"
	
	strCompanies(9,0) = "http://www.digitalone.co.kr"
	strCompanies(9,1) = "/Images/License/img_LOGO_DigitalOne.png"
	strCompanies(9,2) = "height:30px; margin-top:8px;"
	strCompanies(9,3) = "(주)디지털원"
	
	strCompanies(10,0) = "http://www.bluecost.co.kr"
	strCompanies(10,1) = "/Images/License/img_LOGO_CMX.png"
	strCompanies(10,2) = "max-width:100%; margin-top:0px;"
	strCompanies(10,3) = "(주)씨엠엑스"
	
	strCompanies(11,0) = "http://www.ssts.co.kr"
	strCompanies(11,1) = "/Images/License/img_LOGO_ShinsungTongsang.png"
	strCompanies(11,2) = "max-width:100%; margin-top:10px;"
	strCompanies(11,3) = "(주)신성통상"
	
	strCompanies(12,0) = "http://kr.humuson.com/"
	strCompanies(12,1) = "/Images/License/img_LOGO_Humuson.png"
	strCompanies(12,2) = "max-width:100%; margin-top:10px;"
	strCompanies(12,3) = "(주)휴머스온"
	
	strCompanies(13,0) = "http://www.bow-tech.co.kr/"
	strCompanies(13,1) = "/Images/License/img_LOGO_BOWTech.png"
	strCompanies(13,2) = "max-width:100%; margin-top:10px;"
	strCompanies(13,3) = "(주)보우테크"
	
	strCompanies(14,0) = "http://www.coregate.com/"
	strCompanies(14,1) = "/Images/License/img_LOGO_Coregate.png"
	strCompanies(14,2) = "max-width:100%; margin-top:10px;"
	strCompanies(14,3) = "(주)코어게이트"
	
	strCompanies(15,0) = "http://www.goodtv.co.kr/"
	strCompanies(15,1) = "/Images/License/img_LOGO_GOODTV.png"
	strCompanies(15,2) = "max-width:100%; margin-top:10px;"
	strCompanies(15,3) = "GOODTV"
	
	strCompanies(16,0) = "http://www.kornicglory.co.kr/"
	strCompanies(16,1) = "/Images/License/img_LOGO_KornicGlory.png"
	strCompanies(16,2) = "max-width:100%; margin-top:10px;"
	strCompanies(16,3) = "(주)코닉글로리"
	
	strCompanies(17,0) = "http://www.on-test.co.kr/"
	strCompanies(17,1) = "/Images/License/img_LOGO_Ontest.png"
	strCompanies(17,2) = "max-width:100%; margin-top:10px;"
	strCompanies(17,3) = "(주)온테스트"
	
	strCompanies(18,0) = "http://www.power-gen.co.kr/"
	strCompanies(18,1) = "/Images/License/img_LOGO_Powergen.png"
	strCompanies(18,2) = "max-width:100%; margin-top:10px;"
	strCompanies(18,3) = "(주)파워젠"
	
	strCompanies(19,0) = "http://www.gtplus.co.kr/"
	strCompanies(19,1) = "/Images/License/img_LOGO_GTPlus.png"
	strCompanies(19,2) = "max-width:100%; margin-top:10px;"
	strCompanies(19,3) = "(주)지티플러스"
	
	strCompanies(20,0) = "http://www.fouroclockdg.com/"
	strCompanies(20,1) = "/Images/License/img_LOGO_Fouroclockdg.gif"
	strCompanies(20,2) = "height:40px; max-width:100%; "
	strCompanies(20,3) = "포어클락디자인그룹"
	strCompanies(20,4) = "line-height:12px;"
	
	strCompanies(21,0) = "http://mcscience.com/"
	strCompanies(21,1) = "/Images/License/img_LOGO_McScience.png"
	strCompanies(21,2) = "max-width:100%; margin-top:10px;"
	strCompanies(21,3) = "(주)맥사이언스"
	
	strCompanies(22,0) = "http://www.phoenixon.com/"
	strCompanies(22,1) = "/Images/License/img_LOGO_Phoenixon.png"
	strCompanies(22,2) = "height:40px; max-width:100%;"
	strCompanies(22,3) = "(주)피닉슨컨트롤스"
	strCompanies(22,4) = "line-height:12px;"
	
	strCompanies(23,0) = "http://www.cesco.co.kr/Cesco/default.aspx"
	strCompanies(23,1) = "/Images/License/img_LOGO_CESCO.png"
	strCompanies(23,2) = "max-width:90%; margin-top:0px;"
	strCompanies(23,3) = "(주)세스코"
	
	strCompanies(24,0) = "http://www.shhphone.com"
	strCompanies(24,1) = "/Images/License/img_LOGO_shhphone.png"
	strCompanies(24,2) = "height:40px; max-width:90%; margin-top:0px;"
	strCompanies(24,3) = "(주)쉬폰코퍼레이션코리아"
	strCompanies(24,4) = "line-height:12px;"
	
	strCompanies(25,0) = "http://www.etechsystem.co.kr"
	strCompanies(25,1) = "/Images/License/img_LOGO_eTechSystem.png"
	strCompanies(25,2) = "height:40px; max-width:90%; margin-top:0px;"
	strCompanies(25,3) = "(주)이테크시스템"
	strCompanies(25,4) = "line-height:12px;"
	
	strCompanies(26,0) = "http://www.digitron.kr/"
	strCompanies(26,1) = "/Images/License/img_LOGO_Digitron.png"
	strCompanies(26,2) = "height:40px; max-width:90%; margin-top:10px;"
	strCompanies(26,3) = "(주)디지트론"
	
	strCompanies(27,0) = "http://www.feelaware.com/"
	strCompanies(27,1) = "/Images/License/img_LOGO_Feelaware.png"
	strCompanies(27,2) = "height:40px; max-width:90%; margin-top:10px;"
	strCompanies(27,3) = "(주)필라웨어"
	
	strCompanies(28,0) = "http://www.sycns.com/sycns/main/main.asp"
	strCompanies(28,1) = "/Images/License/img_LOGO_SeyunCNS.png"
	strCompanies(28,2) = "height:30px; max-width:90%; margin-top:5px;"
	strCompanies(28,3) = "(주)세윤씨앤에스"
	strCompanies(28,4) = "line-height:12px;"
	
	strCompanies(29,0) = "http://www.topes.com/en/html/common/index.asp"
	strCompanies(29,1) = "/Images/License/img_LOGO_Topes.png"
	strCompanies(29,2) = "height:30px; max-width:90%; margin-top:10px;"
	strCompanies(29,3) = "(주)토페즈"
	
	strCompanies(30,0) = "http://www.unimation.co.kr/"
	strCompanies(30,1) = "/Images/License/img_LOGO_UnimationKorea.png"
	strCompanies(30,2) = "height:25px; max-width:90%; margin-top:10px;"
	strCompanies(30,3) = "(주)유니메이션코리아"
	strCompanies(30,4) = "line-height:12px;"
	
	strCompanies(31,0) = "http://www.wisenut.co.kr/"
	strCompanies(31,1) = "/Images/License/img_LOGO_WiseNut.png"
	strCompanies(31,2) = "height:30px; max-width:90%; margin-top:10px;"
	strCompanies(31,3) = "(주)와이즈넛"
	
	strCompanies(32,0) = "http://www.nitechs.co.kr/"
	strCompanies(32,1) = "/Images/License/img_LOGO_NITechs.png"
	strCompanies(32,2) = "height:30px; max-width:90%; margin-top:10px;"
	strCompanies(32,3) = "엔아이티(주)"
	
	strCompanies(33,0) = "http://www.rfxsoft.com/main/"
	strCompanies(33,1) = "/Images/License/img_LOGO_RFxSoft.png"
	strCompanies(33,2) = "height:30px; max-width:90%; margin-top:10px;"
	strCompanies(33,3) = "(주)알에프엑스소프트"
	strCompanies(33,4) = "line-height:12px;"
	
	strCompanies(34,0) = "http://www.siwancom.com/" 
	strCompanies(34,1) = "/Images/License/img_LOGO_SiwanCom.png"
	strCompanies(34,2) = "height:30px; max-width:90%; margin-top:10px;"
	strCompanies(34,3) = "(주)시완커뮤니케이션즈"
	strCompanies(34,4) = "line-height:12px;"
	
	strCompanies(35,0) = "http://kovifa.com/"
	strCompanies(35,1) = "/Images/License/img_LOGO_KOVIFA.png"
	strCompanies(35,2) = "height:40px; max-width:100%; margin-top:5px;"
	strCompanies(35,3) = "KOVI FA"
	
	strCompanies(36,0) = "http://www.kstec.co.kr/main/"
	strCompanies(36,1) = "/Images/License/img_LOGO_KSTEC.png"
	strCompanies(36,2) = "height:30px; max-width:90%; margin-top:10px;"
	strCompanies(36,3) = "(주)지식시스템"
	
	strCompanies(37,0) = "http://www.bizho.co.kr/"
	strCompanies(37,1) = "/Images/License/img_LOGO_BHSoft.png"
	strCompanies(37,2) = "height:30px; max-width:90%; margin-top:10px;"
	strCompanies(37,3) = "(주)비에이치소프트"
	strCompanies(37,4) = "line-height:12px;"
	
	strCompanies(38,0) = "http://www.woojinplaimm.com/kor/main/index.php"
	strCompanies(38,1) = "/Images/License/img_LOGO_WoojinPlaimm.png"
	strCompanies(38,2) = "height:30px; max-width:90%; margin-top:10px;"
	strCompanies(38,3) = "(주)우진플라임"
	
	strCompanies(39,0) = "http://www.hbee.co.kr"
	strCompanies(39,1) = "/Images/License/img_LOGO_hbee.png"
	strCompanies(39,2) = "height:30px; max-width:90%; margin-top:10px;"
	strCompanies(39,3) = "(주)에이치비"
	
	strCompanies(40,0) = "http://www.e-hcg.com"
	strCompanies(40,1) = "/Images/License/img_LOGO_HumanConsultingGroup.png"
	strCompanies(40,2) = "height:30px; max-width:90%; margin-top:10px;"
	strCompanies(40,3) = "(주)휴먼컨설팅그룹"
	strCompanies(40,4) = "line-height:12px;"
	
	strCompanies(41,0) = "http://clseng.co.kr/html/"
	strCompanies(41,1) = "/Images/License/img_LOGO_CLSeng.png"
	strCompanies(41,2) = "height:40px; max-width:100%; margin-top:0px;"
	strCompanies(41,3) = "(주)시엘에스이엔지"
	strCompanies(41,4) = "line-height:12px;"
	
	strCompanies(42,0) = "http://www.irm.kr/"
	strCompanies(42,1) = "/Images/License/img_LOGO_IRM.png"
	strCompanies(42,2) = "height:40px; max-width:100%; margin-top:3px;"
	strCompanies(42,3) = "(주)아이알엠"
	
	strCompanies(43,0) = "http://www.asiainfo.co.kr/"
	strCompanies(43,1) = "/Images/License/img_LOGO_AsiaInfoComm.png"
	strCompanies(43,2) = "height:30px; max-width:100%; margin-top:10px;"
	strCompanies(43,3) = "(주)아시아정보통신"
	strCompanies(43,4) = "line-height:12px;"
	
	strCompanies(44,0) = "http://www.citech.kr/"
	strCompanies(44,1) = "/Images/License/img_LOGO_CITech.png"
	strCompanies(44,2) = "height:35px; max-width:90%; margin-top:5px;"
	strCompanies(44,3) = "(주)씨아이테크"
	
	strCompanies(45,0) = "http://www.eprime.or.kr/index.asp"
	strCompanies(45,1) = "/Images/License/img_LOGO_ePrime.png"
	strCompanies(45,2) = "height:35px; max-width:90%; margin-top:5px;"
	strCompanies(45,3) = "(주)이프라임"
	
	strCompanies(46,0) = "http://www.cngone.co.kr/"
	strCompanies(46,1) = "/Images/License/img_LOGO_CNGOne.png"
	strCompanies(46,2) = "height:40px; max-width:95%; margin-top:2px;"
	strCompanies(46,3) = "(주)시앤지원"
	
	strCompanies(47,0) = "http://www.redwoodk.com/"
	strCompanies(47,1) = "/Images/License/img_LOGO_RedwoodK.png"
	strCompanies(47,2) = "height:30px; max-width:90%; margin-top:5px;"
	strCompanies(47,3) = "(주)레드우드케이"
	strCompanies(47,4) = "line-height:12px;"

	strCompanies(48,0) = "http://douzone.com/"
	strCompanies(48,1) = "/Images/License/img_LOGO_Douzone.png"
	strCompanies(48,2) = "height:35px; max-width:90%; margin-top:-2px;"
	strCompanies(48,3) = "(주)더존비즈온"
	
	strCompanies(49,0) = "http://prinics.com/"
	strCompanies(49,1) = "/Images/License/img_LOGO_Prinics.png"
	strCompanies(49,2) = "height:15px; max-width:100%; margin-top:17px;"
	strCompanies(49,3) = "(주)프리닉스"
	
	strCompanies(50,0) = "#" 
	strCompanies(50,1) = "/Images/License/img_LOGO_XRPTX.png"
	strCompanies(50,2) = "height:35px; max-width:90%; margin-top:5px;"
	strCompanies(50,3) = "(주)엑스알피티엑스"
	strCompanies(50,4) = "line-height:12px;"
	
	strCompanies(51,0) = "http://www.e-matrix.co.kr/"
	strCompanies(51,1) = "/Images/License/img_LOGO_Matrix.png"
	strCompanies(51,2) = "height:35px; max-width:90%; margin-top:5px;"
	strCompanies(51,3) = "(주)매트릭스"

	strCompanies(52,0) = "#"
	strCompanies(52,1) = "/Images/License/img_LOGO_NoteSquare.png"
	strCompanies(52,2) = "height:35px; max-width:90%; margin-top:5px;"
	strCompanies(52,3) = "(주)노트스퀘어"

	strCompanies(53,0) = "http://www.wishit.co.kr/"
	strCompanies(53,1) = "/Images/License/img_LOGO_WishIT.png"
	strCompanies(53,2) = "height:35px; max-width:100%; margin-top:0px;"
	strCompanies(53,3) = "(주)위쉬정보기술"
	strCompanies(53,4) = "line-height:12px;"
	
	strCompanies(54,0) = "#"
	strCompanies(54,1) = "/Images/License/img_LOGO_WisSys.png"
	strCompanies(54,2) = "height:35px; max-width:90%; margin-top:5px;"
	strCompanies(54,3) = "(주)위시스"

	strCompanies(55,0) = "http://www.picode.co.kr/"
	strCompanies(55,1) = "/Images/License/img_LOGO_PICode.png"
	strCompanies(55,2) = "height:35px; max-width:90%; margin-top:5px;"
	strCompanies(55,3) = "(주)피아이코드"

	strCompanies(56,0) = "http://www.cleinsoft.com"
	strCompanies(56,1) = "/Images/License/img_LOGO_CleinSoft.png"
	strCompanies(56,2) = "height:20px; max-width:100%; margin-top:11px;"
	strCompanies(56,3) = "(주)클라인소프트"
	strCompanies(56,4) = "line-height:12px;"
	
	strCompanies(57,0) = "http://www.piersnet.co.kr/"
	strCompanies(57,1) = "/Images/License/img_LOGO_PiersNet.png"
	strCompanies(57,2) = "height:35px; max-width:90%; margin-top:5px;"
	strCompanies(57,3) = "(주)피어스넷"
	
	strCompanies(58,0) = "#"		''' http://www.gndbiz.com/
	strCompanies(58,1) = "/Images/License/img_LOGO_GNDbiz.png"
	strCompanies(58,2) = "height:35px; max-width:90%; margin-top:5px;"
	strCompanies(58,3) = "(주)지엔디비즈"
	
	strCompanies(59,0) = "http://www.netween.co.kr/"
	strCompanies(59,1) = "/Images/License/img_LOGO_Netween.png"
	strCompanies(59,2) = "min-height:15px; max-width:100%; margin-top:17px;"
	strCompanies(59,3) = "(주)네트윈"
	
	strCompanies(60,0) = "http://www.ironautomation.com"
	strCompanies(60,1) = "/Images/License/img_LOGO_IronAutomation.png"
	strCompanies(60,2) = "height:35px; max-width:90%; margin-top:5px;"
	strCompanies(60,3) = "(주)아이언오토메이션"
	strCompanies(60,4) = "line-height:12px;"
	
	strCompanies(61,0) = "http://www.fissystem.com"
	strCompanies(61,1) = "/Images/License/img_LOGO_FISSystem.png"
	strCompanies(61,2) = "height:40px; max-width:95%; margin-top:2px;"
	strCompanies(61,3) = "(주)FIS시스템"
	
	strCompanies(62,0) = "http://www.chemessen.com/index.html"
	strCompanies(62,1) = "/Images/License/img_LOGO_ChemEssen.png"
	strCompanies(62,2) = "height:40px; max-width:95%; margin-top:2px;"
	strCompanies(62,3) = "(주)켐에쎈"
	
	strCompanies(63,0) = "http://www.biztalk.co.kr/"
	strCompanies(63,1) = "/Images/License/img_LOGO_BizTalk.png"
	strCompanies(63,2) = "height:30px; max-width:90%; margin-top:2px;"
	strCompanies(63,3) = "(주)비즈톡"
	
	strCompanies(64,0) = "http://www.gdnet.co.kr/"
	strCompanies(64,1) = "/Images/License/img_LOGO_GDNet.png"
	strCompanies(64,2) = "height:40px; max-width:95%; margin-top:2px;"
	strCompanies(64,3) = "(주)가디언이엔지"
	strCompanies(64,4) = "line-height:12px;"

	strCompanies(65,0) = "http://www.mvtech.co.kr/"
	strCompanies(65,1) = "/Images/License/img_LOGO_MVTech.png"
	strCompanies(65,2) = "height:40px; max-width:95%; margin-top:2px;"
	strCompanies(65,3) = "(주)엠브이텍"
	
	strCompanies(66,0) = "http://www.tmonet.co.kr/"
	strCompanies(66,1) = "/Images/License/img_LOGO_TMONet.png"
	strCompanies(66,2) = "height:40px; max-width:95%; margin-top:2px;"
	strCompanies(66,3) = "(주)티모넷"
	
	strCompanies(67,0) = "http://seedit.co.kr/"
	strCompanies(67,1) = "/Images/License/img_LOGO_SeedIT.png"
	strCompanies(67,2) = "height:40px; max-width:95%; margin-top:2px;"
	strCompanies(67,3) = "(주)시드아이티"
	
	strCompanies(68,0) = "http://www.storyant.com/"
	strCompanies(68,1) = "/Images/License/img_LOGO_StoryAnt.png"
	strCompanies(68,2) = "height:40px; max-width:95%; margin-top:2px;"
	strCompanies(68,3) = "(주)스토리안트"
	
	strCompanies(69,0) = "http://www.adeng.com/"
	strCompanies(69,1) = "/Images/License/img_LOGO_AnDSystem.png"
	strCompanies(69,2) = "height:40px; max-width:95%; margin-top:2px;"
	strCompanies(69,3) = "(주)에이앤디시스템"
	strCompanies(69,4) = "line-height:12px;"
	
	strCompanies(70,0) = "http://kdexp.com/"
	strCompanies(70,1) = "/Images/License/img_LOGO_KDlogistics.png"
	strCompanies(70,2) = "height:20px; max-width:95%; margin-top:13px;"
	strCompanies(70,3) = "(주)경동택배"
	
	strCompanies(71,0) = "http://gaondata.com/"
	strCompanies(71,1) = "/Images/License/img_LOGO_GaOnData.png"
	strCompanies(71,2) = "height:30px; max-width:95%; margin-top:7px;"
	strCompanies(71,3) = "(주)가온데이터"
	
	strCompanies(72,0) = "http://www.smiledata.co.kr/"
	strCompanies(72,1) = "/Images/License/img_LOGO_SmileData.png"
	strCompanies(72,2) = "height:30px; max-width:95%; margin-top:7px;"
	strCompanies(72,3) = "(주)스마일데이타"
	strCompanies(72,4) = "line-height:12px;"
	
	strCompanies(73,0) = "http://www.ecoda.kr/"
	strCompanies(73,1) = "/Images/License/img_LOGO_Ecoda.png"
	strCompanies(73,2) = "height:35px; max-width:95%; margin-top:6px;"
	strCompanies(73,3) = "(주)에코다"
	
	strCompanies(74,0) = "https://www.auk.co.kr/"
	strCompanies(74,1) = "/Images/License/img_LOGO_AUYauk.png"
	strCompanies(74,2) = "height:30px; max-width:95%; margin-top:7px;"
	strCompanies(74,3) = "(주)에이유와이"

	strCompanies(75,0) = "https://1solution.co.kr"
	strCompanies(75,1) = "/Images/License/img_LOGO_MongTeRangInternational.png"
	strCompanies(75,2) = "height:30px; max-width:95%; margin-top:7px;"
	strCompanies(75,3) = "(주)몽태랑인터내셔날"
	strCompanies(75,4) = "line-height:12px;"

	strCompanies(76,0) = "http://tongyangnetworks.com"
	strCompanies(76,1) = "/Images/License/img_LOGO_TongyangNetworks.png"
	strCompanies(76,2) = "height:20px; max-width:95%; margin-top:12px;"
	strCompanies(76,3) = "(주)동양네트웍스"
	strCompanies(76,4) = "line-height:12px;"

	strCompanies(77,0) = "http://fl-t.com"
	strCompanies(77,1) = "/Images/License/img_LOGO_fl-t.png"
	strCompanies(77,2) = "height:30px; max-width:95%; margin-top:7px;"
	strCompanies(77,3) = "(주)플렉트론"

	strCompanies(78,0) = "http://safetydoor.co.kr/kor/main/main.php"
	strCompanies(78,1) = "/Images/License/img_LOGO_STEN.png"
	strCompanies(78,2) = "height:30px; max-width:95%; margin-top:7px;"
	strCompanies(78,3) = "(주)에스티이엔"

	strCompanies(79,0) = "http://www.aurostech.com/main/main.php"
	strCompanies(79,1) = "/Images/License/img_LOGO_AurosTech.png"
	strCompanies(79,2) = "height:30px; max-width:95%; margin-top:7px;"
	strCompanies(79,3) = "(주)오로스테크놀로지"
	strCompanies(79,4) = "line-height:12px;"

	strCompanies(80,0) = "http://www.mirtec.com"
	strCompanies(80,1) = "/Images/License/img_LOGO_Mirtec.png"
	strCompanies(80,2) = "height:30px; max-width:95%; margin-top:7px;"
	strCompanies(80,3) = "(주)미르기술"

	strCompanies(81,0) = "http://www.cosery.com"
	strCompanies(81,1) = "/Images/License/img_LOGO_Cosery.png"
	strCompanies(81,2) = "height:30px; max-width:95%; margin-top:7px;"
	strCompanies(81,3) = "(주)코세리"

	strCompanies(82,0) = "http://www.ubisam.com"
	strCompanies(82,1) = "/Images/License/img_LOGO_Ubisam.png"
	strCompanies(82,2) = "height:25px; max-width:95%; margin-top:10px;"
	strCompanies(82,3) = "(주)유비샘"

	'strCompanies(83,0) = "http://igsinc.co.kr/"
	'strCompanies(83,1) = "/Images/License/img_LOGO_아이지에스.jpg"
	'strCompanies(83,2) = "height:25px; max-width:95%; margin-top:10px;"
	'strCompanies(83,3) = "(주)아이지에스"

	'strCompanies(84,0) = "http://www.inspien.co.kr/"
	'strCompanies(84,1) = "/Images/License/img_LOGO_인스피언.jpg"
	'strCompanies(84,2) = "height:25px; max-width:95%; margin-top:10px;"
	'strCompanies(84,3) = "(주)인스피언"

	'strCompanies(85,0) = "http://www.syds.com"
	'strCompanies(85,1) = "/Images/License/img_LOGO_삼양데이타시스템.jpg"
	'strCompanies(85,2) = "height:30px; max-width:98%; margin-top:5px;"
	'strCompanies(85,3) = "(주)삼양데이타시스템"

	'strCompanies(86,0) = "http://www.i-det.com/kr/index.html"
	'strCompanies(86,1) = "/Images/License/img_LOGO_DEnT.jpg"
	'strCompanies(86,2) = "height:40px; max-width:95%; margin-top:1px;"
	'strCompanies(86,3) = "(주)DE&amp;T"

	'strCompanies(87,0) = "http://www.nexteye.com/"
	'strCompanies(87,1) = "/Images/License/img_LOGO_넥스트아이.jpg"
	'strCompanies(87,2) = "height:25px; max-width:95%; margin-top:10px;"
	'strCompanies(87,3) = "(주)넥스트아이"

	'strCompanies(88,0) = "http://www.obzen.com/"
	'strCompanies(88,1) = "/Images/License/img_LOGO_오브젠.jpg"
	'strCompanies(88,2) = "height:25px; max-width:95%; margin-top:10px;"
	'strCompanies(88,3) = "(주)오브젠"

	'strCompanies(89,0) = "http://www.ksign.com/"
	'strCompanies(89,1) = "/Images/License/img_LOGO_케이사인.png"
	'strCompanies(89,2) = "height:35px; max-width:95%; margin-top:5px;"
	'strCompanies(89,3) = "(주)케이사인"

	'strCompanies(90,0) = "http://www.iruja.kr/kor/main/main.php"
	'strCompanies(90,1) = "/Images/License/img_LOGO_이루자.png"
	'strCompanies(90,2) = "height:35px; max-width:95%; margin-top:5px;"
	'strCompanies(90,3) = "(주)이루자"

	'strCompanies(91,0) = "http://www.iqmc.co.kr/public_html/index.php"
	'strCompanies(91,1) = "/Images/License/img_LOGO_QMC.jpg"
	'strCompanies(91,2) = "height:35px; max-width:95%; margin-top:5px;"
	'strCompanies(91,3) = "(주)QMC"

	'strCompanies(92,0) = "http://www.itmaxpia.co.kr/"
	'strCompanies(92,1) = "/Images/License/img_LOGO_맥스피아.PNG"
	'strCompanies(92,2) = "height:25px; max-width:95%; margin-top:10px;"
	'strCompanies(92,3) = "(주)맥스피아"

	'strCompanies(93,0) = "http://www.navis-ams.com/main/main.php"
	'strCompanies(93,1) = "/Images/License/img_LOGO_나비스오토모티브시스템즈.jpg"
	'strCompanies(93,2) = "height:25px; max-width:95%; margin-top:10px;"
	'strCompanies(93,3) = "(주)나비스오토모티브시스템즈"
	'strCompanies(93,4) = "letter-spacing:-2px;"

	'strCompanies(94,0) = "http://www.youlsys.co.kr/"
	'strCompanies(94,1) = "/Images/License/img_LOGO_율시스템.jpg"
	'strCompanies(94,2) = "height:40px; max-width:95%; margin-top:1px;"
	'strCompanies(94,3) = "(주)율시스템"

	'strCompanies(95,0) = "http://www.dongwha.com/main/main.asp"
	'strCompanies(95,1) = "/Images/License/img_LOGO_동화기업.jpg"
	'strCompanies(95,2) = "height:25px; max-width:95%; margin-top:10px;"
	'strCompanies(95,3) = "(주)동화기업"

	'strCompanies(96,0) = "http://www.picoandtera.com/"
	'strCompanies(96,1) = "/Images/License/img_LOGO_피코앤테라.jpg"
	'strCompanies(96,2) = "height:25px; max-width:95%; margin-top:10px;"
	'strCompanies(96,3) = "(주)피코앤테라"

	'strCompanies(97,0) = "http://www.rntime.com/"
	'strCompanies(97,1) = "/Images/License/img_LOGO_리치앤타임.png"
	'strCompanies(97,2) = "height:25px; max-width:95%; margin-top:10px;"
	'strCompanies(97,3) = "(주)리치앤타임"

	'strCompanies(98,0) = "http://www.qroad.net/"
	'strCompanies(98,1) = "/Images/License/img_LOGO_큐로드.png"
	'strCompanies(98,2) = "height:25px; max-width:95%; margin-top:10px;"
	'strCompanies(98,3) = "(주)큐로드"

	'strCompanies(99,0) = "http://www.miworks.co.kr/"
	'strCompanies(99,1) = "/Images/License/img_LOGO_엠아이웍스.jpg"
	'strCompanies(99,2) = "height:25px; max-width:95%; margin-top:10px;"
	'strCompanies(99,3) = "(주)엠아이웍스"

	'strCompanies(100,0) = "http://www.mocomsys.com/"
	'strCompanies(100,1) = "/Images/License/img_LOGO_모코엠시스.jpg"
	'strCompanies(100,2) = "height:25px; max-width:95%; margin-top:10px;"
	'strCompanies(100,3) = "(주)모코엠시스"
	
	'strCompanies(101,0) = "http://www.dat21.co.kr/"
	'strCompanies(101,1) = "/Images/License/img_LOGO_디에이테크놀로지.png"
	'strCompanies(101,2) = "height:28px; max-width:99%; margin-top:5px;"
	'strCompanies(101,3) = "(주)디에이테크놀로지"
	
	'strCompanies(102,0) = "http://www.etoos.com/home/"
	'strCompanies(102,1) = "/Images/License/img_LOGO_이투스교육.png"
	'strCompanies(102,2) = "height:40px; max-width:95%; margin-top:1px;"
	'strCompanies(102,3) = "(주)이투스교육"
	
	'strCompanies(103,0) = "http://boryungmall.com/"
	'strCompanies(103,1) = "/Images/License/img_LOGO_보령컨슈머헬스케어.jpg"
	'strCompanies(103,2) = "height:40px; max-width:95%; margin-top:1px;"
	'strCompanies(103,3) = "(주)보령컨슈머헬스케어"
	
	'strCompanies(104,0) = "http://www.tourok.co.kr/"
	'strCompanies(104,1) = "/Images/License/img_LOGO_여행창조.jpg"
	'strCompanies(104,2) = "height:35px; max-width:95%; margin-top:5px;"
	'strCompanies(104,3) = "(주)여행창조"
	
	'strCompanies(105,0) = "http://www.cimon.co.kr/"
	'strCompanies(105,1) = "/Images/License/img_LOGO_싸이몬.jpg"
	'strCompanies(105,2) = "height:35px; max-width:95%; margin-top:5px;"
	'strCompanies(105,3) = "(주)싸이몬"

	'strCompanies(106,0) = "http://www.twowins.com/new/kor/mastart/main.php"
	'strCompanies(106,1) = "/Images/License/img_LOGO_투윈스컴.jpg"
	'strCompanies(106,2) = "height:35px; max-width:95%; margin-top:5px;"
	'strCompanies(106,3) = "(주)투윈스컴"
	
	'strCompanies(107,0) = "http://www.mirtec.com/"
	'strCompanies(107,1) = "/Images/License/img_LOGO_미르기술.png"
	'strCompanies(107,2) = "height:25px; max-width:95%; margin-top:10px;"
	'strCompanies(107,3) = "(주)미르기술"
	
	
	'strCompanies(,0) = 
	'strCompanies(,1) = 
	'strCompanies(,2) = 
	'strCompanies(,3) = ""
	
%>


