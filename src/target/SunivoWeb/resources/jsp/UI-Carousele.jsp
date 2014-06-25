

  <%@ page language="java" pageEncoding="UTF-8"%>
 <link rel="stylesheet" href="../customize/css/case.css">
  <%@include file="head.jsp"%>
  <%@include file="top.jsp"%>
  <div class="component-content clearfix"> 
  <%@include file="left.jsp"%>
  
 <div class="component-substance">
    <h1>折叠 collapse.js</h1>
    <!--插件编译人、编译时间-->
    <label>开发者：金振源　发布日期：2014-03-26　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
      <h2>★ 案例</h2>
      下面就是一个轮播组件的案例。</div>
    <div class="">
      <h3>静态案例</h3>
    </div>
    <div class="bs-docs-example jzy" style=" color:#999;"> 
      <!--添加插件案例-->
        <div id="myCarousel" class="carousel slide">
                <ol class="carousel-indicators">
                  <li class="" data-slide-to="0" data-target="#myCarousel"></li>
                  <li data-slide-to="1" data-target="#myCarousel" class=""></li>
                  <li data-slide-to="2" data-target="#myCarousel" class="active"></li>
                </ol>
                <div class="carousel-inner">
                  <div class="item">
                    <img alt="" style=" width:725px; height:420px;" src="http://pic.sc.chinaz.com/files/pic/pic9/201403/apic657.jpg">
                    <div class="carousel-caption">
                      <h4>First Thumbnail label</h4>
                      <p>图片一号</p>
                    </div>
                  </div>
                  <div class="item">
                    <img alt="" style=" width:725px; height:420px;" src="http://pic.sc.chinaz.com/files/pic/pic9/201403/apic582.jpg">
                    <div class="carousel-caption">
                      <h4>Second Thumbnail label</h4>
                      <p>图片二号</p>
                    </div>
                  </div>
                  <div class="item active">
                    <img alt="" style=" width:725px; height:420px;" src="http://pic.sc.chinaz.com/files/pic/pic9/201403/apic588.jpg">
                    <div class="carousel-caption">
                      <h4>Third Thumbnail label</h4>
                      <p>图片三号</p>
                    </div>
                  </div>
                </div>
                <a data-slide="prev" href="#myCarousel" class="left carousel-control">‹</a>
                <a data-slide="next" href="#myCarousel" class="right carousel-control">›</a>
      </div>
      <!--添加插件案例 end--> 
    </div>
    <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;div id="myCarousel" class="carousel slide"&gt;</li><li>  &lt;ol class="carousel-indicators"&gt;</li><li>    &lt;li data-target="#myCarousel" data-slide-to="0" class="active"&gt;&lt;/li&gt;</li><li>    &lt;li data-target="#myCarousel" data-slide-to="1"&gt;&lt;/li&gt;</li><li>    &lt;li data-target="#myCarousel" data-slide-to="2"&gt;&lt;/li&gt;</li><li>  &lt;/ol&gt;</li><li>  &lt;!-- Carousel items --&gt;</li><li>  &lt;div class="carousel-inner"&gt;</li><li>    &lt;div class="active item"&gt;…&lt;/div&gt;</li><li>    &lt;div class="item"&gt;…&lt;/div&gt;</li><li>    &lt;div class="item"&gt;…&lt;/div&gt;</li><li>  &lt;/div&gt;</li><li>  &lt;!-- Carousel nav --&gt;</li><li>  &lt;a class="carousel-control left" href="#myCarousel" data-slide="prev"&gt;&amp;lsaquo;&lt;/a&gt;</li><li>  &lt;a class="carousel-control right" href="#myCarousel" data-slide="next"&gt;&amp;rsaquo;&lt;/a&gt;</li><li>&lt;/div&gt;</li></ol>
    </pre>
    <!--添加插件代码--><!--modal-->
    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Modal header</h3>
      </div>
      <div class="modal-body">
        <p>One fine body…</p>
      </div>
      <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
        <button class="btn btn-primary">Save changes</button>
      </div>
    </div>
    <!--modal end-->
    <div class="">
      <h3>调用方式</h3>
      通过data属性
    使用data属性可以很容易的控制轮播的位置。data-slide内可以包含prev 或 next，他们可以改变当前帧。另外，使用data-slide-to可以传递某个帧的下标，例如data-slide-to="2"，这样就可以直接跳转到这个指定的帧 -- 下标从0开始计算。</div>
    <pre class="prettyprint linenums"><ol class="linenums"><li>$('.carousel').carousel()</li></ol></pre>
    <div class="">
      <h3>通过JavaScript</h3>
    手工启动轮播：</div>
    <table class="table table-hover">
      <thead>
        <tr>
          <th style="width: 100px;">名称</th>
          <th style="width: 100px;">类型</th>
          <th style="width: 50px;">默认值</th>
          <th>描述</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>interval</td>
          <td>number</td>
          <td>5000</td>
          <td>在自动轮播过程中，展示每帧所停留的时间。如果是false，轮播不会自动启动。</td>
        </tr>
        <tr>
          <td>pause</td>
          <td>string</td>
          <td>"hover"</td>
          <td>当鼠标在轮播区域内时暂停循环，在区域外时则继续循环。</td>
        </tr>
      </tbody>
    </table>
    <div class="">
      <h3>方法</h3>
    </div>
    <div class="">
      <h3>.carousel(options)</h3>
       初始化一个带有可选参数object的轮播，并且自动开始循环播放。  
    </div>
    <pre>$('<span class=" text-warning">.carousel</span>').carousel({
interval: 2000
})</pre>
    <div class="">
      <h3>.carousel('cycle')</h3>
      从左向右循环播放。
    </div><br>
    <div class="">
      <h3>.carousel('pause')</h3>
      停止循环播放。
    </div><br>
    <div class="">
      <h3>.carousel(number)</h3>
      循环到指定帧（下标从0开始，类似数组）。
    </div><br>
    <div class="">
      <h3>.carousel('prev')</h3>
     返回到上一帧。
    </div><br>
     <div class="">
      <h3>.carousel('next')</h3>
      下一帧。
    </div><br>
    <div class="">
      <h3>事件</h3>
      collapse class exposes a few events for hooking into collapse functionality.</div>
    <table class="table table-hover">
      <thead>
        <tr>
          <th width="188" >事件</th>
          <th width="550" >描述</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>slide</td>
          <td>当slide实例方法被调用时，此事件会被立即触发。</td>
        </tr>
        <tr>
          <td>slid</td>
          <td>当切换完一帧后触发。</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
<script type="text/javascript">
    sw_define(function(){
        $('.jzy a').tooltip();
    });

</script>
 <%@include file="foot.jsp"%>
