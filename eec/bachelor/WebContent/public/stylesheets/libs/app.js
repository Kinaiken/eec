'use strict';
var __ROOT_DIR = '/bundles/home';

// Declare app level module which depends on filters, and services
var app = angular.module('app', [
    'ngAnimate',
    'ngCookies',
    'ngStorage',
    'ui.router',
    'ui.bootstrap',
    'ui.load',
    'ui.jq',
    'ui.validate',
    'oc.lazyLoad',
    //'pascalprecht.translate',
    'app.filters',
    'app.services',
    'app.directives',
    'app.controllers',

    'jobby.controller',
    'jobby.newsController',
    'jobby.examController',
    'ngSanitize'
  ])
.run(
  [          '$rootScope', '$state', '$stateParams', 'authorization', 'principal',
    function ($rootScope,   $state,   $stateParams, authorization, principal) {
        $rootScope.$state = $state;
        $rootScope.$stateParams = $stateParams;

        $rootScope.$on('$stateChangeStart', function(event, toState, toStateParams) {
            $rootScope.toState = toState;
            $rootScope.toStateParams = toStateParams;

            if (principal.isIdentityResolved()) authorization.authorize();
        });
    }
  ]
)
.config(
  [          '$stateProvider', '$urlRouterProvider', '$controllerProvider', '$compileProvider', '$filterProvider', '$provide',
    function ($stateProvider,   $urlRouterProvider,   $controllerProvider,   $compileProvider,   $filterProvider,   $provide) {
        
        // lazy controller, directive and service
        app.controller = $controllerProvider.register;
        app.directive  = $compileProvider.directive;
        app.filter     = $filterProvider.register;
        app.factory    = $provide.factory;
        app.service    = $provide.service;
        app.constant   = $provide.constant;
        app.value      = $provide.value;

        $urlRouterProvider
            .otherwise('/app/homepage');
        $stateProvider
            .state('app', {
                abstract: true,
                url: '/app',
                templateUrl: __ROOT_DIR+'/tpl/app.html',
                resolve: {
                    authorize: ['authorization',
                        function(authorization) {
                            return authorization.authorize();
                        }
                    ]
                }
            })
            .state('app.dashboard', {
                url: '/homepage',
                data: {
                    roles: []
                },
                templateUrl: __ROOT_DIR+'/tpl/app_dashboard_v1.html'
            })
            .state('layout', {
                parent: 'app',
                abstract: true,
                url: '/layout',
                templateUrl: __ROOT_DIR+'/tpl/layout.html'
            })

            .state('layout.fullwidth', {
                parent: 'app',
                url: '/fullwidth',
                views: {
                    '': {
                        templateUrl: __ROOT_DIR+'/tpl/layout_fullwidth.html'
                    },
                    'footer': {
                        templateUrl: __ROOT_DIR+'/tpl/layout_footer_fullwidth.html'
                    }
                }
            })
            .state('layout.mobile', {
                parent: 'app',
                url: '/mobile',
                views: {
                    '': {
                        templateUrl: __ROOT_DIR+'/tpl/layout_mobile.html'
                    },
                    'footer': {
                        templateUrl: __ROOT_DIR+'/tpl/layout_footer_mobile.html'
                    }
                }
            })
            .state('layout.app', {
                parent: 'app',
                url: '/app',
                views: {
                    '': {
                        templateUrl: __ROOT_DIR+'/tpl/layout_app.html'
                    },
                    'footer': {
                        templateUrl: __ROOT_DIR+'/tpl/layout_footer_fullwidth.html'
                    }
                }
            })


            /* Authentication */
            .state('app.access', {
                abstract: true,
                url: '/access',
                template: '<div ui-view class="fade-in-right" style="padding-top: 50px" ng-init="app.settings.asideFolded = true;app.settings.asideFixed = true;"></div>',
                resolve: {
                    authorize: ['authorization',
                        function(authorization) {
                            return authorization.authorize();
                        }
                    ]
                }
            })

            .state('app.access.signin', {
                url: '/signin',
                data: {
                    roles: []
                },
                templateUrl: __ROOT_DIR+'/templates/user/signin.html'
            })
            .state('app.access.signup', {
                url: '/signup',
                data: {
                    roles: []
                },
                templateUrl: __ROOT_DIR+'/templates/user/signup.html'
            })
            .state('app.access.accessdenied', {
                url: '/access-denied',
                data: {
                    roles: []
                },
                templateUrl: __ROOT_DIR+'/tpl/page_404.html'
            })




    }
  ]
)

// translate config
//.config(['$translateProvider', function($translateProvider){

  // Register a loader for the static files
  // So, the module will search missing translation tables under the specified urls.
  // Those urls are [prefix][langKey][suffix].
  //$translateProvider.useStaticFilesLoader({
  //  prefix: __ROOT_DIR+'/l10n/',
  //  suffix: '.json'
  //});

  // Tell the module what language to use by default
  //$translateProvider.preferredLanguage('en');

  // Tell the module to store the language in the local storage
  //$translateProvider.useLocalStorage();

