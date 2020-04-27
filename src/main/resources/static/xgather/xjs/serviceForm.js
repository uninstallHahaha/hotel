$(function () {


    //提交呼叫服务
    $('#checkoutBtn').click(function () {
        var username = $('#username').val()
        var userphone = $('#userphone').val()
        var beizhu = $('#beizhu').val()
        var serviceType = $('#serviceType').val()
        if (username == "" || userphone == "" || beizhu=="") {
            layer.msg('请完善信息')
            return
        }
        $.ajax({
            url: '/subServiceCall',
            data: {username: username, userphone: userphone, beizhu: beizhu, serviceType: serviceType},
            method: 'post',
            success: function (res) {
                if (res == 1) {
                    layer.msg('呼叫服务成功')
                    location.href="/"
                } else {
                    layer.msg('呼叫服务失败')
                }
            }
        })

    })

})