/**
 * Created by caihuazhi on 13-11-21.
 * @need jquery, bootstrap, bootstrap-datepicker, bootstrap-timepicker, bootstrap-chosen, jquery.form, port, portSelector, icheck
 */

// SunivoWeb
!(function($, window) {
    var sunivoweb = function() {
        var method = {
            // 封装console.log方法，防止在IE中出错
            log : function(obj) {
                if (!window.console || !window.console.log) return;
                window.console.log(obj);
            },
            // 判断浏览器是否小于IE9
            ltIE9 : (window.navigator.userAgent.match(/msie \d{1,2}/i) && window.navigator.userAgent.match(/msie \d{1,2}/i)[0].substring(5) - 0 < 10),
            // 判断设备是否为IPAD
            isPad : window.navigator.userAgent.match(/ipad/i),
            // 分享
            share : {
                style: "toolbar=0,resizable=1,scrollbars=yes,status=1,width=450,height=400",
                info: "SunivoWeb, 简洁、直观的前端开发框架，让web开发更迅速、简单。",
                info_us : "I am very interested in SunivoWeb! ",
                qq: function () { //QQ
                    window.open("http://v.t.qq.com/share/share.php?title=" + encodeURIComponent(document.title) + "&info=" + this.info + "&url=" + encodeURIComponent(location.href) + "&source=bookmark", "_blank", this.style);
                },
                sina: function () { //新浪
                    window.open('http://v.t.sina.com.cn/share/share.php?title=' + encodeURIComponent(document.title) + "&info=" + this.info + '&url=' + encodeURIComponent(location.href) + '&source=bookmark', "_blank", this.style);
                },
                renren: function () { //人人
                    window.open('http://share.renren.com/share/buttonshare.do?link='+ encodeURIComponent(location.href) + encodeURIComponent(document.title) + "&info=" + this.info + '&url=' + encodeURIComponent(location.href) + '&source=bookmark', "_blank", this.style);
                },
                douban: function () { //多看
                    window.open('http://www.douban.com/recommend/?url=' + encodeURIComponent(location.href) + "&info=" + this.info + '&title=' + encodeURIComponent(location.href), "douban", this.style);
                },
                wangyi: function() { //网易
                    window.open('http://t.163.com/article/user/checkLogin.do?title=' + encodeURIComponent(document.title) + '&url=' + encodeURIComponent(location.href) + "&source=bookmark", "_blank", this.style);
                },
                twitter: function() { //推特
                    window.open("https://twitter.com/intent/tweet?url=" + encodeURIComponent(location.href) + "&title=" + encodeURIComponent(document.title) + "&text=" + this.info_us + " " + encodeURIComponent(location.href) + "&source=bookmark", "_blank", this.style);
                },
                facebook: function() { //脸书
                    window.open("https://www.facebook.com/sharer/sharer.php?u=" + encodeURIComponent(location.href) + "&title=" + encodeURIComponent(document.title), "_blank", this.style);
                }
            },
            // 设为主页
            sethome : function(obj, url) {
                try {
                    obj.style.behavior = 'url(#default#homepage)';
                    obj.setHomePage(url);
                } catch (e) {
                    if (window.netscape) {
                        try {
                            netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
                        } catch (e) {
                            alert("此操作被浏览器拒绝！\n请在浏览器地址栏输入“about:config”并回车\n然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。");
                        }
                        var prefs = Components.classes['@mozilla.org/preferences-service;1']
                            .getService(Components.interfaces.nsIPrefBranch);
                        prefs.setCharPref('browser.startup.homepage', url);
                    }
                }
            },
            // 收藏页面
            addFavourite : function(sURL, sTitle) {
                try {
                    window.external.addFavorite(sURL, sTitle);
                } catch (e) {
                    try {
                        window.sidebar.addPanel(sTitle, sURL, "");
                    } catch (e) {
                        showTipDialog("加入收藏失败，请使用Ctrl+D进行添加");
                    }
                }
            },
            // 延迟跳转
            jumpDelay : function(target, url, seconds) {
                if (!target.text) target = $(target);
                var timmer = setInterval(function() {
                    target.text(--seconds);
                    if (!seconds) {
                        clearInterval(timmer);
                        location.href = url;
                    }
                }, 1000)

            },
            // 兼容IE的轮播
            fixCarousel : function(carousel, interval) {
                carousel = typeof carousel === 'string' ? $(carousel) : carousel;
                interval = interval || 5000;
                var indicator = carousel.find(".carousel-indicators li"), item = carousel.find(".item"), isMoving = false, isHover = false;
                if (!0) { // !$.support.transition
                    $(document).off("click.carousel.data-api");
                    carousel.on("click.chemon", "[data-slide], [data-slide-to]", function(e) {
                        e.preventDefault();
                        var $this = $(this), $active, $next, isLeft, s = 600, slide;
                        if ($this.hasClass('active') || isMoving) return;
                        isMoving = true;
                        $active = item.filter(".active");
                        slide = $this.data("slide");
                        if (slide) {
                            $next = slide == 'prev' ? $active.prev() : $active.next();
                            if (!$next.length) $next = item.filter(slide == 'prev' ? ':last' : ':first');
                            isLeft = slide == 'prev';
                        } else {
                            $next = item.eq($this.data("slide-to"));
                            isLeft = $active.index() > $next.index();
                        }
                        $active.animate({left : isLeft ? "100%" : "-100%"}, s, function() {
                            $active.removeClass('active').removeAttr('style');
                        });
                        $next.addClass(isLeft ? "prev" : "next").animate({left : 0}, s, function() {
                            $next.addClass('active').removeClass('next prev').removeAttr('style');
                        });
                        setTimeout(function() {
                            indicator.filter("[data-slide-to='" + $next.index() + "']").addClass('active').siblings().removeClass('active');
                            isMoving = false;
                        }, 50); // s + 50
                    }).hover(function() {isHover = true;}, function() {isHover = false;});
                    setInterval(function() {
                        if (!isHover) carousel.find("[data-slide='next']").trigger("click");
                    }, interval)
                } else {
                    carousel.carousel({interval : interval});
                }
            }
        };
        return {
            log : method.log,
            ltIE9: method.ltIE9,
            isPad: method.isPad,
            share: {
                style : method.share.style,
                info : method.share.info,
                info_us : method.share.info_us,
                qq : method.share.qq,
                sina : method.share.sina,
                renren : method.share.renren,
                douban : method.share.douban,
                wangyi : method.share.wangyi,
                twitter : method.share.twitter,
                facebook : method.share.facebook
            },
            setHome: method.sethome,
            addFavourite: method.addFavourite,
            jumpDelay : method.jumpDelay,
            fixCarousel : method.fixCarousel
        }
    }();
    window.sunivoweb = sunivoweb;
})(jQuery, window);

