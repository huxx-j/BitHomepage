
/* 
	Common.js
	Author : kyung ho kang, 2014-06-30
*/


/* Common Function */

$(document).ready(function(){
	$('input, textarea').placeholder();
	cntCon_height = $(".mainCnt .cntCon").outerHeight();
	btnWhite = 'btn mid white';
	btnBlue = 'btn mid blue';
	btnGreen1 = 'btn mid green1';
	btnGreen2 = 'btn mid green2';
	btnRed = 'btn mid red';

	// lnb
	$(document).on("focus", ".lnb li a", function(){
		$(this).addClass("on");
	}).on("blur", ".lnb li a", function(){
		$(".lnb li a").removeClass("on");
	});

	//lnb_mob 열기
	$(document).on("click focus", ".btnLnb ", function(){
		$(".lnb_mob").addClass("on").animate({right:'0px'}, 500, 'easeOutCirc');
		$("#Header .telNum").addClass("on");
	});

	//lnb_mob 닫기
	$(document).on("click focus", ".lnb_mob .delete", function(){
		$(".lnb_mob").animate({right:'-160px'}, 500, 'easeOutCirc');
		$("#Header .telNum").removeClass("on");
	});
	$(document).on("mouseenter focus", ".mainCnt li", function(){
		elementIdx = $(this).index();
		$(this).find(".cover").stop();
		$(this).find(".cover").addClass("on");
		$(this).find(".cover").animate({opacity:1.0}, 800, 'easeOutCirc');
		$(this).find(".cnt_cover").stop();
		$(this).find(".cnt_cover").animate({height:cntCon_height + 'px'}, 500, 'easeOutCirc');
		$(this).find(".cntCon_inner").addClass("on");
		$(this).find(".cntTit").addClass("on");
		$(this).find(".cntTit_sub").addClass("on");
		$(this).find(".location").addClass("on");
		if(elementIdx == 0){
			$(this).find(".btnBlue").removeClass("blue");
			$(this).find(".btnBlue").addClass("white");
		}else if(elementIdx == 1){
			$(this).find(".btnBlue").removeClass("green1");
			$(this).find(".btnBlue").addClass("white");
		}else if(elementIdx == 2){
			$(this).find(".btnBlue").removeClass("green2");
			$(this).find(".btnBlue").addClass("white");
		}else if(elementIdx == 3){
			$(this).find(".btnBlue").removeClass("red");
			$(this).find(".btnBlue").addClass("white");
		}
		
	}).on("mouseleave blur", ".mainCnt li", function(){
		elementIdx = $(this).index();
		$(this).find(".cover").stop();
		$(this).find(".cover").removeClass("on");
		$(this).find(".cover").animate({opacity:0}, 200, 'easeOutCirc');
		$(this).find(".cnt_cover").stop();
		$(this).find(".cnt_cover").animate({height:'0px'}, 300, 'easeOutCirc');
		$(this).find(".cntCon_inner").removeClass("on");
		$(this).find(".cntTit").removeClass("on");
		$(this).find(".cntTit_sub").removeClass("on");
		$(this).find(".location").removeClass("on");
		if(elementIdx == 0){
			$(this).find(".btnBlue").removeClass("white");
			$(this).find(".btnBlue").addClass("blue");
		}else if(elementIdx == 1){
			$(this).find(".btnBlue").removeClass("white");
			$(this).find(".btnBlue").addClass("green1");
		}else if(elementIdx == 2){
			$(this).find(".btnBlue").removeClass("white");
			$(this).find(".btnBlue").addClass("green2");
		}else if(elementIdx == 3){
			$(this).find(".btnBlue").removeClass("white");
			$(this).find(".btnBlue").addClass("red");
		}
	});

	//Tab
	$(document).on("click focus", ".tapMenu li a", function(){
		$(".tapMenu li").removeClass("on")
		$(this).parent().addClass("on");
	});
});

function ajaxLoad(selector, frmName, callUrl, callback){
	var dataString = $("#"+frmName).serialize();

	if (callback) {
		$(selector).load(callUrl, dataString, callback);
	} else {
		$(selector).load(callUrl, dataString, function(data, textStatus, xhr){
			if (textStatus == 'success') {
				setCommonFnc();				
			}
		});
	}
}

//Ajax통신 일괄 적용 스크립트함수
function setCommonFnc() {		
	//Placeholder 
	callPlaceholder();
	$("input[placeholder], textarea[placeholder]").placeholder();
	
	//Set HTML5
	setHTML5();
}

