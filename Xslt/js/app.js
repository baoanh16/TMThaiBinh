"use strict";

var CANHCAM_APP = { "ACTIVE_FIXED_HEADER": true, "HEADER_TRANPARENT": false, "ACTIVE_HEADER_POSITION": 1, "ACTIVE_PADDING_MAIN": true, "ACTIVE_VALIDATOR": true, "ACTIVE_SELECT": true, "ACTIVE_FIXED_FOOTER": true, "ACTIVE_LIST_TO_SELECT": true, "DISPLAY_FOOTER": 600, "ACTIVE_RESPONSIVE": true, "ACTIVE_BACKTOTOP": true, "DISPLAY_BACKTOTOP": 100, "CHANGE_GRID": 991, "CHANGE_GRID_SM": 767, "DEV_MODE": false, "DEV_MODE_GIRD_FULL": false };
function backToTop() {
	if ($('#back-to-top').length) {
		var backToTop = function backToTop() {
			var scrollTop = $(window).scrollTop();
			if (scrollTop > CANHCAM_APP.DISPLAY_BACKTOTOP) {
				$('#back-to-top').addClass('show');
			} else {
				$('#back-to-top').removeClass('show');
			}
		};
		backToTop();
		$(window).on('scroll', function () {
			backToTop();
		});
		$('#back-to-top').on('click', function (e) {
			e.preventDefault();
			$('html,body').animate({
				scrollTop: 0
			}, 700);
		});
	}
}

$(document).ready(function () {
	if (CANHCAM_APP.ACTIVE_BACKTOTOP) {
		backToTop();
	}
});
function CanhCamResponsive() {
	// Set BG Mask
	$('[bg-mask]').each(function () {
		var bgimg = $(this).attr('bg-mask');
		$(this).css({
			"mask-image": "url(" + bgimg + ")",
			"mask-position": "center center",
			"mask-repeat": "no-repeat",
			"-webkit-mask-image": "url(" + bgimg + ")",
			"-webkit-mask-position": "center center",
			"-webkit-mask-repeat": "no-repeat"
		});
	});
	// Set BG Resposive
	$('[bg-img]').each(function () {
		var bgimg = $(this).attr('bg-img');
		var pos = $(this).attr('bg-pos');
		var size = $(this).attr('bg-size');
		if (pos && pos.length > 0) {
			$(this).css({
				"background-position": pos
			});
		} else {
			$(this).css({
				"background-position": "center center"
			});
		}
		if (size && size.length > 0) {
			$(this).css({
				"background-size": size
			});
		} else {
			$(this).css({
				"background-size": "cover"
			});
		}
		$(this).css({
			"background-image": "url(" + bgimg + ")"
		});
	});

	$('[bg-img-responsive]').each(function () {
		var bgimg = $(this).attr('bg-img-responsive');
		var bgimgsm = $(this).attr('bg-img-responsive-sm');
		var bgimgxs = $(this).attr('bg-img-responsive-xs');
		if ($(window).width() >= CANHCAM_APP.CHANGE_GRID) {
			$(this).css({
				"background-image": "url(" + bgimg + ")",
				"background-position": "center center",
				"background-size": "cover"
			});
		} else if ($(window).width() < CANHCAM_APP.CHANGE_GRID && $(window).width() > CANHCAM_APP.CHANGE_GRID_SM) {
			$(this).css({
				"background-image": "url(" + bgimgsm + ")",
				"background-position": "center center",
				"background-size": "cover"
			});
		} else {
			$(this).css({
				"background-image": "url(" + bgimgxs + ")",
				"background-position": "center center",
				"background-size": "cover"
			});
		}
	});

	$('[img-src-responsive]').each(function () {
		var bgimg2 = $(this).attr('img-src-responsive');
		var bgimg2sm = $(this).attr('img-src-responsive-sm');
		var bgimg2xs = $(this).attr('img-src-responsive-xs');
		if ($(window).width() >= CANHCAM_APP.CHANGE_GRID) {
			$(this).attr("src", "" + bgimg2 + "");
		} else if ($(window).width() < CANHCAM_APP.CHANGE_GRID && $(window).width() > CANHCAM_APP.CHANGE_GRID_SM) {
			$(this).attr("src", "" + bgimg2sm + "");
		} else {
			$(this).attr("src", "" + bgimg2xs + "");
		}
	});
};

$(function () {
	if (CANHCAM_APP.ACTIVE_RESPONSIVE) {
		CanhCamResponsive();
	}
});

$(window).resize(function () {
	if (CANHCAM_APP.ACTIVE_RESPONSIVE) {
		CanhCamResponsive();
	}
});

$(function () {
	$('[data-toggle="tooltip"]').tooltip();
	$('[data-toggle="popover"]').popover({
		trigger: 'focus'
	});
});
// Thêm [dropdown-type="hover"] vào thẻ a để bật tính năng hover open dropdown 
if ($(window).width() > CANHCAM_APP.CHANGE_GRID) {
	$('.dropdown').on('mouseenter mouseleave', function () {
		var ___d = $(this).find('[dropdown-type="hover"]').parents('.dropdown');
		if (___d && ___d.length > 0) {
			$(this).find('[dropdown-type="hover"]').removeAttr('data-toggle');
			setTimeout(function () {
				___d[___d.is(':hover') ? 'addClass' : 'removeClass']('show');
				___d.is(':hover') ? ___d.find('.dropdown-menu').show() : ___d.find('.dropdown-menu').hide();
			}, 10);
		}
	});
} else {
	$('.dropdown').each(function () {
		$(this).addClass('show');
		$(this).find('.dropdown-menu').show();
	});
}

$(document).ready(function () {
	checkDev();
});

$(window).resize(function () {
	checkDev();
});

function checkDev() {
	if ($('#devtools').length) {
		if ($(window).width() < 576) {
			$('.canhcam-develop #devtools .header-devtools h3').html('Dev - XS');
		} else if ($(window).width() >= 576 && $(window).width() < 768) {
			$('.canhcam-develop #devtools .header-devtools h3').html('Dev - SM');
		} else if ($(window).width() >= 768 && $(window).width() < 992) {
			$('.canhcam-develop #devtools .header-devtools h3').html('Dev - MD');
		} else if ($(window).width() >= 992 && $(window).width() < 1200) {
			$('.canhcam-develop #devtools .header-devtools h3').html('Dev - LG');
		} else {
			$('.canhcam-develop #devtools .header-devtools h3').html('Dev - XL');
		}
	}
}

