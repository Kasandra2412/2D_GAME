class_name Watercan extends Node2D
var is_picked_up = false
@onready var watering_can: Sprite2D = $WateringCan
var is_can_empty=false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

  # Tracks if the player picked the can

func _on_area_2d_body_entered(body: Node2D) -> void:
		if body.name == "Player":
			is_picked_up = true
			$WateringCan.queue_free()  # Remove the water can from the scene after pickup

# Check for plants and trigger their growth
func water_plants():
	if is_picked_up:
		for plant in get_tree().get_nodes_in_group("plants"):
			if plant is Plant:  # Only trigger plants with the correct class
				plant.water_plant()
