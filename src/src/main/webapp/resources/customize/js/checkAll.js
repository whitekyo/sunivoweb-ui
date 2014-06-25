/**
 * Created with IntelliJ IDEA.
 * User: yangcheng
 * Date: 14-5-14
 * Time: 下午3:35
 * To change this template use File | Settings | File Templates.
 */
(function($,w){
    var doCheck = function(context){
        var arr = [];
        this.element = context;
        this.checkAll = context.find('.checkAll');
        this.children = context.find('input:checkbox[data-parent="checkAll"]');
        this.children.each(function(){
            arr.push($(this));
        });
        this.childrenArr = arr;
        this.init();
    };
    doCheck.prototype = {
        constructor: doCheck,
        //初始化
        init: function(){
            var that = this;
            this.element.on('ifChanged','input:checkbox', function(e){
                var target = e.target;
                that.controller(target);
            });
        },
        //控制器
        controller: function(target){
            if(/checkAll/.test(target.className)){
                this.parentCheck(target);
            }else if(target.getAttribute('data-parent')){
                this.childrenCheck(target);
            }
        },
        //监听增加
        listener: function(context){
            this.controller(context);
        },
        //对外暴露的新增API
        addElement: function(context){
            if(context && context instanceof $){
                this.childrenArr.push(context);
                this.listener(context[0]);
            }
        },
        //父的逻辑
        parentCheck: function(target){
            if(target.checked){
                this.setAllCheck(this.childrenArr);
            }else if(this.isAllChecked(this.childrenArr)){
                this.setAllUnCheck(this.childrenArr);
            }
        },
        //子的逻辑
        childrenCheck: function(target){
            if(target.checked&&this.isAllChecked(this.childrenArr)){
                this.setAllCheck([this.checkAll]);
            }else if(!target.checked){
                this.setAllUnCheck([this.checkAll]);
            }
        },
        //设置全选
        setAllCheck: function(arr){
            if(arr&&arr.length){
                for(var i=0;i<arr.length;i++){
                    arr[i].iCheck('check');
                }
            }
        },
        //设置全部选
        setAllUnCheck: function(arr){
            if(arr&&arr.length){
                for(var i=0;i<arr.length;i++){
                    arr[i].iCheck('uncheck');
                }
            }
        },
        //检测子元素是否都已经全选
        isAllChecked: function(arr){
            var i= 0,l = arr.length;
            for(;i<l;i++){
                if(!arr[i].prop('checked')){
                    return false;
                }
            }
            return true;
        }
    }
    $.fn.doCheckAll = function(option){
        if(!this.data('checkAll')){
            this.data('checkAll',new doCheck(this));
        }
        if(typeof option == 'string'){
            var menber = arguments[1];
            this.data('checkAll')[option](menber);
        }
    };
})(jQuery,window);