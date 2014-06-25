

  <%@include file="head.jsp"%>
  <%@include file="top.jsp"%>
  
  <%@ page language="java" pageEncoding="UTF-8"%>
<div class="component-content clearfix">
  <%@include file="left.jsp"%>
<div class="component-substance k-ichcek">

  
  <h1>关于浏览器环境嗅探的使用</h1>
  <!--插件编译人、编译时间-->
  <label>作者： 杨成　发布日期：2014-06-25　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
  <div class="component-block">
    <h2>★ 案例</h2>
    <p>写脚本的时候，经常会遇到各种兼容性的问题，虽然jQuery处理的很多DOM部分的兼容性问题，但实际开发中还是会遇到很多问题，比如IE8的表单提交等。</p>
    <p>插件提供一种API帮助书写脚本时，如果需要快速知道浏览器环境，而不需要去翻阅或查找各种嗅探的奇技淫巧的方式</p>
    <pre class="prettyprint linenums"><ol class="linenums"><li>//插件提供了两种嗅探功能，一种检测IE和非IE浏览器，另外一种较为强大，返回当前浏览器环境的基本数据，包括版本，浏览器名，操作系统等，(后者目前支持移动端识别)</li><li>var a = new sw();//实例化插件</li><li>console.log(a.<span class="x-txt-yellow">isbrowser</span>());//如果是IE浏览器，则返回IE版本，如果是非IE浏览器则返回false</li><li>console.log(a.<span class="x-txt-yellow">client</span>());//返回一个对象，包含当前环境的基础信息(浏览器，引擎，操作系统环境)。如果需要采用后者，需要自行解析返回值</li></ol></pre>
  </div>
</div>
</div>
  <script type="text/javascript">
      sw_define(function(){
          var isBrower = new sw();
          console.log(isBrower.isbrowser());
          console.log(isBrower.client());
      });
  </script>
<%@include file="foot.jsp"%>