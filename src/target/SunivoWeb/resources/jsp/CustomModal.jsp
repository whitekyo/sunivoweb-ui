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
<h1>自定义对话框</h1>
<!--插件编译人、编译时间-->
<label>作者：杨成　发布日期：2014-3-26　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
<div class="component-block">
    <h2>★ 案例</h2>
    自定义modal框，是基于bootstrap-modal的一款自定义内容风格的插件
</div>
<!--插件编译人、编译时间-->
<div class="bs-docs-example" style="padding-right:0px; padding-left: 0px;">
    <div class="clearfix custom-modal">
        <div class="pull-left x-box">
            <a href="javascript:void(0);" class="btn module1" data-toggle="popover" data-placement="top" data-content="采用默认布局样式">Module1</a>
        </div>
        <div class="pull-left x-box">
            <a href="javascript:void(0);" class="btn btn-primary module2" data-toggle="popover" data-placement="top" data-content="可以采用bootstrap-modal默认提供的两组关闭按钮，默认按钮不提供点击事件">Module2</a>
        </div>
        <div class="pull-left x-box">
            <a href="javascript:void(0);" class="btn btn-warning module3" data-toggle="popover" data-placement="top" data-content="可以为默认按钮提供自定义点击事件">Module3</a>
        </div>
        <div class="pull-left x-box">
            <a href="javascript:void(0);" class="btn btn-info module4" data-toggle="popover" data-placement="top" data-content="可以自定义尾部内容，搭建自己的按钮组，当然，这需要自己绑定点击事件">Module4</a>
        </div>
        <div class="pull-left x-box">
            <a href="javascript:void(0);" class="btn btn-danger module5" data-toggle="popover" data-placement="bottom" data-content="如果不采用bootstrap-modal默认样式，可以选用整个内容自定义">Module5</a>
        </div>
        <div class="pull-left x-box">
            <a href="javascript:void(0);" class="btn btn-success module6" data-toggle="popover" data-placement="bottom" data-content="支持异步请求导入">Module6</a>
        </div>
        <div class="pull-left x-box">
            <a href="javascript:void(0);" class="btn module7 x-module7" data-toggle="popover" data-placement="bottom" data-content="修改css结构大小，导出图片">Module7</a>
        </div>
    </div>
</div>

<div class="component-block">
    <h2>★ 调用方式</h2>
</div>
<pre class="prettyprint linenums"><ol class="linenums"><li>//使用前先引入SunivoWeb-ui.js</li><li>var Btns = new sw();//实例化app</li><li>Btns.creatModal({</li><li>&nbsp;&nbsp;<span class="text-success">defaults</span>: <span class="text-warning">true</span>,</li><li>&nbsp;&nbsp;<span class="text-success">hasHeader</span>:<span class="text-warning"> true</span>,</li><li>&nbsp;&nbsp;<span class="text-success">fillHeader</span>:<span class="text-warning"> 'module1'</span>,</li><li>&nbsp;&nbsp;<span class="text-success">hasClose</span>:<span class="text-warning"> true</span>,</li><li>&nbsp;&nbsp;<span class="text-success">hasBody</span>:<span class="text-warning"> true</span>,</li><li>&nbsp;&nbsp;<span class=text-success>fillBody</span>:<span class="text-warning"> '我是自定义的主体内容'</span>,</li><li>&nbsp;&nbsp;<span class="text-success">hasDefFooter</span>:<span class="text-warning"> false</span>,</li><li>&nbsp;&nbsp;<span class="text-success">bindEvent</span>:<span class="text-warning"> $('.module1')</span></li><li class="x-code-common">})</li><li></li></ol></pre>
<div class="component-block">
    <h2>★ 选项</h2>
