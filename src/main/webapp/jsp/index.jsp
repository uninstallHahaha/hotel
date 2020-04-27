<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><meta name="keywords" content=""><meta name="description" content=""><meta name="author" content="Maker Cloud"><meta content="yes" name="apple-mobile-web-app-capable" /><meta content="black" name="apple-mobile-web-app-status-bar-style" /><meta content="telephone=no" name="format-detection" />
<link rel="stylesheet" type="text/css" href="templets/cloud_04/style/lib.css"
      tppabs="http://dede24.va666.com/templets/cloud_04/style/lib.css">
<link rel="stylesheet" type="text/css" href="templets/cloud_04/style/style.css"
      tppabs="http://dede24.va666.com/templets/cloud_04/style/style.css">
<link rel="stylesheet" type="text/css" href="templets/cloud_04/style/376.css"
      tppabs="http://dede24.va666.com/templets/cloud_04/style/376.css">

<%--<script src="/xgather/xlib/jquery.min.js"></script>--%>
<script type="text/javascript" src="templets/cloud_04/js/jquery-1.11.3.min.js"
        tppabs="http://dede24.va666.com/templets/cloud_04/js/jquery-1.11.3.min.js"></script>

<script type="text/javascript" src="templets/cloud_04/js/org.js"
        tppabs="http://dede24.va666.com/templets/cloud_04/js/org.js" data-main="indexMain"></script>
<meta http-equiv="mobile-agent" content="format=xhtml;url=m/index.html" tppabs="http://dede24.va666.com/m/index.php">
<script type="text/javascript">if (window.location.toString().indexOf('pref=padindex') != -1) {
} else {
    if (/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))) {
        if (window.location.href.indexOf("?mobile") < 0) {
            try {
                if (/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
                    window.location.href = "m/index.html"/*tpa=http://dede24.va666.com/m/index.php*/;
                } else if (/iPad/i.test(navigator.userAgent)) {
                    window.location.href = "m/index.html"/*tpa=http://dede24.va666.com/m/index.php*/;
                } else {
                }
            } catch (e) {
            }
        }
    }
}</script>
<title>首页</title>
</head>
<body>
<style type="text/css">
    table {
        border-collapse: collapse;
        border-spacing: 0
    }

    .layer-qq {
        color: #282828;
        font-size: 14px;
        font-family: "微软雅黑"
    }

    .layer-qq {
        animation: layerqq .7s ease-out;
        position: fixed;
        top: 50%;
        color: #fff;
        left: 50%;
        width: 480px;
        height: 282px;
        background: url("../www.22vd.com/img/QQ.png" /*tpa=http://www.22vd.com/img/QQ.png*/) no-repeat;
        text-align: center;
        z-index: 999;
        overflow: hidden;
    }

    .layer-qq h3 {
        margin: 0;
        padding: 0;
        font-size: 40px;
        text-transform: uppercase;
        font-weight: bold;
        padding-top: 45px;
    }

    .layer-qq strong {
        font-size: 22px;
    }

    .layer-qq a.linkqq {
        display: block;
        width: 138px;
        height: 38px;
        line-height: 38px;
        border: 1px solid rgba(255, 255, 255, .5);
        text-align: center;
        font-size: 14px;
        text-decoration: none;
        border-radius: 45px;
        color: #fff;
        margin: 25px auto 0;
    }

    .layer-qq a.qq-close {
        display: block;
        width: 28px;
        height: 28px;
        position: absolute;
        top: 20px;
        right: 20px;
        background: url("../www.22vd.com/img/QQclose.png" /*tpa=http://www.22vd.com/img/QQclose.png*/) no-repeat;
        cursor: pointer;
    }

    .layer-qq a {
        color: #33e153;
        text-decoration: none;
    }

    @-webkit-keyframes layerqq {
        from {
            -webkit-transform: scale(0);
            transform: scale(0);
        }
        to {
            -webkit-transform: scale(1);
            transform: scale(1);
        }
    }

    @keyframes layerqq {
        from {
            transform: scale(0);
        }
        to {
            transform: scale(1);
        }
    }