// PLUGIN
// **************************

// PAGE LOADING
!(function($) {
    // "use strict";
    var Pageloading = function() {
        this.settings = {
            type : 2, // 图片种类
            text : "", // 显示文字
            left : 0, // 距元素中间左偏移
            top : 0, // 距元素中间下偏移
            color : "#666",
            bold : false,
            cover : false
        };
    };

    Pageloading.prototype.method = {
        init : function(option) {
            Pageloading.prototype.method.remove.call(this);
            return this.each(function() {
                var that = $(this),
                    temp = {
                        x : that.offset().left,
                        y : that.offset().top,
                        w : that.outerWidth(),
                        h : that.outerHeight(),
                        l : [16, 32][option.type - 1],
                        higher : (parseInt(that.css("z-index")) && parseInt(that.css("z-index"))) > 400
                    },
                    dom = $("<div class='pageloading" + (temp.higher ? " higher" : "") + "' loading-type='" + option.type + "'><i></i><span>" + option.text + "</span></div>").appendTo(document.body);
                dom.css({
                    left : temp.x + 0.5 * temp.w - 0.5 * temp.l + option.left,
                    top  : temp.y + 0.5 * temp.h - 0.5 * temp.l + option.top,
                    color : option.color,
                    fontWeight : option.bold ? "bold" : "300"
                });
                if (!sunivoweb.ltIE9) dom.find("i").addClass('icon-spin');
                if (option.cover) $(document.body).append("<p class='pageloading-cover' id='pageloadingCover'></p>");
                that.data("loadingDom", dom);
                that = temp = dom = null;
            });
        },

        remove : function() {
            $("#pageloadingCover").remove();
            return this.each(function() {
                try {
                    $(this).data("loadingDom").remove();
                    $(this).data("loadingDom", undefined);
                } catch(e) {
                    //chemon.log(e);
                }
            });
        }
    };

    $.fn.pageloading = function() {
        var pageloading = new Pageloading,
            arg0 = arguments[0], method = pageloading.method.init, opt = pageloading.settings;
        if (typeof arg0 === 'object') {
            opt = $.extend(opt, arg0);
        } else if (arg0 === 'remove') {
            method = pageloading.method.remove;
        } else if (typeof arg0 === 'string') {
            opt = $.extend(opt, {text : arg0});
        } else if (arg0) {
            return this;
        }
        arg0 = null;
        return method.apply(this, [opt]);
    }

})(jQuery);

