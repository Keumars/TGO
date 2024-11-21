extends Sprite2D

@onready var lb: LevelBase = $"../.."
@onready var torch := $"../../Torch"

func _distance() -> float:
	return (torch.global_position - global_position).length()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var player_y: int = torch.global_position.y
	var dy: int = player_y - global_position.y
	material.set_shader_parameter("dy", dy)
	material.set_shader_parameter("light_distance", _distance() as int)
