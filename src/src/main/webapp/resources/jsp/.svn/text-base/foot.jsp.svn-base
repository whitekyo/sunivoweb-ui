
<!--底部-->
<%@ page language="java" pageEncoding="UTF-8"%>
<div class="foot">
  <p>本网站所列开源项目的中文版文档全部由Sunivo Web成员翻译整理</p>
  <p>Powered by Sunivo Web Team 站长统计</p>
</div>
<%--<script type="text/javascript" src="../thirdparty/script/jquery-1.9.1.min.js"></script>--%>
<%--<script type="text/javascript" src="../thirdparty/script/sunivoweb.frame.js"></script>--%>
<%--<script type="text/javascript" src="../customize/script/ports.js"></script>
<script type="text/javascript" src="../customize/script/portSelector.js"></script>--%>
<%--<script>(function($){$.initover = function(fn) {$(document).one('initover', fn);}})(jQuery);</script>--%>
<%--<script type="text/javascript" src="../customize/js/SunivoWeb-ui.js"></script>--%>
<script type="text/javascript" src="../customize/js/require.js"></script>
<script type="text/javascript">
  var sw_option = sw_execute('options'),
      sw_setting = {
          paths:{
              jquery: '../thirdparty/script/jquery-1.9.1.min',
              frame: '../thirdparty/script/sunivoweb.frame',
              ports: '../customize/script/ports',
              portSelector: '../customize/script/portSelector',
              sw: '../customize/js/SunivoWeb-ui'
          },
          shim: {
              frame: {
                  deps: ['jquery']
              },
              portSelector: {
                  deps: ['jquery']
              },
              sw: {
                  deps: ['jquery','frame'],
                  exports: 'sw'
              }
          }
      },
      sw_parameters = [];
  if(sw_option){
      sw_setting = sw_extend(sw_option,sw_setting);
  }
  for(var i in sw_setting.paths){
      sw_parameters.push(i);
  }
  //source为添加项，target为主项
  function sw_extend(source,target){
    for(var key in source){
        if(typeof source[key] == 'object'&& target[key]){
            sw_extend(source[key],target[key]);
        }else{
            target[key] = source[key];
        }

    }
    return target;
  }
  require.config(sw_setting);
  require(sw_parameters,function($){
      var a = new sw();
      a.init();
      a.nav($('#pordAttr'));
      a.navLocation(window.location.href,$('#pordAttr'));
      a.stick(true);//回到顶部
      sw_execute('main');//执行每个页面各自的主要js
  });

</script>
</body>
</html>