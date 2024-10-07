extends Control

@export_file("*.json") var d_file

var dialogue = []
var current_dialogue_id=0

func _ready(	):
	start()
	
func start():
	dialogue = load_dialogue()
	current_dialogue_id = -1
	next_script()
	
func load_dialogue():
	var file = FileAccess.open("res://Scenes/dialogue/hour4dialogue.json", FileAccess.READ)
	var content = JSON.parse_string(file.get_as_text())
	return content

func _input(event):
	if event.is_action_pressed("ui_accept"):
		next_script()

func next_script():
	current_dialogue_id+=1
	if current_dialogue_id >= len(dialogue):
		return
	
	$NinePatchRect/name.text = dialogue[current_dialogue_id]['name']
	$NinePatchRect/text.text = dialogue[current_dialogue_id]['text']
