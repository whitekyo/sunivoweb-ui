

  <%@ page language="java" pageEncoding="UTF-8"%>
  <%@include file="head.jsp"%>
  <%@include file="top.jsp"%>
  <div class="component-content clearfix"> 
  <%@include file="left.jsp"%>
  <!--右边具体插件-->
  <div class="component-substance">
    <h1>产品搜索联想</h1>
    <!--插件编译人、编译时间-->
    <label>开发者：王淼　发布日期：2014-03-26　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
      <h2>★ 案例</h2>
    </div>
    <div class="">
      <h3>静态案例</h3>
    </div>
    <div class="bs-docs-example"> 
      <span style="font-size:16px;" class="text-success">输入a做案例</span>
      <table>
        <tr><td>产品名称</td><td>HScode</td></tr>
        <tr>
          <td><input type="text" data-product-type="true" data-hscode-id="#testHsCode" placeholder="请输入产品名称"/></td>
          <td><input type="text" id="testHsCode"/></td>
        </tr>
      </table>

    </div>
    <!--添加插件代码-->
    <pre class="prettyprint linenums">
    <ol class="linenums">
<li>html部分</li><li>&lt;table&gt;</li><li>  &lt;tr&gt;&lt;td&gt;产品名称&lt;/td&gt;&lt;td&gt;HScode&lt;/td&gt;&lt;/tr&gt;<br></li><li>  &lt;tr&gt;<br></li><li>    &lt;td&gt;&lt;input type=&quot;text&quot; <span class="text-success">data-product-type=</span><span class="text-warning">&quot;true&quot;</span> <span class="text-success">data-hscode-id=</span><span class="text-warning">&quot;#testHsCode&quot;</span> placeholder=&quot;请输入产品名称&quot;/&gt;&lt;/td&gt;</li><li>    &lt;td&gt;&lt;input type=&quot;text&quot; <span class="text-success">id=</span><span class="text-warning">&quot;testHsCode&quot;</span>/&gt;&lt;/td&gt;<br></li><li>  &lt;/tr&gt;<br></li><li> &lt;/table&gt;</li><li>js部分</li><li>    $(&quot;input[<span class="text-warning">data-product-type='true'</span>]&quot;).typeahead({    	</li><li>        minLength:1,        </li><li>        source: function(query, process) {        	</li><li>        	var <span class="text-success">productArray</span> = [&quot;ActionScript|112212&quot;,&quot;AppleScript|112212&quot;];           </li><li>            process(<span class="text-success">productArray</span>); </li><li>		},		</li><li>        updater: function(item) {</li><li>        	 var tempArry = item.split(&quot;\|&quot;);</li><li>        	 var <span class="text-success">hscodeObj</span> = $(this.$element.attr(&quot;<span class="text-warning">data-hscode-id</span>&quot;));</li><li>        	 <span class="text-success">hscodeObj</span>.val(tempArry[1]);</li><li>	         return tempArry[0];</li><li>        } } );<br><br></li></ol></pre>
    <h2>★ 调用方式</h2>
    通过data-product-type属性
    <h3>设置搜索框</h3>
    <pre class="prettyprint linenums"><ol class="linenums">
<li>在搜索框出添加<span class="text-success">data-product-type=</span><span class="text-warning">&quot;true&quot;</span></li></ol></pre>
    <h3>设置关联HS码</h3>
    <pre class="prettyprint linenums"><ol class="linenums">
<li>在搜索框出添加<span class="text-success">data-hscode-id=</span><span class="text-warning">&quot;#testHsCode&quot;</span></li><li>在HS码搜索框出添加<span class="text-success">id=</span><span class="text-warning">&quot;testHsCode&quot;</span></li></ol></pre>
  </div>
</div>
  <script type="text/javascript">
      sw_define(function(){
          $("input[data-product-type='true']").typeahead({

              minLength:1,

              source: function(query, process) {

                  var productArray = ["ActionScript|112212","AppleScript|112212"];

                  process(productArray);

              },

              updater: function(item) {
                  var tempArry = item.split("\|");
                  var hscodeObj = $(this.$element.attr("data-hscode-id"));
                  hscodeObj.val(tempArry[1]);
                  return tempArry[0];
              }

          });
      });
  </script>
 <%@include file="foot.jsp"%>