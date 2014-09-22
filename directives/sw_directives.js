/**
 * Created by yangcheng on 14-9-19.
 * 这是一个简单的前端自定义标签
 */
(function(w){
    var w = w,d = w.document;
    var Directive = function(){
        this.tagName = '';
        this.settings = {};
    };
    var regAttrToJson = /([^\s]*?)="(.*)"/,contentReg = /<.*?>(.*)<\/.*?>/;
    Directive.prototype = {
        map: function(templateFactory){
            var i = 0,globalMap = '',tagName = this.tagName?this.tagName:'';
            for(i;d.childNodes[i];i++){
                if(d.childNodes[i].nodeName.toLocaleLowerCase() == 'html' && d.childNodes[i].nodeType == 1) break;
            }
            globalMap = d.childNodes[i].innerHTML;
            if(!tagName){
                w.error('please config the tagName!');
                return ;
            }
            var regTagName = new RegExp('<' + tagName + '.*?>((?:\s|.)*)</' + tagName + '>'),regAttr = new RegExp('([^=<'+ tagName + ']*?)=".*?"','g');
            this.filter(globalMap,tagName,regTagName,regAttr);
            this.render(tagName);
        },
        filter: function(globalMap,tagName,regTagName,regAttr){
            var _arr = globalMap.match(regTagName);
            if(!_arr){
                _arr = globalMap.match(new RegExp('<' + tagName.toUpperCase() + '.*?>((?:\s|.)*)</' + tagName.toUpperCase() + '>'))
            }
            var tag = _arr[0],
                content = _arr[1];
            this.dataObj = this.analysisAttr(tag,tagName,regAttr,regAttrToJson);
        },
        controller: function(tagName){
            if(this.settings.controller){
                this.settings.controller(this.dataObj);
            }
        },
        trim: function(str){
            return String.prototype.trim?str.trim():str.replace(/(^\s*)|(\s*$)/g,"");
        },
        render: function(tagName){
            var tmplTag = this.settings.template.match(/<([^\s\n]*?)>/)[1],element = document.createElement(tmplTag),source = document.getElementsByTagName(tagName)[0];
            element.innerHTML = this.settings.template.match(contentReg)[1];source.parentNode.appendChild(element);
            source.parentNode.removeChild(source);
            this.controller(tagName);
        },
        analysisAttr: function(tag,tagName,regAttr,regAttrToJson){
            var attrArr = tag.match(regAttr),attrObj = {},singleObj;
            for(var i=0; attrArr[i];i++){
                singleObj = attrArr[i].match(regAttrToJson);
                attrObj[this.trim(singleObj[1])] = this.trim(singleObj[2]);
            }
            return attrObj;
        },
        getInfo: function(settings){
            return {
                template: settings.template?settings.template:''
            };
        },
        /*
        * directiveName:自定义标签名字
        * callback:处理回调
        * */
        directive: function(directiveName,callback,content){
            this.tagName = directiveName;
            this.settings = content?callback.call(content):callback();
            this.map(this.getInfo(this.settings));
        }
    };
    w.Directive = Directive;
    //demo.map();
})(window)