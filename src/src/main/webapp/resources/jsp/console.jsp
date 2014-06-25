

  <%@include file="head.jsp"%>
  <%@include file="top.jsp"%>
  
  <%@ page language="java" pageEncoding="UTF-8"%>
<div class="component-content clearfix">
  <%@include file="left.jsp"%>
<div class="component-substance k-ichcek">

  
  <h1>关于Console的使用</h1>
  <!--插件编译人、编译时间-->
  <label>作者： 杨成　发布日期：2014-06-25　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
  <div class="component-block">
    <h2>★ 案例</h2>
    <p>console在debug的时候非常有用，但在IE8-9下，经常会报出console未定义的错误，其实并不是IE8-9没有内置console，而是我们需要打开F12，进行断点调试的时候，才能使用console。这个略囧 </p>
    <pre class="prettyprint linenums"><ol class="linenums"><li>//页面调用方式还是跟原来的window.console或者直接console是一样的</li><li>console.log(<span class="x-txt-green">'hello SunivoWeb'</span>);</li><li><span class="x-txt-purple">window</span>.console.log(<span class="x-txt-green">'hello SunivoWeb'</span>);</li></ol></pre>
  </div>
  <h2>注意：</h2>
  <p>插件已经在IE7，8，9浏览器中对console做了容错处理，所以在这些浏览器下测试，可能会使得console无法打印出来，建议大家使用相应浏览器的debug断点是调试</p>
</div>
</div>
<%@include file="foot.jsp"%>