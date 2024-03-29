class_name CombatCardUI
extends Control

#Used to change parent node when card is being dragged
#Otherwise it will be stuck in Hand area
signal reparent_requested(which_card_ui: CombatCardUI)
@onready var color: ColorRect = $Color
@onready var drop_detect: Area2D = $"Drop Detect"
@onready var state_machine: StateMachine = $StateMachine as StateMachine

#Hooked up the state machine for the cards to the UI
func _ready() -> void:
	state_machine.init(self)

func _input(event: InputEvent) -> void:
	state_machine.on_input(event)

func _on_gui_input(event: InputEvent) -> void:
	state_machine._on_gui_input(event)

func _on_mouse_entered() -> void:
	state_machine._on_mouse_entered()

func _on_mouse_exited() -> void:
	state_machine._on_mouse_exited()
