function subReview() {
    var xm = $('#xm').val()
    var yx = $('#yx').val()
    var dh = $('#dh').val()
    var nr = $('#nr').val()
    if(xm==""||yx==""||dh==""||nr==""){
        layer.msg('请完善信息')
    }else{
        layer.msg('提交成功')
    }
}