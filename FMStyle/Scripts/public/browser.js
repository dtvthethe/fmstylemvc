// kiểm tra xem duang dùng trình duyệt gì và add thêm 1 class để nhận biết nó

var Browser = navigator.userAgent;
if (Browser.indexOf('MSIE') >= 0) {
    $('body').addClass('browserIE');
}
else if (Browser.indexOf('Firefox') >= 0) {
    $('body').addClass('browserFirefox');
}
else if (Browser.indexOf('Chrome') >= 0) {
    $('body').addClass('browserChrome');
}
else if (Browser.indexOf('Safari') >= 0) {
    $('body').addClass('browserSafari');
}
else if (Browser.indexOf('Opera') >= 0) {
    $('body').addClass('browserOpera');
}
else {
    $('body').addClass('browserUnknow');
}