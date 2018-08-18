/*########## SNB from Common_Js ##########*/
$(".snb_1709 .newdepth1").on("click focusin", function(){
	if($(this).hasClass("on") == false){
		$(".newdepth2_wrap").slideUp("slow", 'easeOutQuint');
	}
	if($(".snb_1709 .newdepth1").hasClass("on")){
		$(this).siblings(".newdepth2_wrap").slideDown("slow", 'easeOutQuint');
	}
	$(".snb_1709 .newdepth1").removeClass("on");
	$(this).addClass("on");
});

$(".snb_1709 .newdepth2").on("click", function(){
	var indexClicked = $(".snb_1709 .newdepth2").index($(this));
	var length = $(".snb_1709 .newdepth3_wrap").length;
	
	/*	WORKED : 2017-11-27	-- TO BE DEPRECATED : 2018-2-27
	console.log("index Clicked :: " + indexClicked );
	console.log("length :: " + length );
	*/
	
	for(var i = 0; i<=length-1; i++) {
		if(i != indexClicked ) {
			$(".newdepth3_wrap.no"+(i+1)).slideUp("slow", 'easeOutQuint');
		}
	}

	/*	WORKED : 2017-11-27	-- TO BE DEPRECATED : 2018-2-27
	if($(this).hasClass("on") == false){
		console.log("1");
		$(".newdepth3_wrap").slideUp("slow", 'easeOutQuint');
	}
	*/
	if($(".snb_1709 .newdepth2").hasClass("on")){
		$(this).siblings(".newdepth3_wrap").slideDown("slow", 'easeOutQuint');
	}
	$(".snb_1709 .newdepth2").removeClass("on");
	$(this).addClass("on");
});

$(".snb_1709 .newdepth2").on("mouseenter focusin", function(){
	$(this).addClass("on");
	$(this).stop().animate({color:'#1b499b' }, 100);
}).on("mouseleave focusout", function(){
	$(this).removeClass("on");
	$(this).stop().animate({color:'#000'}, 500);
});

$(".snb_1709 .newdepth3").on("mouseenter focusin", function(){
	$(this).addClass("on");
	$(this).stop().animate({color:'#1b499b'}, 100);
	
}).on("mouseleave focusout", function(){
	$(this).removeClass("on");
	$(this).stop().animate({color:'#000'}, 500);
});

$(".snb_1709 .newdepth4").on("mouseenter focusin", function(){
	$(this).addClass("on");
	$(this).stop().animate({color:'#1b499b'}, 100);
	
}).on("mouseleave focusout", function(){
	$(this).removeClass("on");
	$(this).stop().animate({color:'#000'}, 500);
});
