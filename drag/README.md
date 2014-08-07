<h2>简单拖拽替换组件drag.js</h2>
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
<h4>开始使用drag.js</h4>
<p>导入脚本</p>
<pre>
&lt;script type="text/javascript" src="jquery.js"&gt;&lt;script&gt;
&lt;script type="text/javascript" src="drag.js"&gt;&lt;script&gt;
</pre>
<p>书写基本结构</p>
<pre>
    &lt;ul class="x-drag clearfix"&gt;
            &lt;li&gt;&lt;span class="x-drag-module"&gt;1&lt;/span&gt;&lt;/li&gt;
            &lt;li&gt;&lt;span class="x-drag-module"&gt;2&lt;/span&gt;&lt;/li&gt;
            &lt;li&gt;&lt;span class="x-drag-module"&gt;3&lt;/span&gt;&lt;/li&gt;
            &lt;li&gt;&lt;span class="x-drag-module"&gt;4&lt;/span&gt;&lt;/li&gt;
            &lt;li&gt;&lt;span class="x-drag-module"&gt;5&lt;/span&gt;&lt;/li&gt;
            &lt;li&gt;&lt;span class="x-drag-module"&gt;6&lt;/span&gt;&lt;/li&gt;
    &lt;/ul&gt;
</pre>
1.类名x-drag是整个插件入口标识，一定要加在插件结构的最外层上
2.内部每一个span则是我们要拖拽的物体，统一也添加了class为x-drag-module
3.结果方面，可以根据实际情况做调整，但整体className不能放生修改，否则插件将无法工作
4.因为没有在插件内部写死结构，小伙伴可以根据实际情况修改结果和样式。
</pre>
<p>添加上部分样式</p>
<pre>
.x-drag {
  margin: 0;
  padding: 0;
}
.x-drag li {
  float: left;
  list-style: none;
  margin: 5px 10px 0 0;
}
.x-drag span {
  width: 300px;
  height: 300px;
  display: inline-block;
  background-color: red;
  line-height: 300px;
  text-align: center;
  font-size: 20px;
  color: #ffffff;
}
</pre>
<p>初始化脚本，让span可以拖拽起来</p>
<pre>
    $('.x-drag').drag();
</pre>
<p>关于回调，目前提供鼠标松开时回调函数</p>
<pre>
    $('.x-drag').drag({
        mousupCallback: function(start,end){
            console.log(start);
            console.log(end);
        }
    });
    start表示拖拽起始的对象，end表示拖拽结束的对象。
</pre>
<p>就这样，一个简单酷炫的拖拽效果就诞生了！</p>
<p>如果有更好的建议或发现了bug，都可以联系我，请多关注我吧</p>
