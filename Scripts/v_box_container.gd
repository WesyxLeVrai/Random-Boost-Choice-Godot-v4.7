extends VBoxContainer

@export var Chance : PackedScene
@export var Butin : PackedScene
@export var Points : PackedScene
var x : Array
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var c : Array = [Chance, Butin, Points]
	x= c

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var can = true
	if Input.is_action_just_pressed("ui_accept") and can:
		can = false
		var who = get_child(-1)
		who.queue_free()
		var node = HBoxContainer.new()
		node.name = "V"
		add_child(node)
		var a = x.pick_random()
		var b = x.pick_random()
		if a == b:
			b = x.pick_random()
		else:
			addRandomBoost(a)
			addRandomBoost(b)
		await get_tree().create_timer(0.5).timeout
		can = true



func addRandomBoost(object : PackedScene):
	var boost = object.instantiate()
	$V.add_child(boost)
	
