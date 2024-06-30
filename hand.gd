class_name Hand
extends Control

const CARD = preload("res://card.tscn")


func draw(from_position: Vector2) -> void:
	print("draw")
	_update_cards()


func discard(to_position: Vector2) -> void:
	print("discard")
	_update_cards()


func _update_cards() -> void:
	print("update cards")
