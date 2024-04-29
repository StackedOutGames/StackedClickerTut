class_name game_generator
extends Control
## generator creating a resource every second

## reference to Label Amount of resource in storage
@export var label = Label
## ref to Button that starts the autogeneration
@export var button = Button
## ref to Timer that ticks every second for create_roaches and autobuy_roaches
@onready var timer = $Timer

## current amount of resource and ready function to check for amount at start
var roaches : int

func _ready() -> void:
	update_label_text()

## create and store resource
func create_roaches() -> void:
	roaches += 1
	update_label_text()

## Display total number of resources on Label 
func update_label_text() -> void:
	label.text = "Roaches %s" %roaches


func autobuy_roaches() -> void:
	timer.start()
	button.disabled = true

func _on_button_pressed() -> void:
	autobuy_roaches()


func _on_timer_timeout() -> void:
	create_roaches()
