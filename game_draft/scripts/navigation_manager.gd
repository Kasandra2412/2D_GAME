extends Node

const scene_room_2 = preload("res://room_2.tscn") 
const scene_room3 = preload("res://Room3.tscn")

signal on_trigger_player_spawn

var spawn_door_tag

func go_to_level(level_tag, destination_tag):
	var scene_to_load
	
	match level_tag:
		"room_2":
			scene_to_load = scene_room_2
		"Room3":
			scene_to_load = scene_room3
			
	if scene_to_load != null:
		spawn_door_tag = destination_tag
		get_tree().change_scene_to_packed(scene_to_load)

func trigger_player_spawn(position: Vector2, direction: String):
	on_trigger_player_spawn.emit(position, direction)
