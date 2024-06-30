class_name Hand
extends ColorRect

const CARD = preload("res://card.tscn")

@export var hand_curve: Curve
@export var x_size := 100
@export var x_sep := 20
@export var y_min := 50
@export var y_max := -35


func draw() -> void:
	var new_card = CARD.instantiate()
	add_child(new_card)
	_update_cards()


func discard() -> void:
	if get_child_count() < 1:
		return
		
	var child := get_child(-1)
	child.reparent(get_tree().root)
	child.queue_free()
	_update_cards()


func _update_cards() -> void:
	var cards := get_child_count()
	var all_cards_size := x_size * cards + (x_sep * cards - 1)
	var offset := (size.x - all_cards_size) / 2
	
	for i in cards:
		var card := get_child(i)
		var curve_multiplier := hand_curve.sample((1.0 / (cards-1)) * i)
		
		if i == cards - 1:
			curve_multiplier = hand_curve.sample(1.0)
		
		var x_sep_multiplier := i
		
		card.position = Vector2(offset + x_size * i + x_sep * x_sep_multiplier, y_min + y_max * curve_multiplier)
