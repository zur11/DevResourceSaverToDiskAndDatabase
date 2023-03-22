extends Node2D

const _FILE_PATH = "user://saved_resource.tres"

var icon : Texture
var displayed_image : TextureRect
var saved_resource : SavedResource
@onready var resources_displayer = $"%ResourcesDisplayer"


func _ready():
	pass


func _check_for_saved_resources():
	pass

func _on_plus_button_pressed():
	icon = load("res://icon.svg")
	displayed_image = TextureRect.new()
	displayed_image.texture = icon
	resources_displayer.add_child(displayed_image)


func _on_save_button_pressed():
	saved_resource = SavedResource.new()
	
	for ii in resources_displayer.get_child_count():
		saved_resource.saved_string = str(ii + 1)
#		saved_resource.saved_image = resources_displayer.get_child(ii)

	printt(saved_resource.saved_string)
	var result = ResourceSaver.save(saved_resource, _FILE_PATH)
	assert(result == OK)


func _on_load_button_pressed():
	if ResourceLoader.exists(_FILE_PATH):
		saved_resource = ResourceLoader.load(_FILE_PATH) as SavedResource
		printt("Saved String: ", saved_resource.saved_string)
