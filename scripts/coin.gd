extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var game_manager: Node = %"Game Manager"

func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	game_manager.add_point()
	animation_player.play("pickup")
