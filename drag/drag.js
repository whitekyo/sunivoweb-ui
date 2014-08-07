/**
 * Created by yangcheng on 14-7-29.
 */
(function(w,$){
    var setting = {
        irregular: 100
    };
    function Drag(content,option){
        this.elem = content;
        this.option = option;
        this.span = content.find('.x-drag-module');
        this.database = [];
        this.startMode = null;
        this.base = this.dialogBase = {};
        this.init();

    }
    Drag.prototype = {
        constructor: Drag,
        init: function(){
            this.createDataBase();
            this.bindEvent();
        },
        bindEvent: function(){
            var that = this;
            this.span.on('mousedown',function(e){
                var _content = $(this),tg = $(e.target);
                if(_content.hasClass('x-none')){ return ;}
                that.startMode = tg;
                _content.data('ready',true);
                _content.addClass('x-active');
                that.clearBlue();
                if(tg.hasClass('x-stopProp')){ return ;}
                that.getPosition(e,this);
                that.base = {mouseX: e.clientX,mouseY: e.clientY};
            });
            $('body').on('mousemove',function(e){
                if($('.x-clone').length && $('.x-active').data('ready')){
                    that.move(e);
                }

            }).on('mouseup',function(e){
                    that.resetBlue();
                    if($(e.target).hasClass('x-stopProp')){ return ;}
                    var endMode = that.anastomose(e),startMode = that.startMode;
                    $('.x-active').removeClass('x-active').data('ready',false);
                    that.clearModal();
                    that.startMode = null;
                    if(that.option&&that.option.mousupCallback){
                        that.option.mousupCallback(startMode,endMode);
                    }
                });
        },
        createModal: function(content,cssRule){
            var $dialog = $('<span class="x-clone"></span>').css({
                opacity: 0.7,
                'z-index': 10,
                'background-color': 'black',
                'display': 'inline-block',
                width: $(content).width(),
                height: $(content).height(),
                'position': 'absolute',
                top: cssRule.top,
                left: cssRule.left
            }),fragment = content.innerHTML;
            $dialog.html(fragment?fragment:'');
            $('body').append($dialog);
            return $dialog;
        },
        getPosition: function(e,content){
            var $tg = $(content);
            var _cloneLeft = $tg.offset().left,_cloneTop = $tg.offset().top;
            this.dialog = this.createModal(content,{top:_cloneTop,left:_cloneLeft});
            this.dialogBase = {top: _cloneTop,left: _cloneLeft};
        },
        move: function(e){
            var mouseX = e.clientX,mouseY = e.clientY,_changeMouseX = mouseX - this.base.mouseX,_changeMouseY = mouseY - this.base.mouseY;
            var cssRule = {
                top: this.dialogBase.top + _changeMouseY,
                left: this.dialogBase.left + _changeMouseX
            };
            if(this.dialog){
                this.dialog.css(cssRule);
            }
            return cssRule;
        },
        clearModal: function(){
            if(this.dialog){
                this.dialog.remove();
            }
        },
        anastomose: function(e){
            var i= 0,_cssRule = this.move(e),str = '';
            while(this.database[i]){
                if(!this.dialog){ return;}
                if(Math.abs(this.database[i].top - (_cssRule.top + this.dialog.height()/2) ) <= parseInt(setting.irregular) && Math.abs(this.database[i].left - (_cssRule.left + this.dialog.width()/2)) <= parseInt(setting.irregular) && !this.database[i].content.hasClass('x-active')){
                    str = this.database[i].content[0].innerHTML;
                    this.database[i].content.html(this.dialog[0].innerHTML);
                    $('.x-active').html(str);
                    return this.database[i].content;
                }
                i++;
            }
        },
        createDataBase: function(){
            var that = this,tg;
            this.span.each(function(){
                tg = $(this);
                if(!tg.hasClass('x-none')){
                    that.database.push({top: tg.offset().top + tg.height()/2,left: tg.offset().left + tg.width()/2,content: tg});
                }
            });
        },
        clearBlue: function(){
            $('body').on('selectstart',function(){
                return false;
            });
            $('body').css({
                '-moz-user-select':'none',
                '-khtml-user-select': 'none'
            });
        },
        resetBlue: function(){
            $('body').off('selectstart');
            document.body.removeAttribute('style');
        }
    };
    $.fn.drag = function(option){
        var _obj = {};
        if(typeof option == 'object'){
            _obj = option;
        }
        if(!this.data('drag')){
            this.data('drag',new Drag(this,_obj));
        }
        if(typeof option == 'string'){
            Drag.prototype[option].call(this.data('drag'));
        }
    };
    $.fn.drag.constructor = Drag;
})(window,jQuery)