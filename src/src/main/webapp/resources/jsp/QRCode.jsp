
  <%@include file="head.jsp"%>
  <%@include file="top.jsp"%>
  
  <%@ page language="java" pageEncoding="UTF-8"%>
<div class="component-content clearfix">
  <%@include file="left.jsp"%>
<div class="component-substance k-ichcek">
  <h1>QR Code</h1>
  <!--插件编译人、编译时间-->
  <label>作者：王玉兴　发布日期：2014-03-27　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
  <div class="component-block">
    <h2>★ 案例</h2>
    QR Code提供二维码生成功能 
</div>
  <h3>静态案例</h3> 
<div class="bs-docs-example"> 
    <!--添加插件案例-->
  <div class="form-horizontal"> 
    <div id="QRCode"></div>    
  </div>
    
    
  </div>
  <!--添加插件代码-->
  <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;div <span class="text-success">id=</span><span class="text-warning">&quot;QRCode&quot;</span>&gt;&lt;/div&gt;</li><li>&lt;script <span class="text-success">type=</span><span class="text-warning">&quot;text/javascript&quot;</span> <span class="text-success">src=</span><span class="text-warning">&quot;../script/jquery-1.9.1.min.js&quot;</span>&gt;&lt;/script&gt;</li><li>&lt;script <span class="text-success">src=</span><span class="text-warning">&quot;../customize/script/jquery.qrcode.js&quot;</span>&gt;&lt;/script&gt;</li><li>&lt;script <span class="text-success">src=</span><span class="text-warning">&quot;../customize/script/qrcode.js&quot;</span>&gt;&lt;/script&gt;</li><li>&lt;script <span class="text-success">type=</span><span class="text-warning">&quot;text/javascript&quot;</span>&gt;</li><li>$(function() {</li><li> $(&quot;#QRCode&quot;).qrcode({</li><li> <span class="text-success">render</span>: <span class="text-warning">&quot;div&quot;</span>,</li><li> <span class="text-success">text</span>:<span class="text-warning">&quot;content&quot;</span>,</li><li> <span class="text-success">size</span>:<span class="text-warning">100</span></li><li> });</li><li>});</li><li>/*</li><li>说明：</li><li>render属性设置二维码生成方式，有三种方式(canvas/image/div)可供选择,默认canvas</li><li>size属性设置二维码大小，默认200*200</li><li>text属性设置内容(中文内容需要转码,具体方法请查看本页源码)</li><li>*/</li></pre>
</div>
</div>
  <script type="text/javascript">
      sw_define('options',function(){
          return {
              paths: {
                  jqrcode: '../customize/script/jquery.qrcode',
                  qrcode:'../customize/script/qrcode'
              },
              shim: {
                  jqrcode: {
                      deps: ['jquery']
                  }
              }
          };
      });
      sw_define(function(){
          var str =utf16to8("中文测试信息");
          $("#QRCode").qrcode({
              render	: "div",
              text	: str,
              size:100
          });
      });
  </script>
<%@include file="foot.jsp"%>
<%--
<script src="../customize/script/jquery.qrcode.js"></script>
<script src="../customize/script/qrcode.js"></script>--%>
