extends Sprite

onready var tween = $tween
onready var node = get_node("/root/Cells")

var isRunning = false


func _input(event):
	if event.is_action_pressed("click"):
		if(!isRunning):
			isRunning = true
			tween.interpolate_property(self, "position", position, position + Vector2(110,0), 1, Tween.TRANS_QUAD, Tween.EASE_IN)
			tween.start()
			#print(temp)
		
		#x = 38.711601
		#y = -48.8988

func _on_tween_tween_completed(object, key):
	isRunning = false
	print(node.gridTarget)
	pass # replace with function body