(function ($) {
	$.fn.drags = function (opt) {

		opt = $.extend({ handle: "", cursor: "move" }, opt);

		if (opt.handle === "") {
			var $el = this;
		} else {
			var $el = this.find(opt.handle);
		}

		return $el.find('.header-devtools').css('cursor', opt.cursor).on("mousedown", function (e) {
			// getSizeDevTo()
			if (opt.handle === "") {
				var $drag = $(this).parent().addClass('draggable');
			} else {
				var $drag = $(this).parent().addClass('active-handle').parent().addClass('draggable');
			}
			var z_idx = $drag.css('z-index'),
			    drg_h = $drag.outerHeight(),
			    drg_w = $drag.outerWidth(),
			    pos_y = $drag.offset().top + drg_h - e.pageY,
			    pos_x = $drag.offset().left + drg_w - e.pageX;
			$drag.css('z-index', 99999).parents().on("mousemove", function (e) {
				getSizeDevTo();
				$('.draggable').offset({
					top: e.pageY + pos_y - drg_h,
					left: e.pageX + pos_x - drg_w
				}).on("mouseup", function () {
					// getSizeDevTo()
					$(this).removeClass('draggable').css('z-index', z_idx);
				});
				$('#devtools .inline').offset({
					top: e.pageY + pos_y - drg_h
				});
				$('#devtools .online').offset({
					left: e.pageX + pos_x - drg_w
				});
			});
			e.preventDefault(); // disable selection
		}).on("mouseup", function () {
			// getSizeDevTo()
			if (opt.handle === "") {
				$(this).removeClass('draggable');
			} else {
				$(this).removeClass('active-handle').parent().removeClass('draggable');
			}
		});
	};
})(jQuery);

if (CANHCAM_APP.DEV_MODE) {

	$('body').append('<div id="devtools"> <div class="online"></div><div class="inline"></div><div class="header-devtools"> <h3>Dev - XL</h3> </div><div class="body-devtools"> <button class="btn btn-block btn-secondary btn-sm" type="button">Toogle Grid</button> </div></div>');

	$('#devtools').drags();
	createDevTo();

	$(document).ready(function () {
		if ($('.canhcam-develop #devtools').length) {
			var devtls = $('.canhcam-develop #devtools').find('.body-devtools button');
			devtls.click(function () {
				if ($(this).attr('data-click-state') == 1) {
					$(this).attr('data-click-state', 0);
					$('body').toggleClass('active');
					$('body').find('.devtool-gird').remove();
				} else {
					$(this).attr('data-click-state', 1);
					$('body').toggleClass('active');
					if (CANHCAM_APP.DEV_MODE_GIRD_FULL) {
						$('body').append('<div class="devtool-gird"><div class="container-fluid d-flex"><div class="row d-flex align-items-stretch bd-highlight"><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div></div></div></div>');
					} else {
						$('body').append('<div class="devtool-gird"><div class="container d-flex"><div class="row d-flex align-items-stretch bd-highlight"><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div><div class="col d-flex align-items-stretch"><div class="item"></div></div></div></div></div>');
					}
				}
			});
		}
	});
}

function getSizeDevTo() {
	$('#devtools .body-devtools .size .width').html('W: ' + $(window).width() + '');
	$('#devtools .body-devtools .size .height').html('H: ' + $(window).height() + '');
	$('#devtools .body-devtools .size .top').html('T: ' + $('#devtools').offset().top + '');
	$('#devtools .body-devtools .size .left').html('L: ' + $('#devtools').offset().left + '');
}

$(window).resize(function () {
	if ($('#devtools').length) {
		getSizeDevTo();
	}
});

function createDevTo() {
	$('#devtools .body-devtools').append('<div class="size"><div class="width">W: ' + $(window).width() + '</div><div class="height">H: ' + $(window).height() + '</div><div class="top">T: ' + $('#devtools').offset().top + '</div><div class="left">L: ' + $('#devtools').offset().left + '</div></div>');
}

function countUpCanhCam() {

	$('[data-count]').each(function () {
		var elm = $(this).offset().top;
		var docH = $(window).height();
		var docS = $(window).scrollTop();
		var padingTop = 0;
		if ($(this).attr('data-top') && $(this).attr('data-top').length) {
			padingTop = parseInt($(this).attr('data-top'));
		}
		var result = elm + padingTop - (docH + docS);
		var run = false;

		if (result <= 0 && !run) {
			var $this = $(this),
			    countTo = $this.attr('data-count'),
			    durationTo = parseInt($this.attr('data-duration'));
			$({ countNum: $this.text() }).animate({
				countNum: countTo
			}, {
				duration: durationTo,
				easing: 'linear',
				step: function step() {
					$this.text(Math.floor(this.countNum));
				},
				complete: function complete() {
					$this.text(this.countNum);
					run = true;
				}
			});
		}
	});
}

$(document).ready(function () {
	countUpCanhCam();
});

$(window).scroll(function () {
	countUpCanhCam();
});

$(window).resize(function () {
	countUpCanhCam();
});

function CanhCamChangeDataHoverClick() {
	$('[data-change]').each(function () {
		var newSrc = $(this).attr('data-new');
		var oldSrc = $(this).attr('data-old');
		var typeChange = $(this).attr('data-change');
		if (typeChange && typeChange.length > 0) {
			if (typeChange === 'src') {
				$(this).hover(function () {
					$(this).attr(typeChange, newSrc);
				}, function () {
					$(this).attr(typeChange, oldSrc);
				});
			} else if (typeChange === 'background' || typeChange === 'background-image') {
				$(this).hover(function () {
					$(this).css(typeChange, "url(" + newSrc + ")");
				}, function () {
					$(this).css(typeChange, "url(" + oldSrc + ")");
				});
			} else if (typeChange === 'class') {
				$(this).hover(function () {
					$(this).removeClass(oldSrc).addClass(newSrc);
				}, function () {
					$(this).removeClass(newSrc).addClass(oldSrc);
				});
			}
		}
	});
};

$(function () {
	CanhCamChangeDataHoverClick();
});