// Call Placeholder
function callPlaceholder() {
	var isInputSupported = 'placeholder' in document.createElement('input'),
		isTextareaSupported = 'placeholder' in document.createElement('textarea'),
		prototype = $.fn,
		valHooks = $.valHooks,
		hooks,
		placeholder;

	if (isInputSupported && isTextareaSupported) {

		placeholder = prototype.placeholder = function() {
			return this;
		};

		placeholder.input = placeholder.textarea = true;

	} else {

		placeholder = prototype.placeholder = function() {
			var $this = this;
			$this
				.filter((isInputSupported ? 'textarea' : ':input') + '[placeholder]')
				.not('.placeholder')
				.bind({
					'focus.placeholder': clearPlaceholder,
					'blur.placeholder': setPlaceholder
				})
				.data('placeholder-enabled', true)
				.trigger('blur.placeholder');
			return $this;
		};

		placeholder.input = isInputSupported;
		placeholder.textarea = isTextareaSupported;

		hooks = {
			'get': function(element) {
				var $element = $(element);
				return $element.data('placeholder-enabled') && $element.hasClass('placeholder') ? '' : element.value;
			},
			'set': function(element, value) {
				var $element = $(element);
				if (!$element.data('placeholder-enabled')) {
					return element.value = value;
				}
				if (value == '') {
					element.value = value;
					// Issue #56: Setting the placeholder causes problems if the element continues to have focus.
					if (element != document.activeElement) {
						// We can't use `triggerHandler` here because of dummy text/password inputs :(
						setPlaceholder.call(element);
					}
				} else if ($element.hasClass('placeholder')) {
					clearPlaceholder.call(element, true, value) || (element.value = value);
				} else {
					element.value = value;
				}
				// `set` can not return `undefined`; see http://jsapi.info/jquery/1.7.1/val#L2363
				return $element;
			}
		};

		isInputSupported || (valHooks.input = hooks);
		isTextareaSupported || (valHooks.textarea = hooks);

		$(function() {
			var $inputs = $('.placeholder', this).each(clearPlaceholder);
			$inputs.each(setPlaceholder);						
		});

		// Clear placeholder values upon page reload								
		$(window).bind('beforeunload.placeholder', function() {
			$('.placeholder').each(function() {
				this.value = '';				
			});
		});
		
	}

	function args(elem) {
		// Return an object of element attributes
		var newAttrs = {},
			rinlinejQuery = /^jQuery\d+$/;
		$.each(elem.attributes, function(i, attr) {
			if (attr.specified && !rinlinejQuery.test(attr.name)) {
				newAttrs[attr.name] = attr.value;
			}
		});
		return newAttrs;
	}

	function clearPlaceholder(event, value) {
		var input = this,
			$input = $(input);
		if (input.value == $input.attr('placeholder')) {
			if ($input.data('placeholder-password')) {												
				$input = $input.hide().next().show().attr('id', $input.removeAttr('id').data('placeholder-id'));
				// If `clearPlaceholder` was called from `$.valHooks.input.set`
				if (event === true) {
					return $input[0].value = value;
				}
				$input.focus();
			} else {
				input.value = '';
				$input.removeClass('placeholder');
				$input.removeClass('blur');
				input == document.activeElement && input.select();				
			}
		}
	}

	function setPlaceholder() {								
		var $replacement,
			input = this,
			$input = $(input),
			$origInput = $input,
			id = this.id;
		if (input.value == '') {									
			if (input.type == 'password') {										
				if (!$input.data('placeholder-textinput')) {
					try {
						$replacement = $input.clone().attr({ 'type': 'text' });
					} catch(e) {
						$replacement = $('<input>').attr($.extend(args(this), { 'type': 'text' }));
					}
					$replacement
						.removeAttr('name')
						.data({
							'placeholder-password': true,
							'placeholder-id': id
						})
						.bind('focus.placeholder', clearPlaceholder);
					$input
						.data({
							'placeholder-textinput': $replacement,
							'placeholder-id': id
						})
						.before($replacement);
				}
				$input = $input.removeAttr('id').hide().prev().attr('id', id).show();
				// Note: `$input[0] != input` now!
			}
			$input.addClass('placeholder');
			$input[0].value = $input.attr('placeholder');
		} else {			
			$input.removeClass('placeholder');
		}
	}						

}

// IE9 이하 HTML5 태그 적용
function setHTML5(obj){
	var blockElements  = "article,aside,figcaption,figure,footer,header,hgroup,nav,section,canvas".split(',');
	
	if (obj) {
		var setObj = "#"+ obj
		
		$.each(blockElements, function(){
			document.createElement(this);
			
			if (obj !== null) {
				if ($(setObj + " " + this).css("display") !== "none") {				
					$(setObj + " " + this).css("display","block");
				}
			} else {
				if ($(this).css("display") !== "none") {			
					$(this).css("display","block");
				}
			}
			
		});			
	} else {	

		$("article,aside,figcaption,figure,footer,header,hgroup,nav,section").css("display","block");
	}
}

//open Layer
function lp_open(url){
	$.colorbox({href:url})
}