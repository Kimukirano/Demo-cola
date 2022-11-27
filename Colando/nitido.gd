extends TextureRect

var estado = [
	"res://Colando/gneutro.jpg",
	
	"res://Colando/b.png",
	"res://Colando/c.png",
	"res://Colando/d.png",
	"res://Colando/d.png",
	"res://Colando/a.png"
	
]
var index = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_timer_timeout():
	index += 1
	if(index >= 5):
		index=1
	self.texture = load(estado[index])
	$timer.stop()
	$timer2.start()
	pass # Replace with function body.



func _on_timer2_timeout():
	self.texture = load(estado[0])
	
	$timer.start()
	$timer2.stop()
	pass # Replace with function body.