function setFooter() {
	var bodyHeight = $("body").outerHeight(),
	    headerHeight = $("header").outerHeight(),
	    footerHeight = $("footer").outerHeight(),
	    mainHeight = $("main").outerHeight(),
	    curentHeight = mainHeight + headerHeight + footerHeight,
	    curentfixedHeight = mainHeight + footerHeight,
	    newHeight = bodyHeight - (headerHeight + footerHeight),
	    newfixedHeight = bodyHeight - footerHeight;
	if ($(window).width() > CANHCAM_APP.DISPLAY_FOOTER) {
		if ($(window).width() <= CANHCAM_APP.CHANGE_GRID) {
			$("main").css('min-height', newfixedHeight + 'px');
		} else {
			if (!CANHCAM_APP.ACTIVE_FIXED_HEADER) {
				$("main").css('min-height', newHeight + 'px');
			} else {
				$("main").css('min-height', newfixedHeight + 'px');
			}
		}
	} else {
		$("main").css('min-height', 'initial');
	}
}

$(document).ready(function () {
	if (CANHCAM_APP.ACTIVE_FIXED_FOOTER) {
		setFooter();
	}
});

$(window).resize(function () {
	if (CANHCAM_APP.ACTIVE_FIXED_FOOTER) {
		setFooter();
	}
});
function setHeader(elm) {
	if (elm >= CANHCAM_APP.ACTIVE_HEADER_POSITION) {
		$("header").addClass('active');
	} else {
		$("header").removeClass('active');
	}
}

$(document).ready(function () {
	if (CANHCAM_APP.ACTIVE_FIXED_HEADER) {
		$("header").addClass('fixedheader');
		if ($(window).scrollTop() >= CANHCAM_APP.ACTIVE_HEADER_POSITION) {
			setHeader($(window).scrollTop());
		}
	} else {
		if ($(window).width() <= CANHCAM_APP.CHANGE_GRID) {
			$("header").addClass('fixedheader');
		} else {
			$("header").removeClass('fixedheader');
		}
	}
	if ($("header").hasClass("fixedheader")) {
		$("main").addClass('main-fixedheader');
	}
});

// Fixed Header
$(window).scroll(function () {
	setHeader($(document).scrollTop());
});
// Fixed Header
$(window).resize(function () {
	if (!CANHCAM_APP.ACTIVE_FIXED_HEADER) {
		if ($(window).width() <= CANHCAM_APP.CHANGE_GRID) {
			$("header").addClass('fixedheader');
		} else {
			$("header").removeClass('fixedheader');
		}
	}
});

function setMain() {
	var headerHeight = $("header").outerHeight();
	if ($(window).width() <= CANHCAM_APP.CHANGE_GRID) {
		$("main").css('padding-top', headerHeight + 'px');
	} else {
		if (!CANHCAM_APP.ACTIVE_PADDING_MAIN) {
			$("main").css('padding-top', '0px');
		} else {
			if (!CANHCAM_APP.ACTIVE_FIXED_HEADER) {
				$("main").css('padding-top', 'initial');
			} else {
				// $("main").css('padding-top', '90px')
				$("main").css('padding-top', headerHeight + 'px');
			}
		}
	}
}

$(document).ready(function () {
	setMain();
});

$(window).resize(function () {
	setMain();
});
function setHeaderTranparent(elm) {
	if (elm >= CANHCAM_APP.ACTIVE_HEADER_POSITION) {
		$("header").removeClass('has-tranparent');
	} else {
		$("header").addClass('has-tranparent');
	}
}

$(document).ready(function () {
	if (CANHCAM_APP.HEADER_TRANPARENT) {
		$("header").addClass('has-tranparent');
		if ($(window).scrollTop() >= CANHCAM_APP.ACTIVE_HEADER_POSITION) {
			setHeaderTranparent($(window).scrollTop());
		}
	}
});

// Tranparent Header
$(window).scroll(function () {
	if (CANHCAM_APP.HEADER_TRANPARENT) {
		setHeaderTranparent($(document).scrollTop());
	}
});

function canhcamID(e) {
	var text = "";
	var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	for (var i = 0; i < e; i++) {
		text += possible.charAt(Math.floor(Math.random() * possible.length));
	}return text;
}

function b64EncodeUnicode(str) {
	return btoa(encodeURIComponent(str).replace(/%([0-9A-F]{2})/g, function toSolidBytes(match, p1) {
		return String.fromCharCode('0x' + p1);
	}));
}

function b64DecodeUnicode(str) {
	return decodeURIComponent(atob(str).split('').map(function (c) {
		return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
	}).join(''));
}

// Copyright 2014-2017 The Bootstrap Authors
// Copyright 2014-2017 Twitter, Inc.
if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
	var msViewportStyle = document.createElement('style');
	msViewportStyle.appendChild(document.createTextNode('@-ms-viewport{width:auto!important}'));
	document.head.appendChild(msViewportStyle);
}

$(function () {
	var nua = navigator.userAgent;
	var isAndroid = nua.indexOf('Mozilla/5.0') > -1 && nua.indexOf('Android ') > -1 && nua.indexOf('AppleWebKit') > -1 && nua.indexOf('Chrome') === -1;
	if (isAndroid) {
		$('select.form-control').removeClass('form-control').css('width', '100%');
	}
});
function listToSelect() {
	$('[data-select]').each(function () {
		var list = $(this),
		    select = $(document.createElement('select')).insertBefore($(this).hide());
		select.addClass('custom-select').attr('data-select-show', '');
		$('>li a', this).each(function () {
			var option = $(document.createElement('option')).appendTo(select).val(this.href).html($(this).html());
		});
		list.hide().removeAttr('data-select').attr('data-select-changed', '');
		select.on('change', function () {
			var url = $(this).val();
			if (url) {
				window.location = url;
			}
			return false;
		});
	});
}

function selectChangeToList() {
	if (CANHCAM_APP.ACTIVE_LIST_TO_SELECT) {
		if ($(window).width() > CANHCAM_APP.CHANGE_GRID) {
			$('[data-select-changed]').each(function () {
				$(this).show().removeAttr('data-select-changed').attr('data-select', '');
			});
			$('[data-select-show]').remove();
		} else {
			listToSelect();
		}
	}
}