// BOX ALERT
!(function($) {
    var Box = function (element, options) {
        this.options = options
        this.$element = $(element).delegate('[data-dismiss="box"]', 'click.dismiss.box', $.proxy(this.hide, this))
        this.options.remote && this.$element.find('.box-body').load(this.options.remote)
    }
    Box.prototype = {
        constructor: Box,
        toggle: function () {
            return this[!this.isShown ? 'show' : 'hide']()
        },
        show: function () {
            var that = this
            // , e = $.Event('boxshow')
            // this.$element.trigger(e)
            if (this.isShown) return
            this.isShown = true
            this.escape()
            this.backdrop(function () {
                var transition = $.support.transition && that.$element.hasClass('fade')
                if (!that.$element.parent().length) {
                    that.$element.appendTo(document.body) //don't move boxs dom position
                }
                that.$element.show()
                if (transition) {
                    that.$element[0].offsetWidth // force reflow
                }
                that.$element.addClass('in').attr('aria-hidden', false)
            })
        },
        hide: function (e) {
            e && e.preventDefault()
            var that = this
            if (!this.isShown) return
            this.isShown = false
            this.escape()
            $(document).off('focusin.box')
            this.$element.removeClass('in').attr('aria-hidden', true)
            $.support.transition && this.$element.hasClass('fade') ? this.hideWithTransition() : this.hidebox()
        },
        enforceFocus: function () {
            var that = this
            $(document).on('focusin.box', function (e) {
                if (that.$element[0] !== e.target && !that.$element.has(e.target).length) {
                    that.$element.focus()
                }
            })
        },
        escape: function () {
            var that = this
            if (this.isShown && this.options.keyboard) {
                this.$element.on('keyup.dismiss.box', function ( e ) {
                    e.which == 27 && that.hide()
                })
            } else if (!this.isShown) {
                this.$element.off('keyup.dismiss.box')
            }
        },
        hideWithTransition: function () {
            var that = this
                , timeout = setTimeout(function () {
                    that.$element.off($.support.transition.end)
                    that.hidebox()
                }, 500)

            this.$element.one($.support.transition.end, function () {
                clearTimeout(timeout)
                that.hidebox()
            })
        },
        hidebox: function () {
            var that = this
            this.$element.hide()
            this.backdrop(function () {
                that.removeBackdrop()
                that.options.boxback(); // 触发回调函数
            })
        },
        removeBackdrop: function () {
            this.$backdrop && this.$backdrop.remove()
            this.$backdrop = null
        },
        backdrop: function (callback) {
            var that = this,
                animate = this.$element.hasClass('fade') ? 'fade' : ''
            if (this.isShown && this.options.backdrop) {
                var doAnimate = $.support.transition && animate
                this.$backdrop = $('<div class="box-backdrop ' + animate + '" />').appendTo(document.body)
                // this.$backdrop.click(
                //   this.options.backdrop == 'static' ?
                //     $.proxy(this.$element[0].focus, this.$element[0])
                //   : $.proxy(this.hide, this)
                // )
                if (doAnimate) this.$backdrop[0].offsetWidth // force reflow
                this.$backdrop.addClass('in')
                if (!callback) return
                doAnimate ? this.$backdrop.one($.support.transition.end, callback) : callback()
            } else if (!this.isShown && this.$backdrop) {
                this.$backdrop.removeClass('in')
                $.support.transition && this.$element.hasClass('fade')?
                    this.$backdrop.one($.support.transition.end, callback) :
                    callback()
            } else if (callback) {
                callback()
            }
        }
    }

    $.fn.box = function (option) {
        return this.each(function () {
            var $this = $(this), data = $this.data('box'),
                options = $.extend({}, $.fn.box.defaults, $this.data(), typeof option == 'object' && option)
            if (!data) $this.data('box', (data = new Box(this, options)))
            if (typeof option == 'string') data[option]()
            else if (options.show) data.show()
        })
    }
    $.fn.box.defaults = {
        backdrop: true,
        keyboard: false,
        show: true,
        boxback : function(){}
    }

    $.fn.box.Constructor = Box

})(jQuery);

