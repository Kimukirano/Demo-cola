extends TextureRect

var posicaoXinicial = 700
var posicaoYinicial = 350

var posicoesX = [
	
	
	0,
	# C , inferior esquerdo 
	220,
	# D , inferior direito 
	
	220,
	# B , superior direito 
	
	0,
	# A , superior esquerdo 
	
	220
	# B , superior direito 
]
var posicoesY = [
	
	100,
	# C , inferior esquerdo 
	
	100,
	# D , inferior direito 
	
	0,
	# B , superior direito 
	
	0,
	# A , superior esquerdo 
	0
	# B , superior direito 
	
]

var index = 0

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_timer3seg_timeout():
	index += 1
	if(index>=5):
		index=0
	rect_position.x = posicaoXinicial + posicoesX[index]
	rect_position.y = posicaoYinicial + posicoesY[index]
	
	$timer1seg.autostart = true
	$timer3seg.autostart = false
	
	pass # Replace with function body.


func _on_timer1seg_timeout():
	$timer3seg.autostart = true
	$timer1seg.autostart = false
	pass # Replace with function body.