$(document).ready(function () {
	if (CANHCAM_APP.ACTIVE_LIST_TO_SELECT) {
		if ($(window).width() <= CANHCAM_APP.CHANGE_GRID) {
			listToSelect();
		}
	}
});

$(window).resize(function () {
	if (CANHCAM_APP.ACTIVE_LIST_TO_SELECT) {
		selectChangeToList();
	}
});

console.log('%cCANHCAM', 'font-size:100px;color:#ff451a;text-shadow:0 1px 0 #f73936,0 2px 0 #f73936 ,0 3px 0 #f73936 ,0 4px 0 #f73936 ,0 5px 0 #f73936 ,0 6px 1px rgba(0,0,0,.1),0 0 5px rgba(0,0,0,.1),0 1px 3px rgba(0,0,0,.3),0 3px 5px rgba(0,0,0,.2),0 5px 10px rgba(0,0,0,.25),0 10px 10px rgba(0,0,0,.2),0 20px 20px rgba(0,0,0,.15);');
console.log('%c CANHCAM ' + '%c - The best Web Solutions Provider', 'border-radius: 2px; padding: 3px; background: #ff451a; color: #FFF', 'color: #ff451a');
console.warn("CANHCAM warning: This is a browser feature intended for developers. If someone told you to copy and paste something here to enable a CANHCAM feature or 'hack' someone's account, it is a scam and will give them access to your CANHCAM account.");
document.onkeyup = function (a) {
	if ((a = a || window.event).altKey && a.ctrlKey && a.shiftKey && 13 == a.which) return $("body"), alert(b64DecodeUnicode("QkFPIE5HVVlFTiAtIDA5Njk2ODk4OTMKRW1haWw6IGJhb25ndXllbnlhbUBnbWFpbC5jb20KV2ViOiBiYW9uZ3V5ZW55YW0uZ2l0aHViLmlv")), !1;
};

// Ripple
function ccCreateRipple() {
	$('[ripple]').on('click', function (e) {
		var rippleDiv = $('<div class="ripple" />'),
		    rippleOffset = $(this).offset(),
		    rippleY = e.pageY - rippleOffset.top,
		    rippleX = e.pageX - rippleOffset.left,
		    ripple = $('.ripple');

		rippleDiv.css({
			top: rippleY - ripple.height() / 2,
			left: rippleX - ripple.width() / 2,
			background: $(this).attr("ripple-color")
		}).appendTo($(this));
		window.setTimeout(function () {
			rippleDiv.remove();
		}, 1500);
	});
}

$(document).ready(function () {
	ccCreateRipple();
});

$(document).ready(function () {
	if (CANHCAM_APP.ACTIVE_SELECT) {
		$(".select2").select2({
			placeholder: "Chọn một"
		});

		$('.select2').on("select2:select", function (e) {
			var valSelect = $(e.currentTarget).val();
		});
		$('.select2').on("select2:unselect", function (e) {
			var valUnselect = $(e.currentTarget).val();
		});
	}
});

function selectResset(e) {
	$(e).val(null).trigger("change", 0);
}

function canhCamStickyComtent() {

	$('[data-fix]').each(function () {
		$(this).css({
			"z-index": '500'
		});
		if ($(this).attr('data-top') && $(this).attr('data-top').length) {
			$(this).css({
				"top": $(this).attr('data-top')
			});
		}
		if ($(this).attr('data-left') && $(this).attr('data-left').length) {
			$(this).css({
				"left": $(this).attr('data-left')
			});
		}
		if ($(this).attr('data-bottom') && $(this).attr('data-bottom').length) {
			$(this).css({
				"bottom": $(this).attr('data-bottom')
			});
		}
		if ($(this).attr('data-right') && $(this).attr('data-right').length) {
			$(this).css({
				"right": $(this).attr('data-right')
			});
		}

		var toFix = 0;
		var typeFix = 'fixed';
		var changeFix = 'static';

		if ($(this).attr('data-fix') && $(this).attr('data-fix').length) {
			toFix = parseInt($(this).attr('data-fix'));
		}
		if ($(this).attr('data-fix-type') && $(this).attr('data-fix-type').length) {
			typeFix = $(this).attr('data-fix-type');
		}
		if ($(this).attr('data-fix-change') && $(this).attr('data-fix-change').length) {
			changeFix = $(this).attr('data-fix-change');
		}

		$(this).css({
			"position": typeFix
		});

		var scrollTop = $(window).scrollTop();
		var elementOffset = $(this).offset().top;
		var currentElementOffset = elementOffset - scrollTop;
		if (currentElementOffset <= toFix) {
			$(this).css({
				"position": changeFix,
				"top": toFix + 'px'
			});
		}
	});
}

$(document).ready(function () {
	canhCamStickyComtent();
});

$(window).scroll(function () {
	canhCamStickyComtent();
});

$(window).resize(function () {
	canhCamStickyComtent();
});

$(document).ready(function () {
	if (CANHCAM_APP.ACTIVE_VALIDATOR) {
		$('[data-toggle="validator"]').validator({
			feedback: {
				success: 'fa fa-check',
				error: 'fa fa-close'
			}
		}).on('submit', function (e) {
			if (e.isDefaultPrevented()) {
				$('[data-toggle="validator"]').find('select').parent('.form-group').addClass('has-danger');
			}
		});
		if ($('[data-toggle="validator"]').find('select').hasClass('has-success')) {
			this.removeClass('has-danger');
		}
	}
});

function searchbox() {
	$('header .menu-wrap .bottom .search .toggle-menu').click(function () {
		$('header .menu-wrap .bottom .search .Module').toggleClass('show');
	});
}

function toggleMenu() {
	$('header .toggle-menu').click(function () {
		$('header .menu-wrap').toggleClass('show');
	});
}
$(document).ready(function () {
	toggleMenu();
	searchbox();
	if (window.location.pathname === '/truyen-thong') {
		$('.canhcam-nav-3 ul.nav li:first-child a ').addClass('active');
	}
});
function CCHeader7() {
	$('.canhcam-header-7 .navbar-toggler').on("click", function () {
		$('.canhcam-header-7').toggleClass('expand');
	});
	$('.canhcam-header-7 .btnsearch .btn').on("click", function () {
		$('.canhcam-header-7 .search').toggleClass('active');
		$('.canhcam-header-7 .btnsearch').toggleClass('active');
	});
	$('.canhcam-header-7 .closebnt').on("click", function () {
		$('.canhcam-header-7').toggleClass('expand');
	});
};

