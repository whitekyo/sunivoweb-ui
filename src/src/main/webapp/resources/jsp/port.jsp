

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

    <h1>港口控件</h1>
    <!--插件编译人、编译时间-->
    <label>开发者：王淼　发布日期：2014-03-27　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
      <h2>★ 案例</h2>
    </div>
    <div class="">
      <h3>静态案例</h3>
    </div>
    <div class="bs-docs-example"> 
<style>
.gangkoufloat input{position:absolute; z-index: 1000;}
.gangkoufloat{position:absolute; z-index: 999; width:262px; height:470px; border:1px solid #cacaca; background:#ffffff; font-size:12px; }
.gangkoufloatloaddata{position:absolute; z-index: 999; width:262px; height:40px; overflow:auto; border:1px solid #cacaca; background:#ffffff; font-size:12px; }
.gangkoufloattab{width:262px; height:415px; overflow:auto; margin-top:0;}
.gangkoufloat .gangkoufloatlist{margin:0;}
.gangkoufloat .gangkoufloatlist th{width:252px; text-align:left; padding-left:8px; background:#f5f5f5; line-height:22px; border-bottom:1px solid #dcdcdc;}
.gangkoufloat .gangkoufloatlist td{width:245px; padding-left:15px; line-height:22px; border-bottom:1px solid #dcdcdc; cursor:pointer;}
.gangkoufloat .gangkoufloatlist td:hover{background:#f5f5f5;}
.gangkouline ul{border-bottom:0; list-style:none; width:15px; margin-left:230px; margin-top:54px; position:absolute; z-index: 1000; }
.gangkouline li{line-height:16px;  text-align:center;}
.gangkouline li a{color:#666666; text-decoration:none;}

.port-group .gangkoufloatloaddata, .port-group .gangkoufloat{margin-left:65px; margin-top:8px;}
.port-group .gangkouline ul{margin-left:295px; margin-top:64px}

/*起运港、目的港*/
.gangkoufloat2{position:absolute; z-index: 999; width:262px; border:1px solid #cacaca; background:#ffffff; font-size:12px; }
.gangkoufloat2 table{ margin-left:0!important;margin-top:0!important;margin-bottom:0!important;margin-right:0!important;}
.gangkoufloat2 td{width:250px; padding:0 5px; line-height:22px; cursor:pointer; color:#969696;}
.gangkoufloat2 td span{float:right;}
.gangkoufloat2 td:hover{background:#f0f0f0;}
.gangkoupage{text-align:center; padding:8px 0;}
.gangkoupage a{text-decoration:underline; color:#969696; margin:0 5px; cursor:pointer;}
.gangkoupage .gangkoulocked{text-decoration:none;}
.tckWap{ position:relative;}
.tcCont{ position:absolute; display:none; width:264px; background-color:#fff; z-index:1000000; top:30px; left:0;}
.pagination ul > li > a:hover, .pagination ul > li > a:focus, .pagination ul > .active > a, .pagination ul > .active > span{}

#reachPort1_wrap,#startPort1_wrap{ position:relative; width:230px; float:left;}

</style>
      <select data-select="transportType" name="transportType" id="transportType1" class="chosen" type="text" style="width:130px">
        <option value="1" selected>海运</option>
        <option value="2">空运</option>
      </select>
      <br/>
      <div class="clearfix">
      <input type="text" id="startPort1" placeholder="请输入起运港" class="required tcBtn pull-left"/>
      <input type="text" id="reachPort1" placeholder="请输入目的港" class="required tcBtn pull-left"/>
      </div>
    </div>
    <!--添加插件代码-->
    <pre class="prettyprint linenums">
    <ol class="linenums">
<li>html部分</li><li>&lt;select <span class="text-success">data-select=</span><span class="text-warning">&quot;transportType&quot;</span> <span class="text-success">name=</span><span class="text-warning">&quot;transportType&quot;</span> <span class="text-success">id=</span><span class="text-warning">&quot;transportType1&quot;</span> <span class="text-success">class=</span><span class="text-warning">&quot;chosen&quot;</span> type=&quot;text&quot; style=&quot;width:130px&quot;&gt;</li><li>  &lt;option value=&quot;1&quot; selected&gt;海运&lt;/option&gt;</li><li>  &lt;option value=&quot;2&quot;&gt;空运&lt;/option&gt;<br></li><li>&lt;/select&gt;</li><li>&lt;input type=&quot;text&quot; <span class="text-success">id=</span><span class="text-warning">&quot;startPort1&quot;</span> <span class="text-success">placeholder=</span><span class="text-warning">&quot;请输入起运港&quot;</span> <span class="text-success">class=</span><span class="text-warning">&quot;required tcBtn&quot;</span>/&gt;<br></li><li>&lt;input type=&quot;text&quot; <span class="text-success">id=</span><span class="text-warning">&quot;reachPort1&quot;</span> <span class="text-success">placeholder=</span><span class="text-warning">&quot;请输入目的港&quot;</span> <span class="text-success">class=</span><span class="text-warning">&quot;required tcBtn&quot;</span>/&gt;</li><li>js部分</li><li>$(function(){  </li><li>//起运港 </li><li>        $(&quot;#startPort1&quot;).portSelector({   </li><li>              otherPortId:&quot;<span class="text-warning">reachPort1</span>&quot;,//相对港口id</li><li>              portTypeSelectId :&quot;<span class="text-warning">transportType1</span>&quot;,//下拉选择运输类型的id</li><li>              data:<span class="text-warning">Ports</span>,//港口数据集合</li><li>              portSwitchId:&quot;&quot;//港口交换的id</li><li>        });</li><li>//目的港		    </li><li>        $(&quot;#reachPort1&quot;).portSelector({</li><li>              otherPortId:&quot;<span class="text-warning">startPort1</span>&quot;,</li><li>              portTypeSelectId :&quot;<span class="text-warning">transportType1</span>&quot;,</li><li>              data:<span class="text-warning">Ports</span> </li><li>        });</li><li>})<br><br></li></ol></pre>
    <h2>★ 调用方式</h2>
    <div class=""  style="font-size:14px;">
      <h3>引入js插件</h3><pre class="prettyprint linenums"><ol class="linenums"><li>&lt;script type=&quot;text/javascript&quot; src=&quot;../customize/script/<span class="text-warning">ports.min.js</span>&quot;&gt;&lt;/script&gt;</li><li>&lt;script type=&quot;text/javascript&quot; src=&quot;../customize/script/<span class="text-warning">portSelector2.2.js</span>&quot;&gt;&lt;/script&gt; </li></ol></pre>
      
      <h3>通过ID绑定港口数据</h3>
      <pre class="prettyprint linenums"><ol class="linenums"><li>起运港  id="startPort1"，目的港  id="reachPort1" </li><li>$("<span class="text-warning">#startPort1</span>").portSelector({</li><li>  });</li><li>$("<span class="text-warning">#reachPort1</span>").portSelector({</li><li>  });    </li></ol></pre>
      <h3>参数说明</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li>默认参数说明如下：</li><li>otherPortId :   //相对港口id</li><li>portTypeSelectId  : //下拉选择运输类型的id</li><li>url  : //查询数据的url</li><li>data://港口数据集合 </li><li>portSwitchId://港口交换的id</li></ol></pre>
    </div>
    
    
  </div>
</div>
  <script type="text/javascript">
      sw_define('options',function(){
          return {
              paths: {
                  portSelector: '../customize/script/portSelector2.2'
              },
              shim: {
                  portSelector: {
                      deps: ['jquery']
                  }
              }
          };
      });
      sw_define(function(){
          //起运港
          $("#startPort1").portSelector({
              otherPortId:"reachPort1",
              portTypeSelectId :"transportType1",
              data:Ports,
              portSwitchId:""
          });

          //目的港
          $("#reachPort1").portSelector({
              otherPortId:"startPort1",
              portTypeSelectId :"transportType1",
              data:Ports
          });
      });
  </script>
 <%@include file="foot.jsp"%>
<%--
<script type="text/javascript" src="../customize/script/ports.min.js"></script>
<script type="text/javascript" src="../customize/script/portSelector2.2.js"></script>--%>
