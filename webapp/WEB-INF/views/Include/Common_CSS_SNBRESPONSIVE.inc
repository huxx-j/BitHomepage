<style>
	#SNB_Wrap_1702 {
		position: absolute;
		top: 0px;
		width: 16.05%;
		height: 100%;
		padding: 0;
		background: #e9e9ef;
		border-left: 1px solid #efefef;
		border-right: 1px solid #efefef; 
		border-bottom: 1px solid #efefef;
	} /* 220px/1370px	*/
		
	#SNB_Wrap_1702 h3 {
		text-shadow:1px 3px 3px #d9d9df;
	    padding: 28px 20px 12px 28px;
		height:40px;
		font-family: "Nanum Gothic Bold";
		font-size: 0.741rem;
		color: #000;
		background-color: #e9e9ef;
		font-weight:900;
		border-top: 5px solid #17538e;
	} /* 20px; */
	
	.snb_1702 {
		background: #fff;
	}
	
	.snb_1702 li.last {
		border-bottom: 5px solid #17538e;
	}
	
	/*
	.snb_1702 > li {
		border-bottom: 1px solid #d1d1d1;
	}
	*/
	.snb_1702 li a {
		display: block;
	}
	.snb_1702 li a.newdepth1.on {
		background: #17538e url(/Images/Common/ico_snbBtnUp.png) 195px 12px no-repeat;
		color: #fff;
	}
	.snb_1702 li a.newdepth1 {
		padding: 12px;
		background: url(/Images/Common/ico_snbBtnDown.png) 195px 12px no-repeat;
		font-family: "Nanum Gothic Bold";
		font-size: 0.556rem;
		color: #222;
	} /* 15px */
	.snb_1702 li a.newdepth2.on{
		color: #007a3d;
		
	}
	.snb_1702 li a.newdepth2 {
		height:15px;
		padding: 8px 18px;
		font-family: "Nanum Gothic Bold";
		font-size: 0.481rem;
		color: #333;
	} /* 13px */
	.snb_1702 li .newdepth3_wrap.on {
		display:block;
	}
	.snb_1702 li .newdepth3_wrap {
		display:none;
		padding: 2px 8px;
		background: #efefef;
		font-family: "Nanum Gothic Bold";
		font-size: 13px;
		border-top:1px solid #cfcfcf;
		border-bottom:1px solid #cfcfcf;
	}
	.snb_1702 li a.newdepth3.on{
		color: #007a3d;
	}
	.snb_1702 li a.newdepth3 {
		height:15px;
		padding: 8px 1px 8px 18px;
		font-family: "Nanum Gothic Bold";
		font-size: 13px;
		color: #333;
	}

	.snb_1702 .newdepth2_wrap.on {
		display:block;
	}
	.snb_1702 .newdepth2_wrap {
		display:none;
		background: #f9f9f9;
		border-bottom:1px solid #cfcfcf;
	} /* background: #fffcef; */
	

	
	.snb_1702 .newdepth2_wrap.no4 li:not(:first-child) a {
		height: 1.259rem;
	} /* 34px */
	
	.snb_1702 .newdepth2_wrap.no9 li:not(:first-child) a {
		height: 1.259rem;
	} /* 34px */
	
	.snb_1702 .newwrap.up {
		background: #f7f7f7 url(/Images/Common/ico_snbBtnUp.png) 175px 7px no-repeat;
	}
	.snb_1702 .newwrap.down {
		background: url(/Images/Common/ico_snbBtnDown.png) 175px 6px no-repeat;
	}
	
	
	/* MOBILE */
	@media (max-width:767px) {
		.moveTop {
			left:1px;
			width:100px;
			background: #17538e url(/Images/Common/btn_moveTop.png) 7% center no-repeat;
		} /* width:220px; */ /* 60px center no-repeat; */
		
	}
	

	/* TABLET */
	@media (min-width:768px) and (max-width:1390px) {
		.snb_1702 .newdepth3_wrap.no1 li:nth-child(3) a { height: 1.013rem; }
		.snb_1702 .newdepth3_wrap.no1 li:nth-child(4) a { height: 1.013rem; }
		.snb_1702 .newdepth3_wrap.no1 li:nth-child(5) a { height: 1.013rem; }
		.snb_1702 .newdepth3_wrap.no2 {
			height: auto;
		} /* 11.63rem 314px */
		.snb_1702 .newdepth3_wrap.no2 li:nth-child(3) a { height: 1.263rem; } /* 26px */
		.snb_1702 .newdepth3_wrap.no2 li:nth-child(8) a { height: 1.263rem; } /* 26px */
		.snb_1702 .newdepth3_wrap.no2 li:nth-child(9) a { height: 1.263rem; } /* 26px */
		.snb_1702 .newdepth3_wrap.no3 {
			height: 6.3rem;
		} /* 4.81rem 130px */
		.snb_1702 .newdepth3_wrap.no3 li a { height: 1.363rem; } /* 26px */
		.snb_1702 .newdepth3_wrap.no4 {
			height: 3rem;
		}
		.snb_1702 .newdepth3_wrap.no5 {
			height: 8.5rem;
		} /* 7.85rem 212px */
		.snb_1702 .newdepth3_wrap.no5 li:nth-child(1) a { height: 1.263rem; } /* 26px */
		.snb_1702 .newdepth3_wrap.no6 li:nth-child(2) a { height: 1.363rem; } /* 26px */
		.snb_1702 .newdepth3_wrap.no7 {
			height: auto;
		} /* 3.19rem 86px */ 
		.snb_1702 .newdepth3_wrap.no7 li a { height: 1.226rem; } /* 25px */

		.moveTop {
			left:1px;
			width:16.0584%;
			background: #17538e url(/Images/Common/btn_moveTop.png) 11% center no-repeat;
		} /* width:220px; */ /* 60px center no-repeat; */
	}
	
	/* DESKTOP */
	@media screen and (min-width:1391px) {
		.snb_1702 .newdepth3_wrap.no2 {
			height: 314px;
		}
		.snb_1702 .newdepth3_wrap.no2 li:nth-child(3) a { height: 26px; }
		.snb_1702 .newdepth3_wrap.no2 li:nth-child(8) a { height: 26px; }
		.snb_1702 .newdepth3_wrap.no2 li:nth-child(9) a { height: 26px; }
		.snb_1702 .newdepth3_wrap.no3 {
			height: 130px;
		}
		.snb_1702 .newdepth3_wrap.no3 li a { height: 26px; }
		.snb_1702 .newdepth3_wrap.no5 {
			height: 212px;
		}
		.snb_1702 .newdepth3_wrap.no5 li:nth-child(1) a { height: 26px; }
		.snb_1702 .newdepth3_wrap.no6 li:nth-child(2) a { height: 26px; }
		.snb_1702 .newdepth3_wrap.no7 {
			height: 86px;
		}
		.snb_1702 .newdepth3_wrap.no7 li a { height: 25px; }
		
		.moveTop {
			left:1px;
			width:16.0584%;
			background: #17538e url(/Images/Common/btn_moveTop.png) 31% center no-repeat;
		} /* width:220px; */ /* 60px center no-repeat; */
	
	}
</style>
