/**
* Created by hikari-user on 2015/03/20.
*/
(function() {
    var app;

    app = angular.module('appRoot', []);

    app.config(function($httpProvider) {
        var authToken;
        authToken = $("meta[name=\"csrf-token\"]").attr("content");
        return $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken;
    });

    $(document).on('page:load', function() {
        return $('[ng-app]').each(function() {
            var module;
            module = $(this).attr('ng-app');
            return angular.bootstrap(this, [module]);
        });
    });
}).call(this);
