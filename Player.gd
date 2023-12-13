extends Area2D

@export var speed = 400

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("move_right"):
		velocity.x += speed * 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= speed * 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= speed * 1
	if Input.is_action_pressed("move_down"):
		velocity.y += speed * 1
	
	if velocity.length() > 0:
		position += velocity * delta
