function triggle(t) {
    for(var a=0;a<4;a++){
        $('#b'+a).removeClass('active')
    }
    $('#b'+t).addClass('active')
    if (t == 0) {
        var chis = $('#listWrapper').children()
        for (var i = 0; i < chis.length; i++) {
            $(chis[i]).css('display', 'block');
        }
        return
    }
    var chis = $('#listWrapper').children()
    for (var i = 0; i < chis.length; i++) {
        $(chis[i]).css('display', 'block');
        if ($(chis[i]).attr('data-type') != t) {
            $(chis[i]).css('display', 'none');
        }
    }
    return

}


function delServe(id) {
        layer.confirm('是否删除?',function () {
            $.ajax({
                url: '/delServe',
                data: {id: id},
                method: 'post',
                success: function (res) {
                    if (res == 1) {
                        layer.msg('服务记录删除成功')
                        $('#record'+id).remove()
                    } else {
                        layer.msg('服务记录删除失败')
                    }
                }
            })
        })
}