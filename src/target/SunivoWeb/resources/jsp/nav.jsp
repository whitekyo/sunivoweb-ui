  <%@ page language="java" pageEncoding="UTF-8"%>
  <%@include file="head.jsp"%>
  <%@include file="top.jsp"%>
  <div class="component-content clearfix"> 
  <%@include file="left.jsp"%>
  <!--右边具体插件-->
  <div class="component-substance">
    <h1>点击版nav </h1>
    <!--插件编译人、编译时间-->
    <label>开发者：石怡　发布日期：2014-03-27　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
      <h2>★ 案例</h2> 导航条是在您的应用或网站中作为导航标头的响应式元组件，可以折叠（并且可开可关）。</div>
    <div class="">
      <h3>静态案例</h3> 带有二级导航的导航栏。</div>
    <div class="bs-docs-example"> 
      <!--添加插件案例-->
      <ul class="component-list" style="float:none;">
        <li><a class="on" href="#" >Navigation bar 1</a>
          <ul class="component-second-list">
            <li><a class="two-on" href="#">Navigation column 1</a></li>
            <li><a href="#">Navigation column 2</a></li>
            <li><a href="#">Navigation column 3</a></li>
          </ul>
        </li>
        <li><a href="#">Navigation bar 2</a></li>
        <li><a href="#">Navigation bar 3</a></li>
      </ul> 
    </div>
    <!--添加插件代码-->
    <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;ul <span class="text-success">class=</span><span class="text-warning">&quot;component-list&quot;</span> style=&quot;float:none;&quot;&gt;</li><li>  &lt;li&gt;&lt;a <span class="text-success">class=</span><span class="text-warning">&quot;on&quot;</span> href=&quot;#&quot; &gt;Navigation bar 1&lt;/a&gt;</li><li>    &lt;ul <span class="text-success">class=</span><span class="text-warning">&quot;component-second-list&quot;</span>&gt;</li><li>      &lt;li&gt;&lt;a <span class="text-success">class=</span><span class="text-warning">&quot;two-on&quot;</span> href=&quot;#&quot;&gt;Navigation column 1&lt;/a&gt;&lt;/li&gt;</li><li>      &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Navigation column 2&lt;/a&gt;&lt;/li&gt;</li><li>      &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Navigation column 3&lt;/a&gt;&lt;/li&gt;</li><li>   &lt;/ul&gt;</li><li>  &lt;/li&gt;</li><li>  &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Navigation bar 2&lt;/a&gt;&lt;/li&gt;</li><li>  &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Navigation bar 3&lt;/a&gt;&lt;/li&gt;</li><li>&lt;/ul&gt;</li></ol></pre>

    <div class="component-block"><h2>★ 效果</h2>点击一级导航，有展开、收起功能</div>
    <div class="bs-docs-example"> 
      <!--添加插件案例-->
      <ul class="component-list" style="float:none;"  id='nav1'>
        <li><a href="javascript:void(0);" >Navigation bar 1</a>
          <ul class="component-second-list">
            <li><a href="javascript:void(0);">Navigation column 1</a></li>
            <li><a href="javascript:void(0);">Navigation column 2</a></li>
            <li><a href="javascript:void(0);">Navigation column 3</a></li>
          </ul>
        </li>
        <li><a href="javascript:void(0);">Navigation bar 2</a>
          <ul class="component-second-list" style="display:none;">
            <li><a class="two-on" href="javascript:void(0);">Navigation column 1</a></li>
            <li><a href="javascript:void(0);">Navigation column 2</a></li>
            <li><a href="javascript:void(0);">Navigation column 3</a></li>
          </ul>
        </li>
        <li><a href="javascript:void(0);">Navigation bar 3</a>
          <ul class="component-second-list" style="display:none;">
            <li><a class="two-on" href="javascript:void(0);">Navigation column 1</a></li>
            <li><a href="javascript:void(0);">Navigation column 2</a></li>
            <li><a href="javascript:void(0);">Navigation column 3</a></li>
          </ul>
        </li>
      </ul> 
    </div>
    <pre class="prettyprint linenums"><ol class="linenums"><li>var aa = new sw();</li><li>aa.nav($('#nav1'));</li></ol></pre>
    <h2>★ 使用注意</h2>
    <p>1.点击版导航是通过调用id(id=case)实现js效果</p>
  </div>
</div>
<script type="text/javascript">
  sw_define(function(){
      var aa = new sw();
      aa.nav($('#nav1'));
  });
</script>
 <%@include file="foot.jsp"%>