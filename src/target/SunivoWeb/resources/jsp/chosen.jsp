

  <%@include file="head.jsp"%>
  <%@include file="top.jsp"%>
  
  <%@ page language="java" pageEncoding="UTF-8"%>
<div class="component-content clearfix">
  <%@include file="left.jsp"%>
<div class="component-substance k-ichcek">

  
  <h1>Chosen </h1>
  <!--插件编译人、编译时间-->
  <label>作者：王玉兴　发布日期：2014-03-26　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
  <div class="component-block">
    <h2>★ 案例</h2>
    Chose对浏览器默认下拉选择框的简单封装，他们具有精简的功能和友好的默认行为。 
  </div>
  <h3>静态案例</h3> 
  <div class="bs-docs-example"> 
    <!--添加插件案例--> 
    <div class="form-horizontal">
        <div class="control-group">
          <label class="control-label" for="form_select">单选下拉选框</label>
            <div class="controls">
              <select name="select" class="chosen">
                	<option></option>
                    <option value="01">测试选项一</option>
                    <option value="02">测试选项二</option>
                    <option value="03">测试选项三</option>
              </select>
            </div>
        </div>
      	<div class="control-group">
        <label class="control-label" for="form_select">多选下拉选框</label>
            <div class="controls">
              <select name="select" multiple class="chosen">
                    <option></option>
                    <option value="01">测试选项一</option>
                    <option value="02">测试选项二</option>
                    <option value="03">测试选项三</option>
              </select>
            </div>
        </div>
    </div>
  </div>
  <!--添加插件代码-->
  <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;select name=&quot;select&quot; class=&quot;chosen&quot; data-placeholder=&quot;test&quot;&gt;</li><li> &lt;option&gt;&lt;/option&gt;</li><li> &lt;option value=&quot;01&quot;&gt;测试选项一&lt;/option&gt;</li><li> &lt;option value=&quot;02&quot;&gt;测试选项二&lt;/option&gt;</li><li> &lt;option value=&quot;03&quot;&gt;测试选项三&lt;/option&gt;</li><li>&lt;/select&gt;</li><li>/*</li><li> 说明：</li><li>//只要在原有的选择框上添加chosen样式，引入对应chosen相关的js和css</li><li>var a = new sw();</li><li>a.<span class="text-warning">chosen</span>();//调用chosen方法完成chosen的初始化</li><li> 多选只需设置multiple属性即可</li><li> data-placeholder属性设置默认文本</li><li>*/</li></pre>
  <h3>其他用法</h3>
  <label>此用法跳过app.init(),直接调用chosen组件的相关方法</label>
   <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;select <span class="text-success">name=</span><span class="text-warning">&quot;select&quot;</span>&gt;</li><li> &lt;option&gt;&lt;/option&gt;</li><li> &lt;option <span class="text-success">value=</span><span class="text-warning">&quot;01&quot;</span>&gt;测试选项一&lt;/option&gt;</li><li> &lt;option <span class="text-success">value=</span><span class="text-warning">&quot;02&quot;</span>&gt;测试选项二&lt;/option&gt;</li><li> &lt;option <span class="text-success">value=</span><span class="text-warning">&quot;03&quot;</span>&gt;测试选项三&lt;/option&gt;</li><li>&lt;/select&gt;</li><li>/*</li><li> 说明：</li><li> 直接调用chosen()方法实现效果出事化</li><li>*/</li><li>&lt;script&gt;</li><li> $(&quot;select&quot;).<span class="text-warning">chosen()</span>;</li><li>&lt;/script&gt;</li></pre>
  <h3>常用参数</h3>
  <label>介绍chosen方法中可传递的参数</label>
<table class="table table-hover">
  	<thead>
      <tr>
        <th>参数名称</th>
        <th>说明</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>no_results_text</td>
        <td>无结果显示文本</td>
      </tr>
      <tr>
      	<td>max_selected_options</td>
        <td>限制多选可选个数</td>
      </tr>
      <tr>
      	<td>allow_single_deselect</td>
        <td>是否允许删除选中选项(true/false)</td>
      </tr>
    </tbody>
  </table>
</div>
</div>
<%@include file="foot.jsp"%>