

  <%@ page language="java" pageEncoding="UTF-8"%>
 <link rel="stylesheet" href="../customize/css/case.css">
  <%@include file="head.jsp"%>
  <%@include file="top.jsp"%>
  <div class="component-content clearfix"> 
  <%@include file="left.jsp"%>
  
 <div class="component-substance">
    <h1>模态对话框 modal.js </h1>
    <!--插件编译人、编译时间-->
    <label>开发者：金振源　发布日期：2014-03-26　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
      <h2>★ 案例</h2>
      模态对话框是一类简洁、灵活的的弹框，他们具有精简的功能和友好的默认行为。</div>
    <div class="">
      <h3>静态案例</h3>
      带有标题、正文、页脚按钮的对话框。 </div>
    <div class="bs-docs-example" style=" background:#c2c0c0;"> 
      <!--添加插件案例-->
      <div class="modal" style="position:relative; top: auto; left: auto; right: auto; margin: 0 auto 20px; z-index: 1; max-width: 100%; box-shadow:1px 1px 3px #fff;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h3>对话框标题</h3>
        </div>
        <div class="modal-body">
          <p>One fine body…</p>
        </div>
        <div class="modal-footer"> <a href="#" class="btn">关闭</a> <a href="#" class="btn btn-primary">Save changes</a> </div>
      </div>
      <!--添加插件案例 end--> 
    </div>
    <!--添加插件代码-->
    <pre class="prettyprint"><ol class="linenums "><li>&lt; div class=&quot; <span class="text-warning">modal</span>&quot; &gt; </li><li> &lt; div class=&quot;<span class="text-warning">modal-header</span>&quot; &gt;</li><li>  &lt;button type=&quot;button&quot; <span class="text-success">class</span>=&quot;<span class="text-warning">close</span>&quot;<span class=" text-success"> data-dismiss</span>=&quot;<span class="text-warning">modal</span>&quot;<span class="text-success">aria-hidden</span>=&quot;<span class="text-warning">true</span>&quot;&gt;&amp;times;&lt;/button&gt;</li><li>  &lt; h3 &gt;对话框标题&lt;/ h3 &gt;</li><li> &lt;/ div &gt;</li><li> &lt; div <span class="text-success">class</span>=&quot;<span class="text-warning">modal-body</span>&quot; &gt;</li><li>  &lt; p &gt;One fine body…&lt; /p &gt;</li><li> &lt;/ div &gt;</li><li> &lt; div <span class="text-success">class</span>=&quot;<span class="text-warning">modal-footer</span>&quot;&gt;</li><li>  &lt;a href=&quot;#&quot; <span class="text-success">class</span>=&quot;<span class="text-warning">btn</span>&quot;&gt;关闭&lt;/a&gt;</li><li>  &lt;a href=&quot;#&quot; <span class=" text-success">class</span>=&quot;<span class="text-warning">btn btn-primary</span>&quot;&gt;Save changes&lt;/a&gt;</li><li>&lt;/ div&gt;</li><li>&lt;/ div&gt;</li></ol>
    </pre>
    <div class="bs-docs-example" style=" background:#c2c0c0;"> <a class="btn btn-primary btn-large" role="button" href="#myModal" data-toggle="modal">查看演示案例</a> </div>
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
    
    <h2>★ 调用方式</h2>
    <div class="">
      <h3>通过data属性</h3>
      无需编写JavaScript代码即可生成一个对话框。在一个主控元素，例如按钮，上设置data-toggle="modal"，然后再设置data-target="#foo" 或href="#foo" 用以指向某个将要被启动的对话框。
    </div>
    <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;button type=&quot;button&quot; <span class="text-success">data-toggle</span>=&quot;<span class="text-warning">modal</span>&quot; <span class=" text-success">data-target</span>=&quot;<span class="text-warning">#myModal</span>&quot;&gt;Launch modal&lt;/button&gt;</li></ol></pre>
     <div class="">
      <h3>通过JavaScript</h3>
      仅用一行JavaScript代码即可启动id为myModal的对话框：
    </div>
    <pre class="prettyprint linenums"><ol class="linenums"><li>$('<span class="text-warning">#myModal</span>').modal(options)</li></ol></pre>
    <div class="">
      <h3>方法</h3>
      <h3>.modal(options)</h3>
      让你指定的内容变成一个模态对话框。接受一个可选的参数object.
    </div>
    <pre class="prettyprint linenums"><ol class="linenums"><li> $('<span class="text-warning">#myModal</span>').modal({</li><li>   keyboard: false</li><li> })</li></ol></pre>
     <div class="">
      <h3>.modal('toggle')</h3>
      手动打开或隐藏一个模态对话框。
    </div>
    <pre class="prettyprint linenums"><ol class="linenums"><li>$('<span class="text-warning">#myModal</span>').modal('<span class="text-warning">toggle</span>')</li></ol></pre> 
    <div class="">
      <h3>.modal('show')</h3>
      手动打开一个模态对话框。
    </div>
    <pre class="prettyprint linenums"><ol class="linenums"><li>$('<span class="text-warning">#myModal</span>').modal('<span class="text-warning">show</span>')</li></ol></pre> 
     <div class="">
      <h3>close</h3>
      按模式或自定义关闭 任意各异html元素 添加：
    </div>
    <pre class="prettyprint linenums"><ol class="linenums"><li><span class="text-success">data-dismiss</span>="<span class="text-warning">modal</span>"</li></ol></pre> 
    <div class="">
      <h3>.modal('hide')</h3>
      手动隐藏一个模态对话框。
    </div>
    <pre class="prettyprint linenums"><ol class="linenums"><li>$('<span class="text-warning">#myModal</span>').modal('<span class="text-warning">hide</span>')</li></ol></pre> 
    <div class="">
      <h3>事件</h3>
      组件中的模态对话框对外暴露了一些事件允许你监听。
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table table-hover">
      <tr>
        <th scope="col" width="30%" height="35">事件</th>
        <th scope="col" width="70%">描述</th>
      </tr>
      <tr>
        <td>show</td>
        <td>当show方法被调用时，此事件将被立即触发。</td>
      </tr>
      <tr>
        <td>shown</td>
        <td>当模态对话框呈现到用户面前时（会等待过渡效果执行结束）此事件被触发。</td>
      </tr>
      <tr>
        <td>hide</td>
        <td>当hide方法被调用时，此事件被立即触发。</td>
      </tr>
      <tr>
        <td>hidden</td>
        <td>当模态对话框被隐藏（而且过渡效果执行完毕）之后，此事件将被触发。</td>
      </tr>
    </table>

    <pre class="prettyprint linenums"><ol class="linenums"><li>$('<span class="text-warning">#myModal</span>').on('<span class="text-warning">hidden</span>', function () {</li><li>})</li></ol></pre> 
    
    <div class="">
      <h3>选项</h3>
      上面的选项都可以通过data属性或JavaScript代码传递给组件。对于data属性，将选项名称附着于data-字符串之后，就像data-backdrop=" "一样。
    </div>
        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table table-hover">
          <tr>
            <th width="10%" scope="col">名称</th>
            <th width="10%" scope="col">类型</th>
            <th width="10%" scope="col">默认值</th>
            <th width="70%" scope="col">描述</th>
          </tr>
          <tr>
            <td>backdrop</td>
            <td>boolean</td>
            <td>true</td>
            <td>为模态对话框添加一个背景元素。另外，为背景指定static时，点击模态对话框的外部区域不会将其关闭。</td>
          </tr>
          <tr>
            <td>keyboard</td>
            <td>boolean</td>
            <td>true</td>
            <td>按下esc键时关闭模态对话框</td>
          </tr>
          <tr>
            <td>show</td>
            <td>boolean</td>
            <td>true</td>
            <td>初始化时即显示模态对话框</td>
          </tr>
          <tr>
            <td>remote</td>
            <td>path</td>
            <td>false</td>
            <td>如果提供了远程url地址，就会通过 jQuery的load方法加载内容并注入到.modal-body中。如果你使用的是data属性api，你还可以使用href标签指定远程数据源。案例如下：</td>
          </tr>
        </table>


    <pre class="prettyprint linenums"><ol class="linenums"><li> &lt;a <span class="text-success">data-toggle</span>=&quot;<span class="text-warning">modal</span>&quot; href=&quot;remote.html&quot; <span class="text-success">data-target</span>=&quot;<span class="text-warning">#modal</span>&quot;&gt;click me&lt;/a&gt; </li></ol></pre> 
    
  </div>
</div>
 <%@include file="foot.jsp"%>
