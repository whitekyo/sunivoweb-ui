

  <%@ page language="java" pageEncoding="UTF-8"%>
  <%@include file="head.jsp"%>
<style>
.spinner-wap{ display:inline-block; border:1px solid #cccccc; padding:3px;}
.spinner-wap input{ margin-bottom:0 !important; width:120px !important;}
.arrow-group{display: inline-block; vertical-align: middle;}
.arrow-group > a{display: block;width: 9px;height: 9px;text-decoration: none;background:transparent url("../customize/images/spirit_c.png") no-repeat -13px -140px;}
.arrow-group > a:first-child{background-position: -13px -160px;margin-bottom: 3px;}
</style>

  <%@include file="top.jsp"%>
  <div class="component-content clearfix"> 
  <%@include file="left.jsp"%>
  
  <!--右边具体插件-->
  <div class="component-substance">

    <h1>表格列的增删</h1>
    <!--插件编译人、编译时间-->
    <label>开发者：王淼　发布日期：2014-04-04　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
      <h2>★ 案例</h2>
    </div>
    <div class="">
      <h3>静态案例</h3>
    </div>
    <div class="bs-docs-example"> 
      <div class="spinner-wap">
        <input type="text" class="inputNum" value="1" />
        <span class="arrow-group"><a href="javascript:void(0)" class="add"></a><a href="javascript:void(0)" class="jian"></a></span>
      </div>

    </div>
    <!--添加插件代码-->
    <pre class="prettyprint linenums">
    html部分<ol class="linenums">
<li>&lt;div <span class="text-success">class=</span><span class="text-warning">&quot;spinner-wap&quot;</span>&gt;</li><li>  &lt;input type=&quot;text&quot; class=<span class="text-warning">&quot;inputNum&quot;</span> value=&quot;1&quot; /&gt;</li><li>  &lt;span <span class="text-success">class=</span><span class="text-warning">&quot;arrow-group&quot;</span>&gt;</li><li>   &lt;a href=&quot;javascript:void(0)&quot; <span class="text-success">class=</span><span class="text-warning">&quot;add&quot;</span>&gt;&lt;/a&gt;</li><li>   &lt;a href=&quot;javascript:void(0)&quot; <span class="text-success">class=</span><span class="text-warning">&quot;jian&quot;</span>&gt;&lt;/a&gt;</li><li>  &lt;/span&gt;</li><li>&lt;/div&gt;</li><li>js部分</li><li>$(document).ready(function(){</li><li>		init({</li><li><span class="text-warning">          step: 10</span></li><li>			});		</li><li>	});</li></ol></pre>
    <h2>★ 调用方式</h2>
    通过类名获取加减对象
    <div class=""  style="font-size:14px;">
      <h3>设置增加删除按钮</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li>&lt;span <span class="text-success">class=</span><span class="text-warning">&quot;arrow-group&quot;</span>&gt;</li><li>   &lt;a href=&quot;javascript:void(0)&quot; <span class="text-success">class=</span><span class="text-warning">&quot;add&quot;</span>&gt;&lt;/a&gt;</li><li>   &lt;a href=&quot;javascript:void(0)&quot; <span class="text-success">class=</span><span class="text-warning">&quot;jian&quot;</span>&gt;&lt;/a&gt;</li><li>&lt;/span&gt;</li></ol></pre>
      <h3>设置每次增加删除数量</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li><span class="text-warning">step: 10</span></li></ol></pre>
   
    </div>
    
    
  </div>
</div>
  <script type="text/javascript">
      sw_define(function(){
          function init(options){
              var defaults = {
                  step: 1
              };
              options = $.extend(defaults,options);
              var number = options.step;
              $(".add").click(function(){
                  var n=$(this).parent().prev(".inputNum").val();
                  var num=parseInt(n)+number;
                  if(num==0){alert("cc");}
                  $(this).parent().prev(".inputNum").val(num);
              });

              $(".jian").click(function(){
                  var n=$(this).parent().prev(".inputNum").val();
                  var num=parseInt(n)-number;
                  if(num==0){alert("不能为0!"); return}
                  $(this).parent().prev(".inputNum").val(num);
              });
          }
          $(document).ready(function(){
              init({
                  step: 10
              });
          });
      });
  </script>
 <%@include file="foot.jsp"%>