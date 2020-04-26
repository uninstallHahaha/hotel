$(function () {

    //初始化购物车
    initCarDOM()

    //得到购物车数据
    var items = getItemsFormCookie()

    //提交订单
    $('#checkoutBtn').click(function () {
        var username = $('#username').val()
        var userphone = $('#userphone').val()
        var beizhu = $('#beizhu').val()
        if (username == "" || userphone == "" || beizhu == "") {
            layer.msg('请完善信息')
            return
        }
        $.ajax({
            url: '/subOrder',
            data: {username: username, userphone: userphone, beizhu: beizhu, items: JSON.stringify(items)},
            method: 'post',
            success: function (res) {
                if (res == 1) {
                    layer.msg('订单提交成功')
                } else {
                    layer.msg('订单提交失败')
                }
            }
        })
    })
})