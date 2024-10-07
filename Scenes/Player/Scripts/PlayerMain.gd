extends CharacterBase
class_name PlayerMain

@onready var fsm = $FSM as FiniteStateMachine

#All of our logic is either in the CharacterBase class
#or spread out over our states in the finite-state-manager, this class is almost empty 
