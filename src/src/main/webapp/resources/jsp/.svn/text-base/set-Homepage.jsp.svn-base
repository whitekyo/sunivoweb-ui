

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

    <h1>表格列的增删</h1>
    <!--插件编译人、编译时间-->
    <label>开发者：王淼　发布日期：2014-04-04　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
      <h2>★ 案例</h2>
    </div>
    <div class="">
      <h3>静态案例</h3>
    </div>
    <div class="bs-docs-example"> 
    
<a onClick="SetHome(window.location)" href="javascript:void(0)">设为首页 </a>|  <a onClick="AddFavorite(window.location,document.title)" href="javascript:void(0)">加入收藏</a>

    </div>
    <!--添加插件代码-->
    <pre class="prettyprint linenums">
    <ol class="linenums">
<li>&lt;a <span class="text-success">onClick=</span><span class="text-warning">&quot;SetHome(window.location)&quot;</span> href=&quot;javascript:void(0)&quot;&gt;设为首页 &lt;/a&gt;</li><li>&lt;a <span class="text-success">onClick=</span><span class="text-warning">&quot;AddFavorite(window.location,document.title)&quot;</span> href=&quot;javascript:void(0)&quot;&gt;加入收藏&lt;/a&gt;<br></li></ol></pre>
    <h2>★ 调用方式</h2>
    通过<span class="text-success">onClick</span>事件
    <div class=""  style="font-size:14px;">
      <h3>设置增加删除按钮</h3>
      <pre class="prettyprint linenums">
<ol class="linenums"><li><span class="text-success">onClick=</span><span class="text-warning">&quot;SetHome(window.location)&quot;</span>  设为首页</li><li><span class="text-success">onClick=</span><span class="text-warning">&quot;AddFavorite(window.location,document.title)&quot;</span> 加入收藏</li></ol></pre>
    
    </div>
    
    
  </div>
</div>
  <script type="text/javascript">
      sw_define(function(){
          function AddFavorite(sURL, sTitle) {

              sURL = encodeURI(sURL);
              try{

                  window.external.addFavorite(sURL, sTitle);

              }catch(e) {

                  try{

                      window.sidebar.addPanel(sTitle, sURL, "");

                  }catch (e) {

                      alert("加入收藏失败，请使用Ctrl+D进行添加,或手动在浏览器里进行设置.");

                  }

              }

          }

          //设为首页

          function SetHome(url){

              if (document.all) {

                  document.body.style.behavior='url(#default#homepage)';

                  document.body.setHomePage(url);

              }else{

                  alert("您好,您的浏览器不支持自动设置页面为首页功能,请您手动在浏览器里设置该页面为首页!");

              }

          }
          window.AddFavorite = AddFavorite;
          window.SetHome = SetHome;
      });
  </script>
 <%@include file="foot.jsp"%>