extends Area2D




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	body_entered.connect( _on_body_entered)
	body_exited.connect( _on_body_exited)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(b : Node2D) -> void:
	if b is PushableBoulder:
		b.push_direction = PlayerManager.player.direction
		pass
	
func _on_body_exited(b : Node2D) -> void:
	if b is PushableBoulder:
		b.push_direction = Vector2.ZERO
		
	
