extends Control

onready var control_gallery = get_node("Panel/ControlGallery")

func _ready():
	control_gallery.hide()

func _on_ClickMeForControlGallery_pressed():
	control_gallery.set_hidden(control_gallery.is_visible())
	
func _on_QuitDemo_pressed():
	get_tree().quit()
