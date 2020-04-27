function noNagtive(e) {
    if ($(e).val() <= 0) {
        $(e).val(1)
    }
}


//从 cookie 中解出购物车数据
function getItemsFormCookie() {
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
    //清空
    $('#carTbody').empty()
    //添加行
    items.forEach((item, index) => {
        var tDOM =
            "<tr class=\"cartr\" id='" + item.id + "'>\n" +
            "                                <td class=\"title\">\n" +
            "                                <span class=\"name\">\n" +
            "                                    <a href=\"#productModal\" data-toggle=\"modal\"> " + item.name + "</a>\n" +
            "                                </span>\n" +
            "                                </td>\n" +
            "                                <td class=\"count\">x" + item.count + "</td>\n" +
            "                                <td class=\"price\">$" + item.price * item.count + "</td>\n" +
            "                                <td class=\"actions\">\n" +
            "                                    <a href='#' onclick='showCountModal(this)' data-id='" + item.id + "'" +
            "data-name='" + item.name + "' data-price='" + item.price + "' data-count='"+item.count+"' data-toggle=\"modal\" class=\"action-icon\">\n" +
            "                                        <i class=\"layui-icon layui-icon-edit\"></i>\n" +
            "                                    </a>\n" +
            "                                    <a href=\"#\" class=\"action-icon\" onclick='delItemFromCar(\"" + item.id + "\")'>\n" +  //<a href=\"#\" class=\"action-icon\" onclick='delItemFromCar(\""+item.id+"\")'>
            "                                        <i class=\"layui-icon layui-icon-close\" ></i>\n" +
            "                                    </a>\n" +  //</a>
            "                                </td>\n" +
            "                            </tr>"
        $('#carTbody').append(tDOM)
        totalprice += parseInt(item.price * item.count)
    })
    //修改总计
    $('#priceNum').text(totalprice + '$')
}

//选择数量层对象
var layerCount;

//点击购物车中的编辑按钮后弹出修改数量的modal
function showCountModal(the) {
    //修改count弹窗信息
    $('#c-dishname').text($(the).attr('data-name'))
    $('#c-dishprice').text('单价: ' + $(the).attr('data-price') + '$')
    $('#dishid').val($(the).attr('data-id'))
    $('#dishname').val($(the).attr('data-name'))
    $('#dishname').val($(the).attr('data-name'))
    $('#dishprice').val($(the).attr('data-price'))
    $('#dishcount').val($(the).attr('data-count'))
    //按钮功能改为修改
    $('#subTOCar').unbind('click')
    $('#subTOCar').bind('click',modTOCar)
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

//提交到购物车cookie
var subTOCar = function () {
    var id = $('#dishid').val()
    var name = $('#dishname').val()
    var count = $('#dishcount').val()
    var price = $('#dishprice').val()

    let param = new URLSearchParams()
    param.append('id', id)
    param.append('name', name)
    param.append('count', count)
    param.append('price', price)
    axios({
        method: 'post',
        url: '/addToCar',
        data: param
    }).then(function (res) {
        if (res.data == 1) {
            layer.msg('添加成功')
        } else {
            layer.msg('添加失败')
        }
        layer.close(layerCount);
    }).catch(function (error) {
    })
}


//修改购物车cookie , 即修改某条目的数量
var modTOCar = function (){
    var id = $('#dishid').val()
    var name = $('#dishname').val()
    var count = parseInt($('#dishcount').val())
    var price = parseInt($('#dishprice').val())
    let param = new URLSearchParams()
    param.append('id', id)
    param.append('name', name)
    param.append('count', count)
    param.append('price', price)
    axios({
        method: 'post',
        url: '/modToCar',
        data: param
    }).then(function (res) {
        if (res.data == 1) {
            layer.msg('修改成功')
            initCarDOM()
        } else {
            layer.msg('修改失败')
        }
        layer.close(layerCount);
    }).catch(function (error) {
    })
}

//删除购物车条目
function delItemFromCar(ida) {
    let param = new URLSearchParams()
    param.append('id', ida)
    axios({
        method: 'post',
        url: '/delete',
        data: param
    }).then(function (res) {
        if(res.data == 1){
            layer.msg('删除成功')
            //重新加载购物车
            initCarDOM()
        }else{
            layer.msg('删除失败')
        }
    }).catch(function (error) {
    })
}