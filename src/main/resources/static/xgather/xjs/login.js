$(function () {

    $('#loginBtn').click(function () {
        var name = $('#inputName').val()
        var pass = $('#inputPassword').val()
        var mem = $('input[name="rememberMe"]:checked').length
        if(name == "" || pass =="") {
            layer.msg('账户或者密码不能为空')
            return
        }
        $.ajax({
            'url': '/signin',
            'method':'post',
            data:{name:name,pass:pass,mem:mem},
            success:function (res) {
                if(res.stat == 1){
                    location.href="/"
                }else{
                    layer.msg(res.data)
                }
            }
        })
    })

    $('#inputName').bind('change',function () {

        var arrCookie = document.cookie.split(';')
        var username
        var passWord
        for (var i = 0; i < arrCookie.length; i++) {
            var arr = arrCookie[i].trim().split('=')
            if (arr[0] === 'name') {
                username = arr[1]
            }
            if (arr[0] === 'pass') {
                passWord = arr[1]
            }
        }
        if(username == $('#inputName').val()){
            $('#inputPassword').val(passWord)
            $('#rememberMe').attr("checked", 'checked')
        }
    })


})