extends Control

const CARD = preload("res://card.tscn")

@onready var hand: Hand = %Hand


func _on_draw_card_button_pressed() -> void:
	hand.draw(%DrawCardButton.global_position)


func _on_reset_button_pressed() -> void:
	get_tree().reload_current_scene()


func _on_discard_card_button_pressed() -> void:
	hand.discard(%DiscardCardButton.global_position)