</style>

<script type="text/javascript">  $(".layer-qq a.qq-close").on("click", function () {
    $(this).parents(".layer-qq").hide();
})
</script>
<div id="header">
    <div class="content"><a href="index.htm" tppabs="http://dede24.va666.com/" id="logo"><img
            src="templets/cloud_04/images/logo.png" tppabs="http://dede24.va666.com/templets/cloud_04/images/logo.png"
            height="40"/></a>
        <ul id="nav">
            <li class="navitem"><a class='active' href="index.htm" tppabs="http://dede24.va666.com/"
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

            <li class="navitem"><a class='' href="a/guanyu/index.htm" tppabs="http://dede24.va666.com/a/guanyu/">关于
                <!--
                <i class='fa fa-angle-down'></i>
                -->
            </a>
                <ul class="subnav">
                    <li><a href="a/guanyu/index.htm" tppabs="http://dede24.va666.com/a/guanyu/">关于</a></li>
                    <li><a href="a/guanyu/tuandui/index.htm" tppabs="http://dede24.va666.com/a/guanyu/tuandui">团队</a>
                    </li>
                    <li><a href="a/guanyu/xinwen/index.htm" tppabs="http://dede24.va666.com/a/guanyu/xinwen">新闻</a></li>
                </ul>
            </li>
            <li class="navitem"><a class='' href="a/tuce/index.htm" tppabs="http://dede24.va666.com/a/tuce/">图册
                <!--
                <i class='fa fa-angle-down'></i>
                -->
            </a>
                <ul class="subnav">
                    <li><a href="a/tuce/yingshicaiyao/index.htm" tppabs="http://dede24.va666.com/a/tuce/yingshicaiyao">英式菜肴</a>
                    </li>
                    <li><a href="a/tuce/fashicaiyao/index.htm"
                           tppabs="http://dede24.va666.com/a/tuce/fashicaiyao">法式菜肴</a></li>
                    <li><a href="a/tuce/meishicaiyao/index.htm" tppabs="http://dede24.va666.com/a/tuce/meishicaiyao">美式菜肴</a>
                    </li>
                    <li><a href="a/tuce/deshicaiyao/index.htm"
                           tppabs="http://dede24.va666.com/a/tuce/deshicaiyao">德式菜肴</a></li>
                </ul>
            </li>
            <li class="navitem">
                <a class='' href="a/fuwu/index.htm" tppabs="http://dede24.va666.com/a/fuwu/">服务
                </a>
            </li>
            <li class="navitem">
                <a class='' href="/getBillPage">账单
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
    <div id="indexPage">
        <div id="mslider" class="module">
            <script type="text/javascript">$(function () {
                $("#mslider li video").each(function (index, element) {
                    element.play();
                });
            })</script>
            <ul class="slider" data-options-height="" data-options-auto="1" data-options-mode="0" data-options-pause="6"
                data-options-ease="ease-out">
                <li style="background-image:url(/eximg/viewer/viewer-1.jpg)" class="active">
                    <div id="tempImage_1"></div>
                    <video width="100%" height="100%" autoplay loop preload="auto" class="slider-video"
                           style="width:100%; height:auto;">
                        <source src="" type="video/mp4"></source>
                    </video>
                    <div class="mask"></div>
                    <a target="_blank">
                        <div><p class="title ellipsis">Welcome To Maker Cloud</p>
                            <p class="subtitle">Develop a perfact taste for mastery</p></div>
                        <div class="sliderArrow fa fa-angle-down"></div>
                    </a></li>
                <li style="background-image:url(/eximg/viewer/viewer-2.jpg)" class="active">
                    <div id="tempImage_2"></div>
                    <video width="100%" height="100%" autoplay loop preload="auto" class="slider-video"
                           style="width:100%; height:auto;">
                        <source src="" type="video/mp4"></source>
                    </video>
                    <div class="mask"></div>
                    <a target="_blank">
                        <div><p class="title ellipsis">Cinder Sensing Cooker</p>
                            <p class="subtitle">Develop a perfact taste for mastery</p></div>
                        <div class="sliderArrow fa fa-angle-down"></div>
                    </a></li>
                <li style="background-image:url(/eximg/viewer/viewer-3.jpg)" class="active">
                    <div id="tempImage_3"></div>
                    <video width="100%" height="100%" autoplay loop preload="auto" class="slider-video"
                           style="width:100%; height:auto;">
                        <source src="../7xw3we.com1.z0.glb.clouddn.com/wp-content/uploads/2016/03/01.mp4"
                                tppabs="http://7xw3we.com1.z0.glb.clouddn.com/wp-content/uploads/2016/03//01.mp4"
                                type="video/mp4"></source>
                    </video>
                    <div class="mask"></div>
                    <a target="_blank">
                        <div><p class="title ellipsis">The World's Smartest Grill</p>
                            <p class="subtitle">Meals Without the Water, Bags or Hassle</p></div>
                        <div class="sliderArrow fa fa-angle-down"></div>
                    </a></li>

            </ul>
        </div>
        <div id="mproject" class="module">
            <div class="bgmask"></div>
            <div class="content layoutslider">
                <div class="header wow"><p class="title">菜品</p>
                    <p class="subtitle">PRODUCTS</p>
                </div>
                <div id="category" class="hide wow">

                    <a href="/getDishList/1">头盘</a>


                    <a href="/getDishList/2">副菜</a>


                    <a href="/getDishList/3">靓汤</a>


                    <a href="/getDishList/4">主菜</a>


                    <a href="/getDishList/5">蔬果</a>


                </div>
                <!--yyLayout masonry-->
                <div class="module-content" id="projectlist">
                    <div class="projectSubList" id="projectSubList_">
                        <div class="projectSubHeader">
                            <p class="title"></p>
                            <p class="subtitle"></p>
                        </div>
                        <div class="wrapper">
                            <ul class="content_list" data-options-sliders="4" data-options-margin="20"
                                data-options-ease="cubic-bezier(.73,-0.03,.24,1.01)" data-options-speed="0.5">

                                <c:forEach items="${topDish}" var="d">

                                    <li id="projectitem_1" class="projectitem wow">
                                        <a href='/getDish/${d.id}'
                                           tppabs="http://dede24.va666.com/a/caipin/toupan/1.html"
                                           class="projectitem_content" target="_self">
                                            <div class="projectitem_wrapper">
                                                <div class="project_img"><img
                                                        src="uploads/allimg/160916/1 (<%=(int)(Math.floor(Math.random()*10+1))%>).jpg"
                                                        tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161612570-L.jpg"
                                                        width="650" height="385"/></div>
                                                <div class="project_info">
                                                    <div>
                                                        <p class="title">${d.name}</p>
                                                        <p class="subtitle">${d.sdetail}</p>
                                                        <p class="description hide">Semestral project - publicLocation:
                                                            Nałęczów, PolandStatus: ideadate: 2016在线预约</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </li>

                                </c:forEach>

                            </ul>
                        </div><!--wrapper-->
                    </div><!--projectSubList-->
                    <a href="#" class="more wow">MORE<i class="fa fa-angle-right"></i></a>
                </div>
                <!--projectlist-->
                <div class="clear"></div>
            </div>
        </div><!--project-->
        <div id="mservice" class="module"
             style="background-image:url(/templets/cloud_04/images/1468930119172.jpg); data-infiniteLoop="
        ">
        <div class="bgmask"></div>
        <div class="content layoutslider">
            <div class="header wow fw" data-wow-delay=".1s">
                <p class="title">服务</p>
                <p class="subtitle">service</p>
            </div>
            <div class="module-content fw" id="servicelist">
                <div class="wrapper">
                    <ul class="content_list" data-options-sliders="3" data-options-margin="0" data-options-ease="1"
                        data-options-speed="0.5">
                        <li id="serviceitem_1" class="serviceitem wow"><a href="a/fuwu/18.html"
                                                                          tppabs="http://dede24.va666.com/a/fuwu/18.html"
                                                                          target="_blank"><img
                                src="uploads/allimg/160916/1-1609161I6330-L.png"
                                tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161I6330-L.png" width="320"
                                height="120"/>
                            <div>
                                <p class="title">西餐礼仪细节</p>
                                <p class="description">吃沙拉时，通常会遇上较大片的菜叶，这时不要用刀子切开菜叶而应以刀叉将其折起来，再以 ......</p>
                            </div>
                        </a>
                            <a href="#" target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li id="serviceitem_2" class="serviceitem wow"><a href="a/fuwu/17.html"
                                                                          tppabs="http://dede24.va666.com/a/fuwu/17.html"
                                                                          target="_blank"><img
                                src="uploads/allimg/160916/1-1609161I6040-L.png"
                                tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161I6040-L.png" width="320"
                                height="120"/>
                            <div>
                                <p class="title">西餐服务知识</p>
                                <p class="description">在西餐中最具有代表性的食物，那就非牛排莫属了，精致菜式大放送!全部都出自世界 ......</p>
                            </div>
                        </a>
                            <a href="#" target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li id="serviceitem_3" class="serviceitem wow"><a href="a/fuwu/19.html"
                                                                          tppabs="http://dede24.va666.com/a/fuwu/19.html"
                                                                          target="_blank"><img
                                src="uploads/allimg/160916/1-1609161IA70-L.png"
                                tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161IA70-L.png" width="320"
                                height="120"/>
                            <div>
                                <p class="title">米其林精美菜式须知</p>
                                <p class="description">在法国，厨师属于艺术家的范畴，法国还有一家全球闻名、历史悠久的为这些艺术家及他们的 ......</p>
                            </div>
                        </a>
                            <a href="#" target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li id="serviceitem_4" class="serviceitem wow"><a href="a/fuwu/20.html"
                                                                          tppabs="http://dede24.va666.com/a/fuwu/20.html"
                                                                          target="_blank"><img
                                src="uploads/allimg/160916/1-1609161II50-L.png"
                                tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161II50-L.png" width="320"
                                height="120"/>
                            <div>
                                <p class="title">SPECIAL EVENTS</p>
                                <p class="description">For special events & private functions in New York City please
                                    complete the below inquiry form ......</p>
                            </div>
                        </a>
                            <a href="#" target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li id="serviceitem_5" class="serviceitem wow"><a href="a/fuwu/21.html"
                                                                          tppabs="http://dede24.va666.com/a/fuwu/21.html"
                                                                          target="_blank"><img
                                src="uploads/allimg/160916/1-1609161IK80-L.png"
                                tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161IK80-L.png" width="320"
                                height="120"/>
                            <div>
                                <p class="title">NEW YORK CITY RESTAURANT</p>
                                <p class="description">在西餐中最具有代表性的食物，那就非牛排莫属了，精致菜式大放送!全部都出自世界 ......</p>
                            </div>
                        </a>
                            <a href="#" target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>


                    </ul>
                </div>
            </div>
            <div class="clear"></div>
            <a href="a/guanyu/xinwen/index.htm" tppabs="http://dede24.va666.com/a/guanyu/xinwen/"
               class="more wow">MORE<i class="fa fa-angle-right"></i></a></div>
    </div>
    <div id="mpage" class="module">
        <div class="bgmask"></div>
        <div class="content">
            <div class="module-content">
                <div class="wrapper">
                    <ul class="slider one">
                        <li>
                            <div class="header wow" data-wow-delay=".2s"><p class="title">关于</p>
                                <p class="subtitle">about</p></div>
                            <div class="des-wrap"><p class="description wow" data-wow-delay=".3s">
                                创客云数字市场是一个主题模板/创意作品/数字交易平台，你可以出售最优秀的网页模板和平面设计作品！本站全部主题模板为100%正品模板，支持更新升级！</p></div>
                            <a href="a/guanyu/index.htm" tppabs="http://dede24.va666.com/a/guanyu/" class="more wow"
                               data-wow-delay=".5s">MORE<i class="fa fa-angle-right"></i></a>
                            <div class="fimg wow"
                                 style="background-image:url(/templets/cloud_04/images/1468930213526.jpg)"></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div id="mnews" class="module" style="background-image:url(/templets/cloud_04/images/1468930282730.jpg);">
        <div class="bgmask"></div>
        <div class="content layoutnone">
            <div class="header wow">
                <p class="title">新闻</p>
                <p class="subtitle">news</p>
            </div>
            <div class="module-content" id="newslist">
                <div class="wrapper">
                    <ul class="content_list" data-options-sliders="4" data-options-margin="0"
                        data-options-ease="cubic-bezier(.73,-0.03,.24,1.01)" data-options-speed="0.8"
                        data-options-mode="horizontal" data-options-wheel="0">
                        <li id="newsitem_0" class='wow newstitem left'
                        "><a class="newscontent" target="_blank" href="a/guanyu/xinwen/gongsixinwen/22.html"
                             tppabs="http://dede24.va666.com/a/guanyu/xinwen/gongsixinwen/22.html">
                        <div class="news_wrapper">
                            <div class="newsbody">
                                <p class="date"><span class="md">09-18<span>-</span></span><span
                                        class="year">09-18</span></p>
                                <p class="title">理想的下午，在家喝出女</p>
                                <div class="separator"></div>
                                <p class="description">合理的饮食，是身体健康的第一要素抵挡冬日的严寒一个人的餐桌，也可以有更其实除了各种游乐设施，既体现迪士尼童话主题，又入乡随</p>
                            </div>
                        </div>
                        <div class="newsimg"
                             style="background-image:url(/uploads/allimg/160916/1-1609161K1390-L.jpg)"></div>
                    </a>
                        <a href="a/guanyu/xinwen/gongsixinwen/22.html"
                           tppabs="http://dede24.va666.com/a/guanyu/xinwen/gongsixinwen/22.html" target="_blank"
                           class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li id="newsitem_1" class='wow newstitem right'
                        "><a class="newscontent" target="_blank" href="a/guanyu/xinwen/xingyexinwen/25.html"
                             tppabs="http://dede24.va666.com/a/guanyu/xinwen/xingyexinwen/25.html">
                        <div class="news_wrapper">
                            <div class="newsbody">
                                <p class="date"><span class="md">09-18<span>-</span></span><span
                                        class="year">09-18</span></p>
                                <p class="title">食物有超乎想象的治愈力</p>
                                <div class="separator"></div>
                                <p class="description">除了面包和泡面之外，一个人的餐桌，也可以有更多选择一个人的生活除了面包和泡面之外，一个人的餐桌 ... ...</p>
                            </div>
                        </div>
                        <div class="newsimg"
                             style="background-image:url(/uploads/allimg/160916/1-1609161K4510-L.jpg)"></div>
                    </a>
                        <a href="a/guanyu/xinwen/xingyexinwen/25.html"
                           tppabs="http://dede24.va666.com/a/guanyu/xinwen/xingyexinwen/25.html" target="_blank"
                           class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li id="newsitem_2" class='wow newstitem right'
                        "><a class="newscontent" target="_blank" href="a/guanyu/xinwen/gongsixinwen/23.html"
                             tppabs="http://dede24.va666.com/a/guanyu/xinwen/gongsixinwen/23.html">
                        <div class="news_wrapper">
                            <div class="newsbody">
                                <p class="date"><span class="md">09-17<span>-</span></span><span
                                        class="year">09-17</span></p>
                                <p class="title">菊苣烤龙虾配照烧鹅肝和</p>
                                <div class="separator"></div>
                                <p class="description">合理的饮食，是身体健康的第一要素抵挡冬日的严寒一个人的餐桌，也可以有更 ......</p>
                            </div>
                        </div>
                        <div class="newsimg"
                             style="background-image:url(/uploads/allimg/160916/1-1609161K2340-L.jpg)"></div>
                    </a>
                        <a href="a/guanyu/xinwen/gongsixinwen/23.html"
                           tppabs="http://dede24.va666.com/a/guanyu/xinwen/gongsixinwen/23.html" target="_blank"
                           class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li id="newsitem_3" class='wow newstitem right'
                        "><a class="newscontent" target="_blank" href="a/guanyu/xinwen/xingyexinwen/24.html"
                             tppabs="http://dede24.va666.com/a/guanyu/xinwen/xingyexinwen/24.html">
                        <div class="news_wrapper">
                            <div class="newsbody">
                                <p class="date"><span class="md">09-17<span>-</span></span><span
                                        class="year">09-17</span></p>
                                <p class="title">西餐礼仪细节，让你成为</p>
                                <div class="separator"></div>
                                <p class="description">>除了面包和泡面之外，一个人的餐桌，也可以有更多选择一个人的生活 ......</p>
                            </div>
                        </div>
                        <div class="newsimg"
                             style="background-image:url(/uploads/allimg/160916/1-1609161H6260-L.png)"></div>
                    </a>
                        <a href="a/guanyu/xinwen/xingyexinwen/24.html"
                           tppabs="http://dede24.va666.com/a/guanyu/xinwen/xingyexinwen/24.html" target="_blank"
                           class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>


                    </ul>
                </div>
            </div>
            <div class="clear"></div>
            <a href="a/guanyu/xinwen/index.htm" tppabs="http://dede24.va666.com/a/guanyu/xinwen/"
               class="more wow">MORE<i class="fa fa-angle-right"></i></a>
            <div style="height:0">&nbsp;</div>
        </div>
    </div>
    <div id="mteam" data-title="" class="module">
        <div class="bgmask"></div>
        <div class="content layoutnone">
            <div class="header wow">
                <p class="title">团队</p>
                <p class="subtitle"></p>
            </div>
            <div class="module-content fw">
                <div class="wrapper">
                    <ul class="content_list" data-options-sliders="3" data-options-margin="20"
                        data-options-ease="cubic-bezier(.73,-0.03,.24,1.01)" data-options-speed="1">
                        <li id="teamitem_1" class="wow">
                            <div class="header wow" data-wow-delay=".1s"><a href="a/guanyu/tuandui/6.html"
                                                                            tppabs="http://dede24.va666.com/a/guanyu/tuandui/6.html"
                                                                            target="_blank"><img
                                    src="uploads/allimg/160916/1-1609161G2060-L.jpg"
                                    tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161G2060-L.jpg"
                                    width="180" height="180"/></a></div>
                            <div class="summary wow">
                                <p class="title"><a href="a/guanyu/tuandui/6.html"
                                                    tppabs="http://dede24.va666.com/a/guanyu/tuandui/6.html">
                                    Joseph</a></p>
                                <p class="subtitle">Joseph</p>
                                <p class="description wow">- station host computer desktop wallpaper cool Sibutramine
                                    furniture design activity design of judges- 2014-2015 Chinese Web Design Alliance
                                    design panel...</p>
                            </div>
                            <a href="a/guanyu/tuandui/6.html" tppabs="http://dede24.va666.com/a/guanyu/tuandui/6.html"
                               target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li id="teamitem_2" class="wow">
                            <div class="header wow" data-wow-delay=".2s"><a href="a/guanyu/tuandui/8.html"
                                                                            tppabs="http://dede24.va666.com/a/guanyu/tuandui/8.html"
                                                                            target="_blank"><img
                                    src="uploads/allimg/160916/1-1609161GQ00-L.jpg"
                                    tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161GQ00-L.jpg"
                                    width="180" height="180"/></a></div>
                            <div class="summary wow">
                                <p class="title"><a href="a/guanyu/tuandui/8.html"
                                                    tppabs="http://dede24.va666.com/a/guanyu/tuandui/8.html">
                                    Maggie</a></p>
                                <p class="subtitle">市场总监</p>
                                <p class="description wow">- NEWWEBPICK, the world's leading electronic design magazine,
                                    recommended by the designer and web site.- the case is included in the NEWWEBPICK
                                    electronic magazine (twenty-ninth)...</p>
                            </div>
                            <a href="a/guanyu/tuandui/8.html" tppabs="http://dede24.va666.com/a/guanyu/tuandui/8.html"
                               target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>
                        <li id="teamitem_3" class="wow">
                            <div class="header wow" data-wow-delay=".3s"><a href="a/guanyu/tuandui/7.html"
                                                                            tppabs="http://dede24.va666.com/a/guanyu/tuandui/7.html"
                                                                            target="_blank"><img
                                    src="uploads/allimg/160916/1-1609161G4150-L.jpg"
                                    tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161G4150-L.jpg"
                                    width="180" height="180"/></a></div>
                            <div class="summary wow">
                                <p class="title"><a href="a/guanyu/tuandui/7.html"
                                                    tppabs="http://dede24.va666.com/a/guanyu/tuandui/7.html">
                                    Aaron</a></p>
                                <p class="subtitle">米其林三星主厨</p>
                                <p class="description wow">7年互联网经验，曾服务于搜狐火炬传递、北京建筑设计研究院 、日本电通等大型客户 ,对设计品质有执着追求
                                    ......</p>
                            </div>
                            <a href="a/guanyu/tuandui/7.html" tppabs="http://dede24.va666.com/a/guanyu/tuandui/7.html"
                               target="_blank" class="details">more<i class="fa fa-angle-right"></i></a>
                        </li>


                    </ul>
                </div>
            </div>
            <div class="clear"></div>
            <a href="index.htm" tppabs="http://dede24.va666.com/" class="more wow">MORE<i class="fa fa-angle-right"></i></a>
        </div>
    </div>
    <div id="mpartner" class="module">
        <div class="bgmask"></div>
        <div class="content layoutslider">
            <div class="header wow fw" data-wow-delay=".1s"><p class="title">合作单位</p>
                <p class="subtitle">relationship</p></div>
            <div class="module-content fw">
                <div class="wrapper">
                    <ul class="content_list" data-options-ease="1" data-options-speed="0.5">
                        <li id="partneritem_0" class="wow">
                            <a title="uemo" target="_blank"><img src="uploads/allimg/160916/1-1609161HF40-L.png"
                                                                 tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161HF40-L.png"
                                                                 width="160" height="80"/></a>
                            <a title="uemo" target="_blank"><img src="uploads/allimg/160916/1-1609161HJ50-L.png"
                                                                 tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161HJ50-L.png"
                                                                 width="160" height="80"/></a>
                            <a title="uemo" target="_blank"><img src="uploads/allimg/160916/1-1609161HH30-L.png"
                                                                 tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161HH30-L.png"
                                                                 width="160" height="80"/></a>
                            <a title="uemo" target="_blank"><img src="uploads/allimg/160916/1-1609161H6430-L.png"
                                                                 tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161H6430-L.png"
                                                                 width="160" height="80"/></a>
                            <a title="uemo" target="_blank"><img src="uploads/allimg/160916/1-1609161H6260-L.png"
                                                                 tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161H6260-L.png"
                                                                 width="160" height="80"/></a>
                            <a title="uemo" target="_blank"><img src="uploads/allimg/160916/1-1609161H6070-L.png"
                                                                 tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161H6070-L.png"
                                                                 width="160" height="80"/></a>
                            <a title="uemo" target="_blank"><img src="uploads/allimg/160916/1-1609161H5480-L.png"
                                                                 tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161H5480-L.png"
                                                                 width="160" height="80"/></a>
                            <a title="uemo" target="_blank"><img src="uploads/allimg/160916/1-1609161H5190-L.png"
                                                                 tppabs="http://dede24.va666.com/uploads/allimg/160916/1-1609161H5190-L.png"
                                                                 width="160" height="80"/></a>

                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div id="mcontact" class="module">
        <div class="bgmask"></div>
        <div class="content">
            <div class="header wow fadeInUp fw" data-wow-delay=".1s">
                <p class="title">反馈</p>
                <p class="subtitle">Contact Us</p>
            </div>
            <div id="contactlist" class="fw">
                <div id="contactinfo" class="fl wow" data-wow-delay=".2s">

                    <h3 class="ellipsis name">MARRIOT.T</h3>
                    <p class="ellipsis add"><span>地点：</span>Do You Best,Mutually Promote Symbiosis</p>
                    <p class="ellipsis zip"><span>邮编：</span>4678900</p>
                    <p class="ellipsis tel"><span>电话：</span>0755-88888888</p>
                    <p class="ellipsis mobile"><span>手机：</span>18888888888</p>
                    <p class="ellipsis email"><span>邮箱：</span>alice@88.com</p>
                    <div><a class="fl" target="_blank" href="#"><i class="fa fa-weibo"></i></a><a class="fl"
                                                                                                  target="_blank"
                                                                                                  href="#"><i
                            class="fa fa-qq"></i></a> <a id="mpbtn" class="fl"
                                                         href="javascript:if(confirm('http://dede24.va666.com/templets/cloud_04/images/1438424052624.jpg  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ����һ��λ���ѱ�վ����������ų���׼���������Ե�·����ַ��(Teleport Pro ���ԶԸ�ѡ��������ã�����ġ��������ԡ�-������淶��)  \n\n����Ҫ�ӷ�����������?'))window.location='http://dede24.va666.com/templets/cloud_04/images/1438424052624.jpg'"
                                                         tppabs="http://dede24.va666.com/templets/cloud_04/images/1438424052624.jpg"><i
                            class="fa fa-weixin"></i></a></div>
                </div>
                <div id="contactform" class="fr wow" data-wow-delay=".2s">
                    <form action="/subReview" enctype="multipart/form-data" method="post">
                        <input type="hidden" name="action" value="post"/>
                        <input type="hidden" name="diyid" value="1"/>
                        <input type="hidden" name="do" value="2"/>
                        <p>
                            <input type="text" class="inputtxt name" name="xm" placeholder="姓名" autocomplete="off"/>
                        </p>
                        <p>
                            <input type="text" class="inputtxt email" name="yx" placeholder="邮箱" autocomplete="off"/>
                        </p>
                        <p>
                            <input type="text" class="inputtxt tel" name="dh" placeholder="电话" autocomplete="off"/>
                        </p>
                        <p>
                            <textarea class="inputtxt cont" name="nr" placeholder="内容" autocomplete="off"></textarea>
                        </p>
                        <p><input type="hidden" name="dede_fields" value="xm,text;yx,text;dh,text;nr,multitext"/>
                            <input type="hidden" name="dede_fieldshash" value="2e77979dd224891e8d013062b31106d5"/>
                            <input class="inputsub" type="submit" value="提交"/>
                        </p>
                    </form>
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

