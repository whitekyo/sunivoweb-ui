<%--
  Created by IntelliJ IDEA.
  User: yangcheng
  Date: 14-6-25
  Time: 下午4:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="head.jsp"%>
<html>
<head>
    <title>上传</title>
    <style type="text/css">
        .x-a-upload { display: inline-block;color: white; text-align: center;}
        .x-a-upload:link,.x-a-upload:visited,.x-a-upload:hover,.x-a-upload:active { color: white; text-decoration: none;}
        .x-div-upload { position: relative; display: inline-block;*display: inline; *zoom:1; }
        .mm { margin-top: 100px; margin-left: 100px;}
    </style>
</head>
<body>
<input type="file" class="x-upload mm"/>
<script type="text/javascript">
    sw_define(function(){
        $('.x-upload').each(function(){
            createFactory($(this));
        });
        function createFactory(context){
            var $a = $('<a href="javascript:void(0);" class="x-a-upload">上传</a>');
            context.wrap('<div class="x-div-upload"></div>');
            var target = context[0];

        }
        function getStyle(obj){
            if(window.getComputedStyle){
                window.getComputedStyle(obj.null);
                //return getComputedStyle(obj.null);
            }else{
                return obj.currentStyle;
            }
        }
    });
</script>
<%@include file="foot.jsp"%>
</body>
</html>