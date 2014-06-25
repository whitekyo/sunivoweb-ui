

<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="head.jsp"%>
<style>
    .step-plus{width:30px; height:30px; background:url(../customize/images/icon_11.png) ;}
    .step-minus{width:30px; height:30px; background:url(../customize/images/icon_11.png) -30px 0;}
</style>

<%@include file="top.jsp"%>
<div class="component-content clearfix">
    <%@include file="left.jsp"%>

    <!--右边具体插件-->
    <div class="component-substance">

        <h1>全选</h1>
        <!--插件编译人、编译时间-->
        <label>开发者：王玉兴　发布日期：2014-05-14　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
        <div class="component-block">
            <h2>★ 案例</h2>
        </div>
        <div class="">
            <h3>静态案例</h3>
        </div>
        <div class="bs-docs-example">
            <a href="javascript:void(0);" id="edit" class="btn" style="margin-bottom: 10px;">添加</a>
            <table class="table table-bordered table-condensed testTable">
                <tr>
                    <td style="border-right: 1px solid #DDDDDD;"><span><label class="checkbox inline"><input type="checkbox"  class="checkAll icheck"/></label></span></td>
                    <td class="x-td-noBothSideBorder"><span><label class="checkbox inline"><input type="checkbox"  class="icheck" data-parent='checkAll'/></label></span></td>
                    <td class="x-td-noBothSideBorder"><span><label class="checkbox inline"><input type="checkbox"  class="icheck" data-parent='checkAll'/></label></span></td>
                    <td class="x-td-noBothSideBorder"><span><label class="checkbox inline"><input type="checkbox"  class="icheck" data-parent='checkAll'/></label></span></td>
                    <td class="x-td-noBothSideBorder"><span><label class="checkbox inline"><input type="checkbox"  class="icheck" data-parent='checkAll'/></label></span></td>
                    <td class="x-td-noBothSideBorder"><span><label class="checkbox inline"><input type="checkbox"  class="icheck" data-parent='checkAll'/></label></span></td>
                    <td class="x-td-noBothSideBorder"><span><label class="checkbox inline"><input type="checkbox"  class="icheck" data-parent='checkAll'/></label></span></td>
                    <td class="x-td-noBothSideBorder"><span><label class="checkbox inline"><input type="checkbox"  class="icheck" data-parent='checkAll'/></label></span></td>
                    <td class="x-td-noBothSideBorder"><span><label class="checkbox inline"><input type="checkbox"  class="icheck" data-parent='checkAll'/></label></span></td>
                    <td class="x-td-noBothSideBorder"><span><label class="checkbox inline"><input type="checkbox"  class="icheck" data-parent='checkAll'/></label></span></td>
                </tr>
            </table>
        </div>
        <div class="component-block">
            <h2>★ 调用方式</h2>
        </div>
        <pre class="prettyprint linenums"><ol class="linenums"><li>$('.testTable').<span class="text-warning">doCheckAll</span>();/*这里注意这个jQuery对象，它必须包含整个checkbox，这样插件内部才能找到所有的checkbox，这样设计由于icheck多次初始化导致错误，另外指定范围初始化比较灵活*/</li><li>//插件支持新增，满足全选条件，如</li><li>//需要引入checkAll.js</li><li>var a = new sw();</li><li>$('#edit').on('click',function(){ //为按钮添加事件</li><li>    var arr = [],checkbox = $('&lt;input type="checkbox" class="icheck" data-parent="checkAll"/&gt;'),td = $('&lt;td class="x-td-noBothSideBorder"&gt;&lt;span&gt;&lt;label class="checkbox inline"&gt;&lt;/label&gt;&lt;/span&gt;&lt;/td&gt;');</li><li>    td.find('label').append(checkbox);</li><li>    $('.testTable tr').append(td);//拼接好插入DOM</li><li>    arr.push(checkbox);</li><li>    a.icheck(arr);//SunivoWeb-ui的icheck支持初始化数组内的checkbox对象，必须是jQuery对象</li><li>    $('.testTable').doCheckAll('addElement',checkbox);//这里调用插件的addElement方法，传入新增的checkbox对象。即可让这个checkbox拥有全选功能</li><li>});</li></ol></pre>
    </div>
</div>
<script type="text/javascript">
    sw_define('options',function(){
        return {
            paths: {
                checkAll: '../customize/js/checkAll'
            },
            shim: {
                checkAll: {
                    deps: ['jquery']
                }
            }
        };
    });
    sw_define(function(){
        var a = new sw();
        //a.checkAll();
        $('#edit').on('click',function(){
            var arr = [],checkbox = $('<input type="checkbox" class="icheck" data-parent="checkAll"/>'),td = $('<td class="x-td-noBothSideBorder"><span><label class="checkbox inline"></label></span></td>');
            td.find('label').append(checkbox);
            $('.testTable tr').append(td);
            arr.push(checkbox);
            a.icheck(arr);
            $('.testTable').doCheckAll('addElement',checkbox);
        });
        $('.testTable').doCheckAll();
    });
</script>
<%@include file="foot.jsp"%>
<%--<script src="../customize/script/checkbox-relevance.js"></script>--%>

