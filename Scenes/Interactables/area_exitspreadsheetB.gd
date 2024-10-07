extends Area2D

@onready var label = $RichTextLabel
@export var next_scene : PackedScene

func _ready():
	label.visible = false

#Load the next selected scene as the player presses 'Enter'
func _process(_delta):
	if(Input.is_action_just_pressed("Enter") and label.visible == true):
		GameManager.load_next_level(load("res://Scenes/Levels/9MainOfficeC.tscn"))

#Show or hide the label as the player enters and exits the area
func _on_body_entered(body):
	if body.is_in_group("Player"):
		label.visible = true

func _on_body_exited(body):
	if body.is_in_group("Player"):
		label.visible = false
