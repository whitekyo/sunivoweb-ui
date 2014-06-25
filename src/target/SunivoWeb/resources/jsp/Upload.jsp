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
        <h1>上传</h1>
        <!--插件编译人、编译时间-->
        <label>开发者：杨成　发布日期：2014-03-2７　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
        <div class="component-block">
            <h2>★ 案例1</h2>
            异步提交
        </div>
        <!--插件编译人、编译时间-->
        <div class="bs-docs-example">
            <form action="#" class="form-inline">
                <div class="input-append x-upload-module" >
                    <input class="span2 x-upload-text" type="text" name="yc-upload" readonly/>
                    <a class="btn x-upload-btn">上传</a>
                </div>
                <input type="text" class="x-upload" style="display: none;"/>
                <a href="javascript:void(0);" class="btn btn-primary" onclick="ajaxFileUpload()">提交</a>
            </form>
        </div>
        <div class="bs-docs-example">
            <form action="#" class="form-inline">
                <div class="input-append x-upload-module">
                    <a class="btn x-upload-btn" autoUpload="true">上传图片</a>
                </div>
            </form>
        </div>
        <div class="component-block">
            <h2>★ 调用方式</h2>
        </div>
        <pre class="prettyprint linenums"><ol class="linenums"><li>var a = new sw();;//实例化插件库</li><li>a.<span class="text-success">upload</span>();//调用upload，初始化</li><li>//这里是为提交按钮绑定事件，上传我们使用第三方插件ajaxfileupload.js</li><li>function ajaxFileUpload(){</li><li>&nbsp;&nbsp;$.ajaxFileUpload(</li><li>&nbsp;&nbsp;&nbsp;&nbsp;{</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="text-success">url</span>:<span class="text-warning">'/upload?method=post'</span>,//需要链接到服务器地址</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="text-success">secureuri</span>:<span class="text-warning">false</span>,</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="text-success">fileElementId</span>:<span class="text-warning">'houseMaps'</span>,//文件选择框的id属性</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="text-success">dataType</span>:<span class="text-warning">'xml'</span>,//服务器返回的格式，可以是json</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="text-success">success</span>:function (data, status</span>,//成功回调</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$('#result').html('添加成功');</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="text-success">error</span>:function (data, status, e){,//失败回调</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},</li><li>&nbsp;&nbsp;});</li><li>}</li></ol></pre>
        <div class="component-block">
            <h2>★ 结构展示</h2>
        </div>
        <pre class="prettyprint linenums"><ol class="linenums "><li>< form action="#" class="form-inline" ></li><li>//需要添加类型<span class="text-error">x-upload-module</span></li><li>&nbsp;&nbsp;< div class="input-append x-upload-module" ></li><li>//需要添加类型<span class="text-error">x-upload-text</span></li><li>&nbsp;&nbsp;&nbsp;&nbsp;< input class="span2 x-upload-text" type="text" name="yc-upload" readonly/ ></li><li>//需要添加类型<span class="text-error">x-upload-btn</span></li><li>&nbsp;&nbsp;&nbsp;&nbsp;< a class="btn x-upload-btn" >上传 <\/a ></li><li>&nbsp;&nbsp;<\/ div ></li><li>&nbsp;&nbsp;< a href="javascript:void(0);" class="btn btn-primary" onclick="ajaxFileUpload()" >提交<\/a ></li><li><\/form ></li></ol></pre>
        <div class="component-block">
            <h2>★ 使用注意</h2>
        </div>
        <p>1.在使用时，需要上面的结构，需要注意的是x-upload-module，x-upload-text和x-upload-btn三个类必须加上，插件才能初始化。</p>
        <p>2.如果需要加入上传前或者上传后的事件，需要手动根据业务逻辑自行添加</p>
        <p>3.异步提交的上传可以实现不刷新页面的情况完成提交，模拟了ajax展现形式。form表单的<span class="text-error">enctype="multipart/form-data"</span>属性，可以不写。</p>
        <div class="component-block">
            <h2>★ 案例2</h2>
            表单提交
        </div>
        <!--插件编译人、编译时间-->
        <div class="bs-docs-example">
            <form action="upload" class="form-inline" enctype="multipart/form-data">
                <div class="input-append x-upload-module" >
                    <input class="span2 x-upload-text" type="text" name="yc-upload" readonly/>
                    <a class="btn x-upload-btn">上传</a>
                </div>
                <input type="text" class="x-upload" style="display: none;"/>
                <input type="submit" value="提交" class="btn btn-primary"/>
            </form>
        </div>
        <div class="component-block">
            <h2>★ 调用方式</h2>
        </div>
        <pre class="prettyprint linenums"><ol class="linenums"><li>var a = new sw();//实例化插件库</li><li>a.<span class="text-warning">upload</span>();//在结构上添加完类名之后，调用upload方法完成初始化。</li></ol></pre>
        <div class="component-block">
            <h2>★ 结构展示</h2>
        </div>
        <pre class="prettyprint linenums"><ol class="linenums"><li>< form action="upload" class="form-inline" <span class="text-error">enctype="multipart/form-data"</span> > </li><li>   < div class="input-append x-upload-module" > </li><li>     < input class="span2 x-upload-text" type="text" name="yc-upload" readonly/> </li><li>     < a class="btn x-upload-btn">上传<\/a></li><li>   <\/div> </li><li>   < input type="text" class="x-upload" style="display: none;"/> </li><li>   < input type="submit" value="提交" class="btn btn-primary"/></li><li><\/form> </li></ol></pre>
        <div class="component-block">
            <h2>★ 使用注意</h2>
        </div>
        <p>表单提交，需要在form标签上添加<span class="text-error">enctype="multipart/form-data"</span>,这样后台才能接收文件信息</p>
        <p>具体表单展现风格，可以根据业务要求修改，注意在添加上传控件的时候，具体类名不能忘记添加，在初始化之后实现上传效果。</p>
    </div>


</div>
<script type="text/javascript">
    sw_define('options',function(){
        return {
            paths: {
                ajaxfileupload: '../customize/js/ajaxfileupload'
            },
            shim: {
                ajaxfileupload: {
                    deps: ['jquery']
                }
            }
        };
    });
    sw_define(function(){
        var a = new sw();
        a.upload();
        function ajaxFileUpload(){
            $.ajaxFileUpload(
                {
                    url:'/upload?method=post',            //需要链接到服务器地址
                    secureuri:false,
                    fileElementId:'houseMaps',                  //文件选择框的id属性
                    dataType: 'xml',                            //服务器返回的格式，可以是json
                    success: function (data, status){           //相当于java中try语句块的用法
                        $('#result').html('添加成功');
                    },
                    error: function (data, status, e){          //相当于java中catch语句块的用法
                        $('#result').html('添加失败');
                    }
                }
            );
        }
        window.ajaxFileUpload =ajaxFileUpload;
    });
</script>
<%@include file="foot.jsp"%>
<%--
<script type="text/javascript" src="../customize/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="../customize/js/underscore-1.6.js"></script>
<script type="text/javascript" src="../customize/js/SunivoWeb-ui.js"></script>--%>
