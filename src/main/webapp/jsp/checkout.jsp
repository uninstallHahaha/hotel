<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><meta name="keywords" content=""><meta name="description" content="about"><meta name="author" content="Maker Cloud"><meta content="yes" name="apple-mobile-web-app-capable" /><meta content="black" name="apple-mobile-web-app-status-bar-style" /><meta content="telephone=no" name="format-detection" /><link rel="stylesheet" type="text/css" href="../../templets/cloud_04/style/lib.css" tppabs="http://dede24.va666.com/templets/cloud_04/style/lib.css"><link rel="stylesheet" type="text/css" href="../../templets/cloud_04/style/style.css" tppabs="http://dede24.va666.com/templets/cloud_04/style/style.css"><link rel="stylesheet" type="text/css" href="../../templets/cloud_04/style/376.css" tppabs="http://dede24.va666.com/templets/cloud_04/style/376.css"><script type="text/javascript" src="../../templets/cloud_04/js/jquery-1.11.3.min.js" tppabs="http://dede24.va666.com/templets/cloud_04/js/jquery-1.11.3.min.js"></script><script type="text/javascript" src="../../templets/cloud_04/js/org.js" tppabs="http://dede24.va666.com/templets/cloud_04/js/org.js" data-main="baseMain"></script>
<meta http-equiv="mobile-agent" content="format=xhtml;url=../../m/list.php-tid=3.htm"
      tppabs="http://dede24.va666.com/m/list.php?tid=3">
<script type="text/javascript">if (window.location.toString().indexOf('pref=padindex') != -1) {
} else {
    if (/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))) {
        if (window.location.href.indexOf("?mobile") < 0) {
            try {
                if (/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
                    window.location.href = "../../m/list.php-tid=3.htm"/*tpa=http://dede24.va666.com/m/list.php?tid=3*/;
                } else if (/iPad/i.test(navigator.userAgent)) {
                    window.location.href = "../../m/list.php-tid=3.htm"/*tpa=http://dede24.va666.com/m/list.php?tid=3*/;
                } else {
                }
            } catch (e) {
            }
        }
    }
}</script>
<title>结账</title>
</head>
<body>
<div id="header">
    <div class="content"><a href="../../index.html" tppabs="http://dede24.va666.com/" id="logo"><img
            src="../../templets/cloud_04/images/logo.png"
            tppabs="http://dede24.va666.com/templets/cloud_04/images/logo.png" height="40"/></a>
        <ul id="nav">
            <li class="navitem"><a class='' href="/" tppabs="http://dede24.va666.com/"
                                   target="_self">首页</a></li>
            <li class="navitem"><a class='' href="/getDishList/0" tppabs="http://dede24.va666.com/a/caipin/">菜品
                <!--
                <i class='fa fa-angle-down'></i>
                -->
            </a>
                <ul class="subnav">
                    <li><a href="/getDishList/1">头盘</a></li>
                    <li><a href="/getDishList/2">副菜</a></li>
                    <li><a href="/getDishList/3">靓汤</a></li>
                    <li><a href="/getDishList/4">主菜</a></li>
                    <li><a href="/getDishList/5">蔬果</a></li>
                </ul>
            </li>

            <li class="navitem"><a class='' href="/getWineList/0">酒水
            </a>
                <ul class="subnav">
                    <li><a href="/getWineList/1">餐前酒</a></li>
                    <li><a href="/getWineList/2">佐餐酒</a></li>
                    <li><a href="/getWineList/3">餐后酒</a></li>
                    <li><a href="/getWineList/4">饮料</a></li>
                </ul>
            </li>

            <li class="navitem"><a class='' href="/a/guanyu/tuandui/index.htm" tppabs="http://dede24.va666.com/a/guanyu/">关于
            </a>
                <ul class="subnav">
                    <li><a href="/a/guanyu/tuandui/index.htm" tppabs="http://dede24.va666.com/a/guanyu/tuandui">团队</a>
                    </li>
                </ul>
            </li>
            <li class="navitem"><a class='' href="/a/tuce/index.htm" tppabs="http://dede24.va666.com/a/tuce/">图册
            </a>
                <ul class="subnav">
                    <li><a href="/a/tuce/yingshicaiyao/index.htm" tppabs="http://dede24.va666.com/a/tuce/yingshicaiyao">英式菜肴</a>
                    </li>
                    <li><a href="/a/tuce/fashicaiyao/index.htm"
                           tppabs="http://dede24.va666.com/a/tuce/fashicaiyao">法式菜肴</a></li>
                    <li><a href="/a/tuce/meishicaiyao/index.htm" tppabs="http://dede24.va666.com/a/tuce/meishicaiyao">美式菜肴</a>
                    </li>
                    <li><a href="/a/tuce/deshicaiyao/index.htm"
                           tppabs="http://dede24.va666.com/a/tuce/deshicaiyao">德式菜肴</a></li>
                </ul>
            </li>

            <li class="navitem"><a class='' href="/getServicePage">服务
            </a>
                <ul class="subnav">
                    <li><a href="/getServicePage">呼叫服务</a></li>
                    <li><a href="/getServiceListPage">服务记录</a></li>
                </ul>
            </li>

            <li class="navitem">
                <a class='active' href="/getBillPage">账单
                </a>
            </li>

        </ul>
        <div class="clear"></div>
    </div>
    <a id="headSHBtn" href="javascript:;"><i class="fa fa-bars"></i></a></div>
