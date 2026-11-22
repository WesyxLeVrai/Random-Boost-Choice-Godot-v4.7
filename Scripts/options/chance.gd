extends VBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	modulate = Color.SEA_GREEN


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	Main.Chance+= 1
