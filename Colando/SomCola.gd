extends AudioStreamPlayer


var sons = [
	[preload("res://Colando/alien.mp3")],
]


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_timer5seg_timeout():
	
	AudioStream.stream = sons[0]
	AudioStream.play()
	pass # Replace with function body.
