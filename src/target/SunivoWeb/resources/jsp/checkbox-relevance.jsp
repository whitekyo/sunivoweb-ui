

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

    <h1>服务产品点击管理</h1>
    <!--插件编译人、编译时间-->
    <label>开发者：王淼　发布日期：2014-03-28　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
      <h2>★ 案例</h2>
    </div>
    <div class="">
      <h3>静态案例1</h3>
        一对多的情况
    </div>
    <div class="bs-docs-example">
        <table class="table table-bordered table-condensed testTable">
            <thead>
                <tr>
                    <th><span>Name</span></th>
                    <th><span>hobby1</span></th>
                    <th><span>hobby2</span></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><span><label class="checkbox inline"><input type="checkbox" id="name" class="icheck"/></label></span></td>
                    <td><span><label class="checkbox inline"><input type="checkbox" id="hobby1" class="icheck"/></label></span></td>
                    <td><span><label class="checkbox inline"><input type="checkbox" id="hobby2" class="icheck"/></label></span></td>
                </tr>
            </tbody>
        </table>
    </div>
    <!--添加插件代码-->
    <pre class="prettyprint linenums"><ol class="linenums"><li>checkboxPlug.setTable([ //设置关联表</li><li>    {</li><li>        <span class="text-warning">name</span>: '#name',//因为是配置一对多的关系，先配置下"一"的id</li><li>        <span class="text-warning">relation</span>: { //表示id为name的checkbox的关联的关系</li><li>            <span class="text-warning">and</span>: [ //表示与的关系</li><li>                '#hobby1',//id为hobby1</li><li>                '#hobby2'//id为hobby2</li><li>            ]</li><li>        }</li><li>    }</li><li>]);</li><li>checkboxPlug.init();//配置完关联表后，初始化一下。完成关联关系的绑定。</li></ol></pre>
    <div class="">
        <h3>静态案例2</h3>
        互斥情况
    </div>
      <div class="bs-docs-example">
          <table class="table table-bordered table-condensed testTable">
              <thead>
              <tr>
                  <th><span>A</span></th>
                  <th><span>B</span></th>
                  <th><span>C</span></th>
              </tr>
              </thead>
              <tbody>
                  <tr>
                      <td><span><label class="checkbox inline"><input type="checkbox" data-exclusion="#A!#B!#C" id="A" class="icheck"/></label></span></td>
                      <td><span><label class="checkbox inline"><input type="checkbox" data-exclusion="#A!#B!#C" id="B" class="icheck"/></label></span></td>
                      <td><span><label class="checkbox inline"><input type="checkbox" data-exclusion="#A!#B!#C" id="C" class="icheck"/></label></span></td>
                  </tr>
              </tbody>
          </table>
      </div>
      <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;input type="checkbox" <span class="text-warning">data-exclusion</span>="<span class="text-warning">#A!#B!#C</span>" id="A" class="icheck"/&gt;</li><li>&lt;input type="checkbox" <span class="text-warning">data-exclusion</span>="<span class="text-warning">#A!#B!#C</span>" id="B" class="icheck"/&gt;</li><li>&lt;input type="checkbox" <span class="text-warning">data-exclusion</span>="<span class="text-warning">#A!#B!#C</span>" id="C" class="icheck"/&gt;</li><li>checkboxPlug.init();或者是checkboxPlug.initEx()//互斥只需要在html添加形如data-exclusion="#id1!#id2.."的属性,再调用init初始化即可,initEx只初始化互斥部分</li></ol></pre>
      <div class="">
          <h3>静态案例2</h3>
          或的情况
      </div>
      <div class="bs-docs-example">
          <table class="table table-bordered table-condensed testTable">
              <thead>
              <tr>
                  <th><span>Class</span></th>
                  <th><span>Subject1</span></th>
                  <th><span>Subject2</span></th>
              </tr>
              </thead>
              <tbody>
              <tr>
                  <td><span><label class="checkbox inline"><input type="checkbox" id="class" class="icheck"/></label></span></td>
                  <td><span><label class="checkbox inline"><input type="checkbox" id="subject1" class="icheck"/></label></span></td>
                  <td><span><label class="checkbox inline"><input type="checkbox" id="subject2" class="icheck"/></label></span></td>
              </tr>
              </tbody>
          </table>
      </div>
      <pre class="prettyprint linenums"><ol class="linenums"><li>checkboxPlug.setTable([</li><li>    {</li><li>        name: '#class',</li><li>        relation: {</li><li>            or: [ //表示或的关系，默认是关联第一个subject1</li><li>                '#subject1',</li><li>                '#subject2'</li><li>            ]</li><li>        }</li><li>    }</li><li>]);</li><li>checkboxPlug.init();</li></ol></pre>
    <h2>★ 调用方式</h2>
    通过id属性
    <div class=""  style="font-size:14px;">
      <h3>引入js</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li><span class="text1">&lt;script src=&quot;../customize/script/</span><span class="text-warning">RME.js</span><span class="text1">&quot;&gt;&lt;/script&gt;</span></li></ol></pre>

    </div>
    
    
  </div>
</div>
<script type="text/javascript">
    sw_define('options',function(){
        return {
            paths: {
                relevance: '../customize/script/RME'
            },
            shim: {
                relevance: {
                    deps: ['jquery','frame']
                }
            }
        };
    });
    sw_define(function(){
        checkboxPlug.setTable([
            {
                name: '#name',
                relation: {
                    and: [
                        '#hobby1',
                        '#hobby2'
                    ]
                }
            },
            {
                name: '#class',
                relation: {
                    or: [
                        '#subject1',
                        '#subject2'
                    ]
                }
            }
        ]);
        checkboxPlug.init();
    });
</script>
<%@include file="foot.jsp"%>
<%--<script src="../customize/script/checkbox-relevance.js"></script>--%>

