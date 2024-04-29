# create class for the Main scene Node "Main"
class_name ClickerGUI
extends Control

# below variable is a reference to the "Label" node
## exporting label to Label then linking "Label" through "ClickerGUI" Inspector use linked label to display var roaches 
@export var label :  Label

## create initial variable for first click resource/currency
var roaches : int = 0

# ready is called at start of scene
## good for staging variables that change scene to scene
func _ready() -> void:
	update_label_text()


## separate func to create roach to keep code clearer
func create_roach() -> void:
	roaches += 1
	update_label_text()

## updating "Label" with 'label' variable and using %s to show var roaches
func update_label_text() -> void:
	label.text = "Roaches Poached: %s" %roaches

## receiving signal when "Button" is pressed by Button -> Node -> on_button_press
func _on_button_pressed() -> void:
	create_roach()