//}])

/**
 * jQuery plugin config use ui-jq directive , config the js and css files that required
 * key: function name of the jQuery plugin
 * value: array of the css js file located
 */
.constant('JOBBY', {
    'API_URL': 'http://api.jobby.mn',
    //'API_URL': '/api/navbar',
    'ROOT_DIR': '/bundles/home'
})

.constant('JQ_CONFIG', {
    easyPieChart:   [__ROOT_DIR+'/js/jquery/charts/easypiechart/jquery.easy-pie-chart.js'],
    sparkline:      [__ROOT_DIR+'/js/jquery/charts/sparkline/jquery.sparkline.min.js'],
    plot:           [__ROOT_DIR+'/js/jquery/charts/flot/jquery.flot.min.js',
                        __ROOT_DIR+'/js/jquery/charts/flot/jquery.flot.resize.js',
                        __ROOT_DIR+'/js/jquery/charts/flot/jquery.flot.tooltip.min.js',
                        __ROOT_DIR+'/js/jquery/charts/flot/jquery.flot.spline.js',
                        __ROOT_DIR+'/js/jquery/charts/flot/jquery.flot.orderBars.js',
                        __ROOT_DIR+'/js/jquery/charts/flot/jquery.flot.pie.min.js'],
    slimScroll:     [__ROOT_DIR+'/js/jquery/slimscroll/jquery.slimscroll.min.js'],
    sortable:       [__ROOT_DIR+'/js/jquery/sortable/jquery.sortable.js'],
    nestable:       [__ROOT_DIR+'/js/jquery/nestable/jquery.nestable.js',
                        __ROOT_DIR+'/js/jquery/nestable/nestable.css'],
    filestyle:      [__ROOT_DIR+'/js/jquery/file/bootstrap-filestyle.min.js'],
    slider:         [__ROOT_DIR+'/js/jquery/slider/bootstrap-slider.js',
                        __ROOT_DIR+'/js/jquery/slider/slider.css'],
    chosen:         [__ROOT_DIR+'/js/jquery/chosen/chosen.jquery.min.js',
                        __ROOT_DIR+'/js/jquery/chosen/chosen.css'],
    TouchSpin:      [__ROOT_DIR+'/js/jquery/spinner/jquery.bootstrap-touchspin.min.js',
                        __ROOT_DIR+'/js/jquery/spinner/jquery.bootstrap-touchspin.css'],
    wysiwyg:        [__ROOT_DIR+'/js/jquery/wysiwyg/bootstrap-wysiwyg.js',
                        __ROOT_DIR+'/js/jquery/wysiwyg/jquery.hotkeys.js'],
    dataTable:      [__ROOT_DIR+'/js/jquery/datatables/jquery.dataTables.min.js',
                        __ROOT_DIR+'/js/jquery/datatables/dataTables.bootstrap.js',
                        __ROOT_DIR+'/js/jquery/datatables/dataTables.bootstrap.css'],
    vectorMap:      [__ROOT_DIR+'/js/jquery/jvectormap/jquery-jvectormap.min.js',
                        __ROOT_DIR+'/js/jquery/jvectormap/jquery-jvectormap-world-mill-en.js',
                        __ROOT_DIR+'/js/jquery/jvectormap/jquery-jvectormap-us-aea-en.js',
                        __ROOT_DIR+'/js/jquery/jvectormap/jquery-jvectormap.css'],
    footable:       [__ROOT_DIR+'/js/jquery/footable/footable.all.min.js',
                        __ROOT_DIR+'/js/jquery/footable/footable.core.css'],
    countdown:      [__ROOT_DIR+'/js/jquery/countdown/jquery.countdown.min.js']

    }
)

// modules config
.constant('MODULE_CONFIG', {
    select2:        [__ROOT_DIR+'/js/jquery/select2/select2.css',
                        __ROOT_DIR+'/js/jquery/select2/select2-bootstrap.css',
                        __ROOT_DIR+'/js/jquery/select2/select2.min.js',
                        __ROOT_DIR+'/js/modules/ui-select2.js']
    }
)

// oclazyload config
.config(['$ocLazyLoadProvider', function($ocLazyLoadProvider) {
    // We configure ocLazyLoad to use the lib script.js as the async loader
    $ocLazyLoadProvider.config({
        debug: false,
        events: true,
        modules: [
            {
                name: 'ngGrid',
                files: [
                    __ROOT_DIR+'/js/modules/ng-grid/ng-grid.min.js',
                    __ROOT_DIR+'/js/modules/ng-grid/ng-grid.css',
                    __ROOT_DIR+'/js/modules/ng-grid/theme.css'
                ]
            },
            {
                name: 'toaster',
                files: [                    
                    __ROOT_DIR+'/js/modules/toaster/toaster.js',
                    __ROOT_DIR+'/js/modules/toaster/toaster.css'
                ]
            }
        ]
    });
}])
;