function getMapto() {
	if ($(window).width() <= 767) {
		$('[k-menu-map-to]').each(function () {
			var getTo = $(this).attr('k-menu-map-to');
			$(getTo).html($(this).clone().removeAttr('k-menu-map-to').show());
			$(this).hide();
		});
	} else {
		$('[k-menu-map-to]').each(function () {
			var getTo = $(this).attr('k-menu-map-to');
			$(getTo).html('');
			$(this).show();
		});
	}
}

$(function () {
	CCHeader7();
	getMapto();
});

$(document).ready(function () {
	$('.language .dropdown .dropdown-menu').removeAttr('style');
	$('a[href="http://preview1822.canhcam.com.vn/tuyen-dung#zone-130"]').scrollTo('#zone-130', 800);
	$('a[href="http://preview1822.canhcam.com.vn/tuyen-dung#zone-135"]').scrollTo('#zone-156', 800);
});
$(window).resize(function () {
	getMapto();
	$('.canhcam-header-7').removeClass('expand');
	$('.canhcam-header-7 .search').removeClass('active');
	$('.canhcam-header-7 .btnsearch').removeClass('active');
});

$(function () {
	if ($('.canhcam-breadcrumb-1 .owl-carousel ,.canhcam-breadcrumb-6 .owl-carousel').length) {
		$('.canhcam-breadcrumb-1 .owl-carousel ,.canhcam-breadcrumb-6 .owl-carousel').owlCarousel({
			items: 1,
			loop: false,
			center: true,
			padding: 0,
			margin: 0,
			navText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
			nav: false,
			dots: false,
			autoplay: false,
			autoplayTimeout: 5000,
			autoplayHoverPause: true,
			callbacks: true,
			responsive: {
				768: {}
			}
		});
	}
});

$(document).ready(function () {
	$('.canhcam-breadcrumb-1 .breadcrumb').addClass('container');
});

$(function () {
	var owl = $('.canhcam-breadcrumb-7 .owl-carousel');
	if ($(owl).length) {
		$(owl).owlCarousel({
			items: 1,
			loop: true,
			center: true,
			padding: 0,
			margin: 0,
			navText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
			nav: false,
			dots: true,
			autoplay: true,
			autoplayTimeout: 3000,
			autoplayHoverPause: true,
			callbacks: true,
			responsive: {
				768: {
					nav: true,
					dots: false
				}
			}
		});
	}
});

$(document).ready(function () {

	var sync1 = $("#sync1");
	var sync2 = $("#sync2");
	var slidesPerPage = 2; //globaly define number of elements per page
	var syncedSecondary = true;

	sync1.owlCarousel({
		items: 1,
		slideSpeed: 2000,
		navText: ['<i class="fas fa-angle-left"></i>', '<i class="fas fa-angle-right"></i>'],
		nav: false,
		// autoplay: true,
		dots: false,
		loop: true,
		responsiveRefreshRate: 200
		// responsive: {
		// 	1200: {
		// 		nav: true
		// 	}
		// },
	}).on('changed.owl.carousel', syncPosition);

	sync2.on('initialized.owl.carousel', function () {
		sync2.find(".owl-item").eq(0).addClass("current");
	}).owlCarousel({
		items: slidesPerPage,
		dots: false,
		// autoWidth:true,
		navText: ['<i class="lnr lnr-chevron-left"></i>', '<i class="lnr lnr-chevron-right"></i>'],
		nav: true,
		smartSpeed: 200,
		slideSpeed: 500,
		responsive: {
			768: {
				items: 3
			},
			979: {
				items: 4
			},
			1200: {
				items: 9
			}
		}, //alternatively you can slide by 1, this way the active slide will stick to the first item in the second carousel
		responsiveRefreshRate: 100
	}).on('changed.owl.carousel', syncPosition2);

	function syncPosition(el) {
		//if you set loop to false, you have to restore this next line
		//var current = el.item.index;

		//if you disable loop you have to comment this block
		var count = el.item.count - 1;
		var current = Math.round(el.item.index - el.item.count / 2 - .5);

		if (current < 0) {
			current = count;
		}
		if (current > count) {
			current = 0;
		}

		//end block

		sync2.find(".owl-item").removeClass("current").eq(current).addClass("current");
		var onscreen = sync2.find('.owl-item.active').length - 1;
		var start = sync2.find('.owl-item.active').first().index();
		var end = sync2.find('.owl-item.active').last().index();

		if (current > end) {
			sync2.data('owl.carousel').to(current, 100, true);
		}
		if (current < start) {
			sync2.data('owl.carousel').to(current - onscreen, 100, true);
		}
	}

	function syncPosition2(el) {
		if (syncedSecondary) {
			var number = el.item.index;
			sync1.data('owl.carousel').to(number, 100, true);
		}
	}

	sync2.on("click", ".owl-item", function (e) {
		e.preventDefault();
		var number = $(this).index();
		sync1.data('owl.carousel').to(number, 300, true);
	});
});

$(function () {
	if ($('.canhcam-about-4 .owl-carousel').length) {
		$('.canhcam-about-4 .owl-carousel').owlCarousel({
			animateIn: 'fadeIn',
			animateOut: 'fadeOut',
			items: 1,
			loop: false,
			center: false,
			padding: 10,
			margin: 20,
			navText: ['<i class="lnr lnr-chevron-left"></i>', '<i class="lnr lnr-chevron-right"></i>'],
			nav: true,
			dots: false,
			autoplay: false,
			autoplayTimeout: 5000,
			autoplayHoverPause: true,
			callbacks: true,
			responsive: {
				480: {
					items: 2
				},
				768: {
					items: 3,
					nav: true,
					dots: false
				},
				992: {
					items: 4
				}
			}
		});
	}
});

// function getHeightBox(){
// 	// Select and loop the container element of the elements you want to equalise
// 	$('.canhcam-project-1 .project-lists .container').each(function () {

// 		// Cache the highest
// 		var highestBox = 0;

// 		// Select and loop the elements you want to equalise
// 		$('.item figure', this).each(function () {

