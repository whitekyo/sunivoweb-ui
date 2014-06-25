<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="head.jsp"%>
<div class="index-nav-container">
    <ul class="index-nav">
        <li><a href="index.jsp">首页</a></li>
        <li><a href="Loading.jsp">组件</a></li>
        <li class="active"><a href="log.jsp">升级日志</a></li>
        <li><a href="download.jsp">JavaScript插件</a></li>
    </ul>
</div>
<div class="log-banner">
</div>
<div class="component-content clearfix status download">
    <!--右边具体插件-->
    <h3 class="x-center">前端框架相关插件推荐</h3>
    <div class="clearfix">
        <div class="pull-left x-module">
            <img src="../customize/images/underscore1.png" alt="" style="width: 300px; height: 150px;"/>
        </div>
        <div class="pull-left">2</div>
        <div class="pull-left">3</div>
    </div>

</div>
<%@include file="foot.jsp"%>
<script type="text/javascript">
    sw_define(function(){
        document.body.style.background = "#f0f0f0";
        var a = new sw();
        a.init();
    });
</script>