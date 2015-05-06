/**
 * Created by YANGCHENG897 on 2015-02-02.
 */
(function(w,undefined){
    var Moment = function(formatArr,format){
        this.formatType = formatArr;
        this.Resouseformat = format;
    };
    var DateY = {
        now: function(){},
        format: function(format){
            var spliceReg = /[^-/:\s\u4e00-\u9fa5]{1,}/g;
            var formatArr = format.match(spliceReg);
            console.log(format.match(/[^-/:\s]{2,}/g));
            return new Moment(formatArr,format);
        }
    };
    Moment.prototype.parse = function(date){
        var _arr = this.formatType,i = 0,moment = "",str = this.Resouseformat;
        for(i ; _arr[i] ; i++){
            str = Change(str,_arr[i],ChoseParse(_arr[i][0],date));
        }
        console.log(str);
        return moment;
    };
    function ChoseParse (m,date){
        var str = "";
        switch (m){
            case 'Y':
                str =  date.getFullYear();
                break;
            case 'M':
                str = date.getMonth() + 1;
                break;
            case 'D':
                str = date.getDate();
                break;
            case 'h':
                str = date.getHours();
                break;
            case 'm':
                str = date.getMinutes();
                break;
            case 's':
                str = date.getSeconds();
                break;
            default :;
        }
        return str + '';
    }
    function Change (res,tmpl,str){
        var _reg = new RegExp(tmpl,'g');
        return res.replace(_reg,str);
    }
    w.DateY = DateY;
})(window);
console.log(DateY.format("YYYY年MM月DD日 hh时mm分ss秒").parse(new Date()));