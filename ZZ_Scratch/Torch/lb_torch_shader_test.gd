extends LevelBase

@onready var _torch := $Torch

func _ready() -> void:
	pass
	Callable(func() -> void: driver.player.visible = false).call_deferred()

func _process(_delta: float) -> void:
	_torch.global_position = get_global_mouse_position()
	# driver.player.global_position = _torch.global_position