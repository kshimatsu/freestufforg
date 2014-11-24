# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

  $('#resetModal').click (e) ->
    e.preventDefault
    $('#confirmation').hide()
    $('#formSubmission').show()
    $('#listing_form').closest('form').find("input[type=text], textarea").val("");

  $('#submitListing').click (e) ->
    e.preventDefault
    $('#confirmation').show()
    $('#formSubmission').hide()



App = angular.module("freeItems", [])

App.controller("ListController", ["$scope", "$http", ($scope, $http) ->
  # $scope.itemCount = 0

  $http.get('/items.json')
    .success (data) ->
      $scope.items = data
    .error (data) ->
      console.log "oh noes" + data


  $scope.selectedItemId = 0

  $scope.showDropzone = (itemId) ->
    $scope.selectedItemId = itemId

  $scope.dismissDropzone = ->
    $scope.selectedItemId = 0
    $scope.loadItems()

  $scope.itemList = []

  $scope.loadItems = ->
    $scope.itemList = []

    $http.get('/items.json')
      .success (data) ->
        for x in data
          $scope.itemList.push(x)
      .error (data) ->
        console.log "oh noes" + data

  $scope.save = ->
    console.log "you submitted some stuff bro"
    console.log $scope.form
    jsonObj = $scope.form
    $http.post('/items.json', jsonObj)
      .success (data) ->
        console.log "you managed to create a new item"
        $scope.itemList.push(jsonObj)
      .error (data) ->
        console.log "you didn't manage to create an item"

  $scope.getContact = (item) ->
    $scope.contactAddress = item.lister_email
    $scope.contactItem = item.title
    $scope.contactLocation = item.location
    $scope.contactId = item.id

  $scope.contactAddress = ""
  $scope.contactItem = ""
  $scope.contactLocation = ""
  $scope.contactId = ""

  $scope.contactLister = ->
    message = $scope.message
    $http.post('/messages.json', message)
      .success (data) ->
        console.log "you managed to create a message"
      .error (data) ->
        console.log "you didn't manage to create a message"


  $scope.loadItems()
  ])
