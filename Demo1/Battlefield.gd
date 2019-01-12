extends Node

var tile = preload("res://scenery/hexagon.tscn")
var jsonfilename = "res://scenery/sample.json"
var detail = {}

func _ready():
	var file = File.new()
	file.open(jsonfilename, File.READ)
	var text = file.get_as_text()
	var json = JSON.parse(text)
	
	if json.error == OK:
		detail = json.result


	print ($Cells.get_cell(5,5))
	var pos1 = $Cells.map_to_world(Vector2(5,5), true)
	var pos2 = $Cells.map_to_world(Vector2(5,5), false)
	
	print("Position with Half Offset: ", pos1)
	print("Position no Half Offset: ", pos2)
	
	#$Player.position = pos1

	$Cells.set_cell(5, 5, 4)
	$Cells.set_cell(4, 5, 3)
	$Cells.set_cell(3, 5, 3)
	$Cells.set_cell(6, 5, 3)
	$Cells.set_cell(7, 5, 3)

	$Cells.set_cell(5, 4, 3)
	$Cells.set_cell(5, 6, 3)
	$Cells.set_cell(6, 4, 3)
	$Cells.set_cell(6, 6, 3)

	$Cells.set_cell(5, 3, 3)
	$Cells.set_cell(5, 7, 3)
	
	$Cells.set_cell(4, 4, 3)
	$Cells.set_cell(4, 6, 3)
	$Cells.set_cell(7, 4, 3)
	$Cells.set_cell(7, 6, 3)

	$Cells.set_cell(4, 3, 3)
	$Cells.set_cell(4, 7, 3)
	$Cells.set_cell(6, 3, 3)
	$Cells.set_cell(6, 7, 3)
	
	
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

