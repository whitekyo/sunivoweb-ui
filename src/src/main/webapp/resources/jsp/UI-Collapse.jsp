

  <%@ page language="java" pageEncoding="UTF-8"%>
 <link rel="stylesheet" href="../customize/css/case.css">
  <%@include file="head.jsp"%>
  <%@include file="top.jsp"%>
  <div class="component-content clearfix"> 
  <%@include file="left.jsp"%>
  
 <div class="component-substance">
    <h1>折叠 collapse.js</h1>
    <!--插件编译人、编译时间-->
    <label>开发者：金振源　发布日期：2014-03-26　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
      <h2>★ 案例</h2>
      通过折叠插件，我们可以创建一个简单的手风琴式的组件：</div>
    <div class="">
      <h3>静态案例</h3>
    </div>
    <div class="bs-docs-example jzy" style=" color:#999;"> 
      <!--添加插件案例-->
        <div class="accordion" id="accordion2">
         <div class="accordion-group">
           <div class="accordion-heading">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
             Collapsible Group Item #1
            </a>
        </div>
        <div id="collapseOne" class="accordion-body collapse in">
        <div class="accordion-inner">
          Simple, intuitive, powerful, mobile device priority of front-end development framework for web development faster and easier.
          Simple, intuitive, powerful, mobile device priority of front-end development framework for web development faster and easier.
        </div>
        </div>
        </div>
       <div class="accordion-group">
        <div class="accordion-heading">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
        Collapsible Group Item #2
        </a>
        </div>
        <div id="collapseTwo" class="accordion-body collapse">
        <div class="accordion-inner">
        Simple, intuitive, powerful, mobile device priority of front-end development framework for web development faster and easier.
          Simple, intuitive, powerful, mobile device priority of front-end development framework for web development faster and easier.
        </div>
        </div>
        </div>
         <div class="accordion-group">
        <div class="accordion-heading">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree"> Collapsible Group Item #3 </a>
        </div>
        <div id="collapseTwo" class="accordion-body collapse">
        <div class="accordion-inner">
         Simple, intuitive, powerful, mobile device priority of front-end development framework for web development faster and easier.
         Simple, intuitive, powerful, mobile device priority of front-end development framework for web development faster and easier.
        </div>
        </div>
        </div>
        </div>
      <!--添加插件案例 end--> 
    </div>
    <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;div class=&quot;<span class="text-warning">accordion</span>&quot; id=&quot;<span class="text-warning">accordion2</span>&quot;&gt;</li><li>  &lt;div class=&quot;<span class="text-warning">accordion-group</span>&quot;&gt;</li><li>    &lt;div class=&quot;<span class="text-warning">accordion-heading</span>&quot;&gt;</li><li>      &lt;a class=&quot;<span class="text-warning">accordion-toggle</span>&quot; data-toggle=&quot;<span class="text-warning">collapse</span>&quot; data-parent=&quot;#<span class="text-warning">accordion2</span>&quot; <span class="text-success">href</span>=&quot;#<span class="text-warning">collapseOne</span>&quot;&gt;</li><li>        Collapsible Group Item #1</li><li>      &lt;/a&gt;</li><li>    &lt;/div&gt;</li><li>    &lt;div <span class="text-success">id</span>=&quot;<span class="text-warning">collapseOne</span>&quot; class=&quot;<span class="text-warning">accordion-body collapse in</span>&quot;&gt;</li><li>      &lt;div class=&quot;<span class="text-warning">accordion-inner</span>&quot;&gt;</li><li>        Anim pariatur cliche...</li><li>      &lt;/div&gt;</li><li>    &lt;/div&gt;</li><li>  &lt;/div&gt;</li><li>  &lt;div class=&quot;<span class="text-warning">accordion-group</span>&quot;&gt;</li><li>    &lt;div class=&quot;<span class="text-warning">accordion-heading</span>&quot;&gt;</li><li>      &lt;a class=&quot;<span class="text-warning">accordion-toggle</span>&quot; data-toggle=&quot;<span class="text-warning">collapse</span>&quot; data-parent=&quot;#<span class="text-warning">accordion2</span>&quot; href=&quot;#<span class="text-warning">collapseTwo</span>&quot;&gt;</li><li>        Collapsible Group Item #2</li><li>      &lt;/a&gt;</li><li>    &lt;/div&gt;</li><li>    &lt;div id=&quot;<span class="text-warning">collapseTwo</span>&quot; class=&quot;<span class="text-warning">accordion-body collapse</span>&quot;&gt;</li><li>      &lt;div class=&quot;<span class="text-warning">accordion-inner</span>&quot;&gt;</li><li>        Anim pariatur cliche...</li><li>      &lt;/div&gt;</li><li>    &lt;/div&gt;</li><li>  &lt;/div&gt;</li><li>&lt;/div&gt;</li></ol></pre>
    <!--添加插件代码--><!--modal-->
    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Modal header</h3>
      </div>
      <div class="modal-body">
        <p>One fine body…</p>
      </div>
      <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
        <button class="btn btn-primary">Save changes</button>
      </div>
    </div>
    <!--modal end-->
    <div class="">
      <h3>调用方式</h3>
      通过JavaScript触发工具提示：</div>
    <pre class="prettyprint linenums"><ol class="linenums"><li>$('<span class="text-warning">.collapse</span>').collapse()</li></ol>
</pre>
    <div class="">
      <h3>选项</h3>
      可以通过data属性或JavaScript传递参数。对于data属性，将参数名附着到data-后面即可，例如, data-animation=""。</div>
    <table class="table table-hover">
      <thead>
        <tr>
          <th style="width: 100px;">名称</th>
          <th style="width: 100px;">类型</th>
          <th style="width: 50px;">默认值</th>
          <th>描述</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>parent</td>
          <td>selector</td>
          <td>false</td>
          <td>If selector then all collapsible elements under the specified parent   will be closed when this collapsible item is shown. (similar to   traditional accordion behavior)</td>
        </tr>
        <tr>
          <td>toggle</td>
          <td>boolean</td>
          <td>true</td>
          <td>Toggles the collapsible element on invocation</td>
        </tr>
      </tbody>
    </table>
    <div class="">
      <h3>方法</h3>
    </div>
    <div class="">
      <h3>.collapse(options)</h3>
       Activates your content as a collapsible element. Accepts an optional options object.  
    </div>
    <pre>$('<span class=" text-warning">#myCollapsible</span>').collapse({
toggle: false
})</pre>
    <div class="">
      <h3>.collapse('toggle')</h3>
      Toggles a collapsible element to shown or hidden.
    </div><br>
    <div class="">
      <h3>.collapse('show')</h3>
      Shows a collapsible element.
    </div><br>
    <div class="">
      <h3>.collapse('hide')</h3>
      Hides a collapsible element.
    </div><br>
    <div class="">
      <h3>事件</h3>
      collapse class exposes a few events for hooking into collapse functionality.</div>
    <table class="table table-hover">
      <thead>
        <tr>
          <th width="188" >事件</th>
          <th width="550" >描述</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>show</td>
          <td>This event fires immediately when the show instance method is called.</td>
        </tr>
        <tr>
          <td>shown</td>
          <td>This event is fired when a collapse element has been made visible to the user (will wait for css transitions to complete).</td>
        </tr>
        <tr>
          <td>hide</td>
          <td>This event is fired immediately when the hide method has been called. </td>
        </tr>
        <tr>
          <td>hidden</td>
          <td>This event is fired when a collapse element has been hidden from the user (will wait for css transitions to complete).</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
  <script type="text/javascript">
      sw_define(function(){
          $('.jzy a').tooltip();
      });
  </script>
 <%@include file="foot.jsp"%>