</div>
<p>配置模式1：默认采用bootstrap-modal的三层布局，有以下配置参数挑选  （不能与模式2的参数同时配置）</p>
<table class="table table-bordered x-table">
    <thead>
    <tr>
        <th>参数名</th>
        <th>功能</th>
        <th>可选参数类型</th>
        <th>默认</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>defaults</td>
        <td>是否采用modal弹出框基本布局，header，body，footer</td>
        <td>布尔型</td>
        <td>false</td>
    </tr>
    <tr>
        <td>hasHeader</td>
        <td>是否需要采用header头部布局</td>
        <td>布尔型</td>
        <td>false</td>
    </tr>
    <tr>
        <td>fillHeader</td>
        <td>如果自定义，填充的信息</td>
        <td>String</td>
        <td>空字符</td>
    </tr>
    <tr>
        <td>hasClose</td>
        <td>是否需要采用x的关闭按钮</td>
        <td>布尔型</td>
        <td>false</td>
    </tr>
    <tr>
        <td>hasBody</td>
        <td>是否需要采用body布局</td>
        <td>布尔型</td>
        <td>false</td>
    </tr>
    <tr>
        <td>fillBody</td>
        <td>如果自定义，填充的信息</td>
        <td>String</td>
        <td>空字符</td>
    </tr>
    <tr>
        <td>hasDefFooter</td>
        <td>是否采用默认footer，拥有两个关闭按钮</td>
        <td>布尔型</td>
        <td>false</td>
    </tr>
    <tr>
        <td>fillFooter</td>
        <td>如果自定义，填充的信息</td>
        <td>String</td>
        <td>空字符</td>
    </tr>
    <tr>
        <td><a href="#_defBtnEvent">defBtnEvent</a></td>
        <td>如果采用默认footer布局，可键入对应的点击事件</td>
        <td>Object</td>
        <td>空对象</td>
    </tr>
    </tbody>
</table>
<p>配置模式2：自定义整个内容样式，有以下配置参数可选  （不能与模式1的参数同时配置）</p>
<table class="table table-bordered x-table">
    <thead>
    <tr>
        <th>参数名</th>
        <th>功能</th>
        <th>可选参数类型</th>
        <th>默认</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td><a href="#_custom">custom</a></td>
        <td>是否采用自定义的布局方式</td>
        <td>布尔型，String，Jquery对象</td>
        <td>null</td>
    </tr>
    <tr>
        <td>url</td>
        <td>异步请求的资源路径</td>
        <td>String</td>
        <td>空字符</td>
    </tr>
    <tr>
        <td>data</td>
        <td>需要一起传输到后台的信息</td>
        <td>String</td>
        <td>空字符</td>
    </tr>
    <tr>
        <td>callback</td>
        <td>请求资源的回调函数</td>
        <td>Function</td>
        <td>null</td>
    </tr>
    </tbody>
</table>
<p>以下配置参数可以通用</p>
<table class="table table-bordered x-table">
    <thead>
    <tr>
        <th>参数名</th>
        <th>功能</th>
        <th>可选参数类型</th>
        <th>默认</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>backdrop</td>
        <td>是否是固态背景</td>
        <td>布尔型或static，布尔型控制背景是否显示，static控制背景是否点击可触发关闭modal框</td>
        <td>static</td>
    </tr>
    <tr>
        <td>keyboard</td>
        <td>是否关闭键盘的ESC键的触发modal关闭</td>
        <td>布尔型</td>
        <td>false</td>
    </tr>
    <tr>
        <td><a href="#_cssRule">cssRule</a></td>
        <td>修改整个modal，最外层的布局样式</td>
        <td>object</td>
        <td>空对象</td>
    </tr>
    <tr>
        <td>bindEvent</td>
        <td>触发弹出框需要关联的对象</td>
        <td>Jquery对象</td>
        <td>body</td>
    </tr>
    <tr>
        <td>showNow</td>
        <td>生成完定制的modal是否立即展示</td>
        <td>布尔型</td>
        <td>true</td>
    </tr>
    </tbody>
</table>
<div class="component-block">
    <h2>★ 使用注意</h2>