<div class="hide"></div>
</body>

<%--购物车--%>
<div id="cardiv" style="display: none">
    <table class="table-cart" style="width: 100%">
        <tbody id="carTbody">
        </tbody>
    </table>
    <div class="pricePlace">总计 :
        <span class="priceNum" id="priceNum"> 100.86$</span>
    </div>
    <a href="/getCheckoutPage">
        <div class="carBtn" id="carBtn">结算</div>
    </a>
</div>


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
        <div class="layui-input-block">
            <input type="number" name="title"
                   id="dishcount"
                   value="1"
                   onchange="noNagtive(this)" required lay-verify="required" placeholder="请输入标题" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="okbtn" id="subTOCar">确定</div>
</div>


<link rel="stylesheet" type="text/css" href="/xgather/xcss/dishDetail.css">

<script src="/xgather/xlib/layui-v2.5.6/layui/layui.all.js"></script>
<script src="/xgather/xlib/axios.min.js"></script>
<%--<script src="/xgather/xlib/jquery.min.js"></script>--%>

<link rel="stylesheet" type="text/css" href="/xgather/xcss/car.css">
<link rel="stylesheet" type="text/css" href="/xgather/xlib/layui-v2.5.6/layui/css/layui.css">
<script src="/xgather/xlib/layer/layer.js"></script>
<script src="/xgather/xjs/car.js"></script>
<script src="/xgather/xjs/util.js"></script>
<script src="/xgather/xjs/dishDetail.js"></script>


</html>