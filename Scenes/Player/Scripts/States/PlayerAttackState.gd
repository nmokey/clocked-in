extends State
class_name PlayerAttacking

@export var animator : AnimationPlayer

#Hitbox is turned on/off through the animationplayer, it an enemy is standing inside of it once that happens they take damage
#Both hitboxes call back to this function through signals
