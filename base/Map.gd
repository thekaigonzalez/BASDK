extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# export (int) var SPEED = 100
#export (int) var GRAVITY = 20
#export (int) var JUMP_FORCE = -700
#export (float) var ROOM_SIZE = 0.19

# Called when the node enters the scene tree for the first time.
func _ready():
	var ply = load("res://Player.tscn").instance()
	
	add_child(ply)
	
	ply.global_transform = $player.get_global_transform()
	
	ply.SPEED = $player.speed
	ply.JUMP_FORCE = -$player.jump_height
	ply.GRAVITY = $player.gravity
	ply.ROOM_SIZE = $player.room_size
	ply.max_jumps = $player.max_walljumps
	
	$player.visible = false
