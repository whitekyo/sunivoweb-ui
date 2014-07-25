/**
 * Created by yangcheng on 14-7-24.
 */
(function(w,$){
    function ScrollBar(content,options){
        this.elem = content;
        this.bars = content.find('.x-scrollbar');
        this.word = content.find('.x-scrollcontent');
        this.flg = false;
        this.base = null;
        this.options = options;
        this.init();
    }
    ScrollBar.prototype = {
        constructor: ScrollBar,
        init: function(){
            this.createBar();
            this.bindEvent();
            this.mousewheel();
            this.clearBlue();
            this.reset();
        },
        createBar: function(){
            var contentHeight = this.elem.height(),
                showHeight = this.word.height();
            this.bars.css({
                'height': (contentHeight/showHeight*contentHeight) + 'px'
            });
            this.marginTop = parseInt(this.bars.css('top'));
            this.wordMt = parseInt(this.word.css('top'));
            this.currentHeight = contentHeight - this.bars.outerHeight();
        },
        bindEvent: function(){
            var that = this;
            this.bars.on('mousedown',function(e){
                e.stopPropagation();
                that.flg = true;
                that.base = e.clientY;
                that.marginTop = parseInt(that.bars.css('top'));
                that.wordMt = parseInt(that.word.css('top'));
                that.clearBlue();
            })
            $(document).on('mouseup',that.bars,function(e){
                e.stopPropagation();
                that.flg = false;
                that.base = null;
            }).on('mousemove',that.bars,function(e){
                e.stopPropagation();
                var displacement,_height,_wordHeight;
                if(that.flg){
                    displacement = e.clientY - that.base;
                    if(displacement >= 0 && displacement <= that.currentHeight){
                        that.up(displacement,_height,_wordHeight,e);
                    }
                    if(displacement<0&&displacement>= -1*that.currentHeight){
                        that.down(displacement,_height,_wordHeight,e);
                    }
                }
            });
        },
        up: function(displacement,_height,_wordHeight,event){
            if(this.marginTop >=0 && this.marginTop <= this.currentHeight){
                _height = this.marginTop + displacement;
                if(_height >= this.currentHeight){
                    _height = this.currentHeight;
                }
                this.bars.css({
                    'top': _height
                });
                _wordHeight = this.wordMt + (-1*displacement*this.word.height()/this.elem.height());

                if(_wordHeight <= -(this.currentHeight*this.word.height()/this.elem.height())){
                    _wordHeight = -(this.currentHeight*this.word.height()/this.elem.height());
                }
                this.word.css({
                    'top': _wordHeight
                });
                if(this.options.callback){
                    this.options.callback(event);
                }
            }
        },
        down: function(displacement,_height,_wordHeight,event){
            if(this.marginTop >=0 && this.marginTop <= this.currentHeight+3){
                _height = this.marginTop + displacement;
                if(_height <= 0 ){
                    _height = 0;
                }
                this.bars.css({
                    'top': _height
                });
                _wordHeight = this.wordMt + (-1*displacement*this.word.height()/this.elem.height());
                if(_wordHeight >= 0){
                    _wordHeight = 0;
                }
                this.word.css({
                    'top': _wordHeight
                });
                if(this.options.callback){
                    this.options.callback(event);
                }
            }
        },
        mousewheel: function(){
            var that = this;
            this.word.on('mousewheel',function(e){
                var displacement,_height,_content = $(this),_wordHeight;
                if(parseInt(e.originalEvent.wheelDelta) > 0){
                    that.marginTop = parseInt(that.bars.css('top'));
                    that.wordMt = parseInt(that.word.css('top'));
                    that.down(-10,_height,_wordHeight,e);
                }else{
                    that.marginTop = parseInt(that.bars.css('top'));
                    that.wordMt = parseInt(that.word.css('top'));
                    that.up(10,_height,_wordHeight,e);
                }
            });
            this.word.on('DOMMouseScroll',function(e){
                var displacement,_height,_content = $(this),_wordHeight;
                if(parseInt(e.originalEvent.detail) > 0){
                    //down
                    that.marginTop = parseInt(that.bars.css('top'));
                    that.wordMt = parseInt(that.word.css('top'));
                    that.up(10,_height,_wordHeight,e);
                }else{
                    //up
                    that.marginTop = parseInt(that.bars.css('top'));
                    that.wordMt = parseInt(that.word.css('top'));
                    that.down(-10,_height,_wordHeight,e);
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
        reset: function(){
            this.word.on('mousedown',function(){
                $('body').off('selectstart');
                document.body.removeAttribute('style');
            });
        }
    };
    $.fn.scrollbars = function(options){
        var options = options||{};
        if(!this.data('scrollbars')){
            this.data('scrollbars',new ScrollBar(this,options));
        }
    };
    $.fn.scrollbars.prototype = ScrollBar;
})(window,jQuery)