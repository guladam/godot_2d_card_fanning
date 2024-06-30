extends Panel

@export var text: String
@onready var label: Label = $Label


func _ready() -> void:
	label.text = text
