extends Area2D

#TextBubble
var talking = false

@export var show_text_duration : float = 1.0
@export var silence_duration : float = 1.0

#NOTE Displays the text above an NPC and removes it after a slight delay
const lines: Array[String] = [
	"Hi! how are you doing weia;weijfa;oweija;oeaj;owi",
	"bruh"
]

#region Signal Entering & Exiting

func _on_body_entered(body):
		if body.is_in_group("Player") and not talking:
			talk_tween()
			#speech.text = line1[randi() % line1.size()]
			print("i'm trying to talk!!!!")

func _on_body_exited(body):
	#if body.is_in_group("Player") and talking:
		#await get_tree().create_timer(show_text_duration).timeout #Show the text for a short while after the player leaves
		#speech.text = "ea;igrh;wo4ih5;oeihg;rotbihs;oih;torsi"
		#await get_tree().create_timer(silence_duration).timeout #Show "murmur" for a short while before going silent
		#speech.text = ""s
		talking = false
		
#endregion

#Animate the NPC talking with some simple tweening
func talk_tween():
	talking = true
	var tween = create_tween()
	tween.tween_property(self, "scale", Vector2(1.1, 1.1), 0.2)
	tween.tween_property(self, "scale", Vector2(0.9, 0.9), 0.2)
	tween.tween_property(self, "scale", Vector2(1.1, 1.1), 0.2)
	tween.tween_property(self, "scale", Vector2.ONE, 0.2)
