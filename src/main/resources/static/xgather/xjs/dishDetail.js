

$(function () {

    //选择数量层对象
    var layerCount;

    $('#joinCarBtn').click(function () {
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
    })

    //添加到购物车
    $('#subTOCar').click(function () {
        var id = $('#dishid').val()
        var name = $('#dishname').val()
        var count = $('#dishcount').val()
        var price = $('#dishprice').val()
        $.ajax({
            url: '/addToCar',
            data: {id: id, name: name, count: count, price: price},
            method: 'post',
            success: function (res) {
                if (res == 1) {
                    parent.layer.msg('添加成功')
                } else {
                    parent.layer.msg('添加失败')
                }
                layer.close(layerCount);
            }
        })
    })

})