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
    <div class="component-substance"><%--
            <h1></h1>
            <h5 class="pull-right text-success"></h5>--%>
        <h1>邮箱联想</h1>
        <!--插件编译人、编译时间-->
        <label>作者：杨成　发布日期：2014-3-26　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
        <div class="component-block">
            <h2>★ 案例</h2>
            该插件依赖于bootstrap的typeahead插件，进行改写实现的
        </div>
        <!--插件编译人、编译时间-->
        <div class="bs-docs-example" style="padding-right:0px; padding-left: 0px;">
            <div style="margin-left: 10px;">
                <input type="text" class="email"/>
            </div>
        </div>
        <div class="component-block">
            <h2>★ 调用方式</h2>
        </div>
        <pre class="prettyprint linenums"><ol class="linenums"><li>//引入SunivoWeb-ui.js</li><li>var a = new sw();//初始化插件库</li><li>a.emailAutocomplete();//调用emailAutocomplete方法对包含<span class="text-error">email</span>类名的控件进行初始化</li></ol></pre>
        <div class="component-block">
            <h2>★ 使用注意</h2>
        </div>
        <p>需要拥有email联想的控件上需要添加email类名。再调用插件库的emailAutocomplete方法，完成初始化即可。</p>
    </div>
</div>
<script type="text/javascript">
    sw_define(function(){
        var a = new sw();
        a.emailAutocomplete();
    });
</script>
<%@include file="foot.jsp"%>