</div>
<p>1.一般根据业务需求，自定义弹出框需要绑定到一个触发元素上(比如说按钮等)，所以一般配置时都要配置 <span class="x-code-customapi">bindEvent</span> ，绑定到一个<span class="text-error">jQuery对象</span>中。</p>
<p name="_defBtnEvent" id="_defBtnEvent">2.defBtnEvent的几个参数形式</p>
<pre class="prettyprint linenums"><ol class="linenums"><li>//使用前先引入SunivoWeb-ui.js</li><li>...</li><li><span class="text-success">defBtnEvent</span>:{</li><li><span class="text-success">&nbsp;&nbsp;ensure</span>:function(e){//这里的e可以获取到事件源对象</li><li>&nbsp;&nbsp;&nbsp;&nbsp;alert('我的按钮内容是'+ e.<span class="text-success">innerHTML</span>);</li><li>&nbsp;&nbsp;},</li><li><span class="text-success">&nbsp;&nbsp;cancel</span>: function(e){</li><li>&nbsp;&nbsp;&nbsp;&nbsp;alert('我的按钮内容是'+ e.<span class="text-success">innerHTML</span>);</li><li>&nbsp;&nbsp;&nbsp;&nbsp;}</li><li>&nbsp;&nbsp;},</li><li>...</li></ol></pre>
<p name="_cssRule" id="_cssRule">3.cssRule参数一般写法,基本跟jQuery中的css()方法内的参数一致，属于key-value对</p>
<pre class="prettyprint linenums"><ol class="linenums"><li>//使用前先引入SunivoWeb-ui.js</li><li>...</li><li><span class="text-success">cssRule</span>: {//用法跟jQuery的css方法类似</li><li><span class="ttext-success">&nbsp;&nbsp;'width'</span>: <span class="text-warning">'600px'</span></li><li><span class="text-success">&nbsp;&nbsp;'margin-left'</span>: <span class="text-warning">'-300px'</span></li><li>}</li><li>...</li></ol></pre>
<p name="_custom" id="_custom">4.custom参数的配置，一般有三种情况</p>
<pre class="prettyprint linenums"><ol class="linenums"><li>//使用前先引入SunivoWeb-ui.js</li><li>...</li><li>//custom传入字符串</li><li><span class="text-success">custom</span>: <span class="text-warning">'我是完全自定义的内容&lt;a href="javascript:void(0);" data-dismiss="modal"&gt;关闭&lt;/a&gt;'</span></li><li>...</li><li><span class="text-success">custom</span>:<span class="text-warning"> true,</span>//如果需要异步请求，请填写资源路径，custom参数置成true</li><li><span class="text-success">url</span>:<span class="text-warning">'standard-paging.html',</span></li><li>...</li><li>//如果觉得输入字符串太过于麻烦，也可以获取到插入信息的最外层对象传给custom，效果一样。</li><li><span class="text-success">custom</span>:<span class="text-warning"> $('.img1'),</span></li></ol></pre>
<div class="component-block">
    <h2>★ 一般问题</h2>
</div>
</div>
</div>
<script type="text/javascript">
    sw_define(function(){
        $('.btn').popover({
            trigger:'hover'
        });
        var Btns = new sw();
        Btns.navLocation(window.location.href,$('.component-list'));
        Btns.createModal({
            defaults: true,
            hasHeader: true,
            fillHeader: 'module1',
            hasClose: true,
            hasBody: true,
            fillBody: '我是自定义的主体内容',
            hasDefFooter: false,
            bindEvent: $('.module1')
        });
        Btns.createModal({
            defaults: true,
            hasHeader: true,
            fillHeader: 'module2',
            hasBody: true,
            fillBody: '我使用了默认按钮',
            hasDefFooter: true,
            bindEvent: $('.module2')
        });
        Btns.createModal({
            defaults: true,
            hasHeader: true,
            fillHeader: 'module3',
            hasBody: true,
            fillBody: '我为默认按钮绑定了自定义事件',
            hasDefFooter: true,
            defBtnEvent: {
                ensure: function(e){
                    alert('我的按钮内容是'+ e.innerHTML);
                },
                cancel: function(e){
                    alert('我的按钮内容是'+ e.innerHTML);
                }
            },
            bindEvent: $('.module3')
        });
        Btns.createModal({
            defaults: true,
            hasHeader: true,
            fillHeader: 'module2',
            hasBody: true,
            fillBody: '我为默认按钮绑定了自定义事件',
            hasDefFooter: false,
            fillFooter: '<p>我是一个自定义的尾部</p><a href="javascript:void(0);" onclick="customFun1(this)">自定义按钮</a><a href="javascript:void(0);" class="btn" data-dismiss="modal">关闭</a>',
            bindEvent: $('.module4')
        });
        function customFun1(e){
            $(e).text('我自己修改了自定义按钮的名字');
        }
        Btns.createModal({
            custom: '我是完全自定义的内容<a href="javascript:void(0);" data-dismiss="modal">关闭</a>',
            bindEvent: $('.module5')
        });
        Btns.createModal({
            custom: true,
            url: '../html/standard-paging.html',
            bindEvent: $('.module6'),
            backdrop: true
        });
        Btns.createModal({
            custom: '<a class="close" data-dismiss="modal">×</a><img src="../customize/img/yc/lion.jpg">',
            bindEvent: $('.module7'),
            cssRule: {
                'width': '600px',
                'margin-left': '-300px'
            }
        });
    });
</script>
<%@include file="foot.jsp"%>