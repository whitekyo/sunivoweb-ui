<%--
  Created by IntelliJ IDEA.
  User: yangcheng
  Date: 14-3-26
  Time: 下午5:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="head.jsp"%>
<%@include file="top.jsp"%>
<div class="component-content clearfix">
    <%@include file="left.jsp"%>
    <!--右边具体插件-->
    <div class="component-substance">
        <h1>nav定位</h1>
        <!--插件编译人、编译时间-->
        <label>作者：杨成　发布日期：2014-3-27　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
        <div class="component-block">
            <h2>★ 案例1</h2>
        </div>
        <!--插件编译人、编译时间-->
        <div class="bs-docs-example">
            见左侧nav导航栏
        </div>
        <div class="component-block">
            <h2>★ 调用方式</h2>
        </div>
        <pre class="prettyprint linenums"><ol class="linenums "><li>var a = new sw();//实例化插件库</li><li>//a.nav()先执行这个方法完成nav点击的初始化</li><li>a.<span class="text-warning">navLocation</span>(window.location.href,$('#pordAttr'));//传入当前url和nav的最外层类名</li></ol></pre>
        <div class="component-block">
            <h2>★ 使用注意</h2>
        </div>
        <p>1.在调用navLocation方法之前，需要调用插件的nav方法完成nav的点击初始化。</p>
        <p>2.目前插件只支持简单url映射查找，对于具体关联页的衍生页面，无法支持。</p>
    </div>


</div>
<%@include file="foot.jsp"%>
<script type="text/javascript" src="../customize/js/ajaxfileupload.js"></script>
<script type="text/javascript">
    var a = new sw();

</script>