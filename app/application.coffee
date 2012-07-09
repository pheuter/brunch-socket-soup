# The application bootstrapper.
Application =
  initialize: ->
    HomeView = require 'views/home_view'
    Router = require 'lib/router'

    @homeView = new HomeView()

    # Instantiate the router
    @router = new Router()
    # Freeze the object
    Object.freeze? this

module.exports = Application