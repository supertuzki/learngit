<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />

<script type="text/javascript" src="./resources/js/echarts.min.js"></script>
<script type="text/javascript" src="./resources/js/jquerypage.js"></script>
<link rel="stylesheet" type="text/css" href="./resources/css/jquerypage.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<title>设备运行数据</title>
</head>

<body>
<div id="demo"></div>
		<script type="text/javascript">
			var demoStr='${demoList}';
			var demoList = $.parseJSON(demoStr);
			alert("*****demoStr******"+demoStr);
			alert("*****demoList******"+demoList);
			var content = "";
			for (var i = 0;i<demoList.length;i++){
				var id=demoList[i].id;
				var eid=demoList[i].eid;
				var kn=demoList[i].kn;
				var max_mohou=demoList[i].max_mohou;
				var min_mohou=demoList[i].min_mohou;
				var ejection_stroke=demoList[i].ejection_stroke;
				var ejection_pressure=demoList[i].ejection_pressure;
				var picture=demoList[i].picture;

				content = content +"<div id='image'><img src='./resources/image/"+picture+".png'></div>"
				+"<table id='table'><tr><td>规格参数</td><td>数值</td></tr>"
				+"<tr><td>工厂</td><td>"+id+"</td></tr>"
				+"<tr><td>设备型号</td><td>"+eid+"</td></tr>"
				+"<tr><td>锁模力</td><td>"+kn+"</td></tr>"
				+"<tr><td>最大模厚</td><td>"+max_mohou+"</td></tr>"
				+"<tr><td>最小模厚</td><td>"+min_mohou+"</td></tr>"
				+"<tr><td>注射容量</td><td>"+ejection_stroke+"</td></tr>"
				+"<tr><td>注射压力</td><td>"+ejection_pressure+"</td></tr></table>";
				alert("888888888"+content);
				alert("888888888"+id);
			}
			$('#demo').html(content);
			</script>

	<div id="main" style="float: right;position:absolute;left: 500px;right: 100px;bottom: 0px;top: 0px;width: 350px;height: 350px; border: 1px;border: 1px solid #ccc; padding: 10px; "></div>
			<script type="text/javascript">
				
		        // 基于准备好的dom，初始化echarts实例
		        var myChart = echarts.init(document.getElementById('main'));
		
		        // 指定图表的配置项和数据
					var	option = {
				    tooltip : {
				        formatter: "{a} <br/>{b} : {c}%"
				    },
				    toolbox: {
				        feature: {
				            restore: {},
				            saveAsImage: {}
				        }
				    },
				    series: [
				        {
				            name: '业务指标',
				            type: 'gauge',
				            detail: {formatter:'{value}%'},
				            data: [{value: 50, name: '完成率'}]
				        }
				    ]
				};
				
				myChart.setOption(option);
				setInterval(function () {
					var num=GetRandomNum(40,80);
				    option.series[0].data[0].value = num;
				    myChart.setOption(option);
				},DELAYTIME);
		
		        // 使用刚指定的配置项和数据显示图表。
		        //myChart.setOption(option);
		    </script>
		    
		    <div id="main1" style="float: right;position:absolute;left: 900px;right: 100px;bottom: 0px;top: 0px;width: 350px;height: 350px; border: 1px;border: 1px solid #ccc; padding: 10px; "></div>
		    <script type="text/javascript">
		    	        // 基于准备好的dom，初始化echarts实例
		        var myChart = echarts.init(document.getElementById('main1'));
		        
		        //指定图表的配置项和数据
		        var option = {
				    title: {
				        //text: '未来一周气温变化',
				        //subtext: '纯属虚构'
				    },
				    tooltip: {
				        trigger: 'axis'
				    },
				    legend: {
				        data:['最高气温','最低气温']
				    },
				    toolbox: {
				        show: true,
				        feature: {
				            dataZoom: {
				                yAxisIndex: 'none'
				            },
				            dataView: {readOnly: false},
				            magicType: {type: ['line', 'bar']},
				            restore: {},
				            saveAsImage: {}
				        }
				    },
				    xAxis:  {
				        type: 'category',
				        boundaryGap: false,
				        data: ['周一','周二','周三','周四','周五','周六','周日']
				    },
				    yAxis: {
				        type: 'value',
				        axisLabel: {
				            formatter: '{value} °C'
				        }
				    },
				    series: [
				        {
				            name:'最高气温',
				            type:'line',
				            data:[11, 11, 15, 13, 12, 13, 10],
				            markPoint: {
				                data: [
				                    {type: 'max', name: '最大值'},
				                    {type: 'min', name: '最小值'}
				                ]
				            },
				            markLine: {
				                data: [
				                    {type: 'average', name: '平均值'}
				                ]
				            }
				        },
				        {
				            name:'最低气温',
				            type:'line',
				            data:[1, -2, 2, 5, 3, 2, 0],
				            markPoint: {
				                data: [
				                    {name: '周最低', value: -2, xAxis: 1, yAxis: -1.5}
				                ]
				            },
				            markLine: {
				                data: [
				                    {type: 'average', name: '平均值'},
				                    [{
				                        symbol: 'none',
				                        x: '90%',
				                        yAxis: 'max'
				                    }, {
				                        symbol: 'circle',
				                        label: {
				                            normal: {
				                                position: 'start',
				                                formatter: '最大值'
				                            }
				                        },
				                        type: 'max',
				                        name: '最高点'
				                    }]
				                ]
				            }
				        }
				    ]
				};
		
		
				        // 使用刚指定的配置项和数据显示图表。
		        myChart.setOption(option);
		    </script>
		    <div id="main2" style="float: right;position:absolute;left: 500px;right: 100px;bottom: 0px;top: 450px;width: 350px;height: 350px; border: 1px;border: 1px solid #ccc; padding: 10px; "></div>
				<script type="text/javascript">
		        // 基于准备好的dom，初始化echarts实例
		        var myChart = echarts.init(document.getElementById('main2'));
		
		        // 指定图表的配置项和数据
				//app.title = '坐标轴刻度与标签对齐';
		
				var option = {
				    color: ['#3398DB'],
				    tooltip : {
				        trigger: 'axis',
				        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
				            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
				        }
				    },
				    grid: {
				        left: '3%',
				        right: '4%',
				        bottom: '3%',
				        containLabel: true
				    },
				    xAxis : [
				        {
				            type : 'category',
				            data : ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
				            axisTick: {
				                alignWithLabel: true
				            }
				        }
				    ],
				    yAxis : [
				        {
				            type : 'value'
				        }
				    ],
				    series : [
				        {
				            name:'直接访问',
				            type:'bar',
				            barWidth: '60%',
				            data:[10, 52, 200, 334, 390, 330, 220]
				        }
				    ]
				};
		
		
		        // 使用刚指定的配置项和数据显示图表。
		        myChart.setOption(option);
		    </script>
		    
		    <div id="main3" style="float: right;position:absolute;left: 900px;right: 100px;bottom: 0px;top: 450px;width: 350px;height: 350px; border: 1px;border: 1px solid #ccc; padding: 10px; "></div>
					<script type="text/javascript">
		        // 基于准备好的dom，初始化echarts实例
		         var myChart = echarts.init(document.getElementById('main3'));
		         
		         //app.title = '环形图';
		
				var option = {
				    title: {
				        //text: '未来一周气温变化',
				        //subtext: '纯属虚构'
				    },
				    tooltip: {
				        trigger: 'axis'
				    },
				    legend: {
				        data:['最高气温','最低气温']
				    },
				    toolbox: {
				        show: true,
				        feature: {
				            dataZoom: {
				                yAxisIndex: 'none'
				            },
				            dataView: {readOnly: false},
				            magicType: {type: ['line', 'bar']},
				            restore: {},
				            saveAsImage: {}
				        }
				    },
				    xAxis:  {
				        type: 'category',
				        boundaryGap: false,
				        data: ['周一','周二','周三','周四','周五','周六','周日']
				    },
				    yAxis: {
				        type: 'value',
				        axisLabel: {
				            formatter: '{value} °C'
				        }
				    },
				    series: [
				        {
				            name:'最高气温',
				            type:'line',
				            data:[11, 11, 15, 13, 12, 13, 10],
				            markPoint: {
				                data: [
				                    {type: 'max', name: '最大值'},
				                    {type: 'min', name: '最小值'}
				                ]
				            },
				            markLine: {
				                data: [
				                    {type: 'average', name: '平均值'}
				                ]
				            }
				        },
				        {
				            name:'最低气温',
				            type:'line',
				            data:[1, -2, 2, 5, 3, 2, 0],
				            markPoint: {
				                data: [
				                    {name: '周最低', value: -2, xAxis: 1, yAxis: -1.5}
				                ]
				            },
				            markLine: {
				                data: [
				                    {type: 'average', name: '平均值'},
				                    [{
				                        symbol: 'none',
				                        x: '90%',
				                        yAxis: 'max'
				                    }, {
				                        symbol: 'circle',
				                        label: {
				                            normal: {
				                                position: 'start',
				                                formatter: '最大值'
				                            }
				                        },
				                        type: 'max',
				                        name: '最高点'
				                    }]
				                ]
				            }
				        }
				    ]
				};
		
					        // 使用刚指定的配置项和数据显示图表。
		        myChart.setOption(option);
		    </script>
</body>
</html>