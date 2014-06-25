/**
 * Created by caihuazhi on 13-11-27.
 */
/**
 * VICKY 表单验证组件
 */
!(function($) {
    var Vicky = function(options) {
        this.options = options;
    }, vicky;

    Vicky.prototype = {
        constructor : Vicky,

        init : function() {
            return this.each(function() {
                var form = vicky._initForm(this);
                form.on("focus.vicky", "[vi]", vicky._onFocus)
                    .on("change.vicky", "[vi]", vicky._onChange)
                    .on("blur.vicky", "[vi]", vicky._onBlur)
                    .on("submit.vicky", vicky._onSubmit);
                vicky._reset(form);
            });
        },

        _initForm : function(_t) {
            var t = $(_t);
            if (_t.tagName.toUpperCase() != 'FORM') {
                if (t.find("form").length) t = t.find("form");
                else t = t.parents("form");
            }
            return t;
        },

        // 初始化表单，存储相关的变量
        _reset : function(form) {
            $.each(vicky.options, function(i, n) {
                var t= form.find("[name=" + i + "]");
                t.data("vicky", {});
                t.data("vicky").parent = t.parents(".v-group");
                t.data("vicky").info = t.parents(".v-group").find(".v-info");
                t.data("vicky").flag = (n.empty || n.required) ? false : true;
            });
        },

        // 改变状态以及相应操作
        _statusChange : function(t, f, txt) {
            t.data("vicky").flag = f;
            t.data("vicky").info.text(txt);
            if (f) t.data("vicky").parent.addClass('v-success').removeClass('v-error');
            else t.data("vicky").parent.addClass('v-error').removeClass('v-success');
        },

        // 得到焦点时还原
        _onFocus : function(e) {
            var that = e.target;
            if (!vicky.options[that.name]) return true;
        },

        // value改变时验证正则，组合非空，组合相等，数值范围，ajax等
        _onChange : function(e) {
            var that = e.target,
                curr = vicky.options[that.name],
                error, success, flag = false, i, j, reg;
            if (!curr) return true;
            // 正则匹配
            if (curr['regex'] != null) {
                for (i = 0, j = curr['regex'].length; i < j; i++) {
                    if (typeof curr['regex'][i] == 'string') { // 已有的规则
                        reg = $.vicky.rules[curr['regex'][i]];
                        if (!reg) break;
                        if (reg.regex != null) {  // 正则匹配
                            flag = that.value.match(reg.regex) ? true : false;
                        } else if (reg.fun != null) { // 方法返回值
                            flag = reg.fun(that.value);
                        }
                    } else { // 自定义正则验证
                        flag = that.value.match(curr['regex'][i]) ? true : false;
                    }
                }
            }
            if (flag) {
                success = curr['success'] || ' ';
            } else {
                error = curr['error'] || reg.error || '';
            }


            if (flag) vicky._statusChange($(that), true, success);
            else vicky._statusChange($(that), false, error);
        },

        // 离开焦点时验证非空
        _onBlur : function(e) {
            var that = e.target,
                curr = vicky.options[that.name],
                error, success;
            if (!curr) return true;
            if (!curr['empty'] && !curr['required']) return true;
            if (!that.value || !that.value.match($.vicky.rules.notempty.regex)) {
                error = curr['empty'] || $.vicky.rules.notempty.error;
                vicky._statusChange($(that), false, error);
            } else {
                success = curr['success'] || ' ';
                vicky._statusChange($(that), true, success);
            }
        },

        // 提交表单时验证每个[vi]元素的当前状态
        _onSubmit : function(e) {
            var that = e.target;

        }


    };

    $.fn.vicky = function() {
        vicky = new Vicky();
        var arg0 = arguments[0],
            method = vicky.init,
            args = [];
        if (typeof arg0 == 'object') {
            vicky.options = $.extend({}, arg0);
        } else {
            $.error('method ' + arg0 + ' does not exist on Vicky');
            return this;
        }
        arg0 = null;
        return method.apply(this, args);
    };

    $.vicky = {
        rules : {
            "notempty" : {
                "regex" : /^\S*$/,
                "error" : "this field can't be empty"
            },
            "email" : {
                "regex" : /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/,
                "error" : "Invalid email address"
            },
            "phone" : {
                "regex" : /^([\+][0-9]{1,3}[\ \.\-])?([\(]{1}[0-9]{2,6}[\)])?([0-9\ \.\-\/]{3,20})((x|ext|extension)[\ ]?[0-9]{1,4})?$/,
                "error" : "Invalid phone number"
            },
            "integer" : {
                "regex" : /^\d+$/,
                "error" : "* Not a integer"
            },
            "date" : {
                "fun" : function(str) {
                    var r = str.match(/^(\d{4})[\/\-\.](0?[1-9]|1[012])[\/\-\.](0?[1-9]|[12][0-9]|3[01])$/);
                    if(r==null) return false;
                    var d= new Date(r[1], r[3]-1, r[4]);
                    return (d.getFullYear()==r[1]&&(d.getMonth()+1)==r[3]&&d.getDate()==r[4]);
                },
                "error" : "Invalid date, must be in yyyy-mm-dd format"
            },
            "time" : {
                "fun" : function(str) {
                    var a = str.match(/^(\d{1,2})(:)?(\d{1,2})\2(\d{1,2})$/);
                    if (a == null) return false;
                    if (a[1]>24 || a[3]>60 || a[4]>60) return false;
                    return true;
                },
                "error" : "Invalid time, must be in hh:ii:ss format"
            },
            "datetime" : {
                "fun" : function(str) {
                    var reg = /^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2}) (\d{1,2}):(\d{1,2}):(\d{1,2})$/;
                    var r = str.match(reg);
                    if(r==null) return false;
                    var d= new Date(r[1], r[3]-1,r[4],r[5],r[6],r[7]);
                    return (d.getFullYear()==r[1]&&(d.getMonth()+1)==r[3]&&d.getDate()==r[4]&&d.getHours()==r[5]&&d.getMinutes()==r[6]&&d.getSeconds()==r[7]);
                },
                "error" : "Invalid datetime, must be in yyyy-mm-dd hh:ii:ss"
            },
            "idcard" : {
                "fun" : function(str) {
                    var citys={11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江",31:"上海",32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",42:"湖北",43:"湖南",44:"广东",45:"广西",46:"海南",50:"重庆",51:"四川",52:"贵州",53:"云南",54:"西藏",61:"陕西",62:"甘肃",63:"青海",64:"宁夏",65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外"},
                        isum = 0;
                    if (!/^\d{17}(\d|x)$/i.test(str)) return false;
                    str = str.replace(/x$/i,"a");
                    if (citys[parseInt(str.substr(0,2))] == null) return false;
                    var sBirthday = str.substr(6,4) + "-" + Number(str.substr(10,2)) + "-" + Number(str.substr(12,2));
                    var d = new Date(sBirthday.replace(/-/g,"/")) ;
                    if (sBirthday != (d.getFullYear() + "-" + (d.getMonth()+1) + "-" + d.getDate())) return false;
                    for(var i = 17; i >= 0; i--) isum += (Math.pow(2,i) % 11) * parseInt(str.charAt(17 - i),11) ;
                    if (isum % 11 != 1) return false;
                    return true;//aCity[parseInt(sId.substr(0,2))]+","+sBirthday+","+(sId.substr(16,1)%2?"男":"女")
                },
                "error" : "Invalid ID Card."
            },
            "url" : {
                "regex" : /^(https?|ftp):\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i,
                "error" : "Invalid URL"
            },
            "onlyNumberSp" : {
                "regex" : /^[0-9\ ]+$/,
                "error" : "numbers only"
            },
            "onlyLetterSp" : {
                "regex" : /^[a-zA-Z\ \']+$/,
                "error" : "letters only"
            },
            "onlyLetterNumber" : {
                "regex" : /^[0-9a-zA-Z]+$/,
                "error" : "No special characters allowed"
            },
            "chinese" : {
                "regex" : /^[\\u4E00-\\u9FA5\\uF900-\\uFA2D]+$/,
                "error" : "仅中文"
            },
            "unique" : {
                "fun" : function(_target, _url) {
                    var _flag = false;
                    $.ajax(_url, {
                        data : {name : _target.val()},
                        async : false,
                        type : "GET",
                        success : function(data) {
                            _flag = data != 0;
                        }
                    });
                    return _flag;
                },
                "error" : "Invalid value."
            },
            "other" : {
                "fun" : function(_target, _reg) {
                    return _target.val().match(_reg) != null;
                },
                "error" : "Invalid value."
            }

        }
    };

    $.fn.vicky.Constructor = Vicky;
})(jQuery);