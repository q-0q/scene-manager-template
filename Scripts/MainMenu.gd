extends Node2D

@onready var start_button = $CanvasLayer/PanelContainer/VBoxContainer/StartButton

func _ready():
	start_button.pressed.connect(self.start_game)
	
func start_game() -> void:
	SceneManager.load_scene("res://scenes/Game.tscn")
