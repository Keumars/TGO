extends Sprite2D

@onready var dnc := $"../DayNightCycle"
@onready var lb: LevelBase = $".."

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var player_y := lb.driver.player.global_position.y
	print("%s - player below: %s" % [name, player_y > global_position.y])
	var c: Color = dnc.current_color()
	material.set_shader_parameter("color", c)
