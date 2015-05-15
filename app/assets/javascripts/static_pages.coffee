# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

staticPages = staticPages || {}


staticPages.showModal = ->

	$ ".modal-background"
		.addClass "modal-active"
	
	$ ".modal"
		.show 300
	
	$ ".subscribe-msg"
		.removeClass "hidden"

	$ ".subscribe-now, #new_alpha_user" 
		.addClass "hidden"



staticPages.hideModal = ->

	$ ".modal"
		.hide 300
	
	$ ".modal-background"
		.removeClass "modal-active"



$ document .ready = ->

	$ ".subscribe" 
		.find ".btn-primary"
		.on   "click", staticPages.showModal

	$ ".modal" 
		.find ".btn-primary"
		.on   "click", staticPages.hideModal
