<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><meta name="keywords" content="鲜柠,香煎,银鳕,鱼,"><meta name="description" content=""><meta name="author" content="Maker Cloud"><meta content="yes" name="apple-mobile-web-app-capable" /><meta content="black" name="apple-mobile-web-app-status-bar-style" /><meta content="telephone=no" name="format-detection" /><link rel="stylesheet" type="text/css" href="../../../templets/cloud_04/style/lib.css" tppabs="http://dede24.va666.com/templets/cloud_04/style/lib.css"><link rel="stylesheet" type="text/css" href="../../../templets/cloud_04/style/style.css" tppabs="http://dede24.va666.com/templets/cloud_04/style/style.css"><link rel="stylesheet" type="text/css" href="../../../templets/cloud_04/style/376.css" tppabs="http://dede24.va666.com/templets/cloud_04/style/376.css"><script type="text/javascript" src="../../../templets/cloud_04/js/jquery-1.11.3.min.js" tppabs="http://dede24.va666.com/templets/cloud_04/js/jquery-1.11.3.min.js"></script><script type="text/javascript" src="../../../templets/cloud_04/js/org.js" tppabs="http://dede24.va666.com/templets/cloud_04/js/org.js" data-main="baseMain"></script>
<meta http-equiv="mobile-agent" content="format=xhtml;url=../../../m/view.php-aid=1.htm"
      tppabs="http://dede24.va666.com/m/view.php?aid=1">
<script type="text/javascript">if (window.location.toString().indexOf('pref=padindex') != -1) {
} else {
    if (/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))) {
        if (window.location.href.indexOf("?mobile") < 0) {
            try {
                if (/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
                    window.location.href = "../../../m/view.php-aid=1.htm"/*tpa=http://dede24.va666.com/m/view.php?aid=1*/;
                } else if (/iPad/i.test(navigator.userAgent)) {
                    window.location.href = "../../../m/view.php-aid=1.htm"/*tpa=http://dede24.va666.com/m/view.php?aid=1*/;
                } else {
                }
            } catch (e) {
            }
        }
    }
}</script>
<title>菜品 - 详情</title>
</head>
<body class="nobanner">
<div id="header">
    <div class="content"><a href="../../../index.html" tppabs="http://dede24.va666.com/" id="logo"><img
            src="../../../templets/cloud_04/images/logo.png"
            tppabs="http://dede24.va666.com/templets/cloud_04/images/logo.png" height="40"/></a>
        <ul id="nav">
            <li class="navitem"><a href="../../../index.html" tppabs="http://dede24.va666.com/" target="_self">首页</a>
            </li>
            <li class="navitem"><a class='active' href="../index.htm" tppabs="http://dede24.va666.com/a/caipin/">菜品
                <!--
                <i class='fa fa-angle-down'></i>
                -->
            </a>
                <ul class="subnav">
                    <li><a href="index.htm" tppabs="http://dede24.va666.com/a/caipin/toupan">头盘</a></li>
                    <li><a href="../liangtang/index.htm" tppabs="http://dede24.va666.com/a/caipin/liangtang">靓汤</a></li>
                    <li><a href="../fucai/index.htm" tppabs="http://dede24.va666.com/a/caipin/fucai">副菜</a></li>
                    <li><a href="../zhucai/index.htm" tppabs="http://dede24.va666.com/a/caipin/zhucai">主菜</a></li>
                    <li><a href="../shuguo/index.htm" tppabs="http://dede24.va666.com/a/caipin/shuguo">蔬果</a></li>
                </ul>
            </li>
            <li class="navitem"><a class='' href="../../guanyu/index.htm" tppabs="http://dede24.va666.com/a/guanyu/">关于
                <!--
                <i class='fa fa-angle-down'></i>
                -->
            </a>
                <ul class="subnav">
                    <li><a href="../../guanyu/index.htm" tppabs="http://dede24.va666.com/a/guanyu/">关于</a></li>
                    <li><a href="../../guanyu/tuandui/index.htm"
                           tppabs="http://dede24.va666.com/a/guanyu/tuandui">团队</a></li>
                    <li><a href="../../guanyu/xinwen/index.htm" tppabs="http://dede24.va666.com/a/guanyu/xinwen">新闻</a>
                    </li>
                </ul>
            </li>
            <li class="navitem"><a class='' href="../../tuce/index.htm" tppabs="http://dede24.va666.com/a/tuce/">图册
                <!--
                <i class='fa fa-angle-down'></i>
                -->
            </a>
                <ul class="subnav">
                    <li><a href="../../tuce/yingshicaiyao/index.htm"
                           tppabs="http://dede24.va666.com/a/tuce/yingshicaiyao">英式菜肴</a></li>
                    <li><a href="../../tuce/fashicaiyao/index.htm" tppabs="http://dede24.va666.com/a/tuce/fashicaiyao">法式菜肴</a>
                    </li>
                    <li><a href="../../tuce/meishicaiyao/index.htm"
                           tppabs="http://dede24.va666.com/a/tuce/meishicaiyao">美式菜肴</a></li>
                    <li><a href="../../tuce/deshicaiyao/index.htm" tppabs="http://dede24.va666.com/a/tuce/deshicaiyao">德式菜肴</a>
                    </li>
                </ul>
            </li>
            <li class="navitem"><a class='' href="../../fuwu/index.htm" tppabs="http://dede24.va666.com/a/fuwu/">服务
                <!--
                <i class='fa fa-angle-down'></i>
                -->
            </a>

            </li>
            <li class="navitem"><a class='' href="../../lianxi/index.htm" tppabs="http://dede24.va666.com/a/lianxi/">联系
                <!--
                <i class='fa fa-angle-down'></i>
                -->
            </a>

            </li>
            <li class="navitem"><a class=''
                                   href="javascript:if(confirm('http://www.22vd.com/11761.html  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.22vd.com/11761.html'"
                                   tppabs="http://www.22vd.com/11761.html">购买模板
                <!--
                <i class='fa fa-angle-down'></i>
                -->
            </a>

            </li>
        </ul>
        <div class="clear"></div>
    </div>
    <a id="headSHBtn" href="javascript:;"><i class="fa fa-bars"></i></a></div>
