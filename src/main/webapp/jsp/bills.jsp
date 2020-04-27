<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><meta name="keywords" content=""><meta name="description" content="news"><meta name="author" content="Maker Cloud"><meta content="yes" name="apple-mobile-web-app-capable" /><meta content="black" name="apple-mobile-web-app-status-bar-style" /><meta content="telephone=no" name="format-detection" /><link rel="stylesheet" type="text/css" href="../../../templets/cloud_04/style/lib.css" tppabs="http://dede24.va666.com/templets/cloud_04/style/lib.css"><link rel="stylesheet" type="text/css" href="../../../templets/cloud_04/style/style.css" tppabs="http://dede24.va666.com/templets/cloud_04/style/style.css"><link rel="stylesheet" type="text/css" href="../../../templets/cloud_04/style/376.css" tppabs="http://dede24.va666.com/templets/cloud_04/style/376.css"><script type="text/javascript" src="../../../templets/cloud_04/js/jquery-1.11.3.min.js" tppabs="http://dede24.va666.com/templets/cloud_04/js/jquery-1.11.3.min.js"></script><script type="text/javascript" src="../../../templets/cloud_04/js/org.js" tppabs="http://dede24.va666.com/templets/cloud_04/js/org.js" data-main="baseMain"></script><meta http-equiv="mobile-agent" content="format=xhtml;url=../../../m/list.php-tid=5.htm" tppabs="http://dede24.va666.com/m/list.php?tid=5">
<script type="text/javascript">if (window.location.toString().indexOf('pref=padindex') != -1) {
} else {
    if (/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))) {
        if (window.location.href.indexOf("?mobile") < 0) {
            try {
                if (/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
                    window.location.href = "../../../m/list.php-tid=5.htm"/*tpa=http://dede24.va666.com/m/list.php?tid=5*/;
                } else if (/iPad/i.test(navigator.userAgent)) {
                    window.location.href = "../../../m/list.php-tid=5.htm"/*tpa=http://dede24.va666.com/m/list.php?tid=5*/;
                } else {
                }
            } catch (e) {
            }
        }
    }
}</script>
<title>账单 - 列表</title>
</head>
<body>
<div id="header">
    <div class="content"><a href="../../../index.html" tppabs="http://dede24.va666.com/" id="logo"><img
            src="../../../templets/cloud_04/images/logo.png"
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
            <li class="navitem">
                <a class='' href="#" id="showCar">购物车
                </a>
            </li>
        </ul>
        <div class="clear"></div>
    </div>
    <a id="headSHBtn" href="javascript:;"><i class="fa fa-bars"></i></a></div>
<div id="sitecontent">
    <div id="newsPage" class="npagePage Pagenews">
        <div id="banner" style="height: 220px;">
            <div style="background-image:url(/uploads/checkout.jpg);"></div>
        </div>
        <div class="content">
            <div class="header">
                <p class="title">账单</p>
                <p class="subtitle">Bills</p>
            </div>
            <div id="category">

            </div>
            <div id="newslist">
                <div class="wrapper">

                    <c:forEach var="b" items="${bills}">

                        <div class="wow newstitem left" id="record${b.oid}">
                            <a class="newscontent" href="javascript:void()" onclick="delBill('${b.oid}')">
                                <div class="news_wrapper">
                                    <div class="newsbody">
                                        <p class="date">
                                            <span class="md"  style="width: 200px;">${b.ctime}
                                            </span>
                                        <p class="title">总价: ${b.totalPrice}$</p>
                                        <div class="separator"></div>
                                        <p class="description">
                                            <c:forEach items="${b.items}" var="i">
                                                ${i.name} x${i.count} <br>
                                            </c:forEach>
                                        </p>
                                    </div>
                                </div>
                                <div class="newsimg"
                                     style="background-image:url(/uploads/allimg/160916/bills<%=(int)(Math.floor(Math.random()*10)+1)%>.jpg)"></div>
                            </a>
                            <a href="#"
                               class="details">more<i class="fa fa-angle-right"></i></a>
                        </div>

                    </c:forEach>

                </div>
            </div>
            <div class="clear"></div>
            <div id="pages">
            </div>
        </div>
    </div>
</div>
<div id="footer"><p>COPYRIGHT (©) 2016 创客云版权所有</p></div>

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

<script src="/xgather/xlib/jquery.min.js"></script>
<script src="/xgather/xlib/layer/layer.js"></script>
<script src="/xgather/xjs/bills.js"></script>

</html>