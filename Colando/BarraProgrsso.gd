extends TextureProgress

var respostas = [
	1,
	3,
	4,
	2,
	2,
	3,
	4,
	3,
	1,
	2
]

var i = 0
var count = 0
var acertos = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	value+=10
	i+=1
	count+=1
	if(count==10):
		count=0
	if(value==max_value):
		$Background.texture = ("res://Colando/resultaodspng.png")
		self.visible = false
	if(respostas[count]==i):
		acertos+=1
	
	i=0
	pass # Replace with function body.


func _on_Button2_pressed():
	value+=10
	i+=2
	count+=1
	if(count==10):
		count=0
	if(value==max_value):
		get_tree().change_scene("res://Colando/Resultados.tscn")
	if(respostas[count]==i):
		acertos+=1
	
	i=0
	
	pass # Replace with function body.


func _on_Button3_pressed():
	value+=10
	i+=3
	count+=1
	if(count==10):
		count=0
	if(value==max_value):
		get_tree().change_scene("res://Colando/Resultados.tscn")
	if(respostas[count]==i):
		acertos+=1
	
	i=0
	pass # Replace with function body.


func _on_Button4_pressed():
	value+=10
	i+=4
	count+=1
	if(count==10):
		count=0
	if(value==max_value):
		get_tree().change_scene("res://Colando/Resultados.tscn")
	if(respostas[count]==i):
		acertos+=1
	
	i=0
	
	pass # Replace with function body.
