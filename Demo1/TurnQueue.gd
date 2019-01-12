extends Node2D

var active_player

func initialize():
	active_player = get_child(0)
	
func playTurn():
	yield(active_character.playTurn, "completed")
	var new_index = (active_player.get_index() + 1) % get_child_count()
	active_player = get_child(new_index)
	

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
	# Called when the node is added to the scene for the first time.
	# Initialization here

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
