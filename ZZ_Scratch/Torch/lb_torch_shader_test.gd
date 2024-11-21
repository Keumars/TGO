extends LevelBase

@onready var _torch := $Torch

func _process(_delta: float) -> void:
	_torch.global_position = driver.player.global_position
