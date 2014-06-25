

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

    <h1>运输方式控件</h1>
    <!--插件编译人、编译时间-->
    <label>开发者：王淼　发布日期：2014-03-31　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
      <h2>★ 案例</h2>
    </div>
    <div class="">
      <h3>静态案例</h3>
    </div>
    <div class="bs-docs-example"> 
      <div id="transportTypeSection">
          <h3>运输方式控件</h3>
          <select data-select="transportType"  class="chosen" >
                  <option value="1" selected>海运</option>
                  <option value="2">空运</option>
          </select>
          <span class="transportAttachmentTypeSelect">
              <select name="transportAttachmentType" class="chosen">
                      <option value="1" selected>整箱</option>
                      <option value="2">拼箱</option>
              </select>
          </span>
      </div>
    </div>
    <!--添加插件代码-->
    <pre class="prettyprint linenums">
    html部分<ol class="linenums">
<li>&lt;div <span class="text-success">id=&quot;</span><span class="text-warning">transportTypeSection</span>&quot;&gt;</li><li>   &lt;h3&gt;运输方式控件&lt;/h3&gt;</li><li>   &lt;select <span class="text-success">data-select=</span><span class="text-warning">&quot;transportType&quot;</span>  class=&quot;chosen&quot; &gt;</li><li>   &lt;option <span class="text-success">value=</span><span class="text-warning">&quot;1&quot;</span> selected&gt;海运&lt;/option&gt;</li><li>   &lt;option <span class="text-success">value=</span><span class="text-warning">&quot;2&quot;</span>&gt;空运&lt;/option&gt;</li><li>   &lt;/select&gt;</li><li>   &lt;span <span class="text-success">class=</span><span class="text-warning">&quot;transportAttachmentTypeSelect&quot;</span>&gt;</li><li>     &lt;select <span class="text-success">name=</span><span class="text-warning">&quot;transportAttachmentType&quot;</span> class=&quot;chosen&quot;&gt;</li><li>       &lt;option value=&quot;1&quot; selected&gt;整箱&lt;/option&gt;</li><li>      &lt;option value=&quot;2&quot;&gt;拼箱&lt;/option&gt;</li><li>    &lt;/select&gt;</li><li>  &lt;/span&gt;</li><li>&lt;/div&gt;</li><li>js部分</li><li>$(&quot;<span class="text-warning">#transportTypeSection</span>&quot;).on(&quot;change.indextradx&quot;, &quot;[data-select='transportType']&quot;, function () {</li><li>     //获取select下面div</li><li>	    var <span class="text-success">$spanObj</span> =  $(this).siblings(&quot;<span class="text-warning">.transportAttachmentTypeSelect</span>&quot;);</li><li>	    //如果是海运</li><li>	    if($(this).val() == &quot;1&quot;){</li><li>	    	<span class="text-success">$spanObj</span>.show();</li><li>	    }else{</li><li>	    	<span class="text-success">$spanObj</span>.hide();</li><li>	    }</li><li>  });<br></li></ol></pre>
    <h2>★ 调用方式</h2>
    通过value值区分
    <div class=""  style="font-size:14px;">
      <h3>设置外框id值</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li><span class="text-success">id=&quot;</span><span class="text-warning">transportTypeSection</span>&quot;</li></ol></pre>
      <h3>设置value值</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li>&lt;option <span class="text-success">value=</span><span class="text-warning">&quot;1&quot;</span> selected&gt;海运&lt;/option&gt;</li><li>&lt;option <span class="text-success">value=</span><span class="text-warning">&quot;2&quot;</span>&gt;空运&lt;/option&gt;</li></ol></pre>
    
    </div>
    
    
  </div>
</div>
  <script type="text/javascript">
      sw_define(function(){
          $("#transportTypeSection").on("change.indextradx", "[data-select='transportType']", function () {
              //获取select下面div
              var $spanObj =  $(this).siblings(".transportAttachmentTypeSelect");
              //如果是海运
              if($(this).val() == "1"){
                  $spanObj.show();
              }else{
                  $spanObj.hide();
              }

          });
      });
  </script>
 <%@include file="foot.jsp"%>