// 			// If this box is higher than the cached highest then store it
// 			if ($(this).height() > highestBox) {
// 				highestBox = $(this).height();
// 			}

// 		});

// 		// Set the height of all those children to whichever was highest
// 		$('.item figure', this).height(highestBox);

// 	});
// }


// $(document).ready(function () {
// 	getHeightBox();
// });

// $(window).on('resize', function(){
// 	getHeightBox();
// });


$(function () {
	if ($('.canhcam-service-detail-2 .owl-carousel,.canhcam-news-details-2 .list-item').length) {
		$('.canhcam-service-detail-2 .owl-carousel,.canhcam-news-details-2 .list-item').owlCarousel({
			animateIn: 'fadeIn',
			animateOut: 'fadeOut',
			items: 1,
			loop: true,
			center: false,
			padding: 10,
			mouseDrag: false,
			touchDrag: false,
			margin: 30,
			navText: ['<i class="mdi mdi-arrow-left"></i>', '<i class="mdi mdi-arrow-right"></i>'],
			nav: true,
			dots: false,
			// autoplay: true,
			autoplayTimeout: 3000,
			autoplayHoverPause: false,
			callbacks: true,
			responsive: {
				480: {
					items: 2
				},
				768: {
					items: 3
				},
				992: {
					items: 5
				},
				1140: {
					items: 5
				}
			}
		});
	}
});

$(function () {
	if ($('.canhcam-carousel-2 .owl-carousel').length) {
		$('.canhcam-carousel-2 .owl-carousel').owlCarousel({
			animateIn: 'fadeIn',
			animateOut: 'fadeOut',
			items: 1,
			loop: false,
			center: false,
			padding: 10,
			margin: 30,
			navText: ['<i class="lnr lnr-chevron-left"></i>', '<i class="lnr lnr-chevron-right"></i>'],
			nav: true,
			dots: false,
			autoplay: false,
			autoplayTimeout: 5000,
			autoplayHoverPause: true,
			callbacks: true,
			responsive: {
				480: {
					items: 2
				},
				768: {
					items: 3,
					nav: true,
					dots: false
				},
				992: {
					items: 3
				}
			}
		});
	}
});

$(function () {
	if ($('.canhcam-home-1 .list-img').length) {
		$('.canhcam-home-1 .list-img').owlCarousel({
			items: 1,
			slideSpeed: 2000,
			navText: ['<i class="lnr lnr-chevron-left"></i>', '<i class="lnr lnr-chevron-right"></i>'],
			nav: true,
			// autoplay: true,
			dots: false,
			loop: true,
			responsiveRefreshRate: 200,
			margin: 30,
			responsive: {
				979: {
					// nav: true,
					stagePadding: 170
				}
			}
		});
	}
});
$(function () {
	if ($('.canhcam-home-1 .list-content').length) {
		$('.canhcam-home-1 .list-content').owlCarousel({
			items: 2,
			dots: false,
			// autoWidth:true,
			navText: ['<i class="lnr lnr-chevron-left"></i>', '<i class="lnr lnr-chevron-right"></i>'],
			nav: true,
			smartSpeed: 200,
			slideSpeed: 500,
			responsive: {
				979: {
					items: 5,
					nav: false
				},
				1200: {
					items: 5
				}
			}
		});
	}
});

// $(document).ready(function() {

// 	var sync1 = $("#sync11");
// 	var sync2 = $("#sync22");
// 	var slidesPerPage = 2; //globaly define number of elements per page
// 	var syncedSecondary = true;

// 	sync1.owlCarousel({
// 	items : 1,
// 	slideSpeed : 2000,
// 	navText: ['<i class="fas fa-angle-left"></i>', '<i class="fas fa-angle-right"></i>'],
// 	navText: ['<i class="lnr lnr-chevron-left"></i>', '<i class="lnr lnr-chevron-right"></i>'],
// 	nav: false,
// 	// autoplay: true,
// 	dots: false,
// 	loop: true,
// 	responsiveRefreshRate : 200,
// 	margin: 30,
// 	responsive: {
// 		979: {
// 			nav: true,
// 			stagePadding: 170
// 		}
// 	},
// 	}).on('changed.owl.carousel', syncPosition);

// 	sync2
// 	.on('initialized.owl.carousel', function () {
// 		sync2.find(".owl-item").eq(0).addClass("current");
// 	})
// 	.owlCarousel({
// 	items : slidesPerPage,
// 	dots: false,
// 	// autoWidth:true,
// 	navText: ['<i class="lnr lnr-chevron-left"></i>', '<i class="lnr lnr-chevron-right"></i>'],
// 	nav: true,
// 	smartSpeed: 200,
// 	slideSpeed : 500,
// 	responsive: {
// 			768: {
// 				items: 2
// 			},
// 			979: {
// 				items: 5,
// 				nav: false
// 			},
// 			1200: {
// 				items: 5
// 			}
// 		},//alternatively you can slide by 1, this way the active slide will stick to the first item in the second carousel
// 	responsiveRefreshRate : 100
// 	}).on('changed.owl.carousel', syncPosition2);

// 	function syncPosition(el) {
// 	//if you set loop to false, you have to restore this next line
// 	//var current = el.item.index;

// 	//if you disable loop you have to comment this block
// 	var count = el.item.count-1;
// 	var current = Math.round(el.item.index - (el.item.count/2) - .5);

// 	if(current < 0) {
// 		current = count;
// 	}
// 	if(current > count) {
// 		current = 0;
// 	}

// 	//end block

// 	sync2
// 		.find(".owl-item")
// 		.removeClass("current")
// 		.eq(current)
// 		.addClass("current");
// 	var onscreen = sync2.find('.owl-item.active').length - 1;
// 	var start = sync2.find('.owl-item.active').first().index();
// 	var end = sync2.find('.owl-item.active').last().index();

// 	if (current > end) {
// 		sync2.data('owl.carousel').to(current, 100, true);
// 	}
// 	if (current < start) {
// 		sync2.data('owl.carousel').to(current - onscreen, 100, true);
// 	}
// 	}

// 	function syncPosition2(el) {
// 	if(syncedSecondary) {
// 		var number = el.item.index;
// 		sync1.data('owl.carousel').to(number, 100, true);
// 	}
// 	}

