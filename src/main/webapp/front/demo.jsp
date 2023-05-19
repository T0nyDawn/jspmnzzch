<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <!--    引入layui-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/front/layui-v2.6.8/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/front/layui-v2.6.8/layui/layui.js"></script>

</head>
<body>
<%--    ${dept_emp} <br>
    ${dept_mgr} <br>--%>

<div style="width: 100%;height: 300px" id="monitorZhu"></div>

<div style="text-align: center">
    <div style="width: 40%;height: 300px;display: inline-block" id="monitorBing1"></div>

    <div style="width: 40%;height: 300px;display: inline-block" id="monitorBing2"></div>
</div>



<div style="width: 100%;height: 300px" id="monitorZhe"></div>
<script>
    layui.config({
        version:1,
        base:'${pageContext.request.contextPath}/front/layui-v2.6.8/echarts/'
    }).use(['jquery','element','echarts'],function () {
        // alert(11)
        let $ = layui.jquery;
        let element = layui.element;
        let echarts = layui.echarts;

        let monitorZhu = echarts.init(document.getElementById("monitorZhu"));

        let monitorBing1 = echarts.init(document.getElementById("monitorBing1"));
        let monitorBing2 = echarts.init(document.getElementById("monitorBing2"));

        let monitorZhe = echarts.init(document.getElementById("monitorZhe"));

        //指定图表配置项和数据
        var optionchart = {
            title: {
                text: '商品订单'
            },
            tooltip: {},
            legend: {
                data: ['销量','产量']
            },
            xAxis: {
                data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
            },
            yAxis: {
                type: 'value'
            },
            series: [{
                name: '销量',
                type: 'bar', //柱状
                data: [100,150,120,100,120,150,100],
                itemStyle: {color: 'red'
                    // normal: { //柱子颜色
                    //     color: 'red'
                    // }
                },
            },{
                name:'产量',
                type:'bar',
                data:[110,160,130,110,130,160,110],
                itemStyle:{color: 'blue'
                    // normal:{
                    //     color:'blue'
                    // }
                }
            }]
        };

        var optionchartZhe = {
            title: {
                text: '商品订单'
            },
            tooltip: {},
            legend: { //顶部显示 与series中的数据类型的name一致
                data: ['销量', '产量', '营业额', '单价']
            },
            xAxis: {
                // type: 'category',
                // boundaryGap: false, //从起点开始
                data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
            },
            yAxis: {
                type: 'value'
            },
            series: [{
                name: '销量',
                type: 'line', //线性
                data: [100,150,120,100,120,150,100],
            }, {
                name: '产量',
                type: 'line', //线性
                data:[110,160,130,110,130,160,110],
            }, {
                smooth: true, //曲线 默认折线
                name: '营业额',
                type: 'line', //线性
                data: [1000,1200 ,1300 ,1000 ,1500,1400 ,1200 ],
            }, {
                smooth: true, //曲线
                name: '单价',
                type: 'line', //线性
                data: [30,69 ,80 ,40 ,100 ,80, 110],
            }]
        };

        var optionchartBing1 = {
            title: {
                text: '商品订单',
                subtext: '纯属虚构', //副标题
                x: 'center' //标题居中
            },
            tooltip: {
                // trigger: 'item' //悬浮显示对比
            },
            legend: {
                orient: 'vertical', //类型垂直,默认水平
                left: 'left', //类型区分在左 默认居中
                data: ['单价', '总价', '销量', '产量']
            },
            series: [{
                type: 'pie', //饼状
                radius: '60%', //圆的大小
                center: ['50%', '50%'], //居中
                data: [{
                    value: 100,
                    name: '单价'
                },
                    {
                        value:1000 ,
                        name: '总价'
                    },
                    {
                        value: 80,
                        name: '销量'
                    },
                    {
                        value: 801,
                        name: '产量'
                    }
                ]
            }]
        };

        var optionchartBing2 = {
            title: {
                text: '商品订单',
                subtext: '纯属虚构', //副标题
                x: 'center' //标题居中
            },
            tooltip: {
                // trigger: 'item' //悬浮显示对比
            },
            legend: {
                orient: 'vertical', //类型垂直,默认水平
                left: 'left', //类型区分在左 默认居中
                data: ['单价', '总价', '销量', '产量']
            },
            series: [{
                type: 'pie', //饼状
                radius: '60%', //圆的大小
                center: ['50%', '50%'], //居中
                data: [{
                    value: 100,
                    name: '单价'
                },
                    {
                        value:1000 ,
                        name: '总价'
                    },
                    {
                        value: 80,
                        name: '销量'
                    },
                    {
                        value: 801,
                        name: '产量'
                    }
                ]
            }]
        };

        monitorZhu.setOption(optionchart,true)
        monitorBing1.setOption(optionchartBing1,true)
        monitorBing2.setOption(optionchartBing2,true)
        monitorZhe.setOption(optionchartZhe,true)
    })
</script>
</body>
</html>