<div id="sitecontent">
    <div class="npagePage Pageyemian" id="page_about">
        <div id="banner">
            <div style="background-image:url(/uploads/checkout.jpg);background-size: 100%"></div>
        </div>
        <div class="content">
            <div class="header">
                <p class="title">
                    结账台</p>
                <p class="subtitle">
                    Check out</p>
            </div>
            <div class="fw postbody">
                <hr>
                <div id="postCont">
                    <div class="baseContent">
                        <div class="baseinfo">

                            <form class="layui-form" action="">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">您的名字</label>
                                    <div class="layui-input-block">
                                        <input type="text" id="username"
                                               value="alice"
                                               required lay-verify="required"
                                               placeholder="请输入名字" autocomplete="off"
                                               class="layui-input black">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">您的手机号</label>
                                    <div class="layui-input-block">
                                        <input type="text" id="userphone"
                                               value="1322311231"
                                               required lay-verify="required|phone|number"
                                               placeholder="请输入手机号" autocomplete="off"
                                               class="layui-input black">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">付款方式</label>
                                    <div class="layui-input-block">
                                        <select name="interest" lay-filter="aihao">
                                            <option value="0">货到付款</option>
                                            <option value="1">货到付款</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-form-item layui-form-text">
                                    <label class="layui-form-label">备注</label>
                                    <div class="layui-input-block">
                                        <textarea id="beizhu"
                                                  placeholder="请输入备注" class="layui-textarea beizhu"></textarea>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="checkoutBtn" id="checkoutBtn">结算</div>
                    </div>
                    <div class="orderinfo">
                        <div class="ordertitle">您的账单</div>
                        <table class="table-cart" style="width: 100%">
                            <tbody id="carTbody">
                            <!--    <tr class="cartr">
                                    <td class="title">
                                    <span class="name">
                                        <a href="#productModal" data-toggle="modal">Pizza Chicked BBQ</a>
                                    </span>
                                    </td>
                                    <td class="count">x2</td>
                                    <td class="price">$9.82</td>
                                    <td class="actions">
                                        <a href="#productModal" data-toggle="modal" class="action-icon">
                                            <i class="layui-icon layui-icon-edit"></i>
                                        </a>
                                        <a href="#" class="action-icon">
                                            <i class="layui-icon layui-icon-close"></i>
                                        </a>
                                    </td>
                                </tr> -->
                            </tbody>
                        </table>
                        <div class="pricePlace">总计 :
                            <span class="priceNum" id="priceNum"> 100.86$</span>
                        </div>
                    </div>
                </div>
            </div>
            <div id="pages">
                &nbsp;
            </div>
        </div>
    </div>
