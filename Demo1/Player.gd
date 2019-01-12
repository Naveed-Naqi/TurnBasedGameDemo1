extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export (int) var speed = 500

var velocity = Vector2(0,0)
var target = Vector2(0,0)

func _input(event):
	if event.is_action_pressed("click"):
		target = get_global_mouse_position()

func _physics_process(delta):
	velocity = (target - position).normalized() * speed
	
	if (target - position).length() > 5:
        move_and_slide(velocity)	
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
