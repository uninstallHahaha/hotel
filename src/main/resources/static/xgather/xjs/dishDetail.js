function noNagtive(e)
{
    if($(e).val()<=0){
        $(e).val(1)
    }
}


$(function(){

    $('#joinCarBtn').click(function () {
        layer.open({
            type: 1,
            closeBtn: 0, //不显示关闭按钮
            anim: 2,
            area: ['600px', '400px'],
            shadeClose: true, //开启遮罩关闭
            content: $('#selDishCount')
    });
    })

    $('#subTOCar').click(function () {

    })

})