/**
 * Created by YANGCHENG897 on 2015-02-02.
 */
/**
 * 兼容IE8--
 */
(function(w,undefined){
    var _console = {};
    if(!w.console){
        var method,
            log = _console.log || new Function(),
            methods = [
                "log","debug","error","info","warn","dir","dirxml","table","trace",
                "assert","count","markTimeline","profile","profileEnd","time","timeEnd",
                "timeStamp","timeline","timelineEnd","group","groupCollapsed",
                "groundEnd","clear","memory"
            ];
        while(method = methods.pop()){
            _console[method] = _console[method] || log;
        }
    }
    w.console = w.console || _console;
})(window);