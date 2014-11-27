# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


App = angular.module("freeItems", [])

App.controller("ListController", ["$scope", "$http", "$timeout", ($scope, $http, $timeout) ->
  # $scope.itemCount = 0

  $http.get('/items.json')
    .success (data) ->
      $scope.items = data
    .error (data) ->
      console.log "oh noes" + data

  $scope.newItemId = 0

  $scope.itemList = []

  $scope.fileUpload = false
  $scope.formSubmission = false

  $scope.filterLocation = (location) ->
    $scope.location = location

  $scope.resetLocations = ->
    $scope.location = null

  $scope.updateCurrentItem = (item) ->
    $scope.currentItem = item

  $scope.uploadComplete = ->
    $scope.loadItems()

  $scope.loadItems = ->
    $scope.itemList = []

    $http.get('/items.json')
      .success (data) ->
        for x in data
          $scope.itemList.push(x)
      .error (data) ->
        console.log "oh noes" + data

  $scope.locations = ['Wan Chai','Central','Causeway Bay','Tsim Sha Tsui','Stanley']

  $scope.resetItemModal = ->
    $scope.fileUpload = false
    $scope.formSubmission = false

  $scope.save = ->
    console.log "you submitted some stuff bro"
    console.log $scope.form
    jsonObj = $scope.form
    jsonObj.confirm_posting = false
    $http.post('/items.json', jsonObj)
      .success (data) ->
        console.log "you managed to create a new item"
        $scope.newItemId = data.id
        $scope.formSubmission = true
        $scope.fileUpload = true
        # $scope.itemList.push(jsonObj)
        $scope.form = {}
        $http.get('/items/latest.json')
          .success (data) ->
            console.log data
          .error (data) ->
            console.log "whoops, that didn't work..."
      .error (data) ->
        console.log "you didn't manage to create an item"

  $scope.getContact = (item) ->
    $scope.contactAddress = item.lister_email
    $scope.contactItem = item.title
    $scope.contactLocation = item.location
    $scope.contactId = item.id
    $scope.contactConfirm = false

  $scope.contactAddress = ""
  $scope.contactItem = ""
  $scope.contactLocation = ""
  $scope.contactId = ""

  $scope.delayedClose = ->
    angular.element('#contactClose').trigger('click')

  $scope.delayedItemClose = ->
    angular.element('#itemClose').trigger('click')

  #why won't this work when it's inside contactLister?

  $scope.contactLister = ->
    message = $scope.message
    message.item_id = $scope.contactId
    $http.post('/messages.json', message)
      .success (data) ->
        console.log "you managed to create a message"
        $scope.contactConfirm = true
        $timeout($scope.delayedClose, 3000)
      .error (data) ->
        console.log "you didn't manage to create a message"

  $scope.showItemDesc = false

  $scope.updateCurrentItem = (item) ->
    console.log "updateCurrentItem"
    $scope.showItemDesc = true
    $scope.currentItem = item

  $scope.loadItems()
  ])


