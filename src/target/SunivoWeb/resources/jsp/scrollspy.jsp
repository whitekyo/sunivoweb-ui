  <%@ page language="java" pageEncoding="UTF-8"%>
  <%@include file="head.jsp"%>  
  <%@include file="top.jsp"%>
  <div class="component-content clearfix"> 
  <%@include file="left.jsp"%>
  <link rel="stylesheet" href="../customize/css/q-style.css">
  
 <div class="component-substance">
    <h1>滚动监听 scrollspy.js </h1>
    <!--插件编译人、编译时间-->
    <label>开发者：瞿亚鹏　发布日期：2014-03-31　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
    <div class="component-block">
      <h2>★ 案例</h2>
      滚动监听插件可以根据滚动条的位置自动更新所对应的导航标记。你可以试试滚动这个页面，看看左侧导航的变化。</div>
    <div class="">
      <h3>静态案例</h3>
    </div>
    <div class="bs-docs-example"> 
      <!--添加插件案例-->
      <nav id="navbar-example2" class="navbar navbar-default navbar-static" role="navigation">
        
          <div class="bs-example">
            <nav id="navbar-example2" class="navbar navbar-default navbar-static" role="navigation">
              <div class="q-collapse navbar-collapse bs-js-navbar-scrollspy">
                <ul class="nav navbar-nav">
                  <li><a href="#fat">@fat</a></li>
                  <li><a href="#mdo">@mdo</a></li>
                  <li class="dropdown"> <a href="#" id="navbarDrop1" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="navbarDrop1">
                      <li><a href="#one" tabindex="-1">one</a></li>
                      <li><a href="#two" tabindex="-1">two</a></li>
                      <li class="divider"></li>
                      <li><a href="#three" tabindex="-1">three</a></li>
                    </ul>
                  </li>
                </ul>
                <div class="clearfix"></div>
              </div>
              <div class="clearfix"></div>
            </nav>
            <div data-spy="scroll" data-target="#navbar-example2" data-offset="0" class="scrollspy-example">
              <h4 id="fat">@fat</h4>
              <p>Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they sold out qui. Tumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan. Velit seitan mcsweeney's photo booth 3 wolf moon irure. Cosby sweater lomo jean shorts, williamsburg hoodie minim qui you probably haven't heard of them et cardigan trust fund culpa biodiesel wes anderson aesthetic. Nihil tattooed accusamus, cred irony biodiesel keffiyeh artisan ullamco consequat.</p>
              <h4 id="mdo">@mdo</h4>
              <p>Veniam marfa mustache skateboard, adipisicing fugiat velit pitchfork beard. Freegan beard aliqua cupidatat mcsweeney's vero. Cupidatat four loko nisi, ea helvetica nulla carles. Tattooed cosby sweater food truck, mcsweeney's quis non freegan vinyl. Lo-fi wes anderson +1 sartorial. Carles non aesthetic exercitation quis gentrify. Brooklyn adipisicing craft beer vice keytar deserunt.</p>
              <h4 id="one">one</h4>
              <p>Occaecat commodo aliqua delectus. Fap craft beer deserunt skateboard ea. Lomo bicycle rights adipisicing banh mi, velit ea sunt next level locavore single-origin coffee in magna veniam. High life id vinyl, echo park consequat quis aliquip banh mi pitchfork. Vero VHS est adipisicing. Consectetur nisi DIY minim messenger bag. Cred ex in, sustainable delectus consectetur fanny pack iphone.</p>
              <h4 id="two">two</h4>
              <p>In incididunt echo park, officia deserunt mcsweeney's proident master cleanse thundercats sapiente veniam. Excepteur VHS elit, proident shoreditch +1 biodiesel laborum craft beer. Single-origin coffee wayfarers irure four loko, cupidatat terry richardson master cleanse. Assumenda you probably haven't heard of them art party fanny pack, tattooed nulla cardigan tempor ad. Proident wolf nesciunt sartorial keffiyeh eu banh mi sustainable. Elit wolf voluptate, lo-fi ea portland before they sold out four loko. Locavore enim nostrud mlkshk brooklyn nesciunt.</p>
              <h4 id="three">three</h4>
              <p>Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they sold out qui. Tumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan. Velit seitan mcsweeney's photo booth 3 wolf moon irure. Cosby sweater lomo jean shorts, williamsburg hoodie minim qui you probably haven't heard of them et cardigan trust fund culpa biodiesel wes anderson aesthetic. Nihil tattooed accusamus, cred irony biodiesel keffiyeh artisan ullamco consequat.</p>
              <p>Keytar twee blog, culpa messenger bag marfa whatever delectus food truck. Sapiente synth id assumenda. Locavore sed helvetica cliche irony, thundercats you probably haven't heard of them consequat hoodie gluten-free lo-fi fap aliquip. Labore elit placeat before they sold out, terry richardson proident brunch nesciunt quis cosby sweater pariatur keffiyeh ut helvetica artisan. Cardigan craft beer seitan readymade velit. VHS chambray laboris tempor veniam. Anim mollit minim commodo ullamco thundercats. </p>
            </div>
          </div>
          </nav>
      
    </div>
          <!-- /example -->
          
          <h2 id="scrollspy-usage">用法</h2>
          <h3>通过data属性</h3>
          <p>通过为需要监听的页面元素（一般是<code>&lt;body&gt;</code>）添加<code>data-spy="scroll"</code>就可很轻松的为顶部导航条添加滚动监听功能。然后为其添加<code>data-target</code>属性，此属性的值为任何Bootstrap中<code>.nav</code>组件的父元素的ID或class。</p>
          <div class="highlight">
           <!--  <pre><code class="language-html">&lt;body data-spy=&quot;scroll&quot; data-target=&quot;.navbar-example&quot;&gt;
  ...
  &lt;div class=&quot;navbar-example&quot;&gt;
    &lt;ul class=&quot;nav nav-tabs&quot;&gt;
      ...
    &lt;/ul&gt;
  &lt;/div&gt;
  ...
