(function(e,t,j){var f=function(){},p=j.console||{info:f,log:f,warn:f,error:f};j.console=j.console||p;var i=function(){},m={defaults:false,hasHeader:false,fillHeader:"",hasClose:false,hasBody:false,fillBody:"",hasDefFooter:false,fillFooter:"",backdrop:"static",keyboard:false,custom:null,callback:null,url:"",data:"",showNow:false,cssRule:{},defBtnEvent:{},bindEvent:e("body")},d={Wrap:'<div class="modal fade" style="display: none;" id="#">',Header:'<div class="modal-header">#',Body:'<div class="modal-body">',Footer:'<div class="modal-footer"><a href="#" class="btn btn-primary" data-dismiss="modal" event="ensure">纭畾</a><a href="#" class="btn" data-dismiss="modal" event="cancel">鍙栨秷</a></div>'},n=[];var a={isbrowser:function(){var v=i.client();for(var w in v.browser){if(w=="ie"){return parseFloat(v.browser[w])}else{return false}}},isJQueryDom:function(v){return v instanceof e},randomNumber:function(v){v=v||32;var w="ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz12345678",y="";for(var x=0;x<v;x++){y+=w.charAt(Math.floor(Math.random()*48))}return y}};var o;function q(){var v;function w(){var y='<div class="x-load" style="display: none;"><img src="../customize/img/yc/loading5.GIF"/></div>';return e(y)}x=function x(){if(v){return v}v=this;var y=w();e("body").prepend(y);t.extend(this,{create:function(){y.fadeIn()},remove:function(){y.fadeOut()}})};return x}o=q();var g={isRootElement:function(v){return v.parent().parent()[0].id=="pordAttr"},findChildren:function(v){return v.next()?[v.next()]:[]},findFather:function(w){var v=[];w.parents("li").each(function(y,x){var z=e(x).children("a");if(w.html()!=z.html()){v.push(z)}});return v},_show:function(v){t.each(v,function(w){if(w[0]&&w[0].nodeName.toLowerCase()=="ul"){w.show(200)}else{if(w[0]&&w[0].nodeName.toLowerCase()=="a"){w.next().show(200)}}})},_hide:function(v){t.each(v,function(w){if(w[0]&&w[0].nodeName.toLowerCase()=="ul"){w.hide(200)}else{if(w[0]&&w[0].nodeName.toLowerCase()=="a"){w.next().hide(200)}}})},activeFather:function(v){t.each(v,function(w){if(g.isRootElement(w)){w.addClass("nav-show nav-active on")}else{w.addClass("nav-show nav-active second-on")}})},refresh:function(v){v.find("a").removeClass("nav-show nav-active second-on on")}};var k=e("<div class='alert'><button type='button' class='close' data-dismiss='alert'>脳</button><h4></h4><div class='info'></div></div>"),u=[],s=[];i.prototype={constructor:i,createModal:function(A){var D=t.extend({},m,A),w,z,x=D.bindEvent;var B=false;var F={backdrop:D.backdrop,keyboard:D.keyboard};if(x.data("modalEvent")){w=x.data("modalEvent");z=G(w,n)}else{w=a.randomNumber(5);var y=d.Wrap.replace(/#/g,w);z=C(D);var v=D.cssRule;if(v){e("#"+w).css(v)}var E={};E.id=w;E.modal=z;n.push(E);x.data("modalEvent",w)}if(x.length){x.on("click",function(){e("#"+w).modal(F)})}if(D.showNow){e("#"+w).modal(F)}else{return e("#"+w)}function C(J){var M=J.custom,I=J.defBtnEvent;var K=document.createElement("div");K.className="modal fade";K.id=w;K.style.display="none";if(J.defaults){for(var L in J){if(/^has.*/g.test(L)){var H=L.substr(3,L.length);if(J["fill"+H]){y+=d[H];if(H!="Close"){y+=J["fill"+H];y+="</div>"}}}}if(J.hasClose){y=y.replace(/#/g,'<a class="close" data-dismiss="modal" event="cancel">脳</a>')}else{y.replace(/#/g,"")}if(J.hasDefFooter){B=true;y+=d.Footer}else{y+=J.fillFooter}y+="</div>"}else{if(M){if(typeof M=="string"){y+=M}else{if(a.isJQueryDom(M)){e(K).append(M);y=e(K)}}if(J.url){e(K).load(J.url,J.data,J.callback);y=e(K)}if(y&&!a.isJQueryDom(y)){y+="</div>"}}}e("body").append(y);if(B&&!t.isEmpty(I)){e("body #"+w).on("click",'[data-dismiss="modal"]',function(O){var N=O.target;I[N.getAttribute("event")](N)})}B=false;return e("#",w)}function G(J,H){for(var I=0;I<H.length;I++){if(H[I].id==J){return H[I].modal}}}},loading:function(){return new o()},upload:function(y){var w=y.context,x=y.async,v;if(w){w.each(function(){i.createFormForUpload(e(this),y);if(!t.isEmpty(x)){i.bindUploadEvent(e(this),x)}})}},navLocation:function(x,v){function y(z,B){var A=z.match(/^.*\/(.*)$/)[1];var C=new RegExp(".*"+A+"$","g");B.find("a").each(function(E,D){if(C.test(D.href)){w(e(D))}})}function w(A){if(g.isRootElement(A)){A.addClass("nav-show nav-active on")}else{A.addClass("nav-show nav-active second-on")}var z=g.findFather(A);g._show(z);g.activeFather(z)}g.refresh(v);y(x,v)},nav:function(w){function v(x){if(!x.hasClass("nav-show")){g._show(g.findChildren(x));if(g.isRootElement(x)){x.addClass("nav-show nav-active on")}else{x.addClass("nav-show nav-active second-on")}}else{g._hide(g.findChildren(x));if(g.isRootElement(x)){x.removeClass("nav-show nav-active on")}else{x.removeClass("nav-show nav-active second-on")}}}w.find("a").click(function(x){v(e(x.target))})},autoNumeric:function(){var w=arguments.length>0?arguments[0]:null;if(e.fn.autoNumeric){var x=e(".auto-numeric",w);for(var y=0;y<x.size();y++){var v=e(x[y]);v.autoNumeric("init")}}},errorInfo:function(x,y,H,J,v){var G=x.attr("id")?x.attr("id"):a.randomNumber(4),w,B;var M,E="",D={},C;switch(y){case"alert-block":M="警告 !";break;case"alert-error":M="错误 !";break;case"alert-success":M="成功 !";break;default:M="信息 !"}w=K(s,G)[0];if(!w){B=k.clone(true);w={id:G,form:x,errArr:[],tmpl:B};s.push(w)}if(H){var z=H.split(":");if(!L(w.errArr,z[0]).length){D.name=z[0];D.content=D.name+"项："+z[1];D.flag=true;D.context=J;w.errArr.push(D)}}else{C=F(w.errArr,J);if(C.length){A(w.errArr,C)}}if(w.errArr.length){for(var I=0;I<w.errArr.length;I++){if(w.errArr[I].flag){E+="<p>"+w.errArr[I].content+"</p>"}}}if(E){e(".info",w.tmpl).html(E).closest(".alert").addClass(y).find("h4").html(M);if(v=="top"){x.prepend(w.tmpl)}else{if(v=="bootom"){x.append(w.tmpl)}}}else{w.tmpl.remove()}function L(N,O){return t.filter(N,function(P){return P.name==O})}function F(N,O){return t.filter(N,function(P){return P.context==O})}function A(P,N){for(var Q=0;Q<N.length;Q++){for(var O=0;O<P.length;O++){if(P[O].name==N[Q].name){P.splice(O,1)}}}}function K(N,O){return t.filter(N,function(P){return P.id==O})}},fold:function(){if(e("[data-fold]").length){var E=e("[data-fold]"),A=E.data("fold").split("#"),z=A[0],D=A[1],w,x,B;if(parseInt(z,10)-2>=0){w=D+":gt("+(z-2).toString()+")";x=D+":eq("+(z-2).toString()+")"}else{return false}function y(G){var F=0;G.each(function(I,H){F+=parseInt(e(H).outerHeight(true))});return F}if(E.children(":not("+D+")").length){B=E.children(":not("+D+")")}var v=E.find(w),C=y(v);v.wrapAll('<div class="tab-hid" style="height: 0; *min-height: 0;"></div>');e(".tab-hid").after(this._createFoldTab(D,C,B))}},_createFoldTab:function(x,w,v){var z=document.createElement("div"),A='<div class="searchMessage-tab-btn"><i class=" icon-chevron-down i-middle"></i></div>',y=e(z);y.addClass(x.substring(1)).addClass("searchMessage-tab");if(v){v.appendTo(y)}e(A).appendTo(y);y.on("click",function(){var B=e(".tab-hid");if(!B.hasClass("show-fold")){if(a.isbrowser()&&a.isbrowser()<=7){B.addClass("show-fold").css({height:parseInt(w,10)});e(".searchMessage-tab-btn").find("i").removeClass("icon-chevron-down").addClass("icon-chevron-up")}else{B.animate({height:parseInt(w,10)},function(){B.addClass("show-fold").css({overflow:"visible","z-index":"1000"});e(".searchMessage-tab-btn").find("i").removeClass("icon-chevron-down").addClass("icon-chevron-up")})}}else{if(a.isbrowser()&&a.isbrowser()<=7){B.removeClass("show-fold").css({height:0});e(".searchMessage-tab-btn").find("i").removeClass("icon-chevron-up").addClass("icon-chevron-down")}else{B.animate({height:0},function(){B.removeClass("show-fold").css({overflow:"hidden","z-index":"0"});e(".searchMessage-tab-btn").find("i").removeClass("icon-chevron-up").addClass("icon-chevron-down")})}}});return y},stick:function(v){e(".main-footer").append('<div class="backWaperWaper" style="float:right;"><div class="backWaper"><a href=""><i class="icoAll ico-25"></i></a></div></div>');if(v&&!e(".ico-24").length){var w=function(){var x=e(document).scrollTop();x>0?e(".ico-24").fadeIn(200):e(".ico-24").hide()};e(".backWaper").append("<div class='icoAll ico-24'></div>");w();e(".ico-24").click(function(){e("html, body").animate({scrollTop:0},500)});e(window).bind("scroll",w)}},datepicker:function(){var w=arguments.length>0?arguments[0]:null,y=e("input.date-picker",w);if(!y.length){return 0}if(!e.fn.datetimepicker){return p.log("handleDatepicker init failed! datetimepicker is undefined!")}var A=y.data("format")||"yyyy-mm-dd",v=y.data("startdate")||new Date(),z=y.data("enddate")||Infinity,x={format:A,startDate:v,endDate:z,weekStart:1,todayBtn:1,autoclose:1,todayHighlight:1,startView:2,minView:2,forceParse:0};return y.prop("readonly",true).datetimepicker(x)},timepicker:function(){var v=arguments.length>0?arguments[0]:null,w=e("input.time-picker",v);if(!w.length){return 0}if(!e.fn.datetimepicker){return p.log("handleTimepicker init failed! datetimepicker is undefined!")}return w.prop("readonly",true).datetimepicker({format:"hh:ii",weekStart:1,autoclose:1,todayHighlight:1,startView:1,minView:0,maxView:1,forceParse:0,minuteStep:20})},dateTimepicker:function(){var w=arguments.length>0?arguments[0]:null,y=e("input.datetime-picker",w);if(!y.length){return 0}if(!e.fn.datetimepicker){return p.log("handleDateTimepicker init failed! datetimepicker is undefined!")}var A=y.data("format")||"yyyy-mm-dd hh:ii",v=y.data("startdate")||new Date(),z=y.data("enddate")||Infinity,B=y.data("minstep")||30,x={format:A,startDate:v,endDate:z,weekStart:1,autoclose:1,todayHighlight:1,startView:2,forceParse:0,minuteStep:B};return y.prop("readonly",true).datetimepicker(x)},chosen:function(){var v=arguments.length>0?arguments[0]:null,w=e("select.chosen",v);if(!w.length){if(a.isJQueryDom(v)){w=v}else{return 0}}if(!e.fn.chosen){return p.log("handleChosen init failed! chosen is undefined!")}return w.chosen({allow_single_deselect:true})},icheck:function(){var v=arguments.length>0?arguments[0]:null,w=e("input.icheck",v),x=["blue","orange","red","green","yellow","grey","pink","purple","white"];if(!w.length){if(a.isJQueryDom(v)){w=v}else{return 0}}if(!e.fn.iCheck){return p.log("handleIcheck init failed! icheck is undefined!")}w.each(function(){var B=e(this),z="-blue",A,y;for(A=0,y=x.length;A<y;A++){if(B.hasClass(x[A])){z="-"+x[A];break}}B.iCheck({checkboxClass:("icheckbox_minimal"+z),radioClass:("iradio_minimal"+z)})})},share:{style:"toolbar=0,resizable=1,scrollbars=yes,status=1,width=450,height=400",info:"SunivoWeb, 简洁、直观的前端开发框架，让web开发更迅速、简单。",info_us:"I am very interested in SunivoWeb! ",qq:function(){window.open("http://v.t.qq.com/share/share.php?title="+encodeURIComponent(document.title)+"&info="+this.info+"&url="+encodeURIComponent(location.href)+"&source=bookmark","_blank",this.style)},sina:function(){window.open("http://v.t.sina.com.cn/share/share.php?title="+encodeURIComponent(document.title)+"&info="+this.info+"&url="+encodeURIComponent(location.href)+"&source=bookmark","_blank",this.style)},renren:function(){window.open("http://share.renren.com/share/buttonshare.do?link="+encodeURIComponent(location.href)+encodeURIComponent(document.title)+"&info="+this.info+"&url="+encodeURIComponent(location.href)+"&source=bookmark","_blank",this.style)},douban:function(){window.open("http://www.douban.com/recommend/?url="+encodeURIComponent(location.href)+"&info="+this.info+"&title="+encodeURIComponent(location.href),"douban",this.style)},wangyi:function(){window.open("http://t.163.com/article/user/checkLogin.do?title="+encodeURIComponent(document.title)+"&url="+encodeURIComponent(location.href)+"&source=bookmark","_blank",this.style)},twitter:function(){window.open("https://twitter.com/intent/tweet?url="+encodeURIComponent(location.href)+"&title="+encodeURIComponent(document.title)+"&text="+this.info_us+" "+encodeURIComponent(location.href)+"&source=bookmark","_blank",this.style)},facebook:function(){window.open("https://www.facebook.com/sharer/sharer.php?u="+encodeURIComponent(location.href)+"&title="+encodeURIComponent(document.title),"_blank",this.style)}},formValidation:function(y){var A={submitHandler:function(B){B.submit()},focusCleanup:false,focusInvalid:false,ignore:".chzn-search input",debug:true,onfocusout:function(C,D){if(!this.checkable(C)&&(C.name in this.submitted||!this.optional(C))){this.element(C)}if(this.settings.errorPlacement&&y.errorPlacement){var B=e(D.currentTarget).data("validator");if(e(C).parent().hasClass("chzn-search")){C=e(C).closest(".chzn-container").prev()[0]}B.check(C);B.showErrors()}}},x=this;if(y.rules){A.rules=y.rules}function w(){var C=["required","remote","email","url","date","dateISO","number","digits","creditcard","equalTo","maxlength","minlength","rangelength","range","max","min"];var B=[];function F(H){for(var G=0;G<C.length;G++){if(H.hasClass(C[G])){return H.addClass("chosen-validate")}}}function D(G){G.on("classNameChage",function(J){var H=e(J.target),I=H.next().find("a");if(J.target.getAttribute("multiple")){I=H.next().find(".chzn-choices")}if(H.hasClass("error")){I.attr("style","border:1px solid #f00");I.addClass("error tooltips");I.attr("data-original-title",H.attr("data-original-title"));I.tooltip()}else{I.removeClass("error").removeClass("tooltips");I.removeAttr("data-original-title");I.removeAttr("style")}})}function E(H){var G=e(H.target),I;I=G.closest(".chzn-container").prev();I.blur();I.trigger("classNameChage")}e(".chosen").each(function(H,G){var I=F(e(G));if(I){B.push(I)}D(e(G))});e(".chosen").chosen();e("form").on("click",".chzn-container",E).on("focusin focusout",".chzn-container",E)}function v(){y._context.find(".datetime-picker",".time-picker",".date-picker").each(function(C,B){e(this).on("change",function(){var D=e(this);if(this.value){D.removeClass("error").removeClass("tooltips");D.removeAttr("data-original-title");D.removeAttr("style");x.errorInfo(y._context,y.type,"",this,y.location)}})})}if(y._context.find(".chosen").length){w()}if(y._context.find(".datetime-picker",".time-picker",".date-picker").length){v()}if(y.moduleName=="bubbleTip"){var z={placement:"top",trigger:"hover"};t.extend(A,{errorPlacement:function(E,C){var B=E[0];var D=C;D.addClass("error tooltips");D.attr("data-original-title",B.innerHTML);D.attr("style","border:1px solid #f00");if(D[0].nodeName.toLowerCase()=="select"){D.hide()}C.tooltip(t.extend({placement:y.placement,trigger:y.trigger},z));e(D).trigger("classNameChage")},unhighlight:function(C){var B=e(C);var D=B;D.removeClass("error").removeClass("tooltips");D.removeAttr("data-original-title");D.removeAttr("style");if(D[0].nodeName.toLowerCase()=="select"){D.hide()}}})}e.validator.setDefaults(A);y._context.validate()},setHome:function(v){if(document.all){document.body.style.behavior="url(#default#homepage)";document.body.setHomePage(v)}else{alert("您好,您的浏览器不支持自动设置页面为首页功能,请您手动在浏览器里设置该页面为首页!")}},addFavorite:function(w,v){w=encodeURI(w);try{window.external.addFavorite(w,v)}catch(x){try{window.sidebar.addPanel(v,w,"")}catch(x){alert("加入收藏失败，请使用Ctrl+D进行添加,或手动在浏览器里进行设置.")}}},emailAutocomplete:function(){var v=arguments.length>0?arguments[0]:null,w=e("input.email",v),x=["gmail.com","hotmail.com","live.com","aol.com","sina.com","sunivo.com","sina.com.cn"];if(!w.length){return 0}if(!e.fn.typeahead){return p.log("emailAutocomplete init failed! typeahead is undefined!")}return w.attr("autocomplete","off").typeahead({source:function(C){var B=[],D=C.match(/@/i),y,A,z=x.length;if(!D){for(A=0;A<z;A++){B.push(C.toLowerCase()+"@"+x[A])}}else{y=C.split(/@/);for(A=0;A<z;A++){x[A].match(y[1])?B.push(y[0].toLowerCase()+"@"+x[A]):1}}return B}})},placeholder:function(E){function x(){var F=document.createElement("input");return"placeholder" in F}function C(){var F=document.createElement("textarea");return"placeholder" in F}function A(G){var H=e(G).index();var F=w[e(G).index()];e(G).css("color",F)}if(!x()){var v=e(":text,:password");var z=v.length;var w=[];for(var y=0;y<z;y++){var D=v[y];var B=e(D).attr("placeholder");if(e(D).val()==""&&B!=null){e(D).addClass("m-placeholder-input");e(D).wrap('<div style="display:inline-block; position:relative" class="x-placeholder-ie-layout"></div>');e(D).after('<span class="placeholer">'+B+"</span>")}}v.focus(function(){e(this).next("span").hide()});v.blur(function(){if(e(this).val()==""){e(this).next("span").show()}})}if(!C()){var v=e("textarea");var z=v.length;var w=[];for(var y=0;y<z;y++){var D=v[y];var B=e(D).attr("placeholder");if(e(D).html()==""&&B!=null){e(D).addClass("m-placeholder-input");e(D).wrap('<div style="display:inline-block; position:relative"></div>');e(D).after('<span class="placeholer">'+B+"</span>")}}v.focus(function(){e(this).next("span").hide()});v.blur(function(){if(e(this).html()==""){e(this).next("span").show()}})}e(".placeholer").each(function(){var G=e(this).closest(".x-placeholder-ie-layout"),J=e(this).prev(".m-placeholder-input");var I=J.position().left;var H=J.position().top;var F=e.extend({position:"absolute",left:(I+J.offset().left-G.offset().left)+"px",top:(H+J.offset().top-G.offset().top)+"px",padding:"5px 0 0 5px",color:J.css("color"),width:J.width()/2+"px"},E);e(this).css(F)});e(".placeholer").click(function(){e(this).hide();e(this).prev(".m-placeholder-input").focus()})},infoTip:function(){var w=arguments[0],z,A="",y=arguments[1];switch(y){case"alert-block":z="Waring !";break;case"alert-error":z="Error !";break;case"alert-success":z="Success !";break;default:z="Info !"}var v=arguments.length;for(var x=2;x<v;x++){A=A+"<div class='info'>"+arguments[x]+"</div>"}k.addClass(y).append(A).find("h4").html(z);w.append(k)},turn2Page:function(){var v=arguments.length>0?arguments[0]:1;var x=e("#page");var w=arguments.length>0?arguments[1]:e("#filterForm");if(x.length==0){x=e("<input type='hidden' name='number' id='number'>").appendTo(w)}x.val(v);w.submit()},ajaxTurn2Page:function(){var A=arguments.length>0?arguments[0]:null;var z=arguments.length>1?arguments[1]:"#";var y=arguments.length>2?arguments[2]:"1";var x=arguments.length>3?arguments[3]:window;var C=arguments.length>4?arguments[4]:function(){};this.element=x;var w=this;e(A).trigger({type:"startLoad",number:y});var v=e("form",A);if(v.length==0){v=e(A).parent("form")}if(v.length==0){v=e(A).parents("form")}var B=e.extend({number:y},this._serializeAjax(v));e(A).load(z,B,e.proxy(w.callback,w))},_serializeAjax:function(v){var w=new Object();e.each(v.serializeArray(),function(x,y){if(!(y.name in w)){w[y.name]=y.value}});return w},initPage:function(y){var v=e(".turnPage"),x=e(".ajaxTurnPage"),w=this;if(y){w.callback=y}if(v.length){v.closest("form").on("click",".turnPage",function(C){var z=e(C.target),B=C.target.getAttribute("number"),A=z.closest("form");w.turn2Page(B,A)})}else{if(x.length){x.on("click",function(F){var E=F.target,B=parseInt(E.getAttribute("number")),D=E.getAttribute("contextSel"),A=E.getAttribute("baseUrl"),C=E.getAttribute("action");var z=e(E).closest(".pagination").attr("pageNumber");if(!B){B=parseInt(e(E).closest(".pagination").attr("currentPage"))}if(C){if(C=="prev"){B=B-1>0?B-1:1}else{if(C=="next"){B=B+1>z?z:B+1}}}w.ajaxTurn2Page(D,A,B,E,y)})}}}};var b={client:function(){var x={ie:0,gecko:0,webkit:0,khtml:0,opera:0,ver:null},v={ie:0,firefox:0,safari:0,konq:0,opera:0,chrome:0,ver:null},y={win:false,mac:false,xll:false,iphone:false,ipod:false,ipad:false,ios:false,android:false,nokiaN:false,winMobile:false,wii:false,ps:false},w=navigator.userAgent;if(window.opera){x.ver=v.ver=window.opera.version();x.opera=v.opera=parseFloat(x.ver)}else{if(/AppleWebKit\/(\S+)/.test(w)){x.ver=RegExp["$1"];x.webkit=parseFloat(x.ver);if(/Chrome\/(\S+)/.test(w)){v.ver=RegExp["$1"];v.chrome=parseFloat(v.ver)}else{if(/Version\/(\S+)/.test(w)){v.ver=RegExp["$1"];v.safari=parseFloat(v.ver)}else{var A=1;if(x.webkit<100){A=1}else{if(x.webkit<312){A=1.2}else{if(x.webkit<412){A=1.3}else{A=2}}}v.safari=v.ver=A}}}else{if(/KHTML\/(\S+)/.test(w)||/Konqueror\/([^;]+)/.test(w)){x.ver=v.ver=RegExp["$1"];x.khtml=v.konq=parseFloat(x.ver)}else{if(/rv:([^\)]+)\) Gecko\/\d{8}/.test(w)){x.ver=RegExp["$1"];x.gecko=parseFloat(x.ver);if(/Firefox\/(\S+)/.test(w)){v.ver=RegExp["$1"];v.firefox=parseFloat(v.ver)}}else{if(/MSIE ([^;]+)/.test(w)){x.ver=v.ver=RegExp["$1"];x.ie=v.ie=parseFloat(x.ver)}else{if(/Trident\/(\S+)/.test(w)){x.ver=v.ver=parseFloat(RegExp["$1"])+4;x.ie=v.ie=parseFloat(x.ver)}}}}}}v.ie=x.ie;v.opera=x.opera;var z=navigator.platform;y.win=z.indexOf("Win")==0;y.mac=z.indexOf("Mac")==0;y.xll=(z=="Xll")||(z.indexOf("Linux")==0);if(y.win){if(/Win(?:dows )?([^do]{2})\s?(\d+\.\d+)?/.test(w)){if(RegExp["$1"]=="NT"){switch(RegExp["$2"]){case"5.0":y.win="2000";break;case"5.1":y.win="XP";break;case"6.0":y.win="Vista";break;case"6.1":y.win="7";break;default:y.win="NT";break}}else{if(RegExp["$1"]=="9x"){y.win="ME"}else{y.win=RegExp["$1"]}}}}y.iphone=w.indexOf("iPhone")>-1;y.ipod=w.indexOf("iPod")>-1;y.ipad=w.indexOf("iPad")>-1;y.nokiaN=w.indexOf("NokiaN")>-1;if(y.win=="CE"){y.winMobile=y.win}else{if(y.win=="Ph"){if(/Window Phone OS (\d+.\d+)/.test(w)){y.win="Phone";y.winMobile=parseFloat(RegExp["$1"])}}}if(y.mac&&w.indexOf("Mobile")>-1){if(/CPU (?:iPhone )?OS(\d+_\d+)/.test(w)){y.ios=parseFloat(RegExp.$1.replace("_","."))}else{y.ios=2}}if(/Android (\d+\.\d+)/.test(w)){y.android=parseFloat(RegExp.$1)}y.wii=w.indexOf("Wii")>-1;y.ps=/playstation/i.test(w);return{engine:x,browser:v,system:y}}};var c={createFormForUpload:function(w,y){var x=e('<a href="javascript:void(0);">上传</a>'),v;w.wrap('<div style="position: relative;"></div>');w.css({"z-index":"2",opacity:0,position:"absolute",cursor:"pointer"});v=this.getLayoutFromContextForUpload(w,y);w.parent().append(x.css(v));w.css({width:x.width(),height:x.height()})},getLayoutFromContextForUpload:function(w,z){var x=w.parent(),A=x.offset(),y=w.offset(),v=z.cssRule||{};return e.extend({left:y.left-A.left,top:y.top-A.top,position:"absolute","z-index":"1"},v)},bindUploadEvent:function(v,w){e.extend(w,{secureuri:false});v.parent().on("change",v,function(){e.ajaxFileUpload(w)})}};var l={formReset:function(w){var v=w.find(".chosen"),x=w.find(".icheck");w[0].reset();v.trigger("liszt:updated");x.iCheck("uncheck")},trim:function(v){if(String.prototype.trim){return v.trim()}else{return v.replace(/(^\s*)|(\s*$)/g,"")}}};t.extend(i,c);t.extend(i,b);t.extend(i.prototype,a);t.extend(i.prototype,b);t.extend(i.prototype,l);function r(w){function x(){}x.prototype=w.prototype;var v=new x(),y=function(){w.call(this)};v.constructor=y;y.prototype=v;return y}var h=r(i);h.prototype.init=function(){this.datepicker();this.timepicker();this.dateTimepicker();this.chosen();this.icheck()};window.sw=h})(jQuery,_,window);