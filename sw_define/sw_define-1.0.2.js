/**
 * Created with JetBrains WebStorm.
 * User: Yangchen
 * Date: 14-7-3
 * Time: 下午9:24
 * To change this template use File | Settings | File Templates.
 */

(function(w){
    var globalQueue = [],
        _global = function(){};
    _global.findByName = function(name){
        var i = 0,l;
        for(i,l=globalQueue.length;i<l;i++){
            if(globalQueue[i].name == name){
                return globalQueue[i];
            }
        }
    };
    _global.deleteEle = function(name){
        for(var i=0;globalQueue[i];i++){
            if(globalQueue[i].name == name){
                return globalQueue.splice(i,1)[0];
            }
        }
    };
    _global.isArray = function(arr){
        return Object.prototype.toString.call(arr) === '[object Array]';
    };
    w.sw_define = function(name,callback){
        var _name,_callback;
        if(typeof name != 'string'){
            _name = 'main';
            _callback = name;
        }else{
            _name = name;
            _callback = callback;
        }
        if(!_global.findByName(_name)){
            globalQueue.push({
                name: _name,
                callback: _callback
            });
        }
        delete _name;
        delete _callback;
    };
    w.sw_execute = function(name,arr){
        var o = _global.deleteEle(name);
        if(!o) return ;
        return o.callback.apply(this,arr||[]);
    };
    w.sw_always = function(name,arr){
        var o = _global.findByName(name);
        if(!o) return ;
        return o.callback.apply(this,arr||[]);
    };
    w.sw_getGlobal = function(){
        var _arr = [];
        for(var i = 0,l = globalQueue.length;i<l;i++){
            _arr.push(globalQueue[i]);
        }
        return _arr;
    };
    w.sw_module = function(arr,callback){
        var o,_arr = [];
        if(_global.isArray(arr)){
            for(var i=0;arr[i];i++){
                o = _global.findByName(arr[i]);
                if(!o){ break;}
                _arr.push(o.callback.apply(this,[]));
            }
            callback.apply(this,_arr);
        }else{
            w.sw_execute(arr,[]);
        }
    };
})(window)
