$(function () {

    //打开购物车
    $('#showCar').click(function () {

        layer.open({
            title: '购物车',
            type: 1,
            closeBtn: 0, //不显示关闭按钮
            anim: 2,
            offset: 'r',
            area: ['400px', '100vh'],
            shadeClose: true, //开启遮罩关闭
            content: $('#cardiv')
        });

    })

})