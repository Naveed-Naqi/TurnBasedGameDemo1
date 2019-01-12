extends Sprite

onready var tween = $tween
onready var node = get_node("../Cells")

var currentPosition = Vector2()
var isRunning = false
var target = Vector2()

#Update player position as soon as player spawns
func _ready():
	onStopWalking()
	pass

func _input(event):
	if event.is_action_pressed("click"):
		if(!isRunning):
			target = get_global_mouse_position()
			isRunning = true
			tween.interpolate_property(self, "position", position, position + Vector2(110,0), 1, Tween.TRANS_QUAD, Tween.EASE_IN)
			tween.start()
			print(node.runCode(target))
		
		#x = 100
		#y = 30

#Updates the currentPosition to match the position of the player character at that. 
#Necessary because we need to pass this info back to the "Cells" Node. 
func onStopWalking():
	currentPosition = position
	return currentPosition

#When the walking has stopped, allow the player to walk again and update the player position
func _on_tween_tween_completed(object, key):
	isRunning = false
	onStopWalking()
	
	pass # replace with function body
