extends TextureProgress


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	value += 1
	if(value>=max_value):
			get_tree().change_scene("res://Colando/gabaritar.tscn")
	pass # Replace with function body.


func _on_Button2_pressed():
	value += 2
	if(value>=max_value):
			get_tree().change_scene("res://Colando/gabaritar.tscn")
	pass # Replace with function body.


func _on_Button3_pressed():
	value += 4
	if(value>=max_value):
			get_tree().change_scene("res://Colando/gabaritar.tscn")
	pass # Replace with function body.
	
	
func _on_Button4_pressed():
	value += 10
	if(value>=max_value):
			get_tree().change_scene("res://Colando/gabaritar.tscn")
	pass # Replace with function body.


