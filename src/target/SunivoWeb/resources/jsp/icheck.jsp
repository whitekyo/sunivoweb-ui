

  
  <%@include file="head.jsp"%>
  <%@include file="top.jsp"%>
  
  <%@ page language="java" pageEncoding="UTF-8"%>
  <!--右边具体插件-->
<div class="component-content clearfix">
  <%@include file="left.jsp"%>  

  <div class="component-substance k-ichcek">
  <h1>icheck </h1>
  <!--插件编译人、编译时间-->
  <label>作者：王玉兴　发布日期：2014-03-26　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
  <div class="component-block">
    <h2>★ 案例</h2>
    icheck对浏览器默认单选复选框进行的简单封装，他们具有精简的功能和友好的默认行为。 
  </div>
  <div class="">
    <h3>静态案例</h3>
    <div class="form-horizontal">
      <div class="control-group">
        <label class="control-label">单选框</label>
        <div class="controls">
          <label class="radio inline">
            <input checked class="icheck" type="radio" name="gender" />
            蓝色 blue</label>
          <label class="radio inline">
            <input class="icheck red" type="radio" name="gender" />
            红色 red</label>
          <label class="radio inline">
            <input class="icheck orange" type="radio" name="gender"/>
            橙色 orange</label>
          <label class="radio inline">
            <input class="icheck green" type="radio" name="gender" />
            绿色 green</label>
          <label class="radio inline">
            <input class="icheck purple" type="radio" name="gender" />
            紫色 purple</label>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label">复选框</label>
        <div class="controls">
          <label class="checkbox inline">
            <input checked type="checkbox" value="1" class="icheck" name="checkbox" />
            蓝色 blue</label>
          <label class="checkbox inline">
            <input checked type="checkbox" value="2" class="icheck red" name="checkbox" />
            红色 red</label>
          <label class="checkbox inline">
            <input checked type="checkbox" value="3" class="icheck orange" name="checkbox" />
            橙色 orange</label>
          <label class="checkbox inline">
            <input checked type="checkbox" value="4" class="icheck green" name="checkbox" />
            绿色 green</label>
          <label class="checkbox inline">
            <input checked type="checkbox" value="5" class="icheck purple" name="checkbox" />
            紫色 purple</label>
        </div>
      </div>
    </div>
  </div>
  <div class="bs-docs-example"> 
    <!--添加插件案例--> 
    <div class="form-horizontal">
      <div class="control-group">
        <label class="control-label">单选框</label>
        <div class="controls">
          <label class="radio inline">
            <input  class="icheck" type="radio" name="genderdemo" />
            蓝色</label>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label">复选框</label>
        <div class="controls">
          <label class="checkbox inline">
            <input type="checkbox" value="1" class="icheck" name="checkbox" />
            蓝色</label>
        </div>
      </div>
    </div>
  </div>
  <!--添加插件代码-->
  <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;label <span class="text-success">class=</span><span class="text-warning">&quot;radio inline&quot;</span>&gt;</li><li>  &lt;input <span class="text-success">checked</span> <span class="text-success">class=</span><span class="text-warning">&quot;icheck&quot;</span> <span class="text-success">type=</span><span class="text-warning">&quot;radio&quot;</span> <span class="text-success">name=</span><span class="text-warning">&quot;gender&quot; /&gt;</span> 蓝色</li><li>&lt;/label&gt;</li><li>&lt;label <span class="text-success">class=</span><span class="text-warning">&quot;radio inline&quot;</span>&gt;</li><li>  &lt;input <span class="text-success">checked</span> <span class="text-success">type=</span><span class="text-warning">&quot;checkbox&quot;</span> <span class="text-success">value=</span><span class="text-warning">&quot;1&quot;</span> <span class="text-success">class=</span><span class="text-warning">&quot;icheck&quot;</span> <span class="text-success">name=</span><span class="text-warning">&quot;checkbox&quot;</span> /&gt; 蓝色</li><li>&lt;/label&gt;</li><li>/*</li><li> 说明：</li><li> 只要在原有的选择框上添加icheck样式,在页面底部调用app.init()即可完成效果初始化</li><li> 默认颜色为蓝色，如需更改只要添加相应的颜色样式即可(当前只提供上述5种颜色)</li><li>*/</li></pre>
  <div>
    <h3>回调函数</h3>
    <label>iCheck提供了大量回调事件，都可以用来监听change事件。</label>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>事件名称</th>
                <th>使用时机</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th>ifClicked</th>
                <td>用户点击了自定义的输入框或与其相关联的label</td>
            </tr>
            <tr>
                <th>ifChanged</th>
                <td>输入框的 <span class="mark">checked</span> 或 <span class="mark">disabled</span> 状态改变了</td>
            </tr>
            <tr>
                <th>ifChecked</th>
                <td>输入框的状态变为 <span class="mark">checked</span></td>
            </tr>
            <tr>
                <th>ifUnchecked</th>
                <td><span class="mark">checked</span> 状态被移除</td>
            </tr>
            <tr>
                <th>ifDisabled</th>
                <td>输入框状态变为 <span class="mark">disabled</span></td>
            </tr>
            <tr>
                <th>ifEnabled</th>
                <td><span class="mark">disabled</span> 状态被移除</td>
            </tr>
            <tr>
                <th>ifCreated</th>
                <td>输入框被应用了iCheck样式</td>
            </tr>
            <tr>
                <th>ifDestroyed</th>
                <td>iCheck样式被移除</td>
            </tr>
        </tbody>
    </table>
  </div>
  <div class="bs-docs-example"> 
    <!--添加插件案例--> 
    使用<span class="mark">on()</span>方法绑定事件：
  </div>
  <!--添加插件代码-->
  <pre class="prettyprint linenums"><ol class="linenums"><li>$('input').on('ifChecked', function(event){</li><li> alert(event.type + ' callback');</li><li>});</li></ol></pre>
      <div class="component-block">
          <h2>★ 调用方式</h2>
      </div>
      <pre class="prettyprint linenums"><ol class="linenums"><li>//导入icheck插件相关的js和css</li><li>var a = new sw();//初始化插件库</li><li>a.icheck()//初始化icheck插件</li><li>icheck方法中，可以配置一个jQuery对象，让插件在这个jQuery对象下面寻找checkbox。同样也可以配置一个数组，数组中存放若干个jQuery对象，插件会调用iCheck方法初始化这个数组中的内容，达到初始化指定内容的效果</li><li>a.icheck($('.yc'))//初始化类名为yc下的checkbox</li><li>a.icheck([$('.checkbox')])//初始化类名为checkbox的控件</li></ol></pre>
</div>
</div>
 <%@include file="foot.jsp"%>
