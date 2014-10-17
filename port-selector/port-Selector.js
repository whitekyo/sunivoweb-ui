/**
 * Created with IntelliJ IDEA.
 * User: yangcheng
 * Date: 14-5-6
 * Time: 下午7:53
 * To change this template use File | Settings | File Templates.
 */

(function($,w){
	var ajaxSetting = {
	        type: 'post',
	        url: 'http://localhost:8080/tradx-web/common/queryPorts',
	        dataType: 'json',
	        error: function(e){
	            //console.log(e);
	        },
	        async: false
	    },
	    timer;//全局定时器
	var emun = {
            domesticSeaPort:2,
            foreignSeaPort:1
            
        };
    var emun_me = {
            domesticSeaPort:1,
            foreignSeaPort:2
    };
    var portSelector = function(context,paramObj){
    		if(typeof paramObj === 'object'){
    			this.updatePageArr(ajaxSetting, paramObj);
    		}
    		this.customSetting = paramObj;
            this.element =  context;//当前input控件
            this.options = this.getNav();//下拉内容
            this.pageArr = [];//初始化一个数组管理插件的分页
            context.wrap('<div class="wrap" style="position:relative; display: inline-block"></div>');
            this.parent = context.parent();//整个input外包的内容
            context.after(this.options);
            this.options.append($('<div class="gangkoufloattab"></div>'));
            this.scroll = this.options.find('.gangkoufloattab');
            this.relation = paramObj&&paramObj.relation;//关联对象
            this.setting = {
                nScrollHight: 0,
                nScrollTop: 0,
                nDivHight: this.scroll.height()
            };
            this.nav = this.options.find('ul');//A-Z侧边栏
            //添加隐藏域
            this.parent.prepend(this.setHidInput());
            this.getContent();
            this.bindEvent();
            this.anchorsClick();
            this.textClick();
            this.bodyClick();
            this.ajaxScroll();
            this.keyup();
            //this.formatParam();

        },
        enumLetter = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J','K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U','V', 'W', 'X', 'Y', 'Z'];
    var _options = {
        pageSize: 500, //展示内容的个数
        currentPage: 1, //当前页数
        records: 0//总页数
    };
    
    portSelector.prototype = {
        constructor: portSelector,
        //展示控件
        show: function(context){
            context.show();
        },
        //隐藏控件
        hide: function(context){
            context.hide();
        },
        setHidInput: function(){
        	return '<input type="hidden" name=""/>';
        },
        //为input绑定，打开控件
        textClick: function(){
            var that = this;
            this.element.on('focus',function(){
                that.hide($('.gangkoufloat'));
                that.show($(this).next());
            });
        },
        //全局body，绑定关闭控件的事件
        bodyClick: function(){
            var that = this;
            $('body').on('click',function(e){
                var target = e.target,$target = $(target);
                if(!$target.hasClass('portSelector')&&!$target.hasClass('wrap')&&!$target.closest('.gangkoufloat')[0]){
                    that.hide($('.gangkoufloat'));
                }
            });
        },
        //为下拉内容的导航和显示内部绑定事件
        bindEvent: function(){
            var that = this;
            this.parent.on('click','p',function(e){
                var target = e.target,text = target.innerHTML;
                if(target.className != 'text-center'){
                    that.setInputValue(text.split('|')[0]);
                    that.element[0].setAttribute('portType',target.getAttribute('uport'));
                    that.hide($(target).closest('.gangkoufloat'));
                    $(that.customSetting['hidId'])[0].value = target.getAttribute('uid');
                }
                if(that.relation){
                    uport = target.getAttribute('uport');
                    that.relation.attr('portTypeTip',emun[uport]);
                    that.relation.portSelector({
                            handlerFuncName: 'getContent'
                    });
                    that.element.attr('porttypetip',emun_me[uport]);
                    that.element.portSelector({
                        handlerFuncName: 'getContent'
                    });
                }
            });
        },
        //为A-Z导航绑定点击事件
        anchorsClick: function(){
            var that = this;
            this.parent.on('click','a',function(){
                var text = this.getAttribute('uid');
                var currentObj = that.formatParam(text,{status:'normal'});
                that.cleanArr();//清空分页数组，因为要重新渲染
                that.addPageToArr(currentObj);
                that.getData(currentObj);
            });
        },
        //滚动条事件
        ajaxScroll: function(){
            var that = this;
            this.scroll.on('scroll',function(){
                var $target = $(this);
                that.controller($target);
            });
        },
        //往input里填充值
        setInputValue: function(text){
            this.element.val(text);
        },
        //input键盘输入事件
        keyup: function(){
            var that = this;
            this.element.on('keyup',function(e){
                var text = e.target.value,currentObj;
                clearInterval(timer);
                setTimeout(function(){
                    if(text){
                        that.hide(that.nav);
                        currentObj = that.formatParam(text,{status:'custom'});
                    }else{
                        currentObj = that.formatParam(text,{status:'normal'});
                        that.show(that.nav);
                        if(that.relation&&!that.relation[0].value){
                            that.element[0].setAttribute('porttypetip','');
                            that.relation[0].setAttribute('porttypetip','');
                            that.relation.portSelector({
                                handlerFuncName: 'getContent'
                            });
                        }
                    }
                    that.cleanArr();//清空分页数组，因为要重新渲染
                    that.addPageToArr(currentObj);
                    that.getData(that.cloneObj(currentObj),currentObj);
                },300);
            });
        },
        //生成下拉内容
        getNav: function(){
            var i = 0,l = enumLetter.length,li,ul = $('<ul></ul>');
            for(;i<l;i++){
                li = $('<li><a href="#" uid="'+ enumLetter[i] +'">'+ enumLetter[i]+'</a></li>');
                ul.append(li);
            }
            var tip = $('<p class="text-center">按字母排序,支持中文/拼音/英文模糊检索</p>'),
                gangkoufloat = $('<div class="gangkoufloat"></div>');
            gangkoufloat.append(ul).prepend(tip);
            return gangkoufloat;
        },
        //渲染方式:action表示往上或者往下添加，或者重新渲染。operation表示新增还是填充原来的，arr为json数据源
        render: function(o,operation,param){
            var i = 0,arr = param.data,l = arr.length,$p = '',$div = '',$currentElement = this.scroll;
            for(;i<l;i++){
            	$p += '<p uid="'+ arr[i].id +'" uport="'+ arr[i].type +'">' + arr[i].cnName + '|' + arr[i].enName + '--'+ arr[i].countryCn + '</p>';
            }
            if(operation == 'new'){
                $div = o.status == 'normal'?'<div><h3  id="' + o.name +'" status="'+ o.status +'">'+ o.name +'</h3>' + $p + '</div>': '<div><h3 id="' + o.name +'" status="'+ o.status+'"></h3>' + $p + '</div>';
            }
            if(o.action == 'prev'){
                if(operation == 'add'){
                    $currentElement.find('h3:first').parent().append($p);
                }else{
                    $currentElement.prepend($div);
                }
            }else if(o.action == 'next'){
                if(operation == 'add'){
                    $currentElement.find('h3:last').parent().append($p);
                }else{
                    $currentElement.append($div);
                }
            }else{
                $currentElement.html($div); //默认都是重新渲染
            }
            this.updatePageArr(this.searchPageArr(o.name),param);//渲染完毕之后，更新数组信息，便于下次判断
        },
      //滚动条控制器
        controller: function(context){
            var that = this;
            this.setting.nScrollHight = context[0].scrollHeight;
            this.setting.nScrollTop = context[0].scrollTop;
            clearInterval(timer);
            timer = setTimeout(function(){
            	if(that.setting.nScrollTop + that.setting.nDivHight >= that.setting.nScrollHight){
                    if($(".m-loading").length==0){
                        context.append('<div class="m-loading"><img src="http://www.mb-wx.com/skins/Nuvola/loaderc.gif" /></div>');
                        setTimeout(function(){
                            loadingBtm(that);
                        }, 2000);
                    }
                }
                if(that.setting.nScrollTop <= 0){
                    if($(".m-loading").length==0){
                        context.prepend('<div class="m-loading"><img src="http://www.mb-wx.com/skins/Nuvola/loaderc.gif" /></div>');
                        setTimeout(function(){
                            loadingTop(that);
                        }, 2000);
                    }
                };
            },100);
            //向下滚动触发
            function loadingBtm(that){
                $(".m-loading").remove();
                var name = that.findLastElement(),target = that.searchPageArr(name),index;
                if(that.isNotEnough(name)){
                	target.currentPage = parseInt(target.currentPage)+1;
                	target.action = 'next';
                	that.getData(target);
                }else{
                	if(target.status == 'normal' && name != 'Z'){
                		var o = that.cloneObj(target);
                		index = that.getArrIndex(name,enumLetter);
                        o.name = enumLetter[parseInt(index)+1];
                        o.currentPage = 0;
                        that.addPageToArr(o);
                        o.action = 'next';
                        that.getData(o);
                	}
                	if(target.status == 'custom'){
                		target.currentPage = parseInt(target.currentPage)+1;
                		target.action = 'next';
                		if(!that.isFinished(target.name)){
                			that.getData(target);
                		}
                	}
                }
            };
            //向上滚动触发
            function loadingTop(that){
                $(".m-loading").remove();
                var name = that.findFirstElement(),target = that.searchPageArr(name),o,index;
                if(!that.isMorePage()){//1
                	if(that.getIndex(name)>=1){
                		o = that.cloneObj(target);
                		index = that.getArrIndex(target.name,enumLetter);
                        o.name = enumLetter[parseInt(index)-1];
                        if(!o.name){
                        	return ;
                        }
                        o.currentPage = 1;
                        o.action = 'prev';
                        that.getData(o);
                	}
            	}else{//多
            		if(that.isNotEnough(target.name)){
            			target.currentPage = parseInt(target.currentPage)+1;
            			target.action = 'prev';
                        if(!target.name){
                        	return;
                        }
                        that.getData(target);
            		}else{
            			if(that.getIndex(name)>=1){
            				o = that.cloneObj(target);
                			index = that.getArrIndex(o.name,enumLetter);
                            o.name = enumLetter[parseInt(index)-1];
                            o.currentPage = 1;
                            o.action = 'prev';
                            if(!o.name){
                            	return;
                            }
                            that.getData(o);
                		}
            		}
            	} 
                
                
            }
            
        },
        //渲染逻辑
        rendercontroller: function(param,o){
            var index,value = this.findFirstElement();
            if(!o.action){ //默认，比如点击input显示，点击a-z显示
                this.render(o,'new',param);
            }else if(o.action == 'prev'){ //向上滚动
                if(o.status == 'normal'){
                	if(!this.isMorePage()){
                		if(this.getIndex(o.name)>=1){
                			this.addPageToArr(o);
                			this.render(o,'new',param);
                		}
                	}else{
                		if(value == o.name){
                			this.render(o,'add',param);
                		}else{
                			if(this.getIndex(o.name)>=1){
                     			this.addPageToArr(o);
                     			this.render(o,'new',param);
                     		}
                		}
                	}
                }
            }else if(o.action == 'next'){ //向下滚动
                if(o.status == 'normal'){
                	if(!this.isEnough(o.name)&&this.findLastElement() == o.name){
                		this.render(o,'add',param);
                	}else{
                		this.render(o,'new',param);
                	}
                }else{
                     this.render(o,'add',param);
                }
            }
        },
        isEnough: function(name){
        	return $('#'+name).parent().find('p').length == this.searchPageArr(name).records;
        },
        getArrIndex: function(v,arr){
            var i =0;l = arr.length;
            for(;i<l;i++){
                if(arr[i] == v){
                    return i;
                }
            }
        },
        formatParam: function(text,o){
            if(!text){
                text = 'A';
            }
            var portType = this.element[0].getAttribute('portTypeTip');
            return $.extend({name: text,portTypeTip:portType},_options,o);
        },
        
        cloneObj: function(obj){
            var _obj = {};
            for(var k in obj){
                _obj[k] = obj[k];
            }
            return _obj;
        },
        //返回数组的下标
        getIndex: function(name){
        	var i=0,l = enumLetter.length;
        	for(;i<l;i++){
        		if(enumLetter[i] == name){
        			return i;
        		}
        	}
        },
        isNotEnough: function(name){
        	var o = this.searchPageArr(name);
        	return parseInt(o.currentPage) < Math.ceil(parseInt(o.records)/parseInt(o.pageSize));
        },
        //判断当前分页数是否大于等于2条
        isMorePage: function(){
        	return this.pageArr.length >= 2;
        },
        //判断当前分页是否已经全部加载完成
        isFinished: function(name){
        	var o = this.searchPageArr(name);
        	return parseInt(o.currentPage) >= Math.ceil(parseInt(o.records)/parseInt(o.pageSize));
        },
        findLastElement: function(){
            return this.options.find('h3:last').attr('id');
        },
        findFirstElement: function(){
            return this.options.find('h3:first').attr('id');
        },
        //调用ajax方法获取数据
        getData: function(o){
        	var that = this;
            ajaxSetting.data = o;
            ajaxSetting.success = function(param){
            	that.rendercontroller(param,o);
            };
            $.ajax(ajaxSetting);
        },
        //默认
        getContent: function(){
            var currentObj = this.formatParam('',{status:'normal'});
            this.addPageToArr(currentObj);
            this.getData(currentObj);
        },
        //清空分页数组
        cleanArr: function(){
            this.pageArr = [];
        },
        //新增分页对象
        addPageToArr: function(o){
            this.pageArr.push(o);
        },
        //查询分页数组
        searchPageArr: function(name){
            var i = 0,l = this.pageArr.length;
            for(;i<l;i++){
                if(this.pageArr[i].name == name){
                    return this.pageArr[i];
                }
            }
        },
        //将sources里的资源更新到target里面
        updatePageArr: function(target,sources){
            for(var k in target){
                if(sources[k]){
                    target[k] = sources[k];
                }
            }
        }
    };
    $.fn.portSelector = function(paramObj){
        if($(this).data('portFinish')){
        	if(paramObj.handlerFuncName){
                $(this).data('portFinish')[paramObj.handlerFuncName]();
            }
            return ;
        }else{
            $(this).data('portFinish',new portSelector(this,paramObj));
        }
    };
})(jQuery,window);