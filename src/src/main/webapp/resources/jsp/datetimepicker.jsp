

  <%@include file="head.jsp"%>
  <%@include file="top.jsp"%>
  
  <%@ page language="java" pageEncoding="UTF-8"%>
  <!--右边具体插件-->
<div class="component-content clearfix">
  <%@include file="left.jsp"%>  
<div class="component-substance k-ichcek">
  <h1>DateTime Picker </h1>
  <!--插件编译人、编译时间-->
  <label>作者：王玉兴　发布日期：2014-03-27　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
  <div class="component-block">
    <h2>★ 案例</h2>
    Bootstrap日期时间选择器（Bootstrap DateTime Picker）是一个Bootstrap组件，能够简化页面上日期、时间的输入。 
</div>
  <h3>静态案例</h3> 
<div class="bs-docs-example"> 
    <!--添加插件案例-->
  <div class="form-horizontal"> 
        <div class="control-group">
            <label class="control-label" for="form_datepicker">只选择日期</label>
            <div class="controls">
            <input class="date-picker" type="text" id="form_datepicker" data-startdate="2000-01-01" data-format="mm-dd" data-enddate="2014-12-31"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="form_timepicker">只选择时间</label>
            <div class="controls">
                <input class="time-picker" id="form_timepicker" type="text" />
            </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="form_datetimepicker">选择日期时间</label>
            <div class="controls">
              <input class="datetime-picker" id="form_datetimepicker" type="text" data-startdate="2000-01-01" data-format="yyyy-mm-dd hh:ii" data-enddate="2014-12-31"/>
            </div>
        </div>
    </div>
    
    
  </div>
  <!--添加插件代码-->
  <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;input <span class="text-success">class=</span><span class="text-warning">&quot;date-picker&quot;</span> type=&quot;text&quot; <span class="text-success">data-startdate=</span><span class="text-warning">&quot;2000-01-01&quot;</span> <span class="text-success">data-format=</span><span class="text-warning">&quot;mm-dd&quot;</span> <span class="text-success">data-enddate=</span><span class="text-warning">&quot;2014-12-31&quot;</span>/&gt;</li><li>/*</li><li> 说明：</li><li> data-startdate属性设置起始时间(默认为当前时间)</li><li> data-enddate属性设置结束时间(默认无穷大)</li><li> data-format属性设置时间格式(默认为yyyy-mm-dd)</li><li>*/</li><li>&lt;input <span class="text-success">class=</span><span class="text-warning">&quot;time-picker&quot; </span>type=&quot;text&quot; /&gt;</li><li>&lt;input <span class="text-success">class=</span><span class="text-warning">&quot;datetime-picker&quot;</span> type=&quot;text&quot; <span class="text-success">data-startdate=</span><span class="text-warning">&quot;2000-01-01&quot;</span> <span class="text-success">data-format=</span><span class="text-warning">&quot;mm-dd&quot;</span> <span class="text-success">data-enddate=</span><span class="text-warning">&quot;2014-12-31&quot;</span>/&gt;</li><li>/*</li><li> 说明：</li><li> 只要在原有的输入框上添加date-picker(日期选择)/time-picker(时间选择)/datetime-picker(日期时间)样式</li></ol></pre>
    <div class="component-block">
        <h2>★ 调用方式</h2>
    </div>
    <pre class="prettyprint linenums"><ol class="linenums"><li>var a = new sw();//初始化插件库</li><li>a.datepicker()//只用日期控件的初始化方式</li><li>a.timepicker()//只用时间控件的初始化方式</li><li>a.dateTimepicker()//日期加时间控件的初始化方式</li></ol></pre>
</div>
</div>

<%@include file="foot.jsp"%>