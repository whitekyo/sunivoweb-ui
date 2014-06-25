

  <%@ page language="java" pageEncoding="UTF-8"%>
  <%@include file="head.jsp"%>
  <style>
.step-plus{width:30px; height:30px; background:url(../customize/images/icon_11.png) ;}
.step-minus{width:30px; height:30px; background:url(../customize/images/icon_11.png) -30px 0;}
</style>

  <%@include file="top.jsp"%>
  <div class="component-content clearfix"> 
  <%@include file="left.jsp"%>
  
  <!--右边具体插件-->
  <div class="component-substance">

    <h1>表格列的增删</h1>
    <!--插件编译人、编译时间-->
    <label>开发者：王淼　发布日期：2014-03-26　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
      <h2>★ 案例</h2>
    </div>
    <div class="">
      <h3>静态案例</h3>
    </div>
    <div class="bs-docs-example"> 
    <table style="width:100%;" class="minus-plus-wap">
      <tr data-minus-plus><td>数据</td><td>数据</td><td>数据</td><td>数据</td><td>数据</td><td><a href="javascript:void(0)"><i class="step-minus"></i></a></td></tr>
    </table>
    <a href="javascript:void(0)"><i class="step-plus"></i></a>

    </div>
    <!--添加插件代码-->
    <pre class="prettyprint linenums">
    <ol class="linenums">
<li>&lt;table style=&quot;width:100%;&quot; <span class="text-success">class=</span><span class="text-warning">&quot;minus-plus-cont&quot;</span>&gt;</li><li>  &lt;tr <span class="text-warning">data-minus-plus</span>&gt;</li><li>    &lt;td&gt;数据&lt;/td&gt;</li><li>    &lt;td&gt;数据&lt;/td&gt;</li><li>    &lt;td&gt;数据&lt;/td&gt;</li><li>    &lt;td&gt;数据&lt;/td&gt;</li><li>    &lt;td&gt;数据&lt;/td&gt;</li><li>    &lt;td&gt;&lt;a href=&quot;javascript:void(0)&quot;&gt;&lt;i <span class="text-success">class=</span><span class="text-warning">&quot;step-minus&quot;</span>&gt;&lt;/i&gt;&lt;/a&gt;&lt;/td&gt;</li><li>  &lt;/tr&gt;</li><li>&lt;/table&gt;</li><li>&lt;a href=&quot;javascript:void(0)&quot;&gt;&lt;i <span class="text-success">class=</span><span class="text-warning">&quot;step-plus&quot;</span>&gt;&lt;/i&gt;&lt;/a&gt;<br></li></ol></pre>
    <h2>★ 调用方式</h2>
    通过data-minus-plus属性
    <div class=""  style="font-size:14px;">
      <h3>设置增加删除按钮</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li>&lt;i <span class="text-success">class=</span><span class="text-warning">&quot;step-minus&quot;</span>&gt;&lt;/i&gt;</li><li>&lt;i <span class="text-success">class=</span><span class="text-warning">&quot;step-plus&quot;</span>&gt;&lt;/i&gt;</li></ol></pre>
      <h3>设置被添加对象</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li>在需要被添加对象上加<span class="text-warning">data-minus-plus</span>，&lt;tr <span class="text-warning">data-minus-plus</span>&gt;</li></ol></pre>
      <h3>设置添加对象根位置</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li>在需要增加的对象的根出添加样式名<span class="text-warning">minus-plus-wap</span>， &lt;table style=&quot;width:100%;&quot; <span class="text-success">class=</span><span class="text-warning">&quot;minus-plus-cont&quot;</span>&gt;</li></ol></pre>
    
    </div>
    
    
  </div>
</div>
  <script type="text/javascript">
      sw_define(function(){
          $(".step-minus").click(function(){
              if ($("[data-minus-plus]").size() > 1) {
                  $(this).parents("[data-minus-plus]").remove();
              } else {
                  alert("至少保留一个");
              }
          });

          $(".step-plus").click(function(){
                      if($("[data-minus-plus]").size() < 20){
                          $(".minus-plus-wap").append($("[data-minus-plus]:first").clone(true));
                      }else{
                          alert("最多只能增加20个");
                      }
                  }
          );
      });
  </script>
 <%@include file="foot.jsp"%>