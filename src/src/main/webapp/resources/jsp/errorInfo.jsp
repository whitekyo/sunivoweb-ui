  <%@include file="head.jsp"%>
  <%@include file="top.jsp"%>
  
  <%@ page language="java" pageEncoding="UTF-8"%>
<div class="component-content clearfix">
  <%@include file="left.jsp"%>

<div class="component-substance k-ichcek">
  <h1>错误信息</h1>
  <!--插件编译人、编译时间-->
  <label>作者：王玉兴　发布日期：2014-03-27　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
  <div class="component-block"><h2>★ 案例</h2>错误信息 </div>
  <h3>静态案例</h3> 
  <div class="bs-docs-example"> 
    <!--添加插件案例-->
    <div class="form-horizontal"> 
      <div class="alert alert-block">
          <button type="button" class="close" data-dismiss="alert">×</button>
          <h4>Warning !</h4>
          <div class="info">put your warning info here !</div>
      </div>
      
      <div class="alert alert-error">
          <button class="close" data-dismiss="alert" type="button">×</button>
          <h4>Error !</h4>
          <div class="info">put your error info here !</div>
      </div>
      
      <div class="alert alert-success">
          <button class="close" data-dismiss="alert" type="button">×</button>
          <h4>Success !</h4>
          <div class="info">put your success info here !</div>
      </div>
      
      <div class="alert alert-info">
          <button class="close" data-dismiss="alert" type="button">×</button>
          <h4>Info !</h4>
          <div class="info">put your info here !</div>
      </div>
      
      <div id="test"></div>
    </div>
  </div>
  <!--添加插件代码-->
  <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;div <span class="text-warning">id=</span><span class="text-success">&quot;test&quot;</span>&gt;&lt;/div&gt;</li><li>&lt;script <span class="text-warning">type=</span><span class="text-success">&quot;text/javascript&quot;</span>&gt;</li><li>var a = new sw();//初始化插件库</li><li>a.<span class="text-warning">infoTip</span>($('#test'),"alert-info","This is test info");//调用infoTip</li></ol></pre>
    <div class="component-block">
        <h2>★ 选项</h2>
    </div>
  <table class="table table-bordered">
      <thead>
        <tr>
            <th>参数名</th>
            <th>功能</th>
            <th>可选参数</th>
        </tr>
      </thead>
      <tbody>
          <tr>
              <td>context</td>
              <td>具体内容会插入到context的内部底层</td>
              <td>jQuery对象</td>
          </tr>
          <tr>
              <td>colorStyle</td>
              <td>基本是修改背景色以及字体</td>
              <td><span style="color:#EB6100">alert-block</span>,<span style="color: #E60012;">alert-error</span>,<span style="color: #009900;">alert-success</span>,<span style="color: #5637AA;">默认</span></td>
          </tr>
          <tr>
              <td>content</td>
              <td>具体错误信息</td>
              <td>自定义内容(支持多个参数)</td>
          </tr>
      </tbody>
  </table>
    <div class="component-block">
        <h2>★ 使用注意</h2>
    </div>
    <p>1.在实例化插件库，调用errorinfo方法，这里需要注意<span class="text-error">参数的顺序不能打乱</span>，否则会报错。</p>
</div>
</div>
<script type="text/javascript">
    sw_define(function(){
        var a = new sw();
        a.errorInfo($('#test'),"alert-info","This is test info");
        a.infoTip($('.form-horizontal'),'alert-info','yangcheng');
    });
</script>
<%@include file="foot.jsp"%>