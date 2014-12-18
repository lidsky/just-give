'use strict';

/**
 * @ngdoc function
 * @name justGiveApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the justGiveApp
 */
angular.module('justGiveApp')
  .controller('MainCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
