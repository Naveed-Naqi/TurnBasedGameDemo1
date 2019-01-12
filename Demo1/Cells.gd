extends TileMap

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var playerCharacter = get_node("../temp0")
onready var playerPosition = Vector2()

var gridTarget = Vector2()
var gridPosition = Vector2()
var tileCounter = 0

#Changes the target from global coordinates to coordinates on the gridmap. Passess the return value back to the player.
func runCode(number):
	gridTarget = world_to_map(number)
	gridPosition = world_to_map(playerCharacter.onStopWalking())
	tileCounter = gridTarget.x - gridPosition.x
	return tileCounter
	
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
