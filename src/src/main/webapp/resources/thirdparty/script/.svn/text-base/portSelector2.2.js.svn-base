/* 
 * portSelector2.2.js
 * auther zhouzheng
 * Date: 2014-03-19
 * 港口下拉选择组件（通讯录式）
 */

(function($) {
	$.fn.portSelector = function(options) {

		// 默认数据
		var defaults = {
			otherPortId : "",  //相对港口id
			portTypeSelectId : "",//下拉选择运输类型的id
			url : "",//查询数据的url
			data:{},//港口数据集合
			portSwitchId:""//港口交换的id
		};

		var opts = $.extend(defaults, options);
		var index = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J','K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U','V', 'W', 'X', 'Y', 'Z'];
		var dSeaPorts = {};
		var dAirPorts = {};
		var fSeaPorts = {};
		var fAirPorts = {};
		var airPorts = {};
		var seaPorts = {};
		var currentPorts = {};

		/*
		 * 初始化包装港口
		 */
		this.each(function() {
			        initloadData();
					var $this = $(this);
					var parent = $this.parent();
					var wrapDiv = $("<div id=\""+$this.attr("id")+"_wrap\"></div>");
					$this.attr("hisVal","").attr("portType","");
					wrapDiv.append($this);
					wrapDiv.append("<input type=\"hidden\" id=\""
							+ $this.attr("id") + "_hidden\" name=\""
							+ $this.attr("id") + "\" class =\"portHidden\"/>");
					var portDiv = $("<div class=\"tcCont\">loading data...</div>");
					wrapDiv.append(portDiv);
					parent.append(wrapDiv);
					
					$this.bind("focus",function(){ 
						loadPortsData($this, portDiv);
			        	portDiv.show();
					});
					
					 $(document).click(function(e){
						     var e=e?e:window.event; 
						     var tar = e.srcElement||e.target;  
					        if(tar.id != $this.attr("id")){
					        	if ("" != $.trim($this.val())) {
									$this.val($this.attr("hisVal"));
								}
					        	portDiv.css("display", "none");
					        }
					        else{
					        	portDiv.show();
					        }
					    });
					 
					
					      portDiv.mouseover(function(){
					    	  $(document).click(function(e){
					    		  var e=e?e:window.event; 
								     var tar = e.srcElement||e.target;  
							        if($(tar).attr("class") == "portClick"){
							        	portDiv.css("display", "none");
							        }
							        else{
							        	portDiv.show();
							        }
							    });
						 }); 
					      portDiv.mouseleave(function(){
					    	  $(document).click(function(e){
								     var e=e?e:window.event; 
								     var tar = e.srcElement||e.target;  
							        if(tar.id != $this.attr("id")){
							        	if ("" != $.trim($this.val())) {
											$this.val($this.attr("hisVal"));
										}
							        	portDiv.css("display", "none");
							        }
							        else{
							        	portDiv.show();
							        }
							    });
							 });
					 

	                //模糊查询事件
					$this.bind("keyup", function(event){
						if ("" == $.trim($this.val())) {
							$this.attr("hisVal", "").attr("portType", "");
							wrapDiv.find(".portHidden").val("");
							$("#"+$this.attr("id")+"_match_result").html("");
							$("#"+$this.attr("id")+"_match_result").css("display","none");
							$("#"+$this.attr("id")+"_portList").show();
							$("#"+$this.attr("id")+"_portLine").show();
						}
						else{
						$("#"+$this.attr("id")+"_match_result").html(createInputMatchShowHtml($this));
						//绑定 选择港口数据 事件 
						$("#"+$this.attr("id")+"_match_result").find(".portClick").bind("click",
								function() {
									var port = $(this);
									var portId = port.attr("portId");
									var portName = port.attr("portName");
									var portType = port.attr("portType");
									$this.val($.trim(portName)).attr("hisVal",$.trim(portName)).attr("portType",$.trim(portType));
									wrapDiv.find(".portHidden").val($.trim(portId));
									portDiv.css("display", "none");
								});
						  $("#"+$this.attr("id")+"_match_result").show();
						  $("#"+$this.attr("id")+"_portList").css("display","none");
						  $("#"+$this.attr("id")+"_portLine").css("display","none");
						}
					});
                    
					/*
					 * 交换港口点击事件
					 */
					if("" != opts.portSwitchId){
						$("#"+opts.portSwitchId).bind("click", function() {
							var  $other = $("#"+opts.otherPortId);
							var startPort = $this.val();
							var reachPort = $other.val();
							var startPortHis = $this.attr("hisVal");
							var reachPortHis =$other.attr("hisVal");
							if("" == startPort && "" == reachPort){
								return false;
							}
							var startPortId =  $("#"+$this.attr("id")+"_hidden").val();
							var reachPortId =  $("#"+$other.attr("id")+"_hidden").val();
							var startPortIdPortType =  $this.attr("portType");
							var reachPortIdPortType =  $other.attr("portType");
							$this.val(reachPort).attr("hisval",reachPortHis).attr("portType",reachPortIdPortType);
							$other.val(startPort).attr("hisval",startPortHis).attr("portType",startPortIdPortType);
							$("#"+$this.attr("id")+"_hidden").val(reachPortId);
							$("#"+$other.attr("id")+"_hidden").val(startPortId);
						});
					}
					
					/*
					 * 加载港口数据 
					 */
					function loadPortsData(obj, showObj) {
								var html = "";
								if (!$.isEmptyObject(dSeaPorts)) {
									html = createPortsHtml(obj);
								} 
								else 
								{
									html = createNotPortsHtml();
								}
								showObj.html(html);
								
								//绑定 选择港口数据 事件 
								portDiv.find(".portClick").bind(
										"click",
										function() {
											var port = $(this);
											var portId = port.attr("portId");
											var portName = port.attr("portName");
											var portType = port.attr("portType");
											$this.val($.trim(portName)).attr("hisVal",$.trim(portName)).attr("portType",$.trim(portType));
											wrapDiv.find(".portHidden").val($.trim(portId));
											portDiv.css("display", "none");
										});
					};
                    
					/*
					 * 获得当前港口类型
					 * foreignAirPort 国外空港口
					 * foreignSeaPort 国外海港口 
					 * domesticAirPort  国内空港
					 * domesticSeaPort  国海空港
					 * airPort  所有空港
					 * seaPort  所有海港
					 */
					function decidePortTypeForData(){
						    if("" == opts.otherPortId){
						    	   var airOrSeaPort = $("#"+opts.portTypeSelectId).val();
								   if(airOrSeaPort == "1"){
									   return seaPorts;
								   } else if(airOrSeaPort == "2"){
									   return  airPorts;
								   }
						    }
						    else{
						    var  ohterPortType = $("#"+opts.otherPortId).attr("portType");
							 if(ohterPortType.indexOf("foreignAirPort") > -1){
								 return dAirPorts;
							 }
							 else if(ohterPortType.indexOf("foreignSeaPort") > -1){
								 return dSeaPorts;
							 }
							 else if(ohterPortType.indexOf("domesticAirPort") > -1){
								 return fAirPorts;
							 }
							 else if(ohterPortType.indexOf("domesticSeaPort") > -1){
								 return fSeaPorts;
							 }
							 else{
								  var airOrSeaPort = $("#"+opts.portTypeSelectId).val();
								   if(airOrSeaPort == "1"){
									   return seaPorts;
								   } else if(airOrSeaPort == "2"){
									   return  airPorts;
								   }
							 }
						    }
							return {};
						 };
					
					
				     /*
					  * 包装港口数据html
					 */	 
					function createPortsHtml(inputObj){
						currentPorts = decidePortTypeForData();
						tempBodyHtml = "";
						tempNavHtml = "";
						showPortsHtml = "";
						for ( var i = 0; i < index.length; i++) {
							tempBodyHtml += "<tr><th id=\""+index[i]+"_"+inputObj.attr("id")+"\">"+index[i]+"</th></tr><tbody id=\""+index[i]+"_"+inputObj.attr("id")+"_vo\">";
							var obj = strToCurrentPortsObj(currentPorts, index[i]);
							if (obj){
								for ( var j = 0; j < obj.length; j++) {
									var name = obj[j].cnName.replace(/\'/g, "&acute;");
									var enName = obj[j].enName.replace(/\'/g, "&acute;");
									tempBodyHtml += "<tr><td class=\"portClick\" portId=\""+obj[j].id+"\" portName=\""+name+"\" portType=\""+obj[j].type+"\" >"+name+"|"+enName+" -- "+obj[j].countryCn+"</td></tr>";
								}
							}
							tempBodyHtml += "</tbody>";
							tempNavHtml += " <li><a class='a' href=\"#"+index[i]+"_"+inputObj.attr("id")+"\">"+index[i]+"</a></li>";
						}
						showPortsHtml += "<div class=\"gangkoufloat\" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按字母排序,支持中文/拼音/英文模糊检索";
						showPortsHtml += "<div class=\"gangkoufloattab\"><table class=\"gangkoufloatlist\" id=\""+inputObj.attr("id")+"_portList\">";
						showPortsHtml += tempBodyHtml;
						showPortsHtml += "</table><table class=\"gangkoufloatlist\" id=\""+inputObj.attr("id")+"_match_result\" hidden=\"hidden\"></table></div></div><div class=\"gangkouline\" id=\""+inputObj.attr("id")+"_portLine\"><ul>";
						showPortsHtml += tempNavHtml;
						showPortsHtml += "</ul></div>";
						return showPortsHtml;
					};

					   /* 
			           * 拼装模糊匹配页面
			           */
					   function createInputMatchShowHtml(inputObj) {
			            var showPortsHtml = "";
			            var value = $.trim(inputObj.val());
			            if (value != '') {
			                var reg = new RegExp("^.*" + value + "|\\|" + value+".*", 'gi');//这里已经通过gi区分了大小写
			                for (var i in currentPorts) {
			                    for(var j=0;j<currentPorts[i].length;j++){
			                    var port = currentPorts[i][j];
			                    if (reg.test(port.enName) || reg.test(port.shortName) || reg.test(port.cnName) || value == port.countryCn || value == port.countryEn || value == port.countryShort) {
			                    	var name = port.cnName.replace(/\'/g, "&acute;");
			                    	var enName = port.enName.replace(/\'/g, "&acute;");
			                    	showPortsHtml += "<tr><td class=\"portClick\" portId=\""+port.id+"\" portName=\""+name+"\" portType=\""+port.type+"\" >"+name+"|"+enName+" -- "+port.countryCn+"</td></tr>";
			                    } 
			                }
			                }
			                if ("" == showPortsHtml) {
			                	showPortsHtml = '<tr><td>没有找到数据</td></tr>';
			                }
			            }
			            return showPortsHtml;
			        }
					
					
					/*
					 * 包装正在加载数据港口html
					 */
					function createNotPortsHtml() {
						var showPortsHtml = "<div>正在加载数据...</div>";
						return showPortsHtml;
					};
					
					
					/*
					 * 初始化加载数据
					 * 默认选取本地静态数据 
					 * 如果本地静态数据为空 怎获取后台数据
					 */ 
					function initloadData(){
						if(!$.isEmptyObject(opts.data)){
							dSeaPorts = {};
							dAirPorts = {};
							fSeaPorts = {};
							fAirPorts = {};
							airPorts = {};
							seaPorts = {};
							parsePorts(opts.data.domesticSeaPorts, dSeaPorts);
							parsePorts(opts.data.domesticAirPorts, dAirPorts);
							parsePorts(opts.data.foreignSeaPorts, fSeaPorts);
							parsePorts(opts.data.foreignAirPorts, fAirPorts);
							parsePorts(opts.data.foreignAirPorts.concat(opts.data.domesticAirPorts), airPorts);
							parsePorts(opts.data.foreignSeaPorts.concat(opts.data.domesticSeaPorts), seaPorts);
						}
						else{
						$.ajax({
							type : "GET",
							url : opts.url,
							dateType : "json",
							success : function(data) {
								if($.isEmptyObject(data.domesticSeaPorts)){
									return false;
								}
								dSeaPorts = {};
								dAirPorts = {};
								fSeaPorts = {};
								fAirPorts = {};
								airPorts = {};
								seaPorts = {};
								parsePorts(data.domesticSeaPorts, dSeaPorts);
								parsePorts(data.domesticAirPorts, dAirPorts);
								parsePorts(data.foreignSeaPorts, fSeaPorts);
								parsePorts(data.foreignAirPorts, fAirPorts);
								parsePorts(data.foreignAirPorts.concat(data.domesticAirPorts), airPorts);
								parsePorts(data.foreignSeaPorts.concat(data.domesticSeaPorts), seaPorts);
							}
						 });
						}
					};
					
					// 分类数据
					function parsePorts(from, to) {
						for ( var i = 0, n = from.length; i < n; i++) {
							var port = from[i];
							var letter = port.enName.substr(0, 1);
							var result = regTest(letter);
							if (result) {
								createData(to, port, result);
							}
						}
					};
					

					// 校验首字母
					function regTest(letter) {
						var reg = {
							A : /^[a]$/i,B : /^[b]$/i,C : /^[c]$/i,D : /^[d]$/i,
							E : /^[e]$/i,F : /^[f]$/i,G : /^[g]$/i,H : /^[h]$/i,
							I : /^[i]$/i,J : /^[j]$/i,K : /^[k]$/i,L : /^[l]$/i,
							M : /^[m]$/i,N : /^[n]$/i,O : /^[o]$/i,S : /^[s]$/i,
							T : /^[t]$/i,U : /^[u]$/i,V : /^[v]$/i,W : /^[w]$/i,
							X : /^[x]$/i,Y : /^[y]$/i,Z : /^[z]$/i };
						for (key in reg) {
							if (reg[key].test(letter)) {
								return key;
							}
						}
					};
					
					// 转换数据
					function createData(to, port, result) {
						if ("A" == result) {
							if (!to.A) {
								to.A = [];
							}
							to.A.push(port);
						} else if ("B" == result) {
							if (!to.B) {
								to.B = [];
							}
							to.B.push(port);
						} else if ("C" == result) {
							if (!to.C) {
								to.C = [];
							}
							to.C.push(port);
						} else if ("D" == result) {
							if (!to.D) {
								to.D = [];
							}
							to.D.push(port);
						} else if ("E" == result) {
							if (!to.E) {
								to.E = [];
							}
							to.E.push(port);
						} else if ("F" == result) {
							if (!to.F) {
								to.F = [];
							}
							to.F.push(port);
						} else if ("G" == result) {
							if (!to.G) {
								to.G = [];
							}
							to.G.push(port);
						} else if ("H" == result) {
							if (!to.H) {
								to.H = [];
							}
							to.H.push(port);
						} else if ("I" == result) {
							if (!to.I) {
								to.I = [];
							}
							to.I.push(port);
						}
						 else if ("J" == result) {
							if (!to.J) {
								to.J = [];
							}
							to.J.push(port);
						} else if ("K" == result) {
							if (!to.K) {
								to.K = [];
							}
							to.K.push(port);
						} else if ("L" == result) {
							if (!to.L) {
								to.L = [];
							}
							to.L.push(port);
						} else if ("M" == result) {
							if (!to.M) {
								to.M = [];
							}
							to.M.push(port);
						} else if ("N" == result) {
							if (!to.N) {
								to.N = [];
							}
							to.N.push(port);
						} else if ("O" == result) {
							if (!to.O) {
								to.O = [];
							}
							to.O.push(port);
						} else if ("P" == result) {
							if (!to.P) {
								to.P = [];
							}
							to.P.push(port);
						} else if ("Q" == result) {
							if (!to.Q) {
								to.Q = [];
							}
							to.Q.push(port);
						} else if ("R" == result) {
							if (!to.R) {
								to.R = [];
							}
							to.R.push(port);
						} else if ("S" == result) {
							if (!to.S) {
								to.S = [];
							}
							to.S.push(port);
						} else if ("T" == result) {
							if (!to.T) {
								to.T = [];
							}
							to.T.push(port);
						} else if ("U" == result) {
							if (!to.U) {
								to.U = [];
							}
							to.U.push(port);
						} else if ("V" == result) {
							if (!to.V) {
								to.V = [];
							}
							to.V.push(port);
						} else if ("W" == result) {
							if (!to.W) {
								to.W = [];
							}
							to.W.push(port);
						} else if ("X" == result) {
							if (!to.X) {
								to.X = [];
							}
							to.X.push(port);
						} else if ("Y" == result) {
							if (!to.Y) {
								to.Y = [];
							}
							to.Y.push(port);
						} else if ("Z" == result) {
							if (!to.Z) {
								to.Z = [];
							}
							to.Z.push(port);
						} 
					};
					function strToCurrentPortsObj(currentPorts, str) {
						if ('A' == str) {
							if (!currentPorts.A) {
								return false;
							} else {
								return currentPorts.A;
							}
						} else if ('B' == str) {
							if (!currentPorts.B) {
								return false;
							} else {
								return currentPorts.B;
							}
						} else if ('C' == str) {
							if (!currentPorts.C) {
								return false;
							} else {
								return currentPorts.C;
							}
						} else if ('D' == str) {
							if (!currentPorts.D) {
								return false;
							} else {
								return currentPorts.D;
							}
						} else if ('E' == str) {
							if (!currentPorts.E) {
								return false;
							} else {
								return currentPorts.E;
							}
						} else if ('F' == str) {
							if (!currentPorts.F) {
								return false;
							} else {
								return currentPorts.F;
							}
						} else if ('G' == str) {
							if (!currentPorts.G) {
								return false;
							} else {
								return currentPorts.G;
							}
						} else if ('H' == str) {
							if (!currentPorts.H) {
								return false;
							} else {
								return currentPorts.H;
							}
						} else if ('I' == str) {
							if (!currentPorts.I) {
								return false;
							} else {
								return currentPorts.I;
							}
						} else if ('J' == str) {
							if (!currentPorts.J) {
								return false;
							} else {
								return currentPorts.J;
							}
						} else if ('K' == str) {
							if (!currentPorts.K) {
								return false;
							} else {
								return currentPorts.K;
							}
						} else if ('L' == str) {
							if (!currentPorts.L) {
								return false;
							} else {
								return currentPorts.L;
							}
						} else if ('M' == str) {
							if (!currentPorts.M) {
								return false;
							} else {
								return currentPorts.M;
							}
						} else if ('N' == str) {
							if (!currentPorts.N) {
								return false;
							} else {
								return currentPorts.N;
							}
						} else if ('O' == str) {
							if (!currentPorts.O) {
								return false;
							} else {
								return currentPorts.O;
							}
						} else if ('P' == str) {
							if (!currentPorts.P) {
								return false;
							} else {
								return currentPorts.P;
							}
						} else if ('Q' == str) {
							if (!currentPorts.Q) {
								return false;
							} else {
								return currentPorts.Q;
							}
						} else if ('R' == str) {
							if (!currentPorts.R) {
								return false;
							} else {
								return currentPorts.R;
							}
						} else if ('S' == str) {
							if (!currentPorts.S) {
								return false;
							} else {
								return currentPorts.S;
							}
						} else if ('T' == str) {
							if (!currentPorts.T) {
								return false;
							} else {
								return currentPorts.T;
							}
						} else if ('U' == str) {
							if (!currentPorts.U) {
								return false;
							} else {
								return currentPorts.U;
							}
						} else if ('V' == str) {
							if (!currentPorts.V) {
								return false;
							} else {
								return currentPorts.V;
							}
						} else if ('W' == str) {
							if (!currentPorts.W) {
								return false;
							} else {
								return currentPorts.W;
							}
						} else if ('X' == str) {
							if (!currentPorts.X) {
								return false;
							} else {
								return currentPorts.X;
							}
						} else if ('Y' == str) {
							if (!currentPorts.Y) {
								return false;
							} else {
								return currentPorts.Y;
							}
						} else if ('Z' == str) {
							if (!currentPorts.Z) {
								return false;
							} else {
								return currentPorts.Z;
							}
						}
					};
					
				});
	};
})(jQuery);
