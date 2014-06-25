/**
 * Created with IntelliJ IDEA.
 * User: yangcheng
 * Date: 14-5-6
 * Time: 下午7:53
 * To change this template use File | Settings | File Templates.
 */
(function($,w){
    var portSelector = function(context){
            this.element =  context;//当前input控件
            this.options = this.getNav();//下拉内容
            this.pageArr = [];//初始化一个数组管理插件的分页
            this.getContent();
            context.wrap('<div class="wrap" style="position:relative; display: inline-block"></div>');
            this.parent = context.parent();//整个input外包的内容
            context.after(this.options);
            this.scroll = this.options.find('.gangkoufloattab');
            this.setting = {
                nScrollHight: 0,
                nScrollTop: 0,
                nDivHight: this.scroll.height()
            };
            this.nav = this.options.find('ul');//A-Z侧边栏
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
        pageSize: 30, //展示内容的个数
        currentPage: 1, //当前页数
        records: 0//总页数
    };
    var ajaxSetting = {
        type: 'post',
        url: 'http://192.168.0.148:8080/tradx-web/common/queryPorts',
        dataType: 'json',
        success: function(param){
             console.log(param);
        },
        error: function(e){
            console.log(e);
        }
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
                    that.setInputValue(text);
                    that.hide($(target).closest('.gangkoufloat'));
                }
            });
        },
        //为A-Z导航绑定点击事件
        anchorsClick: function(){
            var that = this;
            this.parent.on('click','a',function(){
                var text = this.getAttribute('uid');
                that.getData(text);
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
                var text = e.target.value;
                if(text){
                    that.hide(that.nav);
                }else{
                    that.show(that.nav);
                }
                that.render([
                    {id: '200000001', cnName: '开普敦', enName: 'CAPE TOWN', shortName: 'KPD', countryCn: '南非', countryEn: 'SOUTH AFRICA', countryShort: 'ZAF', type:'foreignSeaPort'},
                    {id: '200000002', cnName: '德班', enName: 'DURBAN', shortName: 'DB', countryCn: '南非', countryEn: 'SOUTH AFRICA', countryShort: 'ZAF', type: 'foreignSeaPort'}
                ],{action:'static'});
            });
        },
        //渲染dom
        render: function(arr,o){
            var i = 0,l = arr.length,$p = '',$div = '',$currentElement = this.scroll;
            for(;i<l;i++){
                $p += '<p>' + arr[i].cnName + '|' + arr[i].enName + '--'+ arr[i].countryCn + '</p>'
            }
            /*if(o.status == ''){
                $currentElement.html('<div><h3></h3>'+ $p +'</div>');

            }*/
            if(o.currentPage< o.records){
                if(o.action == 'prev'&& o.prevId >-1){
                    $div = '<div id="' + enumLetter[o.prevId] +'">' + $p + '</div>';
                    $currentElement.prepend($div);
                    $currentElement.scrollTop(50);
                }else if(o.action == 'next'&& o.nextId <26){
                    $currentElement.find('h3:last').parent().append($p);
                }else if(!o.action){
                    $currentElement.html('<div><h3></h3>'+ $p +'</div>');
                }
            }else if(o.currentPage >= o.records){
                $div = '<div id="' + enumLetter[o.nextId] +'">' + $p + '</div>';
                $currentElement.append($div);
            }
        },
        //渲染方式:action表示往上或者往下添加，或者重新渲染。operation表示新增还是填充原来的，arr为json数据源
        render1: function(action,operation,arr,o){
            var i = 0,l = arr.length,$p = '',$div = '',$currentElement = this.scroll;
            for(;i<l;i++){
                $p += '<p>' + arr[i].cnName + '|' + arr[i].enName + '--'+ arr[i].countryCn + '</p>'
            }
            if(operation == 'new'){
                $div = '<div id="' + o.name +'">' + $p + '</div>';
            }
            if(action == 'prev'){
                if(operation == 'add'){
                    $currentElement.find('h3:first').parent().append($p);
                }else{
                    $currentElement.prepend($div);
                }
            }else if(action == 'next'){
                if(operation == 'add'){
                    $currentElement.find('h3:last').parent().append($p);
                }else{
                    $currentElement.append($div);
                }
            }else{
                $currentElement.html($div); //默认都是重新渲染
            }
        },
        //渲染逻辑
        rendercontroller: function(arr,o){
            var index;
            if(!o.action){ //默认，比如点击input显示，点击a-z显示
                this.render1(o.action,'new',arr,o);
            }else if(o.action == 'prev'){ //向上滚动
                if(o.status == 'normal'){
                    if(o.currentPage < o.records){
                        o.currentPage = parseInt(o.currentPage)+1;
                        this.render1(o.action,'add',arr,o);
                    }else{
                        index = this.getArrIndex(o.name,enumLetter);
                        o.name = enumLetter[parseInt(index)-1];
                        this.render1(o.action,'new',arr,o);
                    }
                }
            }else if(o.action == 'next'){ //向下滚动
                if(o.status == 'normal'){
                    if(o.currentPage < o.records){
                        o.currentPage = parseInt(o.currentPage)+1;
                        this.render1(o.action,'add',arr,o);
                    }else{
                        index = this.getArrIndex(o.name,enumLetter);
                        o.name = enumLetter[parseInt(index)+1];
                        this.render1(o.action,'new',arr,o);
                    }
                }else{
                    if(o.currentPage < o.records){
                        o.currentPage = parseInt(o.currentPage)+1;
                        this.render1(o.action,'add',arr,o);
                    }
                }
            }
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
            var portType = this.element[0].getAttribute('portType');
            return $.extend({name: text,portType:portType},_options,o);
        },
        //滚动条控制器
        controller: function(context){
            var that = this;
            this.setting.nScrollHight = context[0].scrollHeight;
            this.setting.nScrollTop = context[0].scrollTop;
            //向下滚动触发
            function loadingBtm(that){
                $(".m-loading").remove();

                that.render(
                    [
                        {id: '200000308', cnName: '宁波', enName: 'Ningbo', shortName: 'NB', countryCn: '中国', countryEn: 'CHINA', countryShort: 'CN', type: 'domesticSeaPort'},
                        {id: '200000310', cnName: '深圳', enName: 'Shenzhen', shortName: 'SZ', countryCn: '中国', countryEn: 'CHINA', countryShort: 'CN', type: 'domesticSeaPort'}
                    ],{
                    isFinish: false,
                    action: 'next',
                    nextId: '2'
                });
            };
            //向上滚动触发
            function loadingTop(that){
                $(".m-loading").remove();
                that.render([11,12,13,14,15,16,17,18,19,20],{
                    isFinish: false,
                    action: 'prev',
                    prevId: '0'
                });
            }
            if(this.setting.nScrollTop + this.setting.nDivHight >= this.setting.nScrollHight){
                if($(".m-loading").length==0){
                    context.append('<div class="m-loading"><img src="http://www.mb-wx.com/skins/Nuvola/loaderc.gif" /></div>');
                    setTimeout(function(){
                        loadingBtm(that);
                    }, 500);
                }
            }
            if(this.setting.nScrollTop <= 0){
                if($(".m-loading").length==0){
                    context.prepend('<div class="m-loading"><img src="http://www.mb-wx.com/skins/Nuvola/loaderc.gif" /></div>');
                    setTimeout(function(){
                        loadingTop(that);
                    }, 500);
                }
            };
        },
        findLastElement: function(){
            return this.options.find('h3:last').html();
        },
        findFirstElement: function(){
            return this.options.find('h3:first').html();
        },
        //调用ajax方法获取数据
        getData: function(o){
            //ajaxSetting.data = o;
            console.log(o);
            $.ajax({
                type: 'post',
                url: 'http://192.168.0.131:8085/tradx-web/common/queryPorts',
                dataType: 'JSON',
                success: function(param){
                    console.log(param);
                },
                error: function(e){
                    console.log(e);
                },
                data: {'currentPage':'1','name':'A','pageSize':'30','portType':'','records':'0','status':'normal'}
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
        //解析数据，获取分页内容更新
        analysisData: function(o){
            return {
                name: o.name,
                portType: o.portType,
                currentPage: o.currentPage,
                records: o.records,
                pageSize: o.pageSize
            };
        },
        //默认
        getContent: function(){
            var currentObj = this.formatParam('',{status:'normal'});
            this.addPageToArr(currentObj);
            var newData = this.getData(this.cloneObj(currentObj));
            //console.log(newData);
            //this.updatePageArr(currentObj,newData);//更新数据
            //this.render(newData.data,this.analysisData(newData));
            this.options.append($('<div class="gangkoufloattab"><div id="B"><h3>B</h3><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p><p>123</p></div></div>'));
        },
        cloneObj: function(obj){
            var _obj = {};
            for(var k in obj){
                _obj[k] = obj[k];
            }
            return _obj;
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
    $.fn.portSelector = function(){
        if(this[0].getAttribute('port-finish')){
            return ;
        }else{
            this[0].setAttribute('port-finish','true');
            var port = new portSelector(this);
        }
    };
})(jQuery,window);