<h2>前端自定义滚动条scrollbars.js</h2>
<h4>浏览器支持情况</h4>
<table>
    <tr>
        <td>浏览器</td>
        <td>是否兼容</td>
    </tr>
    <tr>
        <td>IE7-11</td>
        <td>是</td>
    </tr>
    <tr>
        <td>FF</td>
        <td>是</td>
    </tr>
    <tr>
        <td>google</td>
        <td>是</td>
    </tr>
    <tr>
        <td>safari</td>
        <td>是</td>
    </tr>
    <tr>
        <td>opera</td>
        <td>是</td>
    </tr>
</table>
<br/>
<h4>使用插件的准备工作</h4>
<p>1.需要jQuery。在使用插件前，请先引入。</p>
<p>2.插件目前没有提供结构的生成，需要自行书写结构，下面会做简单介绍</p>
<br/>
<h4>开始使用scrollbar.js</h4>
<p>导入脚本</p>
<pre>
&lt;script type="text/javascript" src="jquery.js"&gt;&lt;script&gt;
&lt;script type="text/javascript" src="scrollbar.js"&gt;&lt;script&gt;
</pre>
<p>书写基本结构</p>
<pre>
    &lt;div class="class1 x-scroll"&gt;
    &lt;div class="class2 x-scrollcontent"&gt;
        上海赢创食品发展有限公司创立于素有“中国的商业橱窗”之美誉的城市上海，是一家集生产、研发、应用、贸易于一体的高新技术企业。
 
    &lt;/div&gt;
    &lt;div class="x-scrollbar-groove"&gt;
        &lt;div class="x-scrollbar"&gt;&lt;/div&gt;
    &lt;/div&gt;
</div>
1.我们可以看到x-scroll是整个插件的工作部分
2.x-scrollcontent则是文字或者主体内容显示的部分
3.x-scrollbar-groove为滚动条凹槽
4.x-scrollbar则是滚动条
5.因为没有在插件内部写死结构，小伙伴可以根据实际情况修改结果和样式。
</pre>
<p>添加上部分样式</p>
<pre>
.class1 {
  width: 200px;
  height: 400px;
  overflow: hidden;
  position: relative;
}
.class2 {
  width: 180px;
  position: absolute;
  top: 0px;
  left: 0px;
}
.x-scrollbar {
  width: 5px;
  background-color: black;
  position: absolute;
  top: 0px;
  left: 0px;
  cursor: pointer;
  border-radius: 2px;
  z-index: 10;
}
.x-scrollbar-groove {
  width: 5px;
  height: 400px;
  z-index: 1;
  background-color: #c3bebe;
  position: absolute;
  top: 0px;
  left: 190px;
  border-radius: 2px;
}
</pre>
<p>初始化脚本，让滚动条动起来</p>
<p>插件支持传入滚动条滚动时触发的方法。支持用户自定义</p>
<pre>
    $('.x-scroll').scrollbars({
        callback: function(e){
            console.log(e);
        }
    });
</pre>
<p>就这样，一个简单酷炫的滚动条就诞生了！</p>
<p>如果有更好的建议或发现了bug，都可以联系我，请多关注我吧</p>
