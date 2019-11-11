extends KinematicBody2D

# Declare member variables here. Examples:
const MAX_FORCE  = 10
export var MAX_SPEED = 1000
export var MODE = 0
export var  _RAY = 50
export var  _DISTANCE = 800
var velocity = Vector2()
var steering = null

func _ready():
	#Carrega A Api na Memoria
	ProjectSettings.load_resource_pack("res://steering.pck") 
	#Chama o script com as funções implementadas
	steering = load("res://Steerings.gd")

func _process(delta):
	#Captura a posição do Mouse e atribui ao Alvo
	var target = get_viewport().get_mouse_position()
	
	#Verifica Qual o Modo selecionado e retorna o Comportamento
	if MODE == 1:
		velocity = seek(target, get_position(), velocity)
	if MODE == 2:
		velocity = arrival(target, get_position(), velocity)
	if MODE == 3:
		velocity = flee(target, get_position(), velocity)
	if MODE == 4:
		velocity = pursuit(target, get_position(), target.normalized(), velocity)
	if MODE == 5:
		velocity = evade(target, get_position(), target.normalized(), velocity)
	if MODE == 6:
		var angle = (velocity).angle() 
		#Para que o angulo da nave não fique alterado a cada frame Verifica se o angulo é maior ou menor que 0.3
		if rotation > angle + 0.3 or rotation < angle - 0.3:
			rotation = angle	
		velocity = wander(velocity)
	else:
		#Rotaciona para direção que o personagem Esta se movimentando
		rotation = velocity.angle()
	
	#Movimenta o Personagem
	velocity = move_and_slide((velocity + Vector2()) * delta)
	
#Chama as funções da API
func seek(_target, _position, _velocity):
	return steering.seek(_target, _position,  _velocity, MAX_SPEED , MAX_FORCE)
func arrival(_target, _position, _velocity):
	return steering.arrival(_target, _position, _velocity, MAX_SPEED, MAX_FORCE, 50)
func flee(_target, _position, _velocity):
	return steering.flee(_target, _position,  _velocity, MAX_SPEED, MAX_FORCE)
func pursuit(_target, _position, _target_vel, _velocity):
	return steering.pursuit(_target, _position,  _velocity, _target_vel, MAX_SPEED, MAX_FORCE)
func evade(_target, _position, _target_vel, _velocity):
	return steering.evade(_target, _position,  _velocity, _target_vel, MAX_SPEED, MAX_FORCE)
func wander(_position):
	return steering.wander(_position, _RAY, _DISTANCE, MAX_SPEED * 20000)