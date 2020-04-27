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