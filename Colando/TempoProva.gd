extends Timer

var tempo = 10
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():

	tempo -= 1
	$HudTime.update_score(tempo)
	print_debug(tempo)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
