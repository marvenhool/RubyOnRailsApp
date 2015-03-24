// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require angular.min
//= require ng_app


function test(test_id) {
    $.ajax({
        url: "/welcome/test/",
        type: "POST",
        data: 'test_id=' + test_id + '&authenticity_token=' + $('#authenticity_token').val(),
        success: function(data) {
            alert("通信成功しましたよ！");
            $("#h01").html("gaibianle!")
        },
        error: function() {
            alert("通信エラーが発生しました。時間をおいてもう一度操作をおこなってください。")
        }
    })
}