// 	sync2.on("click", ".owl-item", function(e){
// 	e.preventDefault();
// 	var number = $(this).index();
// 	sync1.data('owl.carousel').to(number, 300, true);
// 	});
// });

function getBG16(time) {
	$('.canhcam-home-3 .item').each(function () {
		var newgt = $(this).find('figcaption p').innerHeight();
		$(this).find('figcaption p').css({
			"height": "0px",
			"overflow": "hidden"
		});
		var em = $(this).find('figure').innerHeight();
		var newg = $(this).find('figcaption').innerHeight();
		$(this).hover(function () {
			$(this).find('figcaption').stop().animate({
				height: em + "px"
			}, {
				duration: time,
				complete: function complete() {}
			});
			$(this).find('figcaption p').stop().animate({
				height: newgt + "px"
			}, {
				duration: time,
				complete: function complete() {}
			});
		}, function () {
			$(this).find('figcaption').stop().animate({
				height: newg + "px"
			}, {
				duration: time,
				complete: function complete() {}
			});
			$(this).find('figcaption p').stop().animate({
				height: "0px"
			}, {
				duration: time,
				complete: function complete() {}
			});
		});
	});
}

$(document).ready(function () {
	if ($(window).width() > CANHCAM_APP.CHANGE_GRID) {
		getBG16(1000);
	}
});

$(function () {
	if ($('.canhcam-home-4 .owl-carousel').length) {
		$('.canhcam-home-4 .owl-carousel').owlCarousel({
			animateIn: 'fadeIn',
			animateOut: 'fadeOut',
			items: 2,
			loop: false,
			center: false,
			padding: 10,
			margin: 30,
			navText: ['<i class="lnr lnr-chevron-left"></i>', '<i class="lnr lnr-chevron-right"></i>'],
			nav: true,
			dots: false,
			autoplay: false,
			autoplayTimeout: 5000,
			autoplayHoverPause: true,
			callbacks: true,
			responsive: {
				768: {
					items: 3,
					nav: true,
					dots: false
				},
				992: {
					items: 4
				}
			}
		});
	}
});

function CCFooter3() {};

$(function () {
	CCFooter3();
});

$(window).resize(function () {});

$(function () {});

$(function () {});

$(function () {});

function CCForm1() {
	$('.canhcam-form-1 .validator').validator().on('submit', function (e) {
		if (e.isDefaultPrevented()) {} else {
			$(this)[0].reset();
		}
	});
};

$(function () {
	CCForm1();
});

$(window).resize(function () {});

$(document).ready(function () {
	$('.canhcam-boxes-4 .filtermap .form_desc .form-select').addClass('custom-select mb-3');
});

$(document).ready(function () {

	// $(".canhcam-gallery-3 .gallery-list .item").lightGallery({
	// 	selector: '.boxzoom',
	// 	width: '700px',
	// 	height: '470px',
	// 	mode: 'lg-fade',
	// 	addClass: 'canhcam-gallery-3 canhcam-video-fixed-size',
	// 	counter: false,
	// 	download: false,
	// 	startClass: '',
	// 	enableSwipe: false,
	// 	enableDrag: false,
	// 	speed: 500,
	// 	thumbnail: true,
	// 	animateThumb: false,
	// 	showThumbByDefault: false,
	// });

	$(".canhcam-gallery-3 .gallery-list .item .hidden").lightGallery({
		thumbnail: true
	});

	$('.canhcam-gallery-3 .gallery-list .item').each(function () {
		$(this).click(function () {
			$(this).find('.hidden a:first-child').trigger('click');
		});
	});

	//     $(".canhcam-gallery-2 .gallery-details .gallery-lists").lightGallery({
	//         youtubePlayerParams: {
	//             modestbranding: 1,
	//             showinfo: 0,
	//             rel: 0,
	//             controls: 0
	//         },
	//         width: '700px',
	//         height: '470px',
	//         mode: 'lg-fade',
	//         addClass: 'canhcam-gallery-2 canhcam-video-fixed-size',
	//         counter: false,
	//         download: false,
	//         startClass: '',
	//         enableSwipe: false,
	//         enableDrag: false,
	//         speed: 500,
	//         loadYoutubeThumbnail: true,
	//         youtubeThumbSize: 'default',
	//         thumbnail: true,
	//         animateThumb: false,
	//         showThumbByDefault: false,
	//         selector: '.item'
	//     });
});
$(document).ready(function () {

	$(".canhcam-gallery-2 .gallery-details .gallery-lists").lightGallery({
		youtubePlayerParams: {
			modestbranding: 1,
			showinfo: 0,
			rel: 0,
			controls: 1
		},
		width: '700px',
		height: '470px',
		mode: 'lg-fade',
		addClass: 'canhcam-gallery-2 canhcam-video-fixed-size',
		counter: false,
		download: false,
		startClass: '',
		enableSwipe: false,
		enableDrag: false,
		speed: 500,
		loadYoutubeThumbnail: true,
		youtubeThumbSize: 'default',
		thumbnail: true,
		actualSize: false,
		animateThumb: false,
		showThumbByDefault: false,
		zoom: false,
		fullScreen: false,
		autoplay: false,
		// fourceAutoplay: false,
		progressBar: false,
		// controls: false,
		selector: '.item'
	});
});

function scrollNav() {
	$('.canhcam-nav-4 ul.nav').hide();
	$('.canhcam-nav-4 .trigger-btn').on('click', function () {
		if ($('.canhcam-nav-4 nav').is(':hidden') === true) {
			$('.canhcam-nav-4 nav').slideDown('slow');
			$(this).addClass('active');
		} else {
			$('.canhcam-nav-4 nav').slideUp('slow');
			$(this).removeClass('active');
		}
	});
	$('.canhcam-nav-4 ul.nav').removeAttr("style");
}

function checkMenuScroll() {
	var e = $(window).scrollTop(),
	    m = $('header').outerHeight(),
	    n = $('.canhcam-nav-4').offset().top,
	    l = $(window).height();
	if (n - m - e <= 0) {
		if ($('header').hasClass("active") == true) {
			$('.canhcam-nav-4').addClass('active').css({
				"top": m - 1 + "px"
			});
		}
	} else {
		$('.canhcam-nav-4').removeClass('active').removeAttr('style');
	}

	$('.canhcam-nav-4 nav li').each(function () {
		var u = $(this).find('a').attr('data-link');
		var s = $('#' + u).offset().top;
		if (l + e - 400 >= s) {
			$('.canhcam-nav-4 nav li a').removeClass('active');
			$(this).find('a').addClass('active');
		}
	});
}

