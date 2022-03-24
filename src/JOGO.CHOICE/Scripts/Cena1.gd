extends Node2D

var zoom = false

func _ready():
	Classglobal.Scene = "Cena 1"
	Classglobal.lives = 10
	pass 

func _process(delta):
	if Classglobal.Scene == "Cena 1":
		if Input.is_action_just_pressed("minimapa") and zoom == false:
			zoom = true
			$Player/Camera2D2.current = true
			$Player/Sprite.visible = true
			$Player/Sprite2.visible = true
			$Sprites.visible = true
			if $Player.position.x >= 7850:
				$Player/Camera2D2.limit_bottom = 4700
		elif Input.is_action_just_pressed("minimapa") and zoom == true:
			zoom = false
			$Player/Camera2D.current = true
			$Player/Sprite.visible = false
			$Player/Sprite2.visible = false
			$Sprites.visible = false
		
		if Classglobal.artefato == "I":
			$Sprites/Circle_I.visible = false
		elif Classglobal.artefato == "N":
			$Sprites/Circle_N.visible = false
		elif Classglobal.artefato == "I2":
			$Sprites/Circle_I2.visible = false
		elif Classglobal.artefato == "E":
			$Sprites/Circle_E.visible = false
		elif Classglobal.artefato == "T":
			$Sprites/Circle_T.visible = false
		
		if Classglobal.lives <= 0:
			get_tree().change_scene("res://Cenas/Cena1.tscn")
			
		


