function getItemsFormCookie() {
    //从 cookie 中解出购物车数据
    var arrCookie = document.cookie.split(';')
    for (var i = 0; i < arrCookie.length; i++) {
        var arr = arrCookie[i].trim().split('=')
        if (arr[0] === 'CAR') {
            //购物车数据
            var car_data = arr[1]
            var resList = new Array()
            //条目
            var items = car_data.split('#')
            items.forEach((item, index) => {
                if (item != "") {
                    var m = new Map()
                    //属性对
                    var attrs = item.split('@')
                    attrs.forEach((kv) => {
                        var kav = kv.split(':')
                        m[kav[0]] = kav[1]
                    })
                    resList.push(m)
                }
            })
            return resList
        } else {
            return null
        }
    }
}

//初始化购物车dom
function initCarDOM() {
    var items = getItemsFormCookie()
    if (items == null) return
    var totalprice = 0
    //添加行
    items.forEach((item, index) => {
        var tDOM =
            "<tr class=\"cartr\">\n" +
            "                                <td class=\"title\">\n" +
            "                                <span class=\"name\">\n" +
            "                                    <a href=\"#productModal\" data-toggle=\"modal\"> " + item.name + "</a>\n" +
            "                                </span>\n" +
            "                                </td>\n" +
            "                                <td class=\"count\">x" + item.count + "</td>\n" +
            "                                <td class=\"price\">$" + item.price * item.count + "</td>\n" +
            "                                <td class=\"actions\">\n" +
            "                                    <a href='#' onclick='showCountModal(this)' data-id='" + item.id + "'" +
            "data-name='" + item.name + "' data-price='" + item.price + "' data-toggle=\"modal\" class=\"action-icon\">\n" +
            "                                        <i class=\"layui-icon layui-icon-edit\"></i>\n" +
            "                                    </a>\n" +
            "                                    <a href=\"#\" class=\"action-icon\">\n" +
            "                                        <i class=\"layui-icon layui-icon-close\"></i>\n" +
            "                                    </a>\n" +
            "                                </td>\n" +
            "                            </tr>"
        $('#carTbody').append(tDOM)
        totalprice += parseInt(item.price * item.count)
    })
    //修改总计
    $('#priceNum').text(totalprice + '$')
}

var layerCount;

//显示数量修改modal
function showCountModal(the) {
    //修改count弹窗信息
    $('#c-dishname').text($(the).attr('data-name'))
    $('#c-dishprice').text('单价: ' + $(the).attr('data-price') + '$')
    $('#dishid').val($(the).attr('data-id'))
    $('#dishname').val($(the).attr('data-name'))
    $('#dishname').val($(the).attr('data-name'))
    $('#dishprice').val($(the).attr('data-price'))
    //弹窗
     layerCount = layer.open({
        type: 1,
        // offset: 'l',
        title: false,
        closeBtn: 1,
        anim: 2,
        area: ['500px', '520px'],
        shadeClose: true,
        shade: 0.4,
        content: $('#selDishCount')
    });
}

//提交到购物车
function subTOCar() {
    var id = $('#dishid').val()
    var name = $('#dishname').val()
    var count = $('#dishcount').val()
    var price = $('#dishprice').val()
    $.ajax({
        url:'/addToCar',
        data:{id:id,name:name,count:count,price:price},
        method:'post',
        success:function (res) {
            if(res == 1){
                layer.msg('添加成功')
            }else{
                layer.msg('添加失败')
            }
            layer.close(layerCount);
        }
    })
}