$(document).ready(function () {
	if ($(window).width() < CANHCAM_APP.CHANGE_GRID) {
		scrollNav();
	}

	$('.canhcam-nav-4 nav li a').removeClass('active');
	$('.canhcam-nav-4 nav li:first-child a').addClass('active');
	$('.canhcam-nav-4 nav li a').on('click', function () {
		$('.canhcam-nav-4 nav li a').removeClass('active');
		$(this).addClass('active');
		$('html, body').animate({
			scrollTop: $('#' + $(this).attr('data-link')).offset().top - $('.canhcam-nav-4').outerHeight() - 80
		}, 500);

		return false;
	});

	setTimeout(function () {
		if ($('header').hasClass("active") == true) {
			var m = $('header').outerHeight();
			$('.canhcam-nav-4').addClass('active').css({
				"top": m - 1 + "px"
			});
		}
	}, 500);
});

$(window).on('scroll', function () {
	if ($('.canhcam-nav-4').length > 0) {
		checkMenuScroll();
	}
});

function changeNewsItemNews2() {
	if ($(window).width() > CANHCAM_APP.CHANGE_GRID) {
		$('.canhcam-news-2 .news-hot').each(function () {
			var geth = $(this).find('.top-list .item:first-child figure').outerHeight();
			var countitem = $(this).find('.part-list').find('.item').length;
			$(this).find('.part-list .item figure').each(function () {
				$(this).css({
					'height': 'calc(' + geth / countitem + 'px - 1rem)'
				});
			});
		});
	} else {
		$('.canhcam-news-2 .part-list .item figure').each(function () {
			$(this).css({
				'height': 'initial'
			});
		});
	}
}

$(document).ready(function () {
	changeNewsItemNews2();
	$('.canhcam-news-2 .news-list #list').click(function (event) {
		event.preventDefault();
		$(this).addClass('active');
		$('.canhcam-news-2 .news-list #grid').removeClass('active');
		$('.canhcam-news-2 #products').addClass('list-group-wrapper').removeClass('grid-group-wrapper');
	});
	$('.canhcam-news-2 .news-list #grid').click(function (event) {
		event.preventDefault();
		$(this).addClass('active');
		$('.canhcam-news-2 .news-list #list').removeClass('active');
		$('.canhcam-news-2 #products').removeClass('list-group-wrapper').addClass('grid-group-wrapper');
	});
});

$(window).resize(function () {
	changeNewsItemNews2();
});

$(function () {});

function changeNewsDetail1() {
	$(".canhcam-news-details-1 .news-read").lightGallery({
		thumbnail: true,
		animateThumb: false,
		showThumbByDefault: false,
		selector: '.item-news-read'
	});
}

function createNewsSocial1() {
	var newsFullPath = document.URL;
	var newsFullPathEncode = encodeURIComponent(document.URL);
	$('.fb-share-button').attr('data-href', newsFullPath);
	$('.fb-share-button .fb-xfbml-parse-ignore').attr('href', 'https://www.facebook.com/sharer/sharer.php?u=' + newsFullPathEncode + '&src=sdkpreparse');
	$('.twitter-share-button').attr('data-url', newsFullPath);
}

function changeIMGtoDiv1() {
	$('.canhcam-news-details-1 .othernews .item figure').each(function () {
		var tmp = $(this).find('img').attr('src');
		$(this).append('<div class="thumb"></div>');
		$(this).find('.thumb').css({
			"background-image": "url(" + tmp + ")",
			"background-position": "center center",
			"background-size": "cover"
		});
	});
}

$(document).ready(function () {
	changeNewsDetail1();
	createNewsSocial1();
	// changeIMGtoDiv1()
});

$(window).resize(function () {
	// changeIMGtoDiv1()
});
function changeNewsDetail1() {
	$(".canhcam-news-details-1 .news-read").lightGallery({
		thumbnail: true,
		animateThumb: false,
		showThumbByDefault: false,
		selector: '.item-news-read'
	});
}

function createNewsSocial1() {
	var newsFullPath = document.URL;
	var newsFullPathEncode = encodeURIComponent(document.URL);
	$('.fb-share-button').attr('data-href', newsFullPath);
	$('.fb-share-button .fb-xfbml-parse-ignore').attr('href', 'https://www.facebook.com/sharer/sharer.php?u=' + newsFullPathEncode + '&src=sdkpreparse');
	$('.twitter-share-button').attr('data-url', newsFullPath);
}

function changeIMGtoDiv1() {
	$('.canhcam-news-details-1 .othernews .item figure').each(function () {
		var tmp = $(this).find('img').attr('src');
		$(this).append('<div class="thumb"></div>');
		$(this).find('.thumb').css({
			"background-image": "url(" + tmp + ")",
			"background-position": "center center",
			"background-size": "cover"
		});
	});
}

$(function () {
	if ($('.canhcam-news-details-2 .list-slide , .canhcam-project-detail-2 .list-slide').length) {
		$('.canhcam-news-details-2 .list-slide , .canhcam-project-detail-2 .list-slide').owlCarousel({
			animateIn: 'fadeIn',
			animateOut: 'fadeOut',
			items: 1,
			loop: true,
			center: false,
			padding: 10,
			mouseDrag: false,
			touchDrag: false,
			margin: 30,
			navText: ['<i class="mdi mdi-arrow-left"></i>', '<i class="mdi mdi-arrow-right"></i>'],
			nav: true,
			dots: false,
			// autoplay: true,
			autoplayTimeout: 3000,
			autoplayHoverPause: false,
			callbacks: true,
			responsive: {
				992: {
					items: 1,
					nav: false,
					dots: true
				},
				1140: {
					items: 1,
					nav: false,
					dots: true
				}
			}
		});
	}
});

$(document).ready(function () {
	changeNewsDetail1();
	createNewsSocial1();
	// changeIMGtoDiv1()
});

$(window).resize(function () {
	// changeIMGtoDiv1()
});
//# sourceMappingURL=app.js.map
