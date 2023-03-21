extends Node2D

var icon : Texture
var displayed_image : TextureRect
var saved_resource : SavedResource
@onready var resources_displayer = $"%ResourcesDisplayer"


func _ready():
	pass # Replace with function body.


func _check_for_saved_resources():
	pass

func _on_plus_button_pressed():
	icon = load("res://icon.svg")
	displayed_image = TextureRect.new()
	displayed_image.texture = icon
	resources_displayer.add_child(displayed_image)


func _on_save_button_pressed():
	pass # Replace with function body.
