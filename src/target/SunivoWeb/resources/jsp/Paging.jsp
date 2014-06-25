<%--
  Created by IntelliJ IDEA.
  User: yangcheng
  Date: 14-3-26
  Time: 下午5:55
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" href="../customize/css/yc.css"/>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="head.jsp"%>
<%@include file="top.jsp"%>
<div class="component-content clearfix">
    <%@include file="left.jsp"%>
    <!--右边具体插件-->
    <div class="component-substance">
        <h1>分页</h1>
        <!--插件编译人、编译时间-->
        <label>作者：杨成　发布日期：2014-3-27　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
        <div class="component-block">
            <h2>★ 案例1</h2>
            表单分页
        </div>
        <!--插件编译人、编译时间-->
        <div class="bs-docs-example">
            <div class="pagination pagination-right pagination-mini x-paging clearfix">
                <div class="pagination-total pull-left x-paging-content">当前 11-20, 总共 39</div>
                <ul>
                    <li><a data-page="1" href="#?name=&amp;curPage=1">首页</a></li>
                    <li><a data-page="1" href="#?name=&amp;curPage=1">上一页</a></li>
                    <li><a data-page="1" href="#?name=&amp;curPage=1">1</a></li>
                    <li class="active"><a data-page="2" href="#">2</a></li>
                    <li><a data-page="3" href="#?name=&amp;curPage=3">3</a></li>
                    <li><a data-page="4" href="#?name=&amp;curPage=4">4</a></li>
                    <li><a data-page="3" href="#?name=&amp;curPage=3">下一页</a></li>
                    <li><a data-page="4" href="#?name=&amp;curPage=4">尾页</a></li>
                </ul>
            </div>
        </div>
        <div class="component-block">
            <h2>★ 结构展示</h2>
        </div>
        <pre class="prettyprint linenums"><ol class="linenums "><li>&lt;div class="pagination pagination-right pagination-mini"&gt;</li><li>    &lt;testTag:PageSelect params="${params}" page="${page}" address="${ctx}/logistics/index?from_port=${from_port}&to_port=${to_port}&dangerDegree=${dangerDegree}&boxType=${boxType}&execDate=${execDate}&logisticsType=${logisticsType}&transportType=${logisticsAttachmentType}&shipingName=${shipingName}&weekDate=${weekDate}&tradeTypeTemp=${imp_expType}&"/&gt;</li><li>&lt;/div&gt;</li></ol></pre>
        <div class="component-block">
            <h2>★ 使用注意</h2>
        </div>
        <p>1.这里使用的是java的自定义标签。将结构放入form表单中，点击分页整个form表单提交，具体分页逻辑是后台java代码控制。</p>
        <div class="component-block">
            <h2>★ 案例2</h2>
            异步分页
        </div>
        <!--插件编译人、编译时间-->
        <div class="bs-docs-example">

        </div>
    </div>


</div>
<%@include file="foot.jsp"%>
<script type="text/javascript" src="../customize/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="../customize/js/underscore-1.6.js"></script>
<script type="text/javascript" src="../customize/js/SunivoWeb-ui.js"></script>
<script type="text/javascript">
    var a = new sw();

</script>