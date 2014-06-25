(function($,w){
    var uncheckTable,relationTable,toString = Object.prototype.toString;
    function isArray(v){
        return toString.call(v) === '[object Array]';
    }
    function isObject(v){
        return toString.call(v) === '[object Object]';
    }
    //预留扩展
    $.fn.tradx = function(option){
        var context = $(this);
        switch (option){
            case 'check': context.iCheck('check'); break;
            case 'uncheck': context.iCheck('uncheck'); break;
            case 'enable': context.iCheck('enable');break;
            case 'disable': context.iCheck('disable'); break;
            default : break;
        }
    };

    var Setting = {
        rule: {
            'EBox':['#EseaFullBox','#EseaAssemblyBox','#EareaBox'],//出口订舱
            'IBox':['#IseaFullBox','#IseaAssemblyBox','#IareaBox'],//进口订舱
            'EseaBox':['#EseaFullBox','#EseaAssemblyBox']//海运出口订舱
        },
        description:{
            'EBox': '出口订舱',
            'IBox':'进口订舱',
            'EseaBox': '海运出口订舱'
        }
    };



    /*
     * 工具类
     * */
    //从数组中删除指定成员
    function delMenberFromArray(arr,obj){
        for(var i=0;i<arr.length;i++){
            if(arr[i] == obj){
                arr.splice(i,1);
            }
        }
    }
    //根据类名获取对应jQuery对象
    function getJDom(arr){
        var _arr = [];
        for(var i=0;i<arr.length;i++){
            _arr.push($(arr[i]));
        }
        return _arr;
    }

    /*
     * 解析关系表
     * */
    function analysisTable(relationTable){
        var arr = [];
        for(var i=0;i<relationTable.length;i++){
            var relationMenber,obj = {};
            relationMenber = propObj(relationTable[i].relation);
            obj.end = relationMenber;
            obj.start = relationTable[i].name;
            for(var property in relationTable[i].relation){
                obj.relation = property;
            }
            arr.push(obj);
        }
        return arr;
    }



    function searchUncheck(name){
        for(var i=0;i<uncheckTable.length;i++){
            for(var j=0;j<uncheckTable[i].end.length;j++){
                if(uncheckTable[i].end[j] == name){
                    handleUnchek(uncheckTable[i].end[j],uncheckTable[i].end,uncheckTable[i].start,uncheckTable[i].relation);
                }
            }
        }
    }
    function handleUnchek(end,endArr,start,flag){
        switch (flag){
            case 'and':
                var tip;
                for(var i=0;i<endArr.length;i++){
                    if($(endArr[i]).prop('checked')){
                        tip = true;
                    }
                }
                if(!tip){
                    doReset([$(start)]);
                }
                break;
            case 'or':
                var tip;
                for(var i=0;i<endArr.length;i++){
                    if($(endArr[i]).prop('checked')){
                        tip = true;
                    }
                }
                if(!tip){
                    doReset([$(start)]);
                }
                break;
            case 'ex':
                break;
        }
    }
    /*
     * 递归
     * */
    function propObj(obj,flag){
        var arr = [],__arr;
        if(isArray(obj)){
            for(var i=0;i<obj.length;i++){
                if(isObject(obj[i])){
                    for(var property in obj[i]){
                        var _arr = propObj(obj[i][property],property);
                        __arr = arr.concat(_arr);
                    }
                }else if(typeof obj[i] === 'string'){
                    arr.push(obj[i]);
                    __arr = arr;
                }
            }
        }else if(isObject(obj)){
            for(var property in obj){
                var _arr = propObj(obj[property],property);
                __arr = arr.concat(_arr);
            }
        }
        return __arr;
    }

    function searchObj(obj,flag,id){
        if(isArray(obj)){
            for(var i=0;i<obj.length;i++){
                if(isObject(obj[i])){
                    for(var property in obj[i]){
                        searchObj(obj[i][property],property,id);
                    }
                }else if(typeof obj[i] === 'string'){
                    switch (flag){
                        case 'and':
                            setExOne(getExclusion(obj),obj[i]);
                            doChecked([$(obj[i])]);
                            break;
                        case 'or':
                            var tip,tip1;
                                for(var i=0;i<obj.length;i++){
                                    if(typeof obj[i] !== 'string'){
                                        tip = true;
                                    }
                                }
                            if(!tip){
                                for(var j=0;j<obj.length;j++){
                                    if($(obj[j]).prop('checked')){
                                        tip1 = true;
                                    }
                                }
                            }
                            if(!tip1){
                                doChecked([$(obj[0])]);
                            }
                            break;
                        case 'ex':
                            var tip,tempObj;
                            tempObj = chosenExclusion(obj);
                            if(tempObj){
                                for(var i=0;i<tempObj.length;i++){
                                    if($(tempObj[i]).attr('checked') && $(tempObj[i]).attr('id') == 'EareaBox'){
                                        doReset([$(tempObj[i]),$(id)]);
                                    }
                                }
                                doChecked([$(id)]);
                                return ;
                            }
                            for(var i=0;i<obj.length;i++){
                                if($(obj[i]).attr('checked')){
                                    tip = true;
                                }
                            }
                            if(!tip){
                                doChecked([$(obj[0])]);
                            }
                            break;
                    }
                }
            }
        }else if(isObject(obj)){
            for(var property in obj){
                searchObj(obj[property],property,id);
            }
        }
    }

    function testSameArr(arr1,arr2){
        if(arr1.length != arr2.length){
            return false;
        }
        var obj1 = {},obj2 = {};
        for(var i=0;i<arr1.length;i++){
            if(!obj1[arr1[i]]){
                obj1[arr1[i]] = 1;
            }else{
                obj1[arr1[i]] += 1;
            }
        }
        for(var i=0;i<arr2.length;i++){
            if(!obj2[arr2[i]]){
                obj2[arr2[i]] = 1;
            }else{
                obj2[arr2[i]] += 1;
            }
        }
        for(var property in obj1){
            if(obj1[property] != obj2[property]){
                return false;
            }
        }
        return true;
    }

    function chosenExclusion(arr){
        if(testSameArr(Setting.rule['EseaBox'],arr)){
            return Setting.rule['EBox'];
        }
    }
    //查看自身控件上是否用exclusion属性，返回exclusion属性数组。
    function getExclusion(arr){
        var _exclusion,_arr;
        for(var i=0;i<arr.length;i++){
            _exclusion = $(arr[i]).data('exclusion');
            if(_exclusion){
                return _exclusion.split('!');
            }
        }
        return [];
    }
    //如果互斥中存在已经有一种被选，现在想让另一个被选。需要将当前互斥组重置。
    function setExOne(arr,context){
        for(var i=0;i<arr.length;i++){
            if($(arr[i]).attr('checked')){
                if(arr[i] != context){
                    return doReset([$(arr[i])]);
                }
            }
        }
    }
    //搜索依赖表
    function searchTable(name){
        for(var i=0;i<relationTable.length;i++){
            if(relationTable[i].name == name){
                return relationTable[i].relation;
            }
        }
    }
    //禁掉checkbox
    function doForbidden(arr){
        if(arr&&arr.length){
            for(var i=0;i<arr.length;i++){
                arr[i].tradx('disable');
            }
        }

    }
    //启用checkbox
    function doEnable(arr){
        if(arr&&arr.length){
            for(var i=0;i<arr.length;i++){
                arr[i].tradx('enable');
            }
        }

    }
    //复位checkbox
    function doReset(arr){
        if(arr&&arr.length){
            for(var i=0;i<arr.length;i++){
                arr[i].tradx('uncheck');
            }
        }

    }
    //全部选中
    function doChecked(arr){
        if(arr&&arr.length){
            for(var i=0;i<arr.length;i++){
                arr[i].tradx('check');
            }
        }

    }
    //发现当前页面被选中的checkbox的id集合
    function findAllChecked(){
        var arr = [];
        $('[type="checkbox"]').each(function(){
            if(this.checked){
                arr.push('#'+this.id);
            }
        });
        return arr;
    }
    //返回对应中文内容
    function findDomName(name){
        return $(name).closest('label').text();
    }
    function findByNameFromTable(name){
        var error;
        for(var i=0;i<relationTable.length;i++){
            if(relationTable[i].name == name){
                error = propErrorObj(relationTable[i]['relation']);
                if(error){
                    return error;
                }
            }
        }
    }
    var tool = {
        'and': function(name){
            if(!$(name).prop('checked')){
                return findDomName(name);
            };
        },
        'or': function(name){
            if(!$(name).prop('checked')){
                return true;
            }
        },
        'ex': function(arr){
            var flag;
            for(var i=0;i<arr.length;i++){
                if($(arr[i]).prop('checked')){
                    flag = true;
                }
            }
            if(!flag){
                for(var property in Setting.rule){
                    if(testSameArr(arr,Setting.rule[property])){
                        return Setting.description[property];
                    }
                }
            }
        }
    };
    function propErrorObj(obj){
        var error,arr = [];
        for(var property in obj){
            for(var i=0;i<obj[property].length;i++){
                if(typeof obj[property][i] == 'string'){
                    if(property == 'and'){
                        var add_error = tool.and(obj[property][i]);
                        if(add_error){
                            error = add_error;
                        }
                    }else if(property == 'or'){
                        var or_error = tool.or(obj[property][i]);
                        if(!or_error){
                            return ;
                        }else{
                            arr.push(findDomName(obj[property][i]));
                        }
                    }else if(property == 'ex'){
                        var ex_error = tool.ex(obj[property]);
                        if(ex_error){
                            error = ex_error;
                        }
                    }
                }else{
                    var s_error = propErrorObj(obj[property][i]);
                    if(s_error){
                        error = s_error;
                    }
                }
            }
        }
        if(error){
            arr.push(error);
        }
        return arr;
    }
    //渲染页面
    function showError(error,subject){
    	//clearError();
        var warning = '<p class="alert alert-error" style="margin: 0px 0px 5px 0px;"><strong>警告：</strong>'+subject+'  需要勾选： '+ error + '</p>';
        $('#Modalservice').append(warning);
    }
    //清除页面错误
    //处理互斥
    w.checkboxPlug = {
        initEx: function(){
            $('[data-exclusion]').each(function(){
                var exclusion_rule = $(this).data('exclusion'),context = $(this),arr_rule = exclusion_rule.split('!');
                context.on('ifChecked',function(){
                    delMenberFromArray(arr_rule,'#'+this.id);
                    setExOne(exclusion_rule.split('!'),'#'+this.id);
                    doForbidden(getJDom(arr_rule));
                });
                context.on('ifUnchecked',function(){
                    doEnable(getJDom(arr_rule));
                });
            });
        },
        initBind: function(){
            $('[type="checkbox"]').on('ifChecked',function(){
                var id = '#' + this.id;
                searchObj(searchTable(id),'',id);
            });

            $('[type="checkbox"]').on('ifUnchecked',function(){
                var id = '#' + this.id;
                searchUncheck(id);
            });
        },
        setTable: function(table){
            uncheckTable = analysisTable(table);//主要为uncheck使用
            relationTable = table;
        },
        init: function(){
            this.initBind();
            this.initEx();
        },
        checkTable: function(){
            var flag = true;
        	var checkedArr = findAllChecked();
            for(var i=0;i<checkedArr.length;i++){
                var subject = findDomName(checkedArr[i]),error = findByNameFromTable(checkedArr[i]),rule = Setting.rule;
                if(error&& error[0]){
                	flag = false;
                	
                	if(typeof error[0] == 'string'){
                        showError(error[0],subject);
                    }else{
                        showError(error[0].join(' 或'),subject);
                    }
                }
            }
            
            return flag;
        },
        /*重置所有checkbox*/
        clean: function(){
        	var arr = [];
        	$('[type="checkbox"]').each(function(){
        		arr.push($(this));
        	});
        	doReset(arr);
        },
        clearError: function(){
        	var $alert = $('.alert',$('#Modalservice'));
        	if($alert.length){
        		$alert.remove();
        	}
        }

    };
})(jQuery,window);