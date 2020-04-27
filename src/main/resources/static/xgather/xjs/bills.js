function delBill(id) {
    layer.confirm('是否删除?', function () {
        $.ajax({
            url: '/delBill',
            data: {id: id},
            method: 'post',
            success: function (res) {
                if (res != 0) {
                    layer.msg('账单删除成功')
                    $('#record' + id).remove()
                } else {
                    layer.msg('账单删除失败')
                }
            }
        })
    })
}