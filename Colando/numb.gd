extends Label

var x = 30
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_timer_timeout():
	x-=1
	if(x==0):
		get_tree().change_scene("res://Colando/gover.tscn")

	text = str(x)
	pass # Replace with function body.
