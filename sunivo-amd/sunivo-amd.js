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
        }
    };
    var waitQueue = [],depsTable;
    var require = function(opt){
        /*if(!opt && util.isEmpty(opt) && !opt.paths || util.isEmpty(opt.paths)){
            return ;
        }*/
        if(!opt || !opt.paths || util.isEmpty(opt.paths)){
            return new Error('paths config error!');
        }
        depsTable = opt.shim ? opt.shim: {};
        waitQueue = setWaitQueue(opt.paths);
        console.log(depsTable);
        console.log(waitQueue);
    };
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
    function checkDeps(){}
    require({
        paths: {
            'A': 'A.js',
            'B': 'B.js'
        },
        shim: {
            B: {
                deps: ['A']
            }
        }
    });
})(window);