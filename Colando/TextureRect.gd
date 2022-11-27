extends TextureRect



var estado = [
	"res://Colando/gneutro.jpg",
	"res://Colando/gb.jpg",
	"res://Colando/ga.jpg",
	"res://Colando/gd.jpg",
	"res://Colando/gc.png"
	
]
var index = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	index += 1
	if(index >= 5):
		index=0
	self.texture = load(estado[index])
	$Timer4seg.stop()
	$Timer1seg.start()
	pass # Replace with function body.

# não está funcionando como deveria, deveria ficar 3 seg no estado 0, 1 seg em outro estado e 3 seg no 0 ...
func _on_Timer1seg_timeout():
	self.texture = load(estado[0])
	$Timer4seg.start()
	$Timer1seg.stop()
	pass # Replace with function body.
