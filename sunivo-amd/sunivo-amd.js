/**
 * Created by yangcheng on 14-10-24.
 */
(function(w){
    var load = function(){};
    var util = {
        isEmpty: function(obj){
            for(var i in obj){
                return false;
            }
            return true;
        },
        isArray: function(arr){
            return Array.isArray ? Array.isArray(arr) : toString.call(arr);
        },
        isObject: function(o){
            var type = typeof o;
            return type === 'function' || type === 'object' && !!o;
        },
        clone: function(o){
            if(this.isArray(o)){
                var i = 0,l = o.length,_arr = [];
                for(i;i<l;i++){
                    if(typeof o[i] !== 'string' && typeof o[i] !== 'function'){
                        _arr.push(this.clone(o[i]));
                    }else{
                        _arr.push(o[i]);
                    }
                    
                }
                return _arr;
            }else if(this.isObject(o)){
                var j,_o = {};
                for(j in o){
                    if(typeof o[j] !== 'string' && typeof o[j] !== 'function'){
                        _o[j] = this.clone(o[j]);
                    }else{
                        _o[j] = o[j];
                    }
                }
                return _o;
            }else{
                return o;
            }
        },
        without: function(big,small,protery){
            var i = j = 0,sl = small.length,bl = big.length,_arr = [];
            for(i;i<bl;i++){
                if(!this.contain(small,big[i],protery)){
                    _arr.push(big[i]);
                }
            }
            return _arr;
        },
        contain: function(arr,m,protery){
            for(var i=0,l = arr.length;i<l;i++){
                if(arr[i][protery] === m[protery]){
                    return true;
                }
            }
            return false;
        },
        with: function(big,small,protery){
            var i = j = 0,sl = small.length,bl = big.length,_arr = [];
            for(i;i<bl;i++){
                if(this.contain(small,big[i],protery)){
                    _arr.push(big[i]);
                }
            }
            return _arr;
        }
    };
    /*
        waitQueue:需要排队等候下载的脚本
        depsTable: 依赖项
    */
    var waitQueue = [],depsTable,dpesArr = [];
    var require = function(opt){
        if(!opt || !opt.paths || util.isEmpty(opt.paths)){
            return new Error('paths config error!');
        }
        depsTable = opt.shim ? opt.shim: {};
        waitQueue = util.clone(setWaitQueue(opt.paths));
        checkDeps(waitQueue,depsTable);

    };
    /*
        加载脚本
    */
    var loadScript = function(readyQueue){
        var i = 0,l = readyQueue.length,oScript,pFragment = document.createDocumentFragment(),observer = Observer(readyQueue);
        for(i;i<l;i++){
            oScript = document.createElement('script');
            oScript.type = 'text/javascript';
            oScript.src = readyQueue[i].url;
            eventListener(oScript,observer);
            pFragment.appendChild(oScript);
            dpesArr.push(readyQueue[i]);
        }
        document.getElementsByTagName('head')[0].appendChild(pFragment);
    };
    /*
        为需要加载的脚本绑定触发事件
    */
    var eventListener = function(dom,observer){
        dom.onload = function(){
            observer.finish();
        };
        dom.onerror = function(){
            new Error('deps are not load successful!');
        };
    };
    /*
         为准备就绪即将加载的并行脚本建立一个观察者，当这些脚本加载成功之后，再次查询下一次需要加载的脚本
    */
    var Observer = function(readyQueue){
        var state = false,member = readyQueue.length,i = 0;
        return {
            finish: function(){
                ++i;
                this.watch();
            },
            watch: function(){
                if(i === member){
                    waitQueue = util.without(waitQueue,readyQueue,'name');
                    checkDeps(waitQueue,depsTable);
                }
            }
        };
    };
    /*
        获取默认脚本等待队列
    */
    function setWaitQueue(pathObj){
        var i,arr = [];
        for(i in pathObj){
            arr.push({
                name: i,
                url: pathObj[i]
            });
        }
        return arr;
    }
    /*
        将目前没有依赖的先加载，再加载有依赖的脚本
    */
    function checkDeps(waitQueue,depsTable){
        var i,hasDepsArr = [],readyQueue = [];
        if(!waitQueue.length){
            return;
        }
        for(i in depsTable){
            if(!util.isEmpty(depsTable[i]) && depsTable[i].deps && depsTable[i].deps.length){
                hasDepsArr.push({name:i});
            }
        }
        if(!dpesArr.length){
            readyQueue = util.without(waitQueue,hasDepsArr,'name');
        }else{
            console.log(dpesArr);
            console.log(waitQueue);
        }
        
        if(!readyQueue.length){
            readyQueue = util.clone(waitQueue);
        }
        loadScript(readyQueue);
    }

    require({
        paths: {
            'jquery': 'jquery.js',
            'md5': 'jquery.md5.js',
            'validate': 'jquery.validate.js'
        },
        shim: {
            'md5': {
                deps: ['jquery']
            },
            'validate': {
                deps: ['jquery','md5']
            }
        }
    });
})(window);