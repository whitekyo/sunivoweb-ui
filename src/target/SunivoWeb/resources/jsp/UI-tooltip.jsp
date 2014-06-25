

  <%@ page language="java" pageEncoding="UTF-8"%>
 <link rel="stylesheet" href="../customize/css/case.css">
  <%@include file="head.jsp"%>
  <%@include file="top.jsp"%>
  <div class="component-content clearfix"> 
  <%@include file="left.jsp"%>
  
 <div class="component-substance">
    <h1>提示工具 tooltip.js</h1>
    <!--插件编译人、编译时间-->
    <label>开发者：金振源　发布日期：2014-03-26　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
      <h2>★ 案例</h2>
      不需要依赖图片，而是改用CSS3实现动画效果，用data属性存储标题信息。出于性能方面的考虑，工具提示和弹出提示的data属性API是选择性加入的，也即是说你必要自己初始化他们。将鼠标停悬在下面的链接上查看工具提示：</div>
    <div class="">
      <h3>静态案例</h3>
    </div>
    <div class="bs-docs-example jzy" style=" color:#999;"> 
      <!--添加插件案例-->
      <p class="muted"> Tight pants next level keffiyeh <a title="" data-toggle="tooltip" href="#" data-original-title="Default tooltip">you probably</a> haven't heard of them. Photo booth beard raw denim letterpress vegan messenger bag stumptown. Farm-to-table seitan, mcsweeney's fixie sustainable quinoa 8-bit american apparel <a title="" data-toggle="tooltip" href="#" data-original-title="Another tooltip">have a</a> terry richardson vinyl chambray. Beard stumptown, cardigans banh mi lomo thundercats. Tofu biodiesel williamsburg marfa, four loko mcsweeney's cleanse vegan chambray. A really ironic artisan <a title="" data-toggle="tooltip" href="#" data-original-title="A much longer tooltip belongs right here to demonstrate the max-width we apply.">whatever keytar</a> , scenester farm-to-table banksy Austin <a title="" data-toggle="tooltip" href="#" data-original-title="The last tip!">twitter handle</a> freegan cred raw denim single-origin coffee viral. </p>
      <!--添加插件案例 end--> 
    </div>
    <!--添加插件代码-->
    <div class="">
      <h3>四个不同的方位</h3>
    </div>
    <div class="bs-docs-example jzy" > <a title="" data-placement="top" data-toggle="tooltip" href="#" data-original-title="Tooltip on top">Tooltip on top</a>　 <a title="" data-placement="left" data-toggle="tooltip" href="#" data-original-title="Tooltip on left">Tooltip on top</a>　 <a title="" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Tooltip on down">Tooltip on top</a>　 <a title="" data-placement="right" data-toggle="tooltip" href="#" data-original-title="Tooltip on right">Tooltip on top</a>　 </div>
    <!--modal-->
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
    <pre class="prettyprint linenums"><ol class="linenums"><li>$('<span class="text-warning">#example</span>').tooltip(options)</li></ol>
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
          <td>animation</td>
          <td>boolean</td>
          <td>true</td>
          <td>apply a css fade transition to the tooltip</td>
        </tr>
        <tr>
          <td>html</td>
          <td>boolean</td>
          <td>false</td>
          <td>Insert html into the tooltip. If false, jquery's <code>text</code> method will be used to insert content into the dom. Use text if you're worried about XSS attacks.</td>
        </tr>
        <tr>
          <td>placement</td>
          <td>string | function</td>
          <td>'top'</td>
          <td>how to position the tooltip - top | bottom | left | right</td>
        </tr>
        <tr>
          <td>selector</td>
          <td>string</td>
          <td>false</td>
          <td>If a selector is provided, tooltip objects will be delegated to the specified targets.</td>
        </tr>
        <tr>
          <td>title</td>
          <td>string | function</td>
          <td>''</td>
          <td>default title value if `title` tag isn't present</td>
        </tr>
        <tr>
          <td>trigger</td>
          <td>string</td>
          <td>'hover focus'</td>
          <td>how tooltip is triggered - click | hover | focus | manual. Note you case pass trigger mutliple, space seperated, trigger types.</td>
        </tr>
        <tr>
          <td>delay</td>
          <td>number | object</td>
          <td>0</td>
          <td><p>delay showing and hiding the tooltip (ms) - does not apply to manual trigger type</p>
            <p>If a number is supplied, delay is applied to both hide/show</p>
            <p>Object structure is: <code>delay: { show: 500, hide: 100 }</code></p></td>
        </tr>
        <tr>
          <td>container</td>
          <td>string | false</td>
          <td>false</td>
          <td><p>Appends the tooltip to a specific element <code>container: 'body'</code></p></td>
        </tr>
      </tbody>
    </table>
    <div class="">
      <h3>标记</h3>
    </div>
    <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;a <span class="text-success">href</span>=&quot;#&quot; <span class="text-success">data-toggle</span>=&quot;<span class="text-warning">tooltip</span>&quot; title=&quot;first tooltip&quot;&gt;hover over me&lt;/a&gt;</li></ol>
</pre>
    <div class="">
      <h3>方法</h3>
    </div>
    <div class="">
      <h3>$().tooltip(options)</h3>
      对一组页面元素绑定一个工具提示处理器。 
    </div>
    <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;a <span class="text-success">href</span>=&quot;#&quot; <span class="text-success">data-toggle</span>=&quot;<span class="text-warning">tooltip</span>&quot; title=&quot;first tooltip&quot;&gt;hover over me&lt;/a</li></ol></pre>
    <div class="">
      <h3>.tooltip('show')</h3>
      弹出某个页面元素的工具提示。
    </div>
     <pre class="prettyprint linenums"><ol class="linenums"><li>$('<span class="text-warning">#element</span>').tooltip('show')</li></ol></pre>
     <div class="">
      <h3>.tooltip('hide')</h3>
      隐藏某个页面元素的工具提示。
    </div>
     <pre class="prettyprint linenums"><ol class="linenums"><li>$('<span class="text-warning">#element</span>').tooltip('hide')</li></ol></pre>
     <div class="">
      <h3>.tooltip('toggle')</h3>
      打开或隐藏某个页面元素的工具提示。
    </div>
     <pre class="prettyprint linenums"><ol class="linenums"><li>$('<span class="text-warning">#element</span>').tooltip('toggle')</li></ol></pre>
     <div class="">
      <h3>.tooltip('destroy')</h3>
      隐藏并销毁某个页面元素的工具提示。
    </div>
     <pre class="prettyprint linenums"><ol class="linenums"><li>$('<span class="text-warning">#element</span>').tooltip('destroy')</li></ol></pre>
  </div>
</div>
  <script type="text/javascript">
      sw_define(function(){
          $('.jzy a').tooltip();
      });

  </script>
 <%@include file="foot.jsp"%>
