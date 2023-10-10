extends Node

const MAX_X : int = 180
const MAX_Y : int = 100
const MAX_SIZE : float = 1.0
const MIN_SIZE : float = 0.5

@export var spawn_count : int = 200

# create preload object for Star
var star_scene = preload("res://Loops/Star.tscn")

func _ready():
	for i in spawn_count:
		# instantiate and then add star to root node (Main)
		var star = star_scene.instantiate()
		add_child(star)
		
		# give star's position random range
		star.position.x = randi_range(-MAX_X, MAX_X)
		star.position.y = randi_range(-MAX_Y, MAX_Y)
		
		# give star a random size
		var star_size = randf_range(MIN_SIZE, MAX_SIZE)
		star.scale.x = star_size
		star.scale.y = star_size
