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
    <div class="component-substance"><%--
            <h1></h1>
            <h5 class="pull-right text-success"></h5>--%>
        <h1>验证框架</h1>
        <!--插件编译人、编译时间-->
        <label>作者：杨成　发布日期：2014-3-26　版本号：1.0　评价：<span><i></i><i></i><i></i></span></label>
        <div class="component-block">
            <h2>★ 案例1</h2>
                验证主要依赖jQuery的第三方插件jQuery-validation-1.11.1。在提示错误信息部分，案例1是跟bootstrap的tooltip集成，实现冒泡提示错误信息
        </div>
<!--插件编译人、编译时间-->
        <div class="bs-docs-example" style="padding-right:0px; padding-left: 0px;">
            <div class="clearfix custom-modal">
                <form class="form-horizontal" id="form1">
                    <div class="control-group">
                        <label class="control-label" for="inputEmail">Email</label>
                        <div class="controls">
                            <input type="text" id="inputEmail" placeholder="Email" class="required" name="Email"/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="age">age1</label>
                        <div class="controls">
                            <input type="text" id="age" placeholder="age" class="yc" name="age"/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="startTime">start time</label>
                        <div class="controls">
                            <input type="text" id="startTime"  class="required datetime-picker" name="startTime"/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="endTime">end time</label>
                        <div class="controls">
                            <input type="text" id="endTime"  class="required datetime-picker " name="endTime"/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="city">city</label>
                        <div class="controls">
                            <select name="city" id="city" class="chosen required">
                                <option value=""></option>
                                <option value="Nanjing">南京</option>
                            </select>
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <label class="checkbox">
                                <input type="checkbox" name="change"> Remember me
                            </label>
                            <button type="submit" class="btn">Sign in</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="component-block">
            <h2>★ 调用方式</h2>
        </div>
        <pre class="prettyprint linenums"><ol class="linenums"><li>//引入jQuery，jQuery.validation.min.js和相关验证包或者是语言包(验证包比如说validation-custom-rule.js,语言包可以是messages_zh.js等)</li><li>//再引入underscore.js和SunivoWeb-ui.js</li><li>var a = new sw();//初始化插件库</li><li>a.<span class="text-warning">formValidation</span>({</li><li>    <span class="text-warning">moduleName</span>: <span class="text-success">'bubbleTip'</span>,//这里我们使用冒泡的方式提示错误信息</li><li>    <span class="text-warning">_context</span>: <span class="text-success">$('form1')</span>//传入需要验证的form对象</li><li>    //placement: 'top' //如果我们使用了冒泡的方式，可以配置冒泡显示的位置</li><li>    //trigger: 'hover' //配置冒泡显示的触发方式</li><li>});</li></ol></pre>
        <div class="component-block">
            <h2>★ 案例2</h2>
            验证主要依赖jQuery的第三方插件jQuery-validation-1.11.1。在提示错误信息部分，案例2是将信息集中处理展示
        </div>
        <!--插件编译人、编译时间-->
        <div class="bs-docs-example" style="padding-right:0px; padding-left: 0px;">
            <form class="form-horizontal" id="form2">
                <div class="control-group">
                    <label class="control-label" for="name">name</label>
                    <div class="controls">
                        <input type="text" id="name" placeholder="name" class="required" name="name"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="id">id</label>
                    <div class="controls">
                        <input type="text" id="id" placeholder="id" class="required" name="id"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="city1">city</label>
                    <div class="controls">
                        <select name="city1" id="city1" class="chosen required">
                            <option value=""></option>
                            <option value="Nanjing">南京</option>
                        </select>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="time1">time</label>
                    <div class="controls">
                        <input type="text" id="time1"  class="required datetime-picker" name="time"/>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <label class="checkbox">
                            <input type="checkbox" name="change"> Remember me
                        </label>
                        <button type="submit" class="btn">Sign in</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="component-block">
            <h2>★ 调用方式</h2>
        </div>
        <pre class="prettyprint linenums"><ol class="linenums"><li>//引入jQuery，jQuery.validation.min.js和相关验证包或者是语言包(验证包比如说validation-custom-rule.js,语言包可以是messages_zh.js等)</li><li>//再引入underscore.js和SunivoWeb-ui.js</li><li>var a = new sw();//初始化插件库</li><li>a.<span class="text-warning">formValidation</span>({</li><li>    <span class="text-warning">moduleName</span>: <span class="text-success">'fixTip'</span>,//采用fixtip，将错误信息集中处理展示</li><li>    <span class="text-warning">_context</span>: <span class="text-success">$('#form2')</span></li><li>    //location: 'top' //将错误信息放置在哪个部位</li><li>});</li></ol></pre>

        <div class="component-block">
            <h2>★ 案例3</h2>
            如果页面form需要使用ajax提交，在ajax提交之前，我们需要手动调用插件内部校验方法，根据校验结果判断是否提交form表单
        </div>
        <div class="bs-docs-example" style="padding-right:0px; padding-left: 0px;">
            <form action="" id="ajaxForm">
                <div style="margin-left: 10px;">
                    <input type="text" class="required" name="name"/>
                    <input type="submit" class="btn btn-primary submit" value="提交"/>
                </div>
            </form>
        </div>
        <div class="component-block">
            <h2>★ 调用方式</h2>
        </div>
        <pre class="prettyprint linenums"><ol class="linenums"><li>$('.submit').<span class="text-warning">on</span>('click',function(e){</li><li>    e.<span class="text-warning">preventDefault</span>();</li><li>    var $target = $(e.target),$form = $target.<span class="text-warning">closest</span>('form');//获取当前验证的form对象</li><li>    var validator = $.<span class="text-warning">data</span>( $form[0], "validator" );//获取内置验证对象</li><li>    if(validator.<span class="text-warning">form</span>()){//调用插件内置方法form进行整个表单的校验</li><li>        $.<span class="text-warning">ajax</span>(....) //如果校验成功，则序列化form，提交form</li><li>    }else{</li><li>        //否则验证失败，不提交</li><li>    }</li><li>});</li></ol></pre>

        <div class="component-block">
            <h2>★ 选项</h2>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>参数名</th>
                    <th>功能</th>
                    <th>可选参数</th>
                    <th>默认</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>moduleName</td>
                    <td>切换错误信息展现形式</td>
                    <td>bubbleTip，fixTip</td>
                    <td>两者选一</td>
                </tr>
                <tr>
                    <td>_context</td>
                    <td>需要验证的form对象(jQuery对象)</td>
                    <td>自定义</td>
                    <td>必填</td>
                </tr>
                <tr>
                    <td>placement</td>
                    <td>在选择了<span class="text-error">bubbleTip</span>模式的情况下，可以配置该属性，其功能为冒泡信息的展现位置</td>
                    <td>top,bottom,left,right</td>
                    <td>top</td>
                </tr>
                <tr>
                    <td>trigger</td>
                    <td>在选择了<span class="text-error">bubbleTip</span>模式的情况下，可以配置该属性，其功能为触发冒泡显示的方式</td>
                    <td>click,hover,focus</td>
                    <td>hover</td>
                </tr>
                <tr>
                    <td>location</td>
                    <td>在选择了<span class="text-error">fixTip</span>模式的情况下，可以配置该属性，其功能为信息的集中展现位置</td>
                    <td>top,bottom</td>
                    <td>top</td>
                </tr>
            </tbody>
        </table>
        <div class="component-block">
            <h2>★ 使用注意</h2>
        </div>
        <h4>一、关于验证框架的配置</h4>
        <p>1.目前的验证框架使用第三方插件jQuery-validation-1.11.1。使用框架验证时，需要导入主验证脚本jQuery.validate.min.js。当然再此之前您需要引入jQuery,具体校验规则，可以查阅官方文档</p>
        <p>2.由于实际项目的开发中，插件自带的验证规则无法满足我们的需求。我们可以导入自定义校验规则。文件名为additional-methods.js，如下图</p>
        <pre class="prettyprint linenums"><ol class="linenums"><li>jQuery.validator.addMethod("cdate", function (value, element) {</li><li>    return this.<span>optional</span>(element) || (/^\d{4}[\/\-]\d{1,2}[\/\-]\d{1,2}$/.test(value) && Date.parse(value)!=null);</li><li>}, "请输入有效的日期(yyyy-mm-dd)");</li><li>/*可以看到我们将校验规则写在jQuery.validator上。再由验证初始化的时候，将自定义方法导进插件库中，供以后使用*/</li><li>/*这里插件库暴露了一个API方法为addMethod，我们需要做的就是调用这个接口，传入我们自定义的参数即可*/</li><li>/*第一个参数为一个class标识。如果你定义了cdate，那需要在input等控件上加上名为cdate的类。*/</li><li>/*第二个参数一个自定义方法，它的功能就是完成验证逻辑。它有两个内置参数，value为控件值，element为控件对象，自定义方法返回true或false*/</li><li>/*第三个参数为如果你的自定义方法返回true，则执行需要展示的错误信息*/</li></ol></pre>
        <p>3.考虑项目面向区域不同，错误提示的语言也可能不同，这里我们可以将所有validation的校验规则在additional-methods.js覆盖重写，将错误信息按照我们需要语言来写。但这并易于维护，这里插件提供另外一个接口完成统一修改语言的效果。看下图</p>
        <pre class="prettyprint linenums"><ol class="linenums"><li>$.extend($.validator.messages, {</li><li>    <span class="text-warning">required</span>: <span class="text-success">"必选字段"</span>,</li><li>    <span class="text-warning">remote</span>: <span class="text-success">"请修正该字段"</span>,</li><li>    <span class="text-warning">email</span>: <span class="text-success">"请输入正确格式的电子邮件"</span></li><li>});</li><li>//这里required为一个标识，既验证的类名标识，而它对应的值则是错误信息</li><li>//最后我们将自定义好的语言包放在$.validator.message上，由插件初始化的时候，统一导入，供以后使用</li><li>//这类代码可以按照一种语言单独一个文件管理，也可以根据项目的具体需求来定</li></ol></pre>
        <h4>二、关于使用ajax验证</h4>
        <p>1.有的时候，我们需要采用ajax验证用户名是否存在。这里我们提供自定义配置参数来实现</p>
        <pre class="prettyprint linenums"><ol class="linenums"><li>var a = new sw();//初始化插件库</li><li>a.<span class="text-warning">formValidation</span>({//调用formValidation方法初始化</li><li>    <span class="text-warning">moduleName</span>: 'bubbleTip',//采用bubbleTip模式</li><li>    <span class="text-warning">_context</span>: $('#form1'),//需要验证的form对象</li><li>    <span class="text-warning">rules</span>: {//自定义验证规则</li><li>        <span class="text-warning">'username'</span>: {//需要验证的控件的name属性</li><li>        <span class="text-warning">'required'</span>: true,//这里注意，如果采用自定义方式写规则，所有的规则都要写入自定义rules中</li><li>        <span class="text-warning">'remote'</span>: {//插件内部提供的ajax的调用接口，验证时，需要配置它</li><li>            <span class="text-warning">'url'</span>: '/ajaxValidation'//url可带参数</li><li>            <span class="text-warning">data</span>:{model:function(){return $("#jy_model").val();}}//自定义传入参数</li><li>        }</li><li>    }</li><li>});</li><li>//后台代码(node版)</li><li>//如果验证失败，返回一个json串</li><li>res.<span class="text-warning">send</span>({<span class="text-warning">errorContent</span>: context});//注意返回一个json串，定义一个名为errorContent的属性，context为自定义错误信息</li><li>//如果验证正确，直接返回true</li><li>res.<span class="text-warning">send</span>('true');//直接返回一个true字符串</li></ol></pre>
        <h4>三、与md5加密的集成</h4>
        <p>1.有的密码框需在提交前进行加密，考虑到用户体验。我们插件融入了md5加密包。当一个控件需要加密时，在控件上加入<span class="text-warning">encryption</span>="true"</p>
        <pre class="prettyprint linenums"><ol class="linenums"><li>//初始化之前导入md5.js</li><li>&lt;input id="username" type="text" <span class="text-warning">encryption</span>="true" name="username"&gt;</li><li>//初始化跟之前一样，加入encryption属性，插件会将内容进行加密后传输到服务器</li></ol></pre>
        <h4>四、jQuery-validation的验证规则用法</h4>
        <p>1.1 插件本身提供了一些不错的验证规则，比如邮箱验证和电话验证等。这些验证都是验证自己，并且不需要别的参数传入</p>
        <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;input type="text" id="age" placeholder="age" class="<span class="text-warning">yc</span>" name="age"/&gt;</li><li>//yc是一个匹配IP地址的验证规则，我们可以把他当成类名写入input框，初始化之后，插件会获取到这条验证规则</li><li>&lt;input type="text" id="age" placeholder="age" <span class="text-warning">yc</span>="<span class="text-warning">true</span>" name="age"/&gt;</li><li>//我们也可以将yc作为input的属性，写入input中，在支持HTML5规范的浏览器中，原生支持required之类的属性验证。此插件做到向上兼容</li><li>&lt;input type="text" id="age" placeholder="age" <span class="text-warning">data-rule-yc</span>="true" name="age"/&gt;</li><li>//也可以做成data-rule-xx的格式，此插件基于jQuery，内部支持data()的方式获取属性值。</li></ol></pre>
        <p>1.2 对于需要传入参数的验证，比如输入的位数大于5位，小于10位等等。</p>
        <pre class="prettyprint linenums"><ol class="linenums"><li>&lt;input type="text" id="age" placeholder="age" <span class="text-warning">minlength</span>="<span class="text-warning">2</span>" name="age"/&gt;</li><li>//因为位数5之类的在没有引入别的插件js之前或者自定义类名，通过插件自带类名配置是无法实现校验的，我们可以采取属性配置</li><li>&lt;input type="text" id="age" placeholder="age" <span class="text-warning">data-rule-minlength</span>="<span class="text-warning">2</span>" name="age"/&gt;</li><li>//同理，data-rule-xx一样可以达到要求</li><li>//这种方式，支持多个属性同时配置，如：</li><li>&lt;input type="text" id="age" placeholder="age" <span class="text-warning">minlength</span>="<span class="text-warning">2</span>" <span class="text-warning">maxlength</span>="<span class="text-warning">5</span>" name="age"/&gt;</li></ol></pre>
        <p>1.3 所有验证都可以写脚本中，初始化时被插件录入</p>
        <pre class="prettyprint linenums"><ol class="linenums"><li>//jQuery提供了自己的一套封装标准，而SunivoWeb-ui基于它进行了简单的小封装</li><li>a.formValidation({</li><li>    moduleName: 'bubbleTip',</li><li>    _context: $('#form1'),</li><li>    rules: {</li><li>        Email: {</li><li>        required: true,</li><li>        email: true</li><li>        }</li><li>    }</li><li>});</li><li>//Email为对应input控件的name属性，这上面加了两条验证，必填和email格式，另外这三种方式可以混合搭配，随意使用</li></ol></pre>
        <h4>五、关于validation的一些API</h4>
        <p>1.处理只验证不提交的情况，可以使用<span class="text-warning">valid</span>()这个方法，返回true或false，并实现错误提示效果。</p>
        <p>2.处理手动提交表单，可以使用<span class="text-warning">form</span>()这个方法。，注意上述两种方式，因为使用的都是jQuery-validate的API，所以都需要取到对应的form对象，然后调用这些方法，即可</p>
        <div class="component-block">
            <h2>★ 一般问题</h2>
        </div>
        <p>1.开发时采用插件指定版本，不要随意切换版本。可以SunivoWeb-ui.js无法平滑处理。版本迭代统一制定。</p>
        <p>2.所有form里的input框，都需要写上name属性，不要出现重名，否则插件不验证重名的的控件</p>
    </div>
</div>
<script type="text/javascript">
    sw_define('options',function(){
        return {
            paths: {
                validate: '../thirdparty/lib/jquery-validation-1.11.1/jquery.validate',
                message:'../thirdparty/lib/jquery-validation-1.11.1/messages_zh',
                methods:'../thirdparty/lib/jquery-validation-1.11.1/additional-methods'
            },
            shim: {
                validate: {
                    deps: ['jquery']
                },
                message: {
                    deps: ['jquery','validate']
                },
                methods: {
                    deps: ['jquery','validate']
                }
            }
        };
    });
    sw_define(function(){
        var a = new sw();
        a.init();
        a.formValidation({
            moduleName: 'bubbleTip',
            _context: $('#form1'),
            rules: {
                Email: {
                    email: true
                }
            }
        });
        a.formValidation({
            moduleName: 'fixTip',
            _context: $('#form2')
        });
        a.formValidation({
            moduleName: 'fixTip',
            _context: $('#ajaxForm')
        });
        $('.submit').on('click',function(e){
            e.preventDefault();
            var $target = $(e.target);
            var validator = $.data( $target.closest('form')[0], "validator" );
            console.log(validator.form());
        });
    });
</script>
<%@include file="foot.jsp"%>
<%--
<script type="text/javascript" src="../customize/js/underscore-1.6.js"></script>
<script type="text/javascript" src="../customize/js/SunivoWeb-ui.js"></script>
<script type="text/javascript" src="../thirdparty/lib/jquery-validation-1.11.1/jquery.validate.js"></script>
<script type="text/javascript" src="../thirdparty/lib/jquery-validation-1.11.1/messages_zh.js"></script>
<script type="text/javascript" src="../thirdparty/lib/jquery-validation-1.11.1/additional-methods.js"></script>--%>
