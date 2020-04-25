function getItemsFormCookie(){
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
        }else{
            return  null
        }
    }
}