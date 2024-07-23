extends Control

@onready var hand: Hand = $Hand


func _on_draw_card_button_pressed() -> void:
	hand.draw()


func _on_reset_button_pressed() -> void:
	get_tree().reload_current_scene()


func _on_discard_card_button_pressed() -> void:
	hand.discard()
