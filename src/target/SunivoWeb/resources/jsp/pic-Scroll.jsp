

  <%@ page language="java" pageEncoding="UTF-8"%>
  <%@include file="head.jsp"%>
  <style>

span.abtn{display: inline-block;height:130px;width:17px;overflow:hidden; background-color:#ccc; cursor:pointer; margin-top:10px;}
span.aleft{float:left;}
span.agrayleft{cursor:default; background-color:#e1e1e1;}
span.aright{float:right;}
span.agrayright{cursor:default; background-color:#e1e1e1;}

.scrolllist{width:702px;height:204px;margin:0 auto;}

.scrolllist .imglist_w{width:668px;height:204px;overflow:hidden;float:left;position:relative;/*必要元素*/}
.scrolllist .imglist_w ul{width:20000px;position:absolute;left:0px;top:0px; margin:0; padding:0;}
.scrolllist .imglist_w li{width:147px;float:left;padding:0 10px;}
.scrolllist .imglist_w li img{ width:147px; height:154px;}

#s2{width:201px;}
#s2 .imglist_w{width:167px; height:164px;}
#s2 .imglist_w ul{height:20000px;width:auto;position:absolute;left:0px;top:0px; margin:0; padding:0;}
#s2 .imglist_w li{float:none; padding:0 10px 10px 10px;}
</style>

  <%@include file="top.jsp"%>
  <div class="component-content clearfix"> 
  <%@include file="left.jsp"%>
  
  <!--右边具体插件-->
  <div class="component-substance">

    <h1>上下左右滚动</h1>
    <!--插件编译人、编译时间-->
    <label>开发者：王淼　发布日期：2014-04-09　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
      <h2>★ 案例</h2>
    </div>
    <div class="">
      <h3>静态案例</h3>
    </div>
    <div class="bs-docs-example"> 
      <div class="scrolllist s1" id="s1">
		<span class="abtn aleft"></span>
		<div class="imglist_w">
			<ul class="imglist">
				<li><img src="../customize/images/sample.jpg"></li>
				<li><img src="../customize/images/sample.jpg"></li>
				<li><img src="../customize/images/sample.jpg"></li>
				<li><img src="../customize/images/sample.jpg"></li>
				<li><img src="../customize/images/sample.jpg"></li>
				<li><img src="../customize/images/sample.jpg"></li>
				<li><img src="../customize/images/sample.jpg"></li>
				<li><img src="../customize/images/sample.jpg"></li>
				<li><img src="../customize/images/sample.jpg"></li>
			</ul><!--imglist end-->
		</div>
		<span class="abtn aright"></span>
	</div>
    
    <div class="scrolllist s2" id="s2">
		<span class="abtn aleft" ></span>
		<div class="imglist_w">
			<ul class="imglist">
				<li><img src="../customize/images/sample.jpg"></li>
				<li><img src="../customize/images/sample.jpg"></li>
				<li><img src="../customize/images/sample.jpg"></li>
				<li><img src="../customize/images/sample.jpg"></li>
			</ul><!--imglist end-->
		</div>
		<span class="abtn aright"></span>
	</div>
    </div>
    <!--添加插件代码-->
    <pre class="prettyprint linenums">
    html部分<ol class="linenums">
<li>   &lt;div <span class="text-success">class=</span><span class="text-warning">&quot;scrolllist1&quot;</span>&gt;</li><li>		&lt;span <span class="text-success">class=</span><span class="text-warning">&quot;abtn aleft&quot;</span>&gt;&lt;/span&gt;</li><li>		&lt;div <span class="text-success">class=</span><span class="text-warning">&quot;imglist_w&quot;</span>&gt;</li><li>			&lt;ul <span class="text-success">class=</span><span class="text-warning">&quot;imglist&quot;</span>&gt;</li><li>				&lt;li&gt;&lt;img src=&quot;../customize/images/sample.jpg&quot;&gt;&lt;/li&gt;</li><li>				&lt;li&gt;&lt;img src=&quot;../customize/images/sample.jpg&quot;&gt;&lt;/li&gt;</li><li>				&lt;li&gt;&lt;img src=&quot;../customize/images/sample.jpg&quot;&gt;&lt;/li&gt;</li><li>				&lt;li&gt;&lt;img src=&quot;../customize/images/sample.jpg&quot;&gt;&lt;/li&gt;</li><li>				&lt;li&gt;&lt;img src=&quot;../customize/images/sample.jpg&quot;&gt;&lt;/li&gt;</li><li>				&lt;li&gt;&lt;img src=&quot;../customize/images/sample.jpg&quot;&gt;&lt;/li&gt;</li><li>			&lt;/ul&gt;&lt;!--imglist end--&gt;</li><li>		&lt;/div&gt;</li><li>		&lt;span <span class="text-success">class=</span><span class="text-warning">&quot;abtn aright&quot;</span>&gt;&lt;/span&gt;</li><li>	&lt;/div&gt;</li><li>&lt;!--图片左右滚动--&gt;</li><li>  &lt;div <span class="text-success">class=</span><span class="text-warning">&quot;scrolllist2&quot;</span>&gt;</li><li>		&lt;span <span class="text-success">class=</span><span class="text-warning">&quot;abtn aleft&quot;</span> &gt;&lt;/span&gt;</li><li>		&lt;div <span class="text-success">class=</span><span class="text-warning">&quot;imglist_w&quot;</span>&gt;</li><li>			&lt;ul <span class="text-success">class=</span><span class="text-warning">&quot;imglist&quot;</span>&gt;</li><li>				&lt;li&gt;&lt;img src=&quot;../customize/images/sample.jpg&quot;&gt;&lt;/li&gt;</li><li>				&lt;li&gt;&lt;img src=&quot;../customize/images/sample.jpg&quot;&gt;&lt;/li&gt;</li><li>				&lt;li&gt;&lt;img src=&quot;../customize/images/sample.jpg&quot;&gt;&lt;/li&gt;</li><li>				&lt;li&gt;&lt;img src=&quot;../customize/images/sample.jpg&quot;&gt;&lt;/li&gt;</li><li>			&lt;/ul&gt;&lt;!--imglist end--&gt;</li><li>		&lt;/div&gt;</li><li>		&lt;span <span class="text-success">class=</span><span class="text-warning">&quot;abtn aright agrayright&quot;</span>&gt;&lt;/span&gt;</li><li>	 &lt;/div&gt;</li><li>&lt;!--图片上下滚动--&gt;</li><li>js部分</li><li>$(function(){</li><li>	//默认状态下左右滚动</li><li>	$(&quot;<span class="text-warning">.</span><span class="text-warning">scrolllist1</span>&quot;).xslider({</li><li>		unitdisplayed:4,</li><li>		movelength:2,</li><li>		unitlen:167,</li><li>		autoscroll:3000</li><li>	});</li><li>	//设置上下滚动</li><li>	$(&quot;<span class="text-warning">.</span><span class="text-warning">scrolllist2</span>&quot;).xslider({</li><li>		unitdisplayed:1,</li><li>		movelength:1,</li><li>		dir:&quot;V&quot;,</li><li>		unitlen:164,</li><li>		autoscroll:2000</li><li>	});<br></li><li>})<br></li></ol></pre>
    <h2>★ 调用方式</h2>
    <div class=""  style="font-size:14px;">
      <h3>引入js</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li>&lt;script type=&quot;text/javascript&quot; src=&quot;../customize/script/<span class="text-warning">slider.js</span>&quot;&gt;&lt;/script&gt;</li></ol></pre>
      <h3>设置class类名找到滚动外框</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li>&lt;div <span class="text-success">class=</span><span class="text-warning">&quot;scrolllist1&quot;</span>&gt;  左右滚动</li><li>&lt;div <span class="text-success">class=</span><span class="text-warning">&quot;scrolllist2&quot;</span>&gt;  上下滚动</li></ol></pre>
      <h3>设置触发滚动按钮</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li>&lt;span <span class="text-success">class=</span><span class="text-warning">&quot;abtn aleft&quot;</span>&gt;&lt;/span&gt;  &lt;span <span class="text-success">class=</span><span class="text-warning">&quot;abtn aright&quot;</span>&gt;&lt;/span&gt;</li><li>不需要按钮，不加即可</li></ol></pre>
      <h3>设置相关参数</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li>$(&quot;.productshow&quot;).xslider({//.productshow是要移动对象的外框;</li><li>unitdisplayed:3,//可视的单位个数   必需项;<br></li><li>movelength:1,//要移动的单位个数    必需项;<br></li><li>maxlength:null,//可视宽度或高度    默认查找要移动对象外层的宽或高度;<br></li><li>scrollobj:null,//要移动的对象     默认查找productshow下的ul;<br></li><li>unitlen:null,//移动的单位宽或高度     默认查找li的尺寸;<br></li><li>nowlength:null,//移动最长宽或高（要移动对象的宽度或高度）   默认由li个数乘以unitlen所得的积;<br></li><li>dir:&quot;H&quot;,//水平移动还是垂直移动，默认H为水平移动，传入V或其他字符则表示垂直移动;<br></li><li>autoscroll:1000//自动移动间隔时间     默认null不自动移动;<br></li><li>});</li></ol></pre>
    
    </div>
    
    
  </div>
</div>
  <script type="text/javascript">
      sw_define('options',function(){
          return {
              paths: {
                  slider: '../customize/script/slider'
              },
              shim: {
                  slider: {
                      deps: ['jquery']
                  }
              }
          };
      });
      sw_define(function(){
          $(".s1").xslider({
              unitdisplayed:4,
              movelength:2,
              unitlen:167,
              autoscroll:3000
          });

          //设置上下滚动
          $(".s2").xslider({
              unitdisplayed:1,
              movelength:1,
              dir:"V",
              unitlen:164,
              autoscroll:2000
          });
      });

  </script>
 <%@include file="foot.jsp"%>
