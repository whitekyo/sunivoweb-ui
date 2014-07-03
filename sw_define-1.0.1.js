/**
 * Created with JetBrains WebStorm.
 * User: Yangchen
 * Date: 14-7-3
 * Time: 下午9:24
 * To change this template use File | Settings | File Templates.
 */
(function (w) {
    function randomNum(count){
        var l = count || 32,
            t = "ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz12345678",
            num = '',i = 0;
        for(i;i<l;i++){
            num += t.charAt(Math.floor(Math.random()*48));
        }
        return num;
    }
    var globalQueue = [],
        _global = function(){};
    _global.findByName = function(name){
        for(var i = 0,l=globalQueue.length;i<l;i++){
            if(globalQueue[i].name == name){
                return globalQueue[i];
            }
        }
    };
    _global.delete = function(name){
        for(var i=0;globalQueue[i];i++){
            if(globalQueue[i].name == name){
                return globalQueue.splice(i,1)[0];
            }
        }
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
        var o = _global.delete(name);
        if(!o) return ;
        return o.callback.apply(this,arr);
    };
    w.sw_always = function(name,arr){
        var o = _global.findByName(name);
        if(!o) return ;
        return o.callback.apply(this,arr);
    };
    w.sw_getGlobal = function(){
        var _arr = [];
        for(var i = 0,l = globalQueue.length;i<l;i++){
            _arr.push(globalQueue[i]);
        }
        return _arr;
    };
})(window)