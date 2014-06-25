

  <%@include file="head.jsp"%>
  <%@include file="top.jsp"%>
  
  <%@ page language="java" pageEncoding="UTF-8"%>
  <script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
<div class="component-content clearfix">
  <%@include file="left.jsp"%>
<div class="component-substance k-ichcek">
  <h1>分享 </h1>
  <!--插件编译人、编译时间-->
  <label>作者：王玉兴　发布日期：2014-03-27　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
  <div class="component-block">
    <h2>★ 案例</h2>
    对多数分享地址进行了封装
</div>
  <h3>社会化分享</h3>
<div class="bs-docs-example"> 
    <!--添加插件案例--> 
    <div class="form-horizontal">
      <table class="table table-hover">
        <tr>
        	<td><a href="javascript:void(0)"  id="qq">QQ(qq)</a></td>
            <td><a href="javascript:void(0)"  id="sina">新浪(sina)</a></td>
            <td><a href="javascript:void(0)"  id="renren">人人(renren)</a></td>
            <td><a href="javascript:void(0)"  id="douban">豆瓣(douban)</a></td>
        </tr>
        <tr>
        	<td><a href="javascript:void(0)" id="wangyi">网易(wangyi)</a></td>
            <td><a href="javascript:void(0)" id="twitter">推特(twitter)</a></td>
            <td><a href="javascript:void(0)" id="facebook">脸书(facebook)</a></td>
          <td></td>
        </tr>
      </table>
      
  </div>
  </div>
  <!--添加插件代码-->
  <pre class="prettyprint linenums"><ol class="linenums"><li>var a = new sw();//初始化插件库</li><li>$('xx').on(function(){</li><li>   a.share.<span class="text-warning">qq</span>();//调用qq的API实现qq分享。</li><li>});</li><li>/*</li><li> 说明：</li><li>此分享内容为当前页面的title及url</li><li>在此以QQ分享为例，其他分享只要调用sunivoweb.share.xx()方法即可</li><li>*/</li></ol></pre>
    <div class="component-block">
        <h2>★ 选项</h2>
    </div>
    <p>配置模式1：默认采用bootstrap-modal的三层布局，有以下配置参数挑选  （不能与模式2的参数同时配置）</p>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>分享</th>
                <th>调用方式</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>qq</td>
                <td>xx.share.qq()</td>
            </tr>
            <tr>
                <td>sina</td>
                <td>xx.share.sina()</td>
            </tr>
            <tr>
                <td>renren</td>
                <td>xx.share.renren()</td>
            </tr>
            <tr>
                <td>douban</td>
                <td>xx.share.douban()</td>
            </tr>
            <tr>
                <td>wangyi</td>
                <td>xx.share.wangyi()</td>
            </tr>
            <tr>
                <td>twitter</td>
                <td>xx.share.twitter()</td>
            </tr>
            <tr>
                <td>facebook</td>
                <td>xx.share.facebook()</td>
            </tr>
        </tbody>
    </table>
    <p><span class="text-error">注意：</span>  xx表示插件库的实例。</p>
  <h3>在线咨询</h3>
<div class="bs-docs-example"> 
    <!--添加插件案例--> 
    <div class="form-horizontal">
   	  <a href="tencent://message/?uin=417913012&Site=test&Menu=yes">在线咨询</a> 
    </div>
  </div>
  <!--添加插件代码-->
  <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;a <span class="text-success">href=</span><span class="text-warning">&quot;tencent://message/?uin=417913012&amp;Site=test&amp;Menu=yes&quot;</span>&gt;在线咨询&lt;/a&gt;</li><li>/*</li><li> 说明：</li><li> 此方法只是简单实现在线客服</li><li> 更多方法请访问 <a href="http://b.qq.com/wp/" target="_blank">http://b.qq.com/wp/</a></li><li>*/</li></pre>
  
    <h3>新浪微博关注</h3>
<div class="bs-docs-example"> 
    <!--添加插件案例--> 
    <div class="form-horizontal">
   	  <wb:follow-button uid="2055139817" type="red_1" width="67" height="24" ></wb:follow-button>
    </div>
  </div>
  <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;html xmlns:wb=&quot;http://open.weibo.com/wb&quot;&gt;</li><li>//在HTML标签中增加XML命名空间</li><li>&lt;script src=&quot;http://tjs.sjs.sinajs.cn/open/api/js/wb.js&quot; type=&quot;text/javascript&quot; charset=&quot;utf-8&quot;&gt;&lt;/script&gt;</li><li>//在HEAD头中引入WB.JS</li><li>&lt;wb:follow-button uid=&quot;2991975565&quot; type=&quot;red_1&quot; width=&quot;67&quot; height=&quot;24&quot; &gt;&lt;/wb:follow-button&gt;</li><li>// 在需要部署微博关注按钮的位置粘贴WBML代码，<a href="http://weibojs.com/widget/follow-button.php#wb" target="_blank">查看更多参数</a></li></pre>
  
</div>
</div>
  <script type="text/javascript">
      sw_define(function(){
          var a = new sw();
          $('.table').on('click','a',function(e){
              var property = e.target.id;
              a.share[property]();
          });
      });
  </script>
<%@include file="foot.jsp"%>