</div>
<div id="footer"><p>COPYRIGHT (©) 2020 Aclic Studio</p></div>

<div id="shares"><a id="sshare"><i class="fa fa-share-alt"></i></a><a
        href="javascript:if(confirm('http://service.weibo.com/share/share.php?appkey=3206975293&  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://service.weibo.com/share/share.php?appkey=3206975293&'"
        tppabs="http://service.weibo.com/share/share.php?appkey=3206975293&" target="_blank" id="sweibo"><i
        class="fa fa-weibo"></i></a><a href="javascript:;" id="sweixin"><i class="fa fa-weixin"></i></a><a
        href="javascript:;" id="gotop"><i class="fa fa-angle-up"></i></a></div>
<div class="fixed" id="fixed_weixin">
    <div class="fixed-container">
        <div id="qrcode"></div>
        <p>扫描二维码分享到微信</p></div>
</div>
<div id="online_open"><i class="fa fa-comments-o"></i></div>
<div id="online_lx">
    <div id="olx_head">在线咨询<i class="fa fa-times fr" id="online_close"></i></div>
    <ul id="olx_qq">
        <li><a href="tencent://message/?uin=8888899999&Site=uelike&Menu=yes"><i class="fa fa-qq"></i>8888899999</a></li>
        <li><a href="tencent://message/?uin=888889999&Site=uelike&Menu=yes"><i class="fa fa-qq"></i>888889999</a></li>
    </ul>
    <div id="olx_tel">
        <div><i class="fa fa-phone"></i>联系电话</div>
        <p>0755-28856999<br/></p></div>
</div>
<div class="hide"></div>
</body>


<%--数量选择弹窗--%>
<div id="selDishCount" style="display: none">
    <div class="imgwraper">
        <h4 class="wrapertitle">选择数量</h4>
    </div>
    <div class="dishname">
        <span id="c-dishname">${dishInfo.name}</span>
        <span id="c-dishprice">单价: ${dishInfo.price}$</span>
    </div>
    <input value="${dishInfo.id}" id="dishid" style="display: none">
    <input value="${dishInfo.name}" id="dishname" style="display: none">
    <input value="${dishInfo.price}" id="dishprice" style="display: none">
    <input value="1" id="subType" style="display: none">

    <div class="layui-form-item" style="position: relative;top: 70px;">
        <label class="layui-form-label">数量: </label>
        <div class="layui-input-block ">
            <input type="number" name="title"
                   id="dishcount"
                   value="1"
                   onchange="noNagtive(this)" required lay-verify="required" placeholder="请输入标题" autocomplete="off"
                   class="layui-input noblack">
        </div>
    </div>
    <div class="okbtn" id="subTOCar">确定</div>
</div>


<link rel="stylesheet" type="text/css" href="/xgather/xcss/dishDetail.css">
<link rel="stylesheet" type="text/css" href="/xgather/xcss/car.css">
<link rel="stylesheet" type="text/css" href="/xgather/xcss/checkout.css">
<link rel="stylesheet" type="text/css" href="/xgather/xlib/layui-v2.5.6/layui/css/layui.css">
<script src="/xgather/xlib/jquery.min.js"></script>
<script src="/xgather/xlib/axios.min.js"></script>
<script src="/xgather/xlib/layer/layer.js"></script>
<script src="/xgather/xlib/layui-v2.5.6/layui/layui.all.js"></script>
<script src="/xgather/xjs/car.js"></script>
<script src="/xgather/xjs/util.js"></script>
<script src="/xgather/xjs/checkout.js"></script>


</html>