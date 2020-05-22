//取cookies
function getCookie(name){
    let arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if (arr != null) return unescape(arr[2]);
    return null;
}
//删除cookie
function delCookie(name){
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval = getCookie(name);
    if (cval != null)
        document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString()+";path=/";
}


$(function () {

    //初始化购物车
    initCarDOM()

    //提交订单
    $('#checkoutBtn').click(function () {
        var username = $('#username').val()
        var userphone = $('#userphone').val()
        var beizhu = $('#beizhu').val()
        var room = $('#room').val()
        if (username == "" || userphone == "") {
            layer.msg('请完善信息')
            return
        }
        //得到购物车数据
        var items = getItemsFormCookie()
        if(items.length == 0){
            layer.msg('您还没有选择任何商品')
            return
        }
        var isreturn = 0;
        items.forEach((item,index)=>{
            if(parseInt(item['count'])>100){
                layer.msg('您点这么多您吃得完吗')
                isreturn = 1
            }
        })
        if(isreturn == 1) return
        if(items.length > 10){
            layer.msg('您点这么多您吃得完吗')
            return
        }
        $.ajax({
            url: '/subOrder',
            data: {username: username, userphone: userphone, beizhu: beizhu,room:room,
                items: JSON.stringify(items)},
            method: 'post',
            success: function (res) {
                if (res == 1) {
                    layer.msg('订单提交成功')
                    delCookie("CAR");
                    location.href="/getBillPage"
                } else {
                    layer.msg('订单提交失败')
                }
            }
        })
    })
})

