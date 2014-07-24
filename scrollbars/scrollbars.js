/**
 * Created by yangcheng on 14-7-24.
 */
(function(w,$){
    function ScrollBar(content){
        this.elem = content;
        this.bars = content.find('.x-scrollbar');
        this.word = content.find('.x-scrollcontent');
        this.flg = false;
        this.base = null;
        this.init();
    }
    ScrollBar.prototype = {
        constructor: ScrollBar,
        init: function(){
            this.createBar();
            this.bindEvent();
        },
        createBar: function(){
            var contentHeight = this.elem.height(),
                showHeight = this.word.height();
            this.bars.css({
                'height': contentHeight/showHeight*contentHeight
            });
            this.marginTop = parseInt(this.bars.css('top'));
            this.wordMt = parseInt(this.word.css('top'));
            this.currentHeight = contentHeight - this.bars.outerHeight();
        },
        bindEvent: function(){
            var that = this;
            this.bars.on('mousedown',function(e){
                that.flg = true;
                that.base = e.clientY;
                that.marginTop = parseInt(that.bars.css('top'));
                that.wordMt = parseInt(that.word.css('top'));
            }).on('mouseup',function(){
                that.flg = false;
                that.base = null;
            }).on('mouseleave',function(){
                that.flg = false;
                that.base = null;
            }).on('mousemove',function(e){
                var displacement,_height,_content = $(this),_wordHeight;
                if(that.flg){
                    displacement = e.clientY - that.base;
                    if(displacement>=0&&displacement <= that.currentHeight){
                        if(that.marginTop >=0 && that.marginTop <= that.currentHeight-3){
                            _height = that.marginTop + displacement;
                            if(_height >= that.currentHeight-3){
                                _height = that.currentHeight-3;
                            }
                            _content.css({
                                'top': _height
                            });
                            _wordHeight = that.wordMt + (-1*displacement*that.word.height()/that.elem.height());
                            if(_wordHeight <= -(that.currentHeight*that.word.height()/that.elem.height())){
                                _wordHeight = -(that.currentHeight*that.word.height()/that.elem.height());
                            }
                            that.word.css({
                                'top': _wordHeight
                            });
                        }
                    }
                    if(displacement<0&&displacement>= -1*that.currentHeight){
                        if(that.marginTop >=0 && that.marginTop <= that.currentHeight+3){
                            _height = that.marginTop + displacement;
                            if(_height <= 0 ){
                                _height = 0;
                            }
                            _content.css({
                                'top': _height
                            });
                            _wordHeight = that.wordMt + (-1*displacement*that.word.height()/that.elem.height());
                            if(_wordHeight >= 0){
                                _wordHeight = 0;
                            }
                            that.word.css({
                                'top': _wordHeight
                            });
                        }
                    }
                }
            });
        }
    };
    $.fn.scrollbars = function(){
        if(!this.data('scrollbars')){
            this.data('scrollbars',new ScrollBar(this));
        }
    };
    $.fn.scrollbars.prototype = ScrollBar;
})(window,jQuery)