// ALERT BOX
!(function($, window) {
    window.alert = function(str1, callback, lan) {
        str1 = str1 + "";
        str1 = str1.replace(/\</g, "&lt;");
        str1 = str1.replace(/\>/g, "&gt;");
        str1 = str1.replace(/\//g, "&#47;");
        if (typeof callback === "string") {lan = callback; callback = undefined;}
        callback = callback || (function() {});
        var _pageLan = $("html").attr("lang") || '';
        if (_pageLan.toUpperCase() == 'EN') lan = 'en';
        var $box = $("<div class='modal fade hide alert-box'><div class='modal-body'>" + str1 + "</div><div class='modal-footer'><button class='btn btn-warning callback-btn' type='button' data-dismiss='box'>" + ((lan && lan == "en") ? "OK" : "确定") + "</button></div></div>").appendTo(document.body)
        $box.box({boxback : function() {
            $box.remove(); setTimeout(callback, 400); $box = null;
        }}).box("show")
        // return str1; //不能有返回值
    };

    window.confirm = function(str2, callback, lan) {
        str2 = str2 + "";
        str2 = str2.replace(/\</g, "&lt;");
        str2 = str2.replace(/\>/g, "&gt;");
        str2 = str2.replace(/\//g, "&#47;");
        callback = callback || function() {};
        var _pageLan = $("html").attr("lang") || '';
        if (_pageLan.toUpperCase() == 'EN') lan = 'en';
        var $box = (lan && lan == "en") ? $("<div class='modal fade hide alert-box'><div class='modal-body'>" + str2 + "</div><div class='modal-footer'><button class='btn' type='button' data-dismiss='box'>No</button><button class='btn btn-warning callback-btn' type='button' data-dismiss='box'>Yes</button></div></div>") :
            $("<div class='modal fade hide alert-box'><div class='modal-body'>" + str2 + "</div><div class='modal-footer'><button class='btn btn-warning callback-btn' type='button' data-dismiss='box'>确定</button><button class='btn' type='button' data-dismiss='box'>取消</button></div></div>");
        $box.appendTo(document.body);
        $box.box({boxback : function() {$box.remove();}})
            .find(".callback-btn").one("click", function() {setTimeout(callback, 450);});
        // return str2;
    };
})(jQuery, window);

// PORT SELECTOR
!(function ($, window) {
    function regTest(letter) {
        var reg = PortSelector.defaults.reg;
        for (key in reg) {
            if (reg[key].test(letter)) {
                return key;
            }
        }
    }
    window.parsePorts = function (from, to) {
        for (var i = 0, n = from.length; i < n; i++) {
            var port = from[i];
            var letter = port.enName.substr(0, 1);
            var result = regTest(letter);
            if (result) {
                if (!to[result][letter])to[result][letter] = [];
                to[result][letter].push(port);
            }
        }
    }
    $.fn.portSelector = function (option) {
        return this.each(function () {
            var $this = $(this)
                , data = $this.data("portSelector")
                , options = $.extend({}, $this.data(), typeof option == 'object' && option);
            if (!data) $this.data('portSelector', (data = new PortSelector(this, options)));
            if (typeof option == 'string') data[option].call(data)
        })
    };
})(jQuery, window);

// APP INIT
// **************************

// App
!(function($, window) {
    var app = function() {
        var method = {
            handleDatepicker : function() {
                var ctx = arguments.length > 0 ? arguments[0] : null,
                    t = $("input.date-picker", ctx);
                if (!t.length) return 0;
                if (!$.fn.datetimepicker) return sunivoweb.log('handleDatepicker init failed! datetimepicker is undefined!');
				/*
				var format = t.data("format") || "yyyy-mm-dd",startDate = t.data("startdate") || new Date(),endDate = t.data("enddate") || Infinity,
					opt = {
						format:format,
						startDate:startDate,
						endDate:endDate,
						weekStart: 1,
						todayBtn:  1,
						autoclose: 1,
						todayHighlight: 1,
						startView: 2,
						minView: 2,
						forceParse: 0
					};
                return t.prop('readonly',true).datetimepicker(opt);
				*/
				return t.each(function(){
					var _ = $(this);
					var format = _.data("format") || "yyyy-mm-dd",startDate = _.data("startdate") || new Date(),endDate = _.data("enddate") || Infinity,
					opt = {
						format:format,
						startDate:startDate,
						endDate:endDate,
						weekStart: 1,
						todayBtn:  1,
						autoclose: 1,
						todayHighlight: 1,
						startView: 2,
						minView: 2,
						forceParse: 0
					};
					_.prop('readonly',true).datetimepicker(opt);
				})
            },
            handleTimepicker : function() {
                var ctx = arguments.length > 0 ? arguments[0] : null,
                    t = $("input.time-picker", ctx);
                if (!t.length) return 0;
                if (!$.fn.datetimepicker) return sunivoweb.log('handleTimepicker init failed! datetimepicker is undefined!');
                return t.prop('readonly',true).datetimepicker({
					format : 'hh:ii',
					weekStart: 1,
					autoclose: 1,
					todayHighlight: 1,
					startView: 1,
					minView: 0,
					maxView: 1,
					forceParse: 0,
					minuteStep:20
                });
            },
			handleDateTimepicker : function() {
                var ctx = arguments.length > 0 ? arguments[0] : null,
                    t = $("input.datetime-picker", ctx);
                if (!t.length) return 0;
                if (!$.fn.datetimepicker) return sunivoweb.log('handleDateTimepicker init failed! datetimepicker is undefined!');
				/*
				var format = t.data("format") || "yyyy-mm-dd hh:ii",startDate = t.data("startdate") || new Date(),endDate = t.data("enddate") || Infinity,
				opt = {
					format : format,
					startDate:startDate,
					endDate:endDate,
					weekStart: 1,
					autoclose: 1,
					todayHighlight: 1,
					startView: 2,
					forceParse: 0,
					minuteStep:20
					};
                return t.prop('readonly',true).datetimepicker(opt);
				*/
				return t.each(function(){
					var _ = $(this);
					var format = _.data("format") || "yyyy-mm-dd hh:ii",startDate = _.data("startdate") || new Date(),endDate = _.data("enddate") || Infinity,
					opt = {
						format : format,
						startDate:startDate,
						endDate:endDate,
						weekStart: 1,
						autoclose: 1,
						todayHighlight: 1,
						startView: 2,
						forceParse: 0,
						minuteStep:20
					};
					_.prop('readonly',true).datetimepicker(opt);	
				})
            },
            handleChosen : function() {
                var ctx = arguments.length > 0 ? arguments[0] : null,
                    t = $("select.chosen", ctx);
                if (!t.length) return 0;
                if (!$.fn.chosen) return sunivoweb.log('handleChosen init failed! chosen is undefined!');
                return t.chosen({allow_single_deselect: true});
            },
            handleIcheck : function() {
                var ctx = arguments.length > 0 ? arguments[0] : null,
                    t= $("input.icheck", ctx),
                    _types = ['blue', 'orange', 'red', 'green', 'yellow', 'grey', 'pink', 'purple', 'white'];
                if (!t.length) return 0;
                if (!$.fn.iCheck) return sunivoweb.log('handleIcheck init failed! icheck is undefined!');
                return t.each(function() {
                    var $this = $(this), _type = '-blue', i, j;
                    for (i = 0, j = _types.length; i < j; i++) {
                        if ($this.hasClass(_types[i])) {
                            _type = '-' + _types[i];break;
                        }
                    }
                    $this.iCheck({
                        checkboxClass : ('icheckbox_minimal' + _type),
                        radioClass : ('iradio_minimal' + _type)
                    });
                });
            },
            handleAccordion : function() {
                var ctx = arguments.length > 0 ? arguments[0] : null;
                if (!$.fn.collapse) return sunivoweb.log('handleAccordion init failed! collapse is undefined!');
                $(ctx).on("show", ".accordion-group", function() {
                    $(this).addClass("active");
                }).on("hide", ".accordion-group", function() {
                    $(this).removeClass("active");
                });
            },
            handlePortSelector: function () {
                var ctx = arguments.length > 0 ? arguments[0] : null,
                    t = $("input.portSelector", ctx);
                if (!t.length) return 0;
                if (!$.fn.portSelector) return sunivoweb.log('handlePortSelector init failed! portSelector is undefined!');
                if (!window.Ports) return sunivoweb.log('window.Ports is null!');
                var dSeaPorts = {hot: [], A:{}, B:{}, C:{}, DEF: {}, GHI: {}, JKL: {}, M: {}, NO: {}, PQR: {}, S:{}, TU: {}, VWX: {}, YZ: {}},
                    dAirPorts = {hot: [], A:{}, B:{}, C:{}, DEF: {}, GHI: {}, JKL: {}, M: {}, NO: {}, PQR: {}, S:{}, TU: {}, VWX: {}, YZ: {}},
                    fSeaPorts = {hot: [], A:{}, B:{}, C:{}, DEF: {}, GHI: {}, JKL: {}, M: {}, NO: {}, PQR: {}, S:{}, TU: {}, VWX: {}, YZ: {}},
                    fAirPorts = {hot: [], A:{}, B:{}, C:{}, DEF: {}, GHI: {}, JKL: {}, M: {}, NO: {}, PQR: {}, S:{}, TU: {}, VWX: {}, YZ: {}},
                    airPorts = {hot: [], A:{}, B:{}, C:{}, DEF: {}, GHI: {}, JKL: {}, M: {}, NO: {}, PQR: {}, S:{}, TU: {}, VWX: {}, YZ: {}},
                    seaPorts = {hot: [], A:{}, B:{}, C:{}, DEF: {}, GHI: {}, JKL: {}, M: {}, NO: {}, PQR: {}, S:{}, TU: {}, VWX: {}, YZ: {}};
                window.parsePorts(window.Ports.domesticSeaPorts, dSeaPorts);
                dSeaPorts.hot = Ports.hotSeaPorts;
                window.parsePorts(Ports.domesticAirPorts, dAirPorts);
                dAirPorts.hot = Ports.hotAirPorts;
                window.parsePorts(Ports.foreignSeaPorts, fSeaPorts);
                window.parsePorts(Ports.foreignAirPorts, fAirPorts);
                window.parsePorts(Ports.foreignAirPorts.concat(Ports.domesticAirPorts), airPorts);
                airPorts.hot = Ports.hotAirPorts;
                window.parsePorts(Ports.foreignSeaPorts.concat(Ports.domesticSeaPorts), seaPorts);
                seaPorts.hot = Ports.hotSeaPorts;

                return t.portSelector({
                    dSeaPorts: dSeaPorts,
                    dAirPorts: dAirPorts,
                    fSeaPorts: fSeaPorts,
                    fAirPorts: fAirPorts,
                    airPorts: airPorts,
                    seaPorts: seaPorts
                });
            },
            handleEmailAutocomplete: function() {
                var ctx = arguments.length > 0 ? arguments[0] : null,
                    t = $("input.email", ctx),
                    rule = ["gmail.com", "hotmail.com", "live.com", "aol.com", "sina.com","sunivo.com","sina.com.cn"];
                if (!t.length) return 0;
                if (!$.fn.typeahead) return sunivoweb.log('handleEmailAutocomplete init failed! typeahead is undefined!');
                return t.attr('autocomplete','off').typeahead({
                    source : function(item, arg2) {
                        var _result = [], f = item.match(/\@/i), _temp, i, j = rule.length;
                        if (!f) {
                            for (i = 0; i < j; i++) {
                                _result.push(item.toLowerCase() + "@" + rule[i]);
                            }
                        } else {
                            _temp = item.split(/\@/);
                            for (i = 0; i < j; i++) {
                                rule[i].match(_temp[1]) ? _result.push(_temp[0].toLowerCase() + "@" + rule[i]) : 1;
                            }
                        }
                        return _result;
                    }
                });
            },
            handleFileupload: function() {
                var ctx = arguments.length > 0 ? arguments[0] : null,
                    t = $("label.file-label");
                if (!t.length) return 0;
                if (!$.fn.ajaxSubmit) return sunivoweb.log('handleFileupload init failed! need jquery.form.js!');
                t.on("change", "input:file", function() {
                    var $this = $(this),
                        _fileGroup = $this.parents('.file-group'),
                        _fileLabel = _fileGroup.find('label.file-label'),
                        _fileProgress = _fileGroup.find(".file-progress"), // 上传进度显示域
                        _fileReturn = _fileGroup.find(".file-return"), // 返回值
                        _form = _fileLabel.wrap('<form method="post" class="nonestyle"></form>').parent(), // 将表单用form包住
                        _fileName = $this.attr('name'),
                        _defaultdata = {name : '', url : '', info : ''};
                    $this.attr("name", "picture"); // 将表单的name临时改成后台需要的公共name
                    _form.ajaxSubmit({
                        url : $this.data("uploadurl"),
                        resetForm : true, // 提交成功后重置表单
                        iframe : true,
                        beforeSubmit : function(formData, jqForm, options) {
                            var obj = {};
                            // 遍历表单
                            for (var i = 0, j = formData.length; i < j; i++) {
                                if (formData[i]["name"] === "picture") {
                                    obj = formData[i];break;
                                }
                            }
                            var _imageName = (typeof obj.value === "object") ? obj.value.name : obj.value.match(/[\w\_\-\.]+$/i)[0];
                            if (_imageName.match(/\.(jpg|png|bmp|jpeg|pdf|txt)$/ig)) {
                                return true;
                            } else {
                                alert("The file format is invalid！");
                                $this.attr("name", _fileName); // 恢复表单名
                                _form.resetForm(); // 重置此部分表单
                                _form.children().unwrap(); // 清除wrap
                                return false;
                            }
                        },
                        beforeSend : function() {
                            _fileProgress.text("0");
                        },
                        uploadProgress : function(event, position, total, percentComplete) {
                            _fileProgress.text(percentComplete);
                        },
                        success : function(responseText, statusText, xhr, $form) {
                            var _data = $.parseJSON(responseText);
                            _data = $.extend(_defaultdata, _data);
                            var path = $this.data("path") || '';
                            _fileReturn.each(function() {
                                var _tagname = this.tagName.toUpperCase();
                                if (_tagname == 'INPUT') {
                                    $(this).val(_data.name);
                                } else if (_tagname == 'IMG') {
                                    $(this).attr('src', path + _data.url);
                                } else {
                                    $(this).text(_data.info);
                                }
                            });
                            $this.attr("name", _fileName); // 恢复表单名
                            _form.children().unwrap(); // 清除wrap
                            if (_data.error) return; // 如果上传时服务器返回错误状态，则不执行下面的自定义函数
                            // 自定义回调函数
                            if (typeof $this.data("callback") === 'function') $this.data("callback").apply($this.get(0), [_data, statusText]);
                            // 如果回调是一个字符串，则调用默认方法
                            else if (typeof $this.data("callback") === 'string') {
                                _fileReturn.filter("img").attr("src", "");
                                var callback_key = $this.data("key") || "url";
                                $.ajax($this.data("callback"), {
                                    type : "get",
                                    data : callback_key + "=" + _data.url,
                                    dataType : "text",
                                    success : function(_msg) {
                                        var msg = $.parseJSON(_msg);
                                        if (msg.success) _fileReturn.filter("img").attr("src", path + _data.url);
                                        else alert((msg.message || "Saving failed, please try again later!"));
                                    },
                                    error : function(_msg) {
                                        var msg = $.parseJSON(_msg);
                                        alert("ERROR : " + msg.message);
                                    }
                                });
                            }
                        }
                    });
                });
            },
            handleHref : function() {
                var ctx = arguments.length > 0 ? arguments[0] : document;
                if (!$(ctx).length) return 0;
                return $(ctx).on("click", "[data-href]", function() {
                    if ($(this).hasClass('active')) return;
                    window.location.href = $(this).data("href");
                });
            },
            handleAjaxLoad : function() {
                var ctx = arguments.length > 0 ? arguments[0] : null,
                    t = $("[data-ajaxurl]", ctx);
                if (!t.length) return 0;
                return t.each(function() {
                    var that = $(this);
                    that.load(that.data("ajaxurl"), that.data("param"), function() {
                        that.trigger("ajaxcallback");
                    });
                });
            },
            handleScrolltop : function() {
                var w = $(window), t = $("#scrolltop"), max = 400;
                if (!t.length) return 0;
                w.scrollTop() < max ? t.hide() : t.show();
                t.click(function(e) {
                    e = e || window.event;e.preventDefault();
                    t.blur();
                    $("html,body").animate({scrollTop : 0}, 300);
                });
                return w.on("scroll", function() {
                    w.scrollTop() >= max ? t.fadeIn() : t.fadeOut();
                });

            },
            handleFormReset : function() {
                var ctx = arguments.length > 0 ? arguments[0] : null,
                    t = $("button[type=reset],input[type=reset]", ctx);
                if (!t.length) return 0;
                return t.click(function(e) {
                    e = e || window.event; e.preventDefault();
                    var _form = $(this).parents("form");
                    _form.get(0).reset();
                    _form.trigger("reset");
                    _form.find("input.icheck").iCheck("update");
                    _form.find("select.chzn-done").trigger("liszt:updated");
                });
            }
        };

        return {
            /**
             * 初始化方法
             */
            init : function() {
                !method.handleDatepicker();
                !method.handleTimepicker();
				!method.handleDateTimepicker();
                !method.handleChosen();
                !method.handleIcheck();
                !method.handlePortSelector();
                !method.handleScrolltop();
                !method.handleFormReset();
                //!method.handleEmailAutocomplete(); // 邮箱联想，手动调用
                //!method.handleFileupload(); // 上传，手动调用
                //!method.handleAccordion(); // 手动调用，避免绑定过多事件
                //!method.handleHref(); // 同上
                !method.handleAjaxLoad(); // 打开，每个页面都有
                $(document).trigger('initover'); // 控制JS的执行先后顺序，将其它的方法放到事件完成后执行。
            },
            /**
             * 局部初始化
             * @param _methods 字符串，调到的方法
             * @param ctx 上下文，可直接用选择器，如'#form1'
             */
            initWithContext : function(_methods, ctx) {
                var ary = _methods.split(','), i, j;
                if (typeof ctx == 'object') ctx = ctx[1];
                for (i = 0, j = ary.length; i < j; i++) {
                    !method[ary[i]].apply(this, [ctx]);
                }
            }
        };
    }();
    window.app = window.App = app;
})(jQuery, window);

function split(_val) {
    return _val.split(/,\s*/);
}

function extractLast(term) {
    return split(term).pop();
}

// 初始化脚本
$(function() {
    // header searching form
    (function(sForm, sInput) {
        if (!sForm.length || !sInput) return 0;
        if (!$.fn.autocomplete) return sunivoweb.log("$.fn.autocomplete is undefined!");

        var _placeholder = ["Product/CAS", "Supplier"], _searchingHot = $("#searchingHot").find("span[data-val]");
        sInput.attr("placeholder", _placeholder[0]);
        _searchingHot.length && _searchingHot.hide().filter("[data-val='0']").show();

        // 绑定label点击切换事件
        var _labels = sForm.find("div.label-group");
        if (_labels) {
            _labels.on("click", "> label", function(e) {
                e = e || window.event;e.preventDefault();
                var $this = $(this), t = $($this.data("target"));
                if ($this.index() == 0) {
                    $this.next().toggle();
                    $this.parent().toggleClass('open'); /* 解决不同分辨率下按钮与左侧input不对齐问题 */
                } else {
                    $this.parent().removeClass('open');
                    $this.remove().prependTo(_labels);
                    t.prop("checked", true);
                    _labels.find("> label:last").hide();
                    sInput.attr("placeholder", _placeholder[t.val()]);
                    _searchingHot.length && _searchingHot.hide().filter("[data-val='" + t.val() + "']").show();
                }
            });
        }

        // 搜索联想
        sInput.on("keydown", function(e) {
            if ( e.keyCode === $.ui.keyCode.TAB && $(this).data("ui-autocomplete").menu.active ) e.preventDefault();
        }).autocomplete({
                source : function(request, response) {
                    $.getJSON(this.element.attr("autocomplete-url"), {
                        "keywords" : extractLast(request.term),
                        "area" : sForm.find("input:radio:checked").val()
                    }, response);
                },
                focus : function() {
                    // prevent value inserted on focus
                    return false;
                },
                select : function(e, ui) {
                    // sunivoweb.log("choosed " + ui.item.value);
                }
            }).data("ui-autocomplete")._renderItem = function(ul, item) {
            var str = item.value;
            str = !item.label ? str : "CAS:[" + item.label + "] " + str;
            str = "<a><b>" + (item.number || '') + "</b><span>" + str + "</span></a>";
            return $("<li>").append(str).appendTo(ul);
        };

        return 1;
    })($("#searchingForm"), $("#searchingInput"));

    // 判断页面高度，让footer保持在底部
    (function(f) {
        var _fh = f.outerHeight(),//166px
            _wh = $(window).outerHeight(),
            _bh = $(document.body).outerHeight();
        if (_wh > _bh) {
            f.addClass('affix');
            $(document.body).css("padding-bottom", _fh + "px");
        } else {
            f.removeClass('affix');
            //$(document.body).css("padding-bottom", 0);
        }
    })($("footer"));

    // iframe高度自适应，并且触发frameReady事件
    if (window.parent !== window.self) {
        $("#topbar, header, footer, #signTitle").remove();
        $(document.body).css("padding-bottom", 0);
        $("iframe", window.parent.document).css('height', ($(document.body).outerHeight() + 0) + "px").trigger("frameReady");
        $("#signCancel").click(function(e) {
            e = e || window.event;e.preventDefault();
            $("#contactModal, #messageModal", window.parent.document).find("button.close").click();
        });
    }

    // modal框中的iframe在显示时再加载
    var frameModal = $(".modal:has(iframe)");
    if (frameModal.length) {
        frameModal.on("shown", function() {
            frameModal.find("iframe").each(function() {
                this.src = $(this).data("src");
            });
        }).find(".modal-body").css("overflow-y", "auto");
    }

    // 将二级菜单的第一个链接放到一级菜单上面
    $("ul.main-list ul.sub-list").on("ajaxcallback", function() {
        var $this = $(this), _url = $this.find("> li:first > a").attr("href");
        return $this.prev().attr("href", _url);
    });

});