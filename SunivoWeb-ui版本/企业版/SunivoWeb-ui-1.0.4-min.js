(function(e,u,j){var f=function(){},p=j.console||{info:f,log:f,warn:f,error:f};j.console=j.console||p;var i=function(){},m={defaults:false,hasHeader:false,fillHeader:"",hasClose:false,hasBody:false,fillBody:"",hasDefFooter:false,fillFooter:"",backdrop:"static",keyboard:false,custom:null,callback:null,url:"",data:"",showNow:false,cssRule:{},defBtnEvent:{},bindEvent:e("body")},d={Wrap:'<div class="modal fade" style="display: none;" id="#">',Header:'<div class="modal-header">#',Body:'<div class="modal-body">',Footer:'<div class="modal-footer"><a href="#" class="btn btn-primary" data-dismiss="modal" event="ensure">纭畾</a><a href="#" class="btn" data-dismiss="modal" event="cancel">鍙栨秷</a></div>'},n=[];var a={isbrowser:function(){var w=i.client();for(var x in w.browser){if(x=="ie"){return parseFloat(w.browser[x])}else{return false}}},isJQueryDom:function(w){return w instanceof e},randomNumber:function(w){w=w||32;var x="ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz12345678",z="";for(var y=0;y<w;y++){z+=x.charAt(Math.floor(Math.random()*48))}return z}};var o;function q(){var w;function x(){var z='<div class="x-load" style="display: none;"><img src="../customize/img/yc/loading5.GIF"/></div>';return e(z)}y=function y(){if(w){return w}w=this;var z=x();e("body").prepend(z);u.extend(this,{create:function(){z.fadeIn()},remove:function(){z.fadeOut()}})};return y}o=q();var g={isRootElement:function(w){return w.parent().parent()[0].id=="pordAttr"},findChildren:function(w){return w.next()?[w.next()]:[]},findFather:function(x){var w=[];x.parents("li").each(function(z,y){var A=e(y).children("a");if(x.html()!=A.html()){w.push(A)}});return w},_show:function(w){u.each(w,function(x){if(x[0]&&x[0].nodeName.toLowerCase()=="ul"){x.show(200)}else{if(x[0]&&x[0].nodeName.toLowerCase()=="a"){x.next().show(200)}}})},_hide:function(w){u.each(w,function(x){if(x[0]&&x[0].nodeName.toLowerCase()=="ul"){x.hide(200)}else{if(x[0]&&x[0].nodeName.toLowerCase()=="a"){x.next().hide(200)}}})},activeFather:function(w){u.each(w,function(x){if(g.isRootElement(x)){x.addClass("nav-show nav-active on")}else{x.addClass("nav-show nav-active second-on")}})},refresh:function(w){w.find("a").removeClass("nav-show nav-active second-on on")}};var k=e("<div class='alert'><button type='button' class='close' data-dismiss='alert'>脳</button><h4></h4><div class='info'></div></div>"),v=[],t=[];i.prototype={constructor:i,createModal:function(B){var E=u.extend({},m,B),x,A,y=E.bindEvent;var C=false;var G={backdrop:E.backdrop,keyboard:E.keyboard};if(y.data("modalEvent")){x=y.data("modalEvent");A=H(x,n)}else{x=a.randomNumber(5);var z=d.Wrap.replace(/#/g,x);A=D(E);var w=E.cssRule;if(w){e("#"+x).css(w)}var F={};F.id=x;F.modal=A;n.push(F);y.data("modalEvent",x)}if(y.length){y.on("click",function(){e("#"+x).modal(G)})}if(E.showNow){e("#"+x).modal(G)}else{return e("#"+x)}function D(K){var N=K.custom,J=K.defBtnEvent;var L=document.createElement("div");L.className="modal fade";L.id=x;L.style.display="none";if(K.defaults){for(var M in K){if(/^has.*/g.test(M)){var I=M.substr(3,M.length);if(K["fill"+I]){z+=d[I];if(I!="Close"){z+=K["fill"+I];z+="</div>"}}}}if(K.hasClose){z=z.replace(/#/g,'<a class="close" data-dismiss="modal" event="cancel">脳</a>')}else{z.replace(/#/g,"")}if(K.hasDefFooter){C=true;z+=d.Footer}else{z+=K.fillFooter}z+="</div>"}else{if(N){if(typeof N=="string"){z+=N}else{if(a.isJQueryDom(N)){e(L).append(N);z=e(L)}}if(K.url){e(L).load(K.url,K.data,K.callback);z=e(L)}if(z&&!a.isJQueryDom(z)){z+="</div>"}}}e("body").append(z);if(C&&!u.isEmpty(J)){e("body #"+x).on("click",'[data-dismiss="modal"]',function(P){var O=P.target;J[O.getAttribute("event")](O)})}C=false;return e("#",x)}function H(K,I){for(var J=0;J<I.length;J++){if(I[J].id==K){return I[J].modal}}}},loading:function(){return new o()},upload:function(z){var x=z.context,y=z.async,w;if(x){x.each(function(){i.createFormForUpload(e(this),z);if(!u.isEmpty(y)){i.bindUploadEvent(e(this),y)}})}},navLocation:function(y,w){function z(A,C){var B=A.match(/^.*\/(.*)$/)[1];var D=new RegExp(".*"+B+"$","g");C.find("a").each(function(F,E){if(D.test(E.href)){x(e(E))}})}function x(B){if(g.isRootElement(B)){B.addClass("nav-show nav-active on")}else{B.addClass("nav-show nav-active second-on")}var A=g.findFather(B);g._show(A);g.activeFather(A)}g.refresh(w);z(y,w)},nav:function(x){function w(y){if(!y.hasClass("nav-show")){g._show(g.findChildren(y));if(g.isRootElement(y)){y.addClass("nav-show nav-active on")}else{y.addClass("nav-show nav-active second-on")}}else{g._hide(g.findChildren(y));if(g.isRootElement(y)){y.removeClass("nav-show nav-active on")}else{y.removeClass("nav-show nav-active second-on")}}}x.find("a").click(function(y){w(e(y.target))})},autoNumeric:function(){var x=arguments.length>0?arguments[0]:null;if(e.fn.autoNumeric){var y=e(".auto-numeric",x);for(var z=0;z<y.size();z++){var w=e(y[z]);w.autoNumeric("init")}}},errorInfo:function(y,z,I,K,w){var H=y.attr("id")?y.attr("id"):a.randomNumber(4),x,C;var N,F="",E={},D;switch(z){case"alert-block":N="警告 !";break;case"alert-error":N="错误 !";break;case"alert-success":N="成功 !";break;default:N="信息 !"}x=L(t,H)[0];if(!x){C=k.clone(true);x={id:H,form:y,errArr:[],tmpl:C};t.push(x)}if(I){var A=I.split(":");if(!M(x.errArr,A[0]).length){E.name=A[0];E.content=E.name+"项："+A[1];E.flag=true;E.context=K;x.errArr.push(E)}}else{D=G(x.errArr,K);if(D.length){B(x.errArr,D)}}if(x.errArr.length){for(var J=0;J<x.errArr.length;J++){if(x.errArr[J].flag){F+="<p>"+x.errArr[J].content+"</p>"}}}if(F){e(".info",x.tmpl).html(F).closest(".alert").addClass(z).find("h4").html(N);if(w=="top"){y.prepend(x.tmpl)}else{if(w=="bootom"){y.append(x.tmpl)}}}else{x.tmpl.remove()}function M(O,P){return u.filter(O,function(Q){return Q.name==P})}function G(O,P){return u.filter(O,function(Q){return Q.context==P})}function B(Q,O){for(var R=0;R<O.length;R++){for(var P=0;P<Q.length;P++){if(Q[P].name==O[R].name){Q.splice(P,1)}}}}function L(O,P){return u.filter(O,function(Q){return Q.id==P})}},fold:function(){if(e("[data-fold]").length){var F=e("[data-fold]"),B=F.data("fold").split("#"),A=B[0],E=B[1],x,y,C;if(parseInt(A,10)-2>=0){x=E+":gt("+(A-2).toString()+")";y=E+":eq("+(A-2).toString()+")"}else{return false}function z(H){var G=0;H.each(function(J,I){G+=parseInt(e(I).outerHeight(true))});return G}if(F.children(":not("+E+")").length){C=F.children(":not("+E+")")}var w=F.find(x),D=z(w);w.wrapAll('<div class="tab-hid" style="height: 0; *min-height: 0;"></div>');e(".tab-hid").after(this._createFoldTab(E,D,C))}},_createFoldTab:function(y,x,w){var A=document.createElement("div"),B='<div class="searchMessage-tab-btn"><i class=" icon-chevron-down i-middle"></i></div>',z=e(A);z.addClass(y.substring(1)).addClass("searchMessage-tab");if(w){w.appendTo(z)}e(B).appendTo(z);z.on("click",function(){var C=e(".tab-hid");if(!C.hasClass("show-fold")){if(a.isbrowser()&&a.isbrowser()<=7){C.addClass("show-fold").css({height:parseInt(x,10)});e(".searchMessage-tab-btn").find("i").removeClass("icon-chevron-down").addClass("icon-chevron-up")}else{C.animate({height:parseInt(x,10)},function(){C.addClass("show-fold").css({overflow:"visible","z-index":"1000"});e(".searchMessage-tab-btn").find("i").removeClass("icon-chevron-down").addClass("icon-chevron-up")})}}else{if(a.isbrowser()&&a.isbrowser()<=7){C.removeClass("show-fold").css({height:0});e(".searchMessage-tab-btn").find("i").removeClass("icon-chevron-up").addClass("icon-chevron-down")}else{C.animate({height:0},function(){C.removeClass("show-fold").css({overflow:"hidden","z-index":"0"});e(".searchMessage-tab-btn").find("i").removeClass("icon-chevron-up").addClass("icon-chevron-down")})}}});return z},stick:function(w){e(".main-footer").append('<div class="backWaperWaper" style="float:right;"><div class="backWaper"><a href=""><i class="icoAll ico-25"></i></a></div></div>');if(w&&!e(".ico-24").length){var x=function(){var y=e(document).scrollTop();y>0?e(".ico-24").fadeIn(200):e(".ico-24").hide()};e(".backWaper").append("<div class='icoAll ico-24'></div>");x();e(".ico-24").click(function(){e("html, body").animate({scrollTop:0},500)});e(window).bind("scroll",x)}},datepicker:function(){var x=arguments.length>0?arguments[0]:null,z=e("input.date-picker",x);if(!z.length){return 0}if(!e.fn.datetimepicker){return p.log("handleDatepicker init failed! datetimepicker is undefined!")}var B=z.data("format")||"yyyy-mm-dd",w=z.data("startdate")||new Date(),A=z.data("enddate")||Infinity,y={format:B,startDate:w,endDate:A,weekStart:1,todayBtn:1,autoclose:1,todayHighlight:1,startView:2,minView:2,forceParse:0};return z.prop("readonly",true).datetimepicker(y)},timepicker:function(){var w=arguments.length>0?arguments[0]:null,x=e("input.time-picker",w);if(!x.length){return 0}if(!e.fn.datetimepicker){return p.log("handleTimepicker init failed! datetimepicker is undefined!")}return x.prop("readonly",true).datetimepicker({format:"hh:ii",weekStart:1,autoclose:1,todayHighlight:1,startView:1,minView:0,maxView:1,forceParse:0,minuteStep:20})},dateTimepicker:function(){var x=arguments.length>0?arguments[0]:null,z=e("input.datetime-picker",x);if(!z.length){return 0}if(!e.fn.datetimepicker){return p.log("handleDateTimepicker init failed! datetimepicker is undefined!")}var B=z.data("format")||"yyyy-mm-dd hh:ii",w=z.data("startdate")||new Date(),A=z.data("enddate")||Infinity,C=z.data("minstep")||30,y={format:B,startDate:w,endDate:A,weekStart:1,autoclose:1,todayHighlight:1,startView:2,forceParse:0,minuteStep:C};return z.prop("readonly",true).datetimepicker(y)},chosen:function(){var w=arguments.length>0?arguments[0]:null,x=e("select.chosen",w);if(!x.length){if(a.isJQueryDom(w)){x=w}else{return 0}}if(!e.fn.chosen){return p.log("handleChosen init failed! chosen is undefined!")}return x.chosen({allow_single_deselect:true})},icheck:function(){var w=arguments.length>0?arguments[0]:null,x=e("input.icheck",w),y=["blue","orange","red","green","yellow","grey","pink","purple","white"];if(!x.length){if(a.isJQueryDom(w)){x=w}else{return 0}}if(!e.fn.iCheck){return p.log("handleIcheck init failed! icheck is undefined!")}x.each(function(){var C=e(this),A="-blue",B,z;for(B=0,z=y.length;B<z;B++){if(C.hasClass(y[B])){A="-"+y[B];break}}C.iCheck({checkboxClass:("icheckbox_minimal"+A),radioClass:("iradio_minimal"+A)})})},share:{style:"toolbar=0,resizable=1,scrollbars=yes,status=1,width=450,height=400",info:"SunivoWeb, 简洁、直观的前端开发框架，让web开发更迅速、简单。",info_us:"I am very interested in SunivoWeb! ",qq:function(){window.open("http://v.t.qq.com/share/share.php?title="+encodeURIComponent(document.title)+"&info="+this.info+"&url="+encodeURIComponent(location.href)+"&source=bookmark","_blank",this.style)},sina:function(){window.open("http://v.t.sina.com.cn/share/share.php?title="+encodeURIComponent(document.title)+"&info="+this.info+"&url="+encodeURIComponent(location.href)+"&source=bookmark","_blank",this.style)},renren:function(){window.open("http://share.renren.com/share/buttonshare.do?link="+encodeURIComponent(location.href)+encodeURIComponent(document.title)+"&info="+this.info+"&url="+encodeURIComponent(location.href)+"&source=bookmark","_blank",this.style)},douban:function(){window.open("http://www.douban.com/recommend/?url="+encodeURIComponent(location.href)+"&info="+this.info+"&title="+encodeURIComponent(location.href),"douban",this.style)},wangyi:function(){window.open("http://t.163.com/article/user/checkLogin.do?title="+encodeURIComponent(document.title)+"&url="+encodeURIComponent(location.href)+"&source=bookmark","_blank",this.style)},twitter:function(){window.open("https://twitter.com/intent/tweet?url="+encodeURIComponent(location.href)+"&title="+encodeURIComponent(document.title)+"&text="+this.info_us+" "+encodeURIComponent(location.href)+"&source=bookmark","_blank",this.style)},facebook:function(){window.open("https://www.facebook.com/sharer/sharer.php?u="+encodeURIComponent(location.href)+"&title="+encodeURIComponent(document.title),"_blank",this.style)}},formValidation:function(y){var A={submitHandler:function(B){B.submit()},focusCleanup:false,focusInvalid:false,ignore:".chzn-search input",debug:true,onfocusout:function(C,D){if(!this.checkable(C)&&(C.name in this.submitted||!this.optional(C))){this.element(C)}if(this.settings.errorPlacement&&y.errorPlacement){var B=e(D.currentTarget).data("validator");if(e(C).parent().hasClass("chzn-search")){C=e(C).closest(".chzn-container").prev()[0]}B.check(C);B.showErrors()}}},x=this;if(y.rules){A.rules=y.rules}function w(){y._context.find(".datetime-picker",".time-picker",".date-picker").each(function(C,B){e(this).on("change",function(){var D=e(this);if(this.value){D.removeClass("error").removeClass("tooltips");D.removeAttr("data-original-title");D.removeAttr("style");x.errorInfo(y._context,y.type,"",this,y.location)}})})}if(y._context.find(".chosen").length){i.workForChosenRelevance()}if(y._context.find(".datetime-picker",".time-picker",".date-picker").length){w()}if(y.moduleName=="bubbleTip"){var z={placement:"top",trigger:"hover"};u.extend(A,{errorPlacement:function(E,C){var B=E[0];var D=C;D.addClass("error tooltips");D.attr("data-original-title",B.innerHTML);D.attr("style","border:1px solid #f00");if(D[0].nodeName.toLowerCase()=="select"){D.hide()}C.tooltip(u.extend({placement:y.placement,trigger:y.trigger},z));e(D).trigger("classNameChage")},unhighlight:function(C){var B=e(C);var D=B;D.removeClass("error").removeClass("tooltips");D.removeAttr("data-original-title");D.removeAttr("style");if(D[0].nodeName.toLowerCase()=="select"){D.hide()}}})}e.validator.setDefaults(A);y._context.validate()},formErrorTip:function(x,w){var w=w;var y=x;y.addClass("error tooltips");y.attr("data-original-title",w);y.attr("style","border:1px solid #f00");if(y[0].nodeName.toLowerCase()=="select"){y.hide()}y.tooltip({placement:"top",trigger:"hover"});e(y).trigger("classNameChage");return},setHome:function(w){if(document.all){document.body.style.behavior="url(#default#homepage)";document.body.setHomePage(w)}else{alert("您好,您的浏览器不支持自动设置页面为首页功能,请您手动在浏览器里设置该页面为首页!")}},addFavorite:function(x,w){x=encodeURI(x);try{window.external.addFavorite(x,w)}catch(y){try{window.sidebar.addPanel(w,x,"")}catch(y){alert("加入收藏失败，请使用Ctrl+D进行添加,或手动在浏览器里进行设置.")}}},emailAutocomplete:function(){var w=arguments.length>0?arguments[0]:null,x=e("input.email",w),y=["gmail.com","hotmail.com","live.com","aol.com","sina.com","sunivo.com","sina.com.cn"];if(!x.length){return 0}if(!e.fn.typeahead){return p.log("emailAutocomplete init failed! typeahead is undefined!")}return x.attr("autocomplete","off").typeahead({source:function(D){var C=[],E=D.match(/@/i),z,B,A=y.length;if(!E){for(B=0;B<A;B++){C.push(D.toLowerCase()+"@"+y[B])}}else{z=D.split(/@/);for(B=0;B<A;B++){y[B].match(z[1])?C.push(z[0].toLowerCase()+"@"+y[B]):1}}return C}})},placeholder:function(H){function y(){var I=document.createElement("input");return"placeholder" in I}function F(){var I=document.createElement("textarea");return"placeholder" in I}function C(J){var K=e(J).index();var I=x[e(J).index()];e(J).css("color",I)}function E(I){return I.css("position")}if(!y()){var w=e(":text,:password");var B=w.length;var x=[],A;for(var z=0;z<B;z++){var G=w[z],A=e(G);var D=A.attr("placeholder");if(A.val()==""&&D!=null){A.addClass("m-placeholder-input");if(!E(A)){A.wrap('<div style="display:inline-block; position: relative;" class="x-placeholder-ie-layout"></div>')}A.after('<span class="placeholer">'+D+"</span>")}}w.focus(function(){e(this).next("span").hide()});w.blur(function(){if(e(this).val()==""){e(this).next("span").show()}})}if(!F()){var w=e("textarea");var B=w.length;var x=[];for(var z=0;z<B;z++){var G=w[z];var D=e(G).attr("placeholder");if(e(G).html()==""&&D!=null){e(G).addClass("m-placeholder-input");e(G).wrap('<div style="display:inline-block; position: relative;"></div>');e(G).after('<span class="placeholer">'+D+"</span>")}}w.focus(function(){e(this).next("span").hide()});w.blur(function(){if(e(this).html()==""){e(this).next("span").show()}})}e(".placeholer").each(function(){var J=e(this).closest(".x-placeholder-ie-layout"),M=e(this).prev(".m-placeholder-input");var L=M.position().left;var K=M.position().top;var I;if(J[0]){I=e.extend({position:"absolute",left:(L+M.offset().left-J.offset().left)+"px",top:(K+M.offset().top-J.offset().top)+"px",padding:"5px 0 0 5px",color:M.css("color"),width:M.width()/2+"px"},H)}else{I=e.extend({position:"absolute",left:(M.position().left+5)+"px",top:(M.position().top+M.height()/2-e(this).height()/2)+"px",padding:"5px 0 0 5px",color:M.css("color"),width:M.width()/2+"px"},H)}e(this).css(I)});e(".placeholer").click(function(){e(this).hide();e(this).prev(".m-placeholder-input").focus()});e(".m-placeholder-input").click(function(){var J=e(this),I=J.next();if(I[0].nodeName.toLowerCase()=="span"){I.hide()}else{I.next().hide()}})},infoTip:function(){var x=arguments[0],A,B="",z=arguments[1];switch(z){case"alert-block":A="Waring !";break;case"alert-error":A="Error !";break;case"alert-success":A="Success !";break;default:A="Info !"}var w=arguments.length;for(var y=2;y<w;y++){B=B+"<div class='info'>"+arguments[y]+"</div>"}k.addClass(z).append(B).find("h4").html(A);x.append(k)},turn2Page:function(){var w=arguments.length>0?arguments[0]:1;var y=e("#page");var x=arguments.length>0?arguments[1]:e("#filterForm");if(y.length==0){y=e("<input type='hidden' name='number' id='number'>").appendTo(x)}y.val(w);x.submit()},ajaxTurn2Page:function(){var B=arguments.length>0?arguments[0]:null;var A=arguments.length>1?arguments[1]:"#";var z=arguments.length>2?arguments[2]:"1";var y=arguments.length>3?arguments[3]:window;var D=arguments.length>4?arguments[4]:function(){};this.element=y;var x=this;e(B).trigger({type:"startLoad",number:z});var w=e("form",B);if(w.length==0){w=e(B).parent("form")}if(w.length==0){w=e(B).parents("form")}var C=e.extend({number:z},this._serializeAjax(w));e(B).load(A,C,e.proxy(x.callback,x))},_serializeAjax:function(w){var x=new Object();e.each(w.serializeArray(),function(y,z){if(!(z.name in x)){x[z.name]=z.value}});return x},initPage:function(z){var w=e(".turnPage"),y=e(".ajaxTurnPage"),x=this;if(z){x.callback=z}if(w.length){w.closest("form").on("click",".turnPage",function(D){var A=e(D.target),C=D.target.getAttribute("number"),B=A.closest("form");x.turn2Page(C,B)})}else{if(y.length){y.on("click",function(G){var F=G.target,C=parseInt(F.getAttribute("number")),E=F.getAttribute("contextSel"),B=F.getAttribute("baseUrl"),D=F.getAttribute("action");var A=e(F).closest(".pagination").attr("pageNumber");if(!C){C=parseInt(e(F).closest(".pagination").attr("currentPage"))}if(D){if(D=="prev"){C=C-1>0?C-1:1}else{if(D=="next"){C=C+1>A?A:C+1}}}x.ajaxTurn2Page(E,B,C,F,z)})}}}};var s=i.prototype;var b={client:function(){var y={ie:0,gecko:0,webkit:0,khtml:0,opera:0,ver:null},w={ie:0,firefox:0,safari:0,konq:0,opera:0,chrome:0,ver:null},z={win:false,mac:false,xll:false,iphone:false,ipod:false,ipad:false,ios:false,android:false,nokiaN:false,winMobile:false,wii:false,ps:false},x=navigator.userAgent;if(window.opera){y.ver=w.ver=window.opera.version();y.opera=w.opera=parseFloat(y.ver)}else{if(/AppleWebKit\/(\S+)/.test(x)){y.ver=RegExp["$1"];y.webkit=parseFloat(y.ver);if(/Chrome\/(\S+)/.test(x)){w.ver=RegExp["$1"];w.chrome=parseFloat(w.ver)}else{if(/Version\/(\S+)/.test(x)){w.ver=RegExp["$1"];w.safari=parseFloat(w.ver)}else{var B=1;if(y.webkit<100){B=1}else{if(y.webkit<312){B=1.2}else{if(y.webkit<412){B=1.3}else{B=2}}}w.safari=w.ver=B}}}else{if(/KHTML\/(\S+)/.test(x)||/Konqueror\/([^;]+)/.test(x)){y.ver=w.ver=RegExp["$1"];y.khtml=w.konq=parseFloat(y.ver)}else{if(/rv:([^\)]+)\) Gecko\/\d{8}/.test(x)){y.ver=RegExp["$1"];y.gecko=parseFloat(y.ver);if(/Firefox\/(\S+)/.test(x)){w.ver=RegExp["$1"];w.firefox=parseFloat(w.ver)}}else{if(/MSIE ([^;]+)/.test(x)){y.ver=w.ver=RegExp["$1"];y.ie=w.ie=parseFloat(y.ver)}else{if(/Trident\/(\S+)/.test(x)){y.ver=w.ver=parseFloat(RegExp["$1"])+4;y.ie=w.ie=parseFloat(y.ver)}}}}}}w.ie=y.ie;w.opera=y.opera;var A=navigator.platform;z.win=A.indexOf("Win")==0;z.mac=A.indexOf("Mac")==0;z.xll=(A=="Xll")||(A.indexOf("Linux")==0);if(z.win){if(/Win(?:dows )?([^do]{2})\s?(\d+\.\d+)?/.test(x)){if(RegExp["$1"]=="NT"){switch(RegExp["$2"]){case"5.0":z.win="2000";break;case"5.1":z.win="XP";break;case"6.0":z.win="Vista";break;case"6.1":z.win="7";break;default:z.win="NT";break}}else{if(RegExp["$1"]=="9x"){z.win="ME"}else{z.win=RegExp["$1"]}}}}z.iphone=x.indexOf("iPhone")>-1;z.ipod=x.indexOf("iPod")>-1;z.ipad=x.indexOf("iPad")>-1;z.nokiaN=x.indexOf("NokiaN")>-1;if(z.win=="CE"){z.winMobile=z.win}else{if(z.win=="Ph"){if(/Window Phone OS (\d+.\d+)/.test(x)){z.win="Phone";z.winMobile=parseFloat(RegExp["$1"])}}}if(z.mac&&x.indexOf("Mobile")>-1){if(/CPU (?:iPhone )?OS(\d+_\d+)/.test(x)){z.ios=parseFloat(RegExp.$1.replace("_","."))}else{z.ios=2}}if(/Android (\d+\.\d+)/.test(x)){z.android=parseFloat(RegExp.$1)}z.wii=x.indexOf("Wii")>-1;z.ps=/playstation/i.test(x);return{engine:y,browser:w,system:z}}};var c={createFormForUpload:function(x,z){var y=e('<a href="javascript:void(0);">上传</a>'),w;x.wrap('<div style="position: relative;"></div>');x.css({"z-index":"2",opacity:0,position:"absolute",cursor:"pointer"});w=this.getLayoutFromContextForUpload(x,z);x.parent().append(y.css(w));x.css({width:y.width(),height:y.height()})},getLayoutFromContextForUpload:function(x,A){var y=x.parent(),B=y.offset(),z=x.offset(),w=A.cssRule||{};return e.extend({left:z.left-B.left,top:z.top-B.top,position:"absolute","z-index":"1"},w)},bindUploadEvent:function(w,x){e.extend(x,{secureuri:false});w.parent().on("change",w,function(){e.ajaxFileUpload(x)})},workForChosenRelevance:function(){var x=["required","remote","email","url","date","dateISO","number","digits","creditcard","equalTo","maxlength","minlength","rangelength","range","max","min"];var w=[];function A(C){for(var B=0;B<x.length;B++){if(C.hasClass(x[B])){return C.addClass("chosen-validate")}}}function y(B){B.on("classNameChage",function(E){var C=e(E.target),D=C.next().find("a");if(E.target.getAttribute("multiple")){D=C.next().find(".chzn-choices")}if(C.hasClass("error")){D.attr("style","border:1px solid #f00");D.addClass("error tooltips");D.attr("data-original-title",C.attr("data-original-title"));D.tooltip()}else{D.removeClass("error").removeClass("tooltips");D.removeAttr("data-original-title");D.removeAttr("style")}})}function z(C){var B=e(C.target),D;D=B.closest(".chzn-container").prev();D.blur();D.trigger("classNameChage")}e(".chosen").each(function(C,B){var D=A(e(B));if(D){w.push(D)}y(e(B))});e(".chosen").chosen();e("form").on("click",".chzn-container",z).on("focusin focusout",".chzn-container",z)}};var l={formReset:function(x){var w=x.find(".chosen"),y=x.find(".icheck");x[0].reset();w.trigger("liszt:updated");s.icheck(y)},trim:function(w){if(String.prototype.trim){return w.trim()}else{return w.replace(/(^\s*)|(\s*$)/g,"")}}};u.extend(i,c);u.extend(i,b);u.extend(i.prototype,a);u.extend(i.prototype,b);u.extend(i.prototype,l);function r(x){function y(){}y.prototype=x.prototype;var w=new y(),z=function(){x.call(this)};w.constructor=z;z.prototype=w;return z}var h=r(i);h.prototype.init=function(){this.datepicker();this.timepicker();this.dateTimepicker();this.chosen();this.icheck()};window.sw=h})(jQuery,_,window);