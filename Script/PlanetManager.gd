extends Node2D
class_name PlanetManager
@export var planet_prefab : PackedScene
var planetList = []
# Called when the node enters the scene tree for the first time.
func _ready():
	generatePlanet()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for planet in planetList:
		planet.updateColor()

func generatePlanet():
	if planet_prefab == null:
		return
	var new_planet = planet_prefab.instantiate()
	planetList.append(new_planet)
	add_child(new_planet)
		

