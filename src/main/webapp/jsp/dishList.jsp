<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><meta name="keywords" content=""><meta name="description" content="PRODUCTS"><meta name="author" content="Maker Cloud"><meta content="yes" name="apple-mobile-web-app-capable" /><meta content="black" name="apple-mobile-web-app-status-bar-style" /><meta content="telephone=no" name="format-detection" /><link rel="stylesheet" type="text/css" href="../../templets/cloud_04/style/lib.css" tppabs="http://dede24.va666.com/templets/cloud_04/style/lib.css"><link rel="stylesheet" type="text/css" href="../../templets/cloud_04/style/style.css" tppabs="http://dede24.va666.com/templets/cloud_04/style/style.css"><link rel="stylesheet" type="text/css" href="../../templets/cloud_04/style/376.css" tppabs="http://dede24.va666.com/templets/cloud_04/style/376.css"><script type="text/javascript" src="../../templets/cloud_04/js/jquery-1.11.3.min.js" tppabs="http://dede24.va666.com/templets/cloud_04/js/jquery-1.11.3.min.js"></script><script type="text/javascript" src="../../templets/cloud_04/js/org.js" tppabs="http://dede24.va666.com/templets/cloud_04/js/org.js" data-main="baseMain"></script><meta http-equiv="mobile-agent" content="format=xhtml;url=../../m/list.php-tid=1.htm" tppabs="http://dede24.va666.com/m/list.php?tid=1">
<script type="text/javascript">if (window.location.toString().indexOf('pref=padindex') != -1) {
} else {
    if (/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))) {
        if (window.location.href.indexOf("?mobile") < 0) {
            try {
                if (/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
                    window.location.href = "../../m/list.php-tid=1.htm"/*tpa=http://dede24.va666.com/m/list.php?tid=1*/;
                } else if (/iPad/i.test(navigator.userAgent)) {
                    window.location.href = "../../m/list.php-tid=1.htm"/*tpa=http://dede24.va666.com/m/list.php?tid=1*/;
                } else {
                }
            } catch (e) {
            }
        }
    }
}</script>
<title>菜品 - 列表</title>
</head>
<body class="nobanner">
<div id="header">
    <div class="content"><a href="../../index.html" tppabs="http://dede24.va666.com/" id="logo"><img
            src="../../templets/cloud_04/images/logo.png"
            tppabs="http://dede24.va666.com/templets/cloud_04/images/logo.png" height="40"/></a>
        <ul id="nav">
            <li class="navitem"><a href="../../index.html" tppabs="http://dede24.va666.com/" target="_self">首页</a></li>
            <li class="navitem"><a class='active' href="index.htm" tppabs="http://dede24.va666.com/a/caipin/">菜品
                <!--
                <i class='fa fa-angle-down'></i>
                -->
            </a>
                <ul class="subnav">
                    <li><a href="toupan/index.htm" tppabs="http://dede24.va666.com/a/caipin/toupan">头盘</a></li>
                    <li><a href="liangtang/index.htm" tppabs="http://dede24.va666.com/a/caipin/liangtang">靓汤</a></li>
                    <li><a href="fucai/index.htm" tppabs="http://dede24.va666.com/a/caipin/fucai">副菜</a></li>
                    <li><a href="zhucai/index.htm" tppabs="http://dede24.va666.com/a/caipin/zhucai">主菜</a></li>
                    <li><a href="shuguo/index.htm" tppabs="http://dede24.va666.com/a/caipin/shuguo">蔬果</a></li>
                </ul>
            </li>
            <li class="navitem"><a class='' href="../guanyu/index.htm" tppabs="http://dede24.va666.com/a/guanyu/">关于
                <!--
                <i class='fa fa-angle-down'></i>
                -->
            </a>
                <ul class="subnav">
                    <li><a href="../guanyu/index.htm" tppabs="http://dede24.va666.com/a/guanyu/">关于</a></li>
                    <li>
                        <a href="javascript:if(confirm('http://dede24.va666.com/a/guanyu/tuandui/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ���ļ������û������ѱ���ֹ����ù����ѱ�ֹͣ��  \n\n����Ҫ�ӷ�����������?'))window.location='http://dede24.va666.com/a/guanyu/tuandui/'"
                           tppabs="http://dede24.va666.com/a/guanyu/tuandui">团队</a></li>
                    <li><a href="../guanyu/xinwen/index.htm" tppabs="http://dede24.va666.com/a/guanyu/xinwen">新闻</a>
                    </li>
                </ul>
            </li>
            <li class="navitem"><a class='' href="../tuce/index.htm" tppabs="http://dede24.va666.com/a/tuce/">图册
                <!--
                <i class='fa fa-angle-down'></i>
                -->
            </a>
                <ul class="subnav">
                    <li>
                        <a href="javascript:if(confirm('http://dede24.va666.com/a/tuce/yingshicaiyao/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ���ļ������û������ѱ���ֹ����ù����ѱ�ֹͣ��  \n\n����Ҫ�ӷ�����������?'))window.location='http://dede24.va666.com/a/tuce/yingshicaiyao/'"
                           tppabs="http://dede24.va666.com/a/tuce/yingshicaiyao">英式菜肴</a></li>
                    <li>
                        <a href="javascript:if(confirm('http://dede24.va666.com/a/tuce/fashicaiyao/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ���ļ������û������ѱ���ֹ����ù����ѱ�ֹͣ��  \n\n����Ҫ�ӷ�����������?'))window.location='http://dede24.va666.com/a/tuce/fashicaiyao/'"
                           tppabs="http://dede24.va666.com/a/tuce/fashicaiyao">法式菜肴</a></li>
                    <li>
                        <a href="javascript:if(confirm('http://dede24.va666.com/a/tuce/meishicaiyao/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ���ļ������û������ѱ���ֹ����ù����ѱ�ֹͣ��  \n\n����Ҫ�ӷ�����������?'))window.location='http://dede24.va666.com/a/tuce/meishicaiyao/'"
                           tppabs="http://dede24.va666.com/a/tuce/meishicaiyao">美式菜肴</a></li>
                    <li>
                        <a href="javascript:if(confirm('http://dede24.va666.com/a/tuce/deshicaiyao/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ���ļ������û������ѱ���ֹ����ù����ѱ�ֹͣ��  \n\n����Ҫ�ӷ�����������?'))window.location='http://dede24.va666.com/a/tuce/deshicaiyao/'"
                           tppabs="http://dede24.va666.com/a/tuce/deshicaiyao">德式菜肴</a></li>
                </ul>
            </li>
            <li class="navitem"><a class='' href="../fuwu/index.htm" tppabs="http://dede24.va666.com/a/fuwu/">服务
                <!--
                <i class='fa fa-angle-down'></i>
                -->
            </a>

            </li>
            <li class="navitem"><a class='' href="../lianxi/index.htm" tppabs="http://dede24.va666.com/a/lianxi/">联系
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
    <div class="npagePage Pageanli" id="mproject">
        <div class="content">
            <div class="header" id="plheader">
                <p class="title">菜品 - 列表</p>
                <p class="subtitle">PRODUCTS</p>
            </div>
            <ul id="category">
                <li><a href="/getDishList/0" class='${type==0?'active':''}' >全部</a>
                </li>

                <li><a href="/getDishList/1" class='${type==1?'active':''}'>头盘</a></li>

                <li><a href="/getDishList/2" class='${type==2?'active':''}'>副菜</a></li>

                <li><a href="/getDishList/3" class='${type==3?'active':''}'>靓汤</a></li>

                <li><a href="/getDishList/4" class='${type==4?'active':''}'>主菜</a></li>

                <li><a href="/getDishList/5" class='${type==5?'active':''}'>蔬果</a></li>

            </ul>
            <div id="projectlist" class="module-content">
                <div class="wrapper">
                    <ul class="content_list">

                        <c:forEach items="${dishList}" var="d">

                            <li class="projectitem">
                                <a href="/getDish/${d.id}"
                                   tppabs="http://dede24.va666.com/a/caipin/toupan/1.html"
                                   target="_self">
                                    <div class="project_img">
                                        <img src="/uploads/allimg/160916/1 (<%=(int)(Math.floor(Math.random()*10+1))%>).jpg"
                                             tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161612570-L.jpg"
                                             width="500" height="320"/>
                                    </div>
                                    <div class="project_info">
                                        <div>
                                            <p class="title">${d.name}</p>
                                            <p class="subtitle">${d.sdetail}</p>
                                            <p class="description hide">... 2013在线预约</p>
                                        </div>
                                    </div>
                                </a>
                                <a href="" target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                            </li>

                        </c:forEach>

                        <!--
                        <li class="projectitem"><a href="shuguo/2.html"
                                                   tppabs="http://dede24.va666.com/a/caipin/shuguo/2.html"
                                                   target="_blank">
                            <div class="project_img"><img src="../../uploads/allimg/160916/1-1609161631230-L.jpg"
                                                          tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161631230-L.jpg"
                                                          width="500" height="320"/></div>
                            <div class="project_info">
                                <div>
                                    <p class="title">Santa Maria BBQ Tri-Tip</p>
                                    <p class="subtitle">bacon-ranchero</p>
                                    <p class="description hide">... 2013在线预约</p>
                                </div>
                            </div>
                        </a>
                            <a href="" target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li class="projectitem"><a href="zhucai/3.html"
                                                   tppabs="http://dede24.va666.com/a/caipin/zhucai/3.html"
                                                   target="_blank">
                            <div class="project_img"><img src="../../uploads/allimg/160916/1-160916163H00-L.jpg"
                                                          tppabs="http://dede24.va666.com/uploads/allimg/160916/1-160916163H00-L.jpg"
                                                          width="500" height="320"/></div>
                            <div class="project_info">
                                <div>
                                    <p class="title">南非龙虾配澳洲带子（虾黄汁）</p>
                                    <p class="subtitle">头盘开胃菜</p>
                                    <p class="description hide">... 2013在线预约</p>
                                </div>
                            </div>
                        </a>
                            <a href="" target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li class="projectitem"><a href="zhucai/4.html"
                                                   tppabs="http://dede24.va666.com/a/caipin/zhucai/4.html"
                                                   target="_blank">
                            <div class="project_img"><img src="../../uploads/allimg/160916/1-1609161639520-L.jpg"
                                                          tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161639520-L.jpg"
                                                          width="500" height="320"/></div>
                            <div class="project_info">
                                <div>
                                    <p class="title">海鲜烩牛仔骨</p>
                                    <p class="subtitle">副菜菜肴</p>
                                    <p class="description hide">... 2013在线预约</p>
                                </div>
                            </div>
                        </a>
                            <a href="" target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li class="projectitem"><a href="fucai/5.html"
                                                   tppabs="http://dede24.va666.com/a/caipin/fucai/5.html"
                                                   target="_blank">
                            <div class="project_img"><img src="../../uploads/allimg/160916/1-1609161642530-L.jpg"
                                                          tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161642530-L.jpg"
                                                          width="500" height="320"/></div>
                            <div class="project_info">
                                <div>
                                    <p class="title">奶油蘑菇汤配蒜香法包</p>
                                    <p class="subtitle">法式局葱头汤</p>
                                    <p class="description hide">... 2013在线预约</p>
                                </div>
                            </div>
                        </a>
                            <a href="" target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li class="projectitem"><a href="zhucai/26.html"
                                                   tppabs="http://dede24.va666.com/a/caipin/zhucai/26.html"
                                                   target="_blank">
                            <div class="project_img"><img src="../../uploads/allimg/160916/1-1609161951300-L.jpg"
                                                          tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161951300-L.jpg"
                                                          width="500" height="320"/></div>
                            <div class="project_info">
                                <div>
                                    <p class="title">花椰菜生蔬菜沙拉</p>
                                    <p class="subtitle">蔬菜沙拉</p>
                                    <p class="description hide">... 2013在线预约</p>
                                </div>
                            </div>
                        </a>
                            <a href="" target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li class="projectitem"><a href="zhucai/27.html"
                                                   tppabs="http://dede24.va666.com/a/caipin/zhucai/27.html"
                                                   target="_blank">
                            <div class="project_img"><img src="../../uploads/allimg/160916/1-1609161953070-L.jpg"
                                                          tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161953070-L.jpg"
                                                          width="500" height="320"/></div>
                            <div class="project_info">
                                <div>
                                    <p class="title">四季水果摩卡慕斯</p>
                                    <p class="subtitle">甜品</p>
                                    <p class="description hide">... 2013在线预约</p>
                                </div>
                            </div>
                        </a>
                            <a href="" target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li class="projectitem"><a href="zhucai/28.html"
                                                   tppabs="http://dede24.va666.com/a/caipin/zhucai/28.html"
                                                   target="_blank">
                            <div class="project_img"><img src="../../uploads/allimg/160916/1-160916220J30-L.jpg"
                                                          tppabs="http://dede24.va666.com/uploads/allimg/160916/1-160916220J30-L.jpg"
                                                          width="500" height="320"/></div>
                            <div class="project_info">
                                <div>
                                    <p class="title">黑椒牛仔骨配黄油西兰花</p>
                                    <p class="subtitle">头盘开胃菜</p>
                                    <p class="description hide">... 2013在线预约</p>
                                </div>
                            </div>
                        </a>
                            <a href="" target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li class="projectitem"><a href="zhucai/29.html"
                                                   tppabs="http://dede24.va666.com/a/caipin/zhucai/29.html"
                                                   target="_blank">
                            <div class="project_img"><img src="../../uploads/allimg/160916/1-1609162211240-L.jpg"
                                                          tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609162211240-L.jpg"
                                                          width="500" height="320"/></div>
                            <div class="project_info">
                                <div>
                                    <p class="title">奶豆腐配美味啫喱</p>
                                    <p class="subtitle">bacon-ranchero</p>
                                    <p class="description hide">... 2013在线预约</p>
                                </div>
                            </div>
                        </a>
                            <a href="" target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li class="projectitem"><a href="fucai/30.html"
                                                   tppabs="http://dede24.va666.com/a/caipin/fucai/30.html"
                                                   target="_blank">
                            <div class="project_img"><img src="../../uploads/allimg/160916/1-1609162234310-L.jpg"
                                                          tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609162234310-L.jpg"
                                                          width="500" height="320"/></div>
                            <div class="project_info">
                                <div>
                                    <p class="title">新西兰羊排配黑椒蘑菇汁</p>
                                    <p class="subtitle">意式蔬菜汤</p>
                                    <p class="description hide">... 2013在线预约</p>
                                </div>
                            </div>
                        </a>
                            <a href="" target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>

                        -->

                    </ul>
                </div>
            </div>
            <div class="clear"></div>
            <div id="pages"></div>
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
</html>