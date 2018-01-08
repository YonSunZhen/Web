//创建Cookie
//function setCookie(key, value) {
//    document.cookie = encodeURIComponent(key) + '=' + encodeURIComponent(value);
//}
function setCookie(key, value,expires) {
    document.cookie = encodeURIComponent(key) + '=' + encodeURIComponent(value) +';expires = ' + ddate(expires);
}

function ddate(expires) {
    var ddate = new Date()
    ddate.setDate(ddate.getDate() + expires)
    return ddate;
}

//获取Coolie
function getCookie(name) {
    var attStr = document.cookie.split(';');
    for (var i = 0; i < attStr.length; i++) {
        var arr = attStr[i].split('=')
        if (arr[0] == name) { return (arr[1]);}
    }
    return ''
}

//function getCookie(Name) {
//    var search = Name + "=";
//    var returnvalue = "";
//    if (document.cookie.length > 0) {
//        offset = document.cookie.indexOf(search);
//        if (offset != -1) {
//            offset += search.length;
//            end = document.cookie.indexOf(";", offset);
//            if (end == -1)
//                end = document.cookie.length;
//            returnvalue = unescape(document.cookie.substring(offset, end));
//        }
//    }
//    return returnvalue;
//}

var ob = document.getElementById('color');

if (getCookie('Skin') == '') {
    ob.href = 'style/index.css';
}
else {
    ob.href = getCookie("Skin");
}

function ChangeSkin() {
    var ob = document.getElementById('color');
    ob.href = 'style/index1.css';
    setCookie('Skin', 'style/index1.css');
}


