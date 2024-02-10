extends Node2D

var current_scene
var current_path

func _ready():
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count()-1)

func load_scene(path_to_level):
	current_path = path_to_level
	$AnimationPlayer.play("transition_scene")

func transition():
	call_deferred("load_deferred")

func load_deferred():
	var s = load(current_path)
	current_scene.free()
	current_scene = s.instantiate()
	get_tree().root.add_child(current_scene)
	get_tree().current_scene = current_scene
