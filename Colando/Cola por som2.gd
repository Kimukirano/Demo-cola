extends Node2D


var som = [
0,3,2,4,2,1,2,1
]
var i=0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_timer5seg_timeout():
	$somA.stop()
	$somB.stop()
	$somC.stop()
	$somD.stop()
	i+=1
	if(i>=8):
		i=0
	if(som[i]==1):
		$somA.play()
		$timer3seg.start()
	if(som[i]==2):
		$somB.play()
		$timer3seg.start()
	if(som[i]==3):
		$somC.play()
		$timer3seg.start()
	if(som[i]==4):
		$somD.play()
		$timer3seg.start()
	pass # Replace with function body.
	$timer2seg.stop()
	


func _on_timer3seg_timeout():
	$somA.stop()
	$somB.stop()
	$somC.stop()
	$somD.stop()
	$timer2seg.start()
	$timer3seg.stop()
	
	pass # Replace with function body.
