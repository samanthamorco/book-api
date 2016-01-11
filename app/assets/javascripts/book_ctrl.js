(function (){
  "use strict";

  angular.module("app").controller("bookCtrl", function($scope, $http){

    $scope.setup = function() {
      $http.get("/api/v1/books.json").then(function(response){
        $scope.books = response.data;
      });
    }

    $scope.addBook = function(bookFirstName, bookLastName, bookTitle) {
      var newBook = {
        author_first_name: bookFirstName,
        author_last_name: bookLastName,
        title: bookTitle
      }
      // $scope.books.push(newBook);
      $http.post('/api/v1/books.json', newBook).then(function(response) {
        var bookCallback = response.data;
        $scope.books.push(bookCallback);
        console.log("happy path!");
      }, function(error){
        $scope.errorMessages = error.data.errors;
        console.log(error.data.errors)
        console.log("sad path :(");
      });
    }

    $scope.editBook = function(bookFName, bookLName, bookTitle) {
      
    }

    $scope.deleteBook = function(index) {
      $scope.books.splice(index, 1)
    }

    $scope.toggleOrder = function(attribute) {
      console.log($scope.orderAttribute);
      if(attribute === $scope.orderAttribute) {
        $scope.direction = !$scope.direction;
      } else {
        $scope.direction = false;
      }
      $scope.orderAttribute = attribute;
    }


  $scope.searchBooks = function(bookTitle) {
    $http.get("/api/v1/books.json?search=" + bookTitle).then(function(response){
        $scope.books = response.data;
      });  }

   });

}());