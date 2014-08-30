/**
 * Created by yangcheng on 14-7-10.
 */
(function(w,$){
    var default_option = {
        row: '5',
        cols: '5',
        typeList : ['ease','ease-in','ease-out','ease-in-out']
    };
    function BigBang(content,options){
        this.elem_jq = content;
        this.elem = content[0];
        this.options = $.extend(options,default_option);
        this.init();
    }
    BigBang.prototype = {
        constructor: BigBang,
        init: function(){
            this.seniorEffect();
            this.getChip();
        },
        getChip: function(){
            var _row = parseInt(this.options.row),_cols = parseInt(this.options.cols);
            for(var i = 0;i<_row;i++){
                for(var j = 0;j<_cols;j++){
                    var oDiv = document.createElement('div'),_width = this.elem.offsetWidth/_cols,_height = this.elem.offsetHeight/_row,$div;
                    oDiv.className = 'x-bigbang-box';
                    $div = $(oDiv);
                    $div.css({
                        'background': 'url('+ this.options.src + ') repeat -' + j*_width+'px -' + i*_height + 'px',
                        'opacity': '1',
                        'display': 'block',
                        'width': _width + 'px',
                        'height': _height + 'px',
                        'position': 'absolute',
                        'top': i*_height + 'px',
                        'left': j*_width + 'px'
                    });
                    this.elem_jq.append($div);
                    this.getCSS3Style($div,i,j);
                }
            }

        },
        getCSS3Style: function(content,row,cols){
            var that = this,transition = '-' + this.prefix + 'transition',transform = '-' + this.prefix + 'transform';
            content.css($.extend(this.layout(row,cols),{
                transition: 'all .5s ease-in-out',
                transform:'rotate('+that.getRandomNumber(-40,40)+'deg) rotateY('+that.getRandomNumber(-40,40)+'deg) rotateX('+that.getRandomNumber(-40,40)+'deg)',
                transition: 'all .5s ease-in-out',
                'opacity': '0',
                width: parseInt(content.width()) * 2,
                height: parseInt(content.height()) * 2
            }));
        },
        clearChip: function(){
            this.elem_jq.html('');
        },
        showChip: function(){
            this.elem_jq.find('div').show();
        },
        seniorEffect: function(){
            var isBrower = navigator.userAgent.toLowerCase();
            if(isBrower.indexOf('webkit')!=-1){this.prefix='Webkit';}
            else if(isBrower.indexOf('msie')!=-1){this.prefix='ms';}
            else if(isBrower.indexOf('firefox')!=-1){this.prefix='Moz';}
            else if(isBrower.indexOf('opera')!=-1){this.prefix='o';}
            else{this.prefix='';}
        },
        getRandomNumber: function(m,n){
            return parseInt(Math.random()*(n-m))+n;
        },
        layout: function(row,cols){
            var _row = row + 1 ,_cols = cols + 1,__row,__cols;
            if(_row  < parseInt(default_option.row /2)){
                __row = -1 * (this.getRandomNumber(-50,100)) * _row;
                if( _cols < parseInt(default_option.cols /2)){
                    __cols = -1 * (this.getRandomNumber(-50,100) * _cols);
                }else{
                    __cols = this.getRandomNumber(-50,100) * _cols;
                }
            }else{
                __row = this.getRandomNumber(-50,100) * _row;
                if( _cols < parseInt(default_option.cols /2)){
                    __cols = -1 * (this.getRandomNumber(-50,100) * _cols);
                }else{
                    __cols = this.getRandomNumber(-50,100) * _cols;
                }
            }
            console.log({
                left: __row,
                top: __cols
            });
            return {
                left: __cols,
                top: __row
            };
        }
    };
    $.fn.bigbang = function(options){
        this.each(function(){
            var tg = $(this);
            if(!tg.data('bigbang')){tg.data('bigbang',new BigBang(tg,options))}
        });
    };
    $.fn.bigbang.constructor = BigBang;
})(this,jQuery)