<div id="sitecontent">
    <div class="npagePage " id="npagePage">
        <div class="content">
            <div id="projectwrap" class="fw">
                <div id="projectbody">
                    <ul id="projectimages">
                        <img alt="" src="../../../uploads/160916/1-16091616150CV.jpg"
                             tppabs="http://dede24.va666.com/uploads/160916/1-16091616150CV.jpg"/>
                    </ul>
                    <div class="clear"></div>
                    <div class="postbody"></div>
                </div>
                <div id="projectinfo">
                    <div id="projectih">
                        <div class="header">
                            <p class="title">${dishInfo.name}</p>
                            <p class="subtitle">${dishInfo.sdetail}</p>
                            <div class="description">
                                <p>售价：${dishInfo.price}</p>
                                <p>原料：${dishInfo.raw}</p>
                                <p>制作时间：${dishInfo.stime}</p>
                                <p>简介：${dishInfo.detail}</p>
                                </br>
                                <p><a href="#" target="_self" textvalue="在线预约"
                                      id="joinCarBtn">在线预约</a></p></div>

                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div id="projectshow">
                    <div id="projecttags">

                        <c:forTokens items="${dishInfo.label}" delims="#" var="l">

                            <a target="_blank">${l}</a>

                        </c:forTokens>

                    </div>
                    <div id="projectib">
                        <table width='100%' border='0' cellspacing='0' cellpadding='0'>
                            <tr>
                                <td width='50%'>
                                </td>
                                <td width='50%'>
                                </td>
                            </tr>
                            <tr>
                                <td width='50%'>
                                </td>
                                <td width='50%'>
                                </td>
                            </tr>
                        </table>


                    </div>
                </div>

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

<div id="selDishCount" style="display: none">
    <div class="imgwraper">
        <h4 class="wrapertitle">选择数量</h4>
    </div>
    <div class="dishname">
        <span>${dishInfo.name}</span>
        <span>单价: ${dishInfo.price}</span>
    </div>
    <input value="${dishInfo.id}" id="dishid" style="display: none">
    <input value="${dishInfo.name}" id="dishname" style="display: none">

    <div class="layui-form-item" style="position: relative;top: 70px;">
        <label class="layui-form-label">数量: </label>
        <div class="layui-input-block">
            <input type="number" name="title"
                   id="dishcount"
                   value="1"
                   onchange="noNagtive(this)" required lay-verify="required" placeholder="请输入标题" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
<%--    <button class="layui-btn" id="subTOCar">确定</button>--%>
    <div class="okbtn" id="subTOCar">确定</div>
</div>


<link rel="stylesheet" type="text/css" href="/xgather/xlib/layui-v2.5.6/layui/css/layui.css">
<link rel="stylesheet" type="text/css" href="/xgather/xcss/dishDetail.css">

<script src="/xgather/xlib/layui-v2.5.6/layui/layui.all.js"></script>
<script src="/xgather/xlib/jquery.min.js"></script>
<script src="/xgather/xlib/layer/layer.js"></script>
<script src="/xgather/xjs/dishDetail.js"></script>

</html>