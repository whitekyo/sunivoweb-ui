

  <%@ page language="java" pageEncoding="UTF-8"%>
  <%@include file="head.jsp"%>
<style>
.arrow-group{display: inline-block; margin-left: 10px; vertical-align: middle;}
.arrow-group > a{display: block;width: 9px;height: 9px;text-decoration: none;background:transparent url("../customize/images/spirit_c.png") no-repeat 0 -140px;}
.arrow-group > a:first-child{background-position: 0 -160px;margin-bottom: 3px;}
</style>

  <%@include file="top.jsp"%>
  <div class="component-content clearfix"> 
  <%@include file="left.jsp"%>
  
  <!--右边具体插件-->
  <div class="component-substance">

    <h1>表格排序</h1>
    <!--插件编译人、编译时间-->
    <label>开发者：王淼　发布日期：2014-04-01　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
      <h2>★ 案例</h2>
    </div>
    <div class="">
      <h3>静态案例</h3>
    </div>
    <div class="bs-docs-example"> 
    
    <table id="tablesorter" class="table table-hover ">
     <thead class="alert">
       <tr>
         <th>HSCODE<span class="arrow-group"><a href="javascript:void(0)"></a><a href="javascript:void(0)"></a></span></th>   
         <th>产品名称<span class="arrow-group"><a href="javascript:void(0)"></a><a href="javascript:void(0)"></a></span></th>
         <th>别名</th>
         <th>进出口</th>
       </tr>
     </thead>
     <tbody>
        <tr><td>544545</td><td>黄芩素</td><td>434343</td><td>进口</td></tr>
        <tr><td>988787</td><td>表儿茶素</td><td>212121</td><td>出口</td></tr>
        <tr><td>54687756</td><td>对氯扁桃酸</td><td>7977497</td><td>进口</td></tr>
        <tr><td>17876</td><td>去甲麻黄碱</td><td>3546</td><td>出口</td>          </tr>
     </tbody>
    </table>

    </div>
    <!--添加插件代码-->
    <pre class="prettyprint linenums">
    html部分<ol class="linenums">
<li>&lt;table <span class="text-success">id=</span><span class="text-warning">&quot;tablesorter&quot;</span> <span class="text-success">class=</span><span class="text-warning">&quot;table table-hover&quot;</span>&gt;</li><li>     &lt;<span class="text-success">thead</span> class=&quot;alert&quot;&gt;</li><li>       &lt;tr&gt;</li><li>         &lt;th&gt;HSCODE&lt;span class=&quot;arrow-group&quot;&gt;&lt;a href=&quot;javascript:void(0)&quot;&gt;&lt;/a&gt;&lt;a href=&quot;javascript:void(0)&quot;&gt;&lt;/a&gt;&lt;/span&gt;&lt;/th&gt;</li><li>         &lt;th&gt;产品名称&lt;span class=&quot;arrow-group&quot;&gt;&lt;a href=&quot;javascript:void(0)&quot;&gt;&lt;/a&gt;&lt;a href=&quot;javascript:void(0)&quot;&gt;&lt;/a&gt;&lt;/span&gt;&lt;/th&gt;</li><li>         &lt;th&gt;别名&lt;/th&gt;</li><li>         &lt;th&gt;进出口&lt;/th&gt;</li><li>       &lt;/tr&gt;</li><li>     &lt;/<span class="text-success">thead</span>&gt;</li><li>     &lt;<span class="text-success">tbody</span>&gt;</li><li>        &lt;tr&gt;&lt;td&gt;544545&lt;/td&gt;&lt;td&gt;黄芩素&lt;/td&gt;&lt;td&gt;434343&lt;/td&gt;&lt;td&gt;进口&lt;/td&gt;&lt;/tr&gt;</li><li>        &lt;tr&gt;&lt;td&gt;988787&lt;/td&gt;&lt;td&gt;表儿茶素&lt;/td&gt;&lt;td&gt;212121&lt;/td&gt;&lt;td&gt;出口&lt;/td&gt;&lt;/tr&gt;</li><li>        &lt;tr&gt;&lt;td&gt;54687756&lt;/td&gt;&lt;td&gt;对氯扁桃酸&lt;/td&gt;&lt;td&gt;7977497&lt;/td&gt;&lt;td&gt;进口&lt;/td&gt;&lt;/tr&gt;</li><li>        &lt;tr&gt;&lt;td&gt;17876&lt;/td&gt;&lt;td&gt;去甲麻黄碱&lt;/td&gt;&lt;td&gt;3546&lt;/td&gt;&lt;td&gt;出口&lt;/td&gt;&lt;/tr&gt;</li><li>     &lt;/<span class="text-success">tbody</span>&gt;</li><li>&lt;/table&gt;</li><li>js部分</li><li>$(&quot;<span class="text-warning">#tablesorter</span>&quot;).tablesorter({headers : {</li><li>	    // assign the secound column (we start counting zero)</li><li>	    <span class="text-success">2:</span> <span class="text-warning">{sorter: false }</span>,</li><li>	    <span class="text-success">3: </span><span class="text-warning">{sorter: false}</span></li><li>	    //默认所有的列都排序;false表示不排序，第3列和第4列不排序</li><li>	}});<br></li></ol></pre>
    <h2>★ 调用方式</h2>
    通过id属性
    <div class=""  style="font-size:14px;">
      <h3>引入js</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li><span class="text-success"></span>&lt;script type=&quot;text/javascript&quot; src=&quot;../customize/script/<span class="text-warning">jquery.tablesorter.js</span>&quot;&gt;&lt;/script&gt;</li></ol></pre>
      <h3>设置需要排序id</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li><span class="text-success">id=</span><span class="text-warning">&quot;tablesorter&quot;</span></li></ol></pre>
      <h3>设置thead，th以及tbody</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li>必须有&lt;thead&gt;，&lt;tr&gt;，&lt;th&gt;标签</li></ol></pre>
      <h3>设置不需要点击排序列</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li>默认所有列都排序，false表示不排序，第三列和第四列不排序  <span class="text-success">2:</span> <span class="text-warning">{sorter: false }</span>    <span class="text-success">3: </span><span class="text-warning">{sorter: false}</span></li></ol></pre>
    
    </div>
    
    
  </div>
</div>
  <script type="text/javascript">
      sw_define('options',function(){
          return {
              paths: {
                  tablesorter: '../customize/script/jquery.tablesorter'
              },
              shim: {
                  tablesorter: {
                      deps: ['jquery']
                  }
              }
          };
      });
      sw_define(function(){
          $("#tablesorter").tablesorter({headers : {
              // assign the secound column (we start counting zero)
              2: {sorter: false },
              3: {sorter: false}
              //默认所有的列都排序;false表示不排序，第3列和第4列不排序
          }});
      });
  </script>
 <%@include file="foot.jsp"%>
<%--
<script type="text/javascript" src="../customize/script/jquery.tablesorter.js"></script>--%>
