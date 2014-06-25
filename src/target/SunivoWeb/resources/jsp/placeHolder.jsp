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
        <h1>placeHolder</h1>
        <!--插件编译人、编译时间-->
        <label>作者：杨成　发布日期：2014-3-26　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
        <div class="component-block">
            <h2>★ 案例</h2>
            兼容低版本浏览器不支持placeholder的情况。
        </div>
        <!--插件编译人、编译时间-->
        <div class="bs-docs-example" style="padding-right:0px; padding-left: 0px;">
            <div class="clearfix custom-modal">
                <input type="text" placeholder="姓名" style="margin-left: 10px;"/>
            </div>
        </div>
        <div class="component-block">
            <h2>★ 结构展示</h2>
        </div>
        <pre class="prettyprint linenums"><ol class="linenums"><li> &lt;input type="text" <span class="text-error">placeholder="姓名"</span> /&gt;</li></ol></pre>
        <div class="component-block">
            <h2>★ 调用方式</h2>
        </div>
        <pre class="prettyprint linenums"><ol class="linenums"><li>//再引入underscore.js和SunivoWeb-ui.js</li><li>var a = new sw();//初始化插件库</li><li>a.placeholder();//调用插件的placeholder方法完成初始化</li></ol></pre>
    </div>
</div>
<script type="text/javascript">
    sw_define(function(){
        var a = new sw();
        a.placeholder();
    });
</script>
<%@include file="foot.jsp"%>