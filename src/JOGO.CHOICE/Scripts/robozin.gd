extends KinematicBody2D

var motion = Vector2(0,0)
var up = Vector2(0,-1)
var points = 0
var side = "zero"
var wall = false

const SPEED = 250
const JUMPFORCE = 670
const GRAVITY = 25
const WALL_SLIDE_ACC = 15
const MAX_WALL_SLIDE_SPEED = 120

var countJump = 0

func _physics_process(delta):

	if Input.is_action_pressed("ui_right"): #Leitor de Input, analisa e age no eixo x do player
		motion.x = SPEED
		$AnimatedSprite.play("walk") #relaciona o sprite certo ao movimento do player
		$AnimatedSprite.flip_h = false

	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
		$AnimatedSprite.play("walk") #relaciona o sprite certo ao movimento do player
		$AnimatedSprite.flip_h = true

	if not is_on_floor() and (motion.y > 25 or motion.y < 0):
		$AnimatedSprite.play("air")
	else:
		$AnimatedSprite.play("idle")

	if Input.is_action_just_pressed("ui_accept"): #funçao para pular, e pular nas paredes
		if countJump < 2:
			motion.y = -JUMPFORCE
			if is_on_wall() && Input.is_action_pressed("ui_right")  && side != "right":
				motion.x = -SPEED
			elif is_on_wall() && Input.is_action_pressed("ui_left")  && side != "left":
				motion.x = +SPEED
		countJump += 1
		
	if is_on_wall() && Input.is_action_pressed("ui_left") && side != "left":
		countJump = 1
		side = "left"
		if motion.y >= 0:
			motion.y = min(motion.y + WALL_SLIDE_ACC, MAX_WALL_SLIDE_SPEED)

	if is_on_wall() && Input.is_action_pressed("ui_right") && side != "right":
		countJump = 1
		side = "right"
		if motion.y >= 0:
			motion.y = min(motion.y + WALL_SLIDE_ACC, MAX_WALL_SLIDE_SPEED)

	motion = move_and_slide(motion, up) #move and slide para executar a movimentação
	a_gravity()

				#	esse estilo de código deixa o personagem sem freio |||

	motion.x = lerp(motion.x,0,0.5) # Lerp permite a nice gliding stop |||

func a_gravity():
	if is_on_floor():
		countJump = 0
		motion.y = 0
		side = "zero"

	else:
		motion.y += GRAVITY

