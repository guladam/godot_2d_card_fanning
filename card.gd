class_name Card
extends Panel

const SIZE := Vector2(100, 140)

@export var text: String
@onready var label: Label = $Label


func _ready() -> void:
	label.text = text
