extends ColorRect

@export var swipe_animation_weight : float = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var width : float = DisplayServer.screen_get_size().x
	position.x = lerp(-width/2, width/2, swipe_animation_weight)
