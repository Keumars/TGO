extends LevelBase

@onready var torch := $Torch

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	torch.global_position = get_global_mouse_position()