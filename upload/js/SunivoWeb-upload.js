/**
 * Created with JetBrains WebStorm.
 * User: Yangchen
 * Date: 14-6-24
 * Time: 下午10:33
 * To change this template use File | Settings | File Templates.
 */
(function($,w){
    function sw_upload(context){
        u.createFactory(context);
    }
    var u = sw_upload;
    sw_upload.createFactory = function(target){

    };
    sw_upload.createForm =  function(){
        /*var oForm = document.createElement('form');*/

    };
    sw_upload.createIframe = function(){};
    sw_upload.analyTag = function(context){
        var element = context[0];
        return {
            /*name : element.name,
            id: element.id*/
        };
    };
    sw_upload.prototype = {
        constructor: sw_upload,
        init: function(){}
    };
})(jQuery,window);