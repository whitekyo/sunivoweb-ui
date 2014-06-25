<%--
  Created by IntelliJ IDEA.
  User: yangcheng
  Date: 14-3-26
  Time: 下午5:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="head.jsp"%>
<%@include file="top.jsp"%>
<div class="component-content clearfix">
    <%@include file="left.jsp"%>
    <!--右边具体插件-->
    <div class="component-substance">
        <h1>Cookie操作</h1>
        <!--插件编译人、编译时间-->
        <label>作者：杨成　发布日期：2014-4-21　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
        <div class="component-block">
            <h2>★ 案例</h2>
            使用jQuery-cookie.js简化cookie操作。
        </div>
        <div class="component-block">
            <h2>★ 调用方式</h2>
        </div>
        <pre class="prettyprint linenums"><ol class="linenums"><li>//第三方jQuery-cookie.js依赖jQuery。因为其内部结构中使用了JSON序列化，低版本使用时，考虑依赖json2.js等兼容json解析的脚本。</li><li>$.<span class="text-warning">cookie</span>('name','superman');//cookie设置为key-value对，这里name为key，superman为value值</li><li>$.<span class="text-warning">cookie</span>('name')//'supername' //读取属性为name的cookie值</li><li>$.<span class="text-warning">removeCookie</span>('name')//删除这段cookie</li><li>//当然设置cookie时，还有其他参数</li><li>$.cookie('name','hello',{</li><li>    <span class="text-warning">expires</span>: 1000,</li><li>    <span class="text-warning">path</span>: 'xxx'</li><li>    <span class="text-warning">domain</span>: 'xxx'</li><li>    <span class="text-warning">secure</span>: 'xxx'</li><li>});</li></ol></pre>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>参数</th>
                    <th>说明</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>expires</td>
                    <td>
                        指定了coolie的生存期，默认情况下coolie是暂时存在的，他们存储的值只在浏览器会话期间存在，当用户推出浏览器后这些值也会丢失，如果想让cookie存在一段时间，就要为expires属性设置为未来的一个过期日期。现在已经被max-age属性所取代，max-age用秒来设置cookie的生存期。
                    </td>
                </tr>
                <tr>
                    <td>path</td>
                    <td>它指定与cookie关联在一起的网页。在默认的情况下cookie会与创建它的网页，该网页处于同一目录下的网页以及与这个网页所在目录下的子目录下的网页关联。</td>
                </tr>
                <tr>
                    <td>domain</td>
                    <td>domain属性可以使多个web服务器共享cookie。domain属性的默认值是创建cookie的网页所在服务器的主机名。不能将一个cookie的域设置成服务器所在的域之外的域。</td>
                </tr>
                <tr>
                    <td>secure</td>
                    <td>它是一个布尔值，指定在网络上如何传输cookie，默认是不安全的，通过一个普通的http连接传输</td>
                </tr>
            </tbody>
        </table>
        <div class="component-block">
            <h2>★ 使用注意</h2>
        </div>
        <p>1.例如让位于order.example.com的服务器能够读取catalog.example.com设置的cookie值。如果catalog.example.com的页面创建的cookie把自己的path属性设置为“/”，把domain属性设置成“.example.com”，那么所有位于catalog.example.com的网页和所有位于orlders.example.com的网页，以及位于example.com域的其他服务器上的网页都可以访问这个coolie。</p>
    </div>


</div>
<%@include file="foot.jsp"%>