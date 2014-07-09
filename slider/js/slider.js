/**
 * Created by yangcheng on 14-7-9.
 */
(function(w,$){
    function Slider(content,options){
        this.el_jq = content;
        //this.set_Img(options);
        this.slider_btn = content.find('.x-slider li');
        this.img = content.find('img');
        this.callback = options?options.callback:false
        this.default_active = content.find('.active');
        this.current_active = this.default_active;
        this.timer = null;
        this.bindEvent();
        this.automatic();
        if(this.callback){
            this.callback(this.el_jq);
        }
    }
    Slider.prototype = {
        constructor: Slider,
        init: function(){},
        bindEvent: function(){
            this.slider_btn.on('click', $.proxy(this.slider,this));
        },
        slider: function(e){
            var tg = $(e.target),that = this;
            this.analysisRule(tg);
            this.clearTimer();
            that.automatic();
        },
        analysisRule: function(content){
            var num = parseInt(content.data('num'));
            this.carousel(this.img.get(num-1),content);
        },
        carousel: function(light,target){
            var that = this;
            this.img.stop(400).animate({
                opacity: 0
            },400).hide();
            $(light).stop(400).animate({
                opacity: 1
            },400).show();
            this.slider_btn.removeClass('active');
            target.addClass('active');
            this.current_active = target;
            if(this.callback){
                this.callback(this.el_jq);
            }
        },
        automatic: function(){
            var that = this,$next;
            this.timer = setInterval(function(){
                $next = that.current_active.next();
                if(!$next.length){
                    $next = $(that.slider_btn.get(0));
                }
                that.analysisRule($next);
            },5000);
        },
        clearTimer: function(){
            var that = this;
            clearInterval(that.timer);
            that.timer = null;
            console.log(that.timer);
        },
        set_Img: function(options){
            var i= 0, l,text_dom = '';
            if(!options.src &&!options.src.length){ return ;}
            l = options.src.length;
            for(i;i<l;i++){
                var str = '';
                if(i == 0){ str = "<div style='position: relative;'><img src='"+ options.src[i] + "'/></div>"}
                else {str = "<div style='position: relative;'><img src='"+ options.src[i] + "' style='display:none;'/></div>";}
                text_dom += str;
            }
            text_dom = text_dom + this.set_btn(l);
            this.el_jq.html(text_dom);
        },
        set_btn: function(l){
            var text_dom = '',i = 0;
            for(i;i<l;i++){
                var str = '';
                if(i == 0){ str = '<li data-num="'+ (i+1) + '" class="active"></li>'}
                else {str = '<li data-num="'+ (i+1) + '"></li>';}
                text_dom += str;
            }
            return '<ul class="x-slider">' + text_dom + '</ul>';
        }
    };

    $.fn.slider = function(options){
        var tg = $(this);
        if(!tg.data('slider')) tg.data('slider',new Slider(tg,options));
    };
    $.fn.slider.Constructor = Slider;
})(this,jQuery)