&lt;/body&gt;</code></pre>-->
            <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;body <span class="text-success">data-spy=</span><span class="text-warning">"scroll"</span> <span class="text-success">data-target=</span><span class="text-warning">".navbar-example"</span>&gt;</li><li>    ...</li><li>　　&lt;div <span class="text-success">class=</span><span class="text-warning">"navbar-example"</span>&gt;</li><li>       &lt;ul <span class="text-success">class=</span><span class="text-warning">"nav nav-tabs"</span>&gt;</li><li>...</li><li>       &lt;/ul&gt;</li><li>    &lt;/div&gt;</li><li>&lt;/body&gt;</ol>
</pre>
          </div>
        
        <div class="collapse navbar-collapse bs-js-navbar-scrollspy">
          <ul class="nav navbar-nav">
            <li class=""><a href="#home">home</a></li>
            <li class=""><a href="#profile">profile</a></li>
            <li class="dropdown active"> <a id="navbarDrop1" class="dropdown-toggle" data-toggle="dropdown" href="#">dropdown<b class="caret"></b></a>
              <ul>
              </ul>
            </li>
          </ul>
        </div>
      
    <!--添加插件代码-->
    
    <h2>★ 调用方式</h2>
    <div class="">
      <h3>通过data属性</h3>
      通过为需要监听的页面元素（一般是<code>&lt;body&gt;</code>）添加<code>data-spy="scroll"</code>就可很轻松的为顶部导航条添加滚动监听功能。然后为其添加<code>data-target</code>属性，此属性的值为任何Bootstrap中<code>.nav</code>组件的父元素的ID或class。</div>
    
    
      <h3>通过JavaScript</h3>
      仅用一行JavaScript代码即可启动id为myModal的对话框：
      <div class="highlight">
<pre class="prettyprint linenums"><ol><li><code class="language-js">    $(<span class="string">'body'</span>).scrollspy({ target: <span class="string">'.navbar-example'</span> })</code></li></ol></pre>
      </div>
      <div class="bs-callout bs-callout-danger">
      <h2>导航链接地址必须有对应的目标</h2>
      <p>导航条内的链接地址必须有对应的页面元素具有同样的ID值。例如，<code>&lt;a href="#home"&gt;home&lt;/a&gt;</code>必须对应DOM中例如<code>&lt;div id="home"&gt;&lt;/div&gt;</code>。</p>
    </div>

    <h2>★ 方法</h2>
    <h3>.scrollspy('refresh')</h3>
    <p>使用滚动监听插件时，每当页面中从DOM中增加或删除页面元素时，都需要调用此方法以，如下：</p>
<div class="highlight">
<pre class="prettyprint linenums"><ol><code class="language-js"><li>    $(<span class="text-warning">'[data-spy="scroll"]'</span>).each(<span><span>function</span> <span class="params">()</span> {</span></li><li><span>    var</span> $spy = $(<span>this</span>).scrollspy(<span class="text-warning">'refresh'</span>)</li><li>    })</li></code></ol></pre>

</div>


    <h2>★ 选项</h2>
    <p>可以将选项通过data属性或JavaScript传递。对于data属性，需要将选项名称放到<code>data-</code>之后，例如<code>data-offset=""</code>。</p>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
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
           <td>offset</td>
           <td>number</td>
           <td>10</td>
           <td>Pixels to offset from top when calculating position of scroll.</td>
         </tr>
        </tbody>
      </table>
    </div><!-- ./bs-table-responsive -->

    <h2>★ 事件</h2>
            <div class="table-responsive">
              <table class="table table-bordered table-striped">
                <thead>
                 <tr>
                   <th style="width: 150px;">事件类型</th>
                   <th>描述</th>
                 </tr>
                </thead>
                <tbody>
                 <tr>
                   <td>activate.bs.scrollspy</td>
                   <td>当滚动监听插件将某个元素置为active时，此事件被触发。</td>
                </tr>
                </tbody>
              </table>
            </div><!-- ./bs-table-responsive -->
            <div class="highlight">
            <pre  class="prettyprint linenums"><ol><code class="language-js"><li>    $(<span class="text-warning">'#myScrollspy'</span>).on(<span class="text-warning">'activate.bs.scrollspy'</span>, <span><span>function</span> <span>()</span> {</span></li><li><span>    // do something…</span></li><li>    })</li></code></ol></pre>
            </div>
      
</div>
</div>

<%@include file="foot.jsp"%>