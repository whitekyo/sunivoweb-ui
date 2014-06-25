  <%@ page language="java" pageEncoding="UTF-8"%>
  <%@include file="head.jsp"%>
  <link rel="stylesheet" href="../customize/css/sy.css">
  <%@include file="top.jsp"%>
  <div class="component-content clearfix"> 
  <%@include file="left.jsp"%>
  <div class="component-substance">
    <h1>弹出提示 popover.js </h1>
    <!--插件编译人、编译时间-->
    <label> 开发者：石怡　发布日期：2014-03-28　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
      <h2>★ 案例</h2> 对任意页面元素添加一个覆盖层展示额外信息，iPad中的类似功能。将鼠标悬停在下面的按钮上即可触发一个弹出提示。</div>
    <div class="">
      <h3>静态案例</h3> 共有4个可选参数(top, right, bottom, left)</div>
    <div class="bs-docs-example bs-docs-example-popover"> 
      <!--添加插件案例-->
       <div class="popover top">
        <div class="arrow"></div>
        <h3 class="popover-title">Popover top</h3>
        <div class="popover-content">
          <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
        </div>
       </div>
       <div class="popover right">
        <div class="arrow"></div>
        <h3 class="popover-title">Popover right</h3>
        <div class="popover-content">
          <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
        </div>
       </div>
       <div class="popover bottom">
        <div class="arrow"></div>
        <div class="popover-content">
          <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
        </div>
       </div>
       <div class="popover left">
        <div class="arrow"></div>
        <div class="popover-content">
          <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
        </div>
       </div>
    </div>


    <h2>★ 动态演示</h2>
    <div class="bs-docs-example"> 
      <!--添加插件案例-->
      <a data-content="And here's some amazing content. It's very engaging. right?" title="" data-toggle="popover" class="btn btn-large btn-danger" href="javascript:void(0);" data-original-title="A Title">点击查看弹出提示</a>
    </div> 
   
    <h2>★ 调用方式</h2>
    <pre class="prettyprint linenums"><ol class="linenums"><li class="L0"><span class="pln">$</span><span class="pun">(</span><span class="str">'#example'</span><span class="pun">).</span><span class="pln">popover</span><span class="pun">(</span><span class="pln">options</span><span class="pun">)</span></li></ol></pre>
    <div><h2>★ 选项</h2>可以通过data属性或JavaScript传递参数。对于data属性，将参数名附着到data-之后，例如data-animation=""。</div>
    <table class="table table-bordered table-striped">
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
             <td>animation</td>
             <td>boolean</td>
             <td>true</td>
             <td>apply a css fade transition to the tooltip</td>
           </tr>
           <tr>
             <td>html</td>
             <td>boolean</td>
             <td>false</td>
             <td>Insert html into the popover. If false, jquery's <code>text</code> method will be used to insert content into the dom. Use text if you're worried about XSS attacks.</td>
           </tr>
           <tr>
             <td>placement</td>
             <td>string | function</td>
             <td>'right'</td>
             <td>how to position the popover - top | bottom | left | right</td>
           </tr>
           <tr>
             <td>selector</td>
             <td>string</td>
             <td>false</td>
             <td>if a selector is provided, tooltip objects will be delegated to the specified targets</td>
           </tr>
           <tr>
             <td>trigger</td>
             <td>string</td>
             <td>'click'</td>
             <td>how popover is triggered - click | hover | focus | manual</td>
           </tr>
           <tr>
             <td>title</td>
             <td>string | function</td>
             <td>''</td>
             <td>default title value if `title` attribute isn't present</td>
           </tr>
           <tr>
             <td>content</td>
             <td>string | function</td>
             <td>''</td>
             <td>default content value if `data-content` attribute isn't present</td>
           </tr>
           <tr>
             <td>delay</td>
             <td>number | object</td>
             <td>0</td>
             <td>
              <p>delay showing and hiding the popover (ms) - does not apply to manual trigger type</p>
              <p>If a number is supplied, delay is applied to both hide/show</p>
              <p>Object structure is: <code>delay: { show: 500, hide: 100 }</code></p>
             </td>
           </tr>
           <tr>
             <td>container</td>
             <td>string | false</td>
             <td>false</td>
             <td>
              <p>Appends the popover to a specific element <code>container: 'body'</code></p>
             </td>
           </tr>
          </tbody>
        </table>
  </div>
</div>
  <script type="text/javascript">
      sw_define(function(){
          $('.btn').popover('show');
      });
  </script>
<%@include file="foot.jsp"%>