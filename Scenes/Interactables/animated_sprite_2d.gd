extends AnimatedSprite2D

@onready var _animated_sprite = $AnimatedSprite2D
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	while true:
		_animated_sprite.play("default")
