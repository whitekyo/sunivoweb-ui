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
</pre>
