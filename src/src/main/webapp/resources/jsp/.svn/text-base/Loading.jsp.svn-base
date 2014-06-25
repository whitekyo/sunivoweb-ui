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
        <h1>loading层</h1>
        <!--插件编译人、编译时间-->
        <label>作者：杨成　发布日期：2014-3-27　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
        <h2>★ 案例</h2>
        实现整个页面的遮罩，以及实现等待效果。
    </div>
    <!--插件编译人、编译时间-->
    <div class="bs-docs-example">
        <a href="javascript:void(0);" class="btn btn-primary module1">点击我显示loading遮罩</a>
    </div>
    <div class="component-block">
        <h2>★ 调用方式</h2>
    </div>
    <pre class="prettyprint linenums"><ol class="linenums"><li>var demo = new sw();//实例化插件库</li><li>var wait = demo.<span class="text-success">loading</span>();//调用loading，生成一个loading模块</li><li>$('.module1').<span class="text-success">on</span>('click',function(){</li><li>&nbsp;&nbsp;wait.<span class="text-success">create</span>();//调用模块的create方法，打开遮罩层</li><li>&nbsp;&nbsp;setTimeout(function(){</li><li>&nbsp;&nbsp;&nbsp;&nbsp;wait.<span class="text-success">remove</span>();//调用模块的remove方法，关闭遮罩层</li><li>&nbsp;&nbsp;},2000);</li><li>});</li></ol></pre>
    <div class="component-block">
        <h2>★ 使用注意</h2>
    </div>
    <p>1.在实例化插件库，<span class="text-error">调用完loading方法之后</span>，会得到一个loading的模块，这里采用单例的方式构建。页面永远只有一个loading模块。</p>
    <p>2.在使用开启和关闭loading遮罩层的时候，其API方法是在我们得到的loading模块里，而非是插件库的的API。</p>
    <p>3.另外loading模块的create和remove方法都可以被改写，但最好不要改写。</p>
</div>


</div>
<script type="text/javascript">
    sw_define(function(){
        var demo = new sw();//实例化插件库
        var wait = demo.loading();//调用loading，生成一个loading模块
        $('.module1').on('click',function(){
            wait.create();//调用模块的create方法，打开遮罩层
            setTimeout(function(){
                wait.remove();//调用模块的remove方法，关闭遮罩层
            },2000);
        });
    });
</script>
<%@include file="foot.jsp"%>