extends Node

static func seek(_target, _position, _velocity,_max_speed, _max_force) -> Vector2:
	var desired_velocity: Vector2 = (_target - _position).normalized() * _max_speed
	var steering_force =  (desired_velocity - _velocity) 
	return steering_force * _max_force
	

static func arrival(_target, _position, _velocity, _max_speed, _max_force, _min_distance) -> Vector2:
	var distance_target =  _target - _position
	var desired_velocity: Vector2 = distance_target.normalized() * _max_speed
	if distance_target.length() > _min_distance:
		desired_velocity *= distance_target.length() / _min_distance
		return desired_velocity - _velocity
	else:
		return (desired_velocity - _velocity).clamped(_max_force)
		

static func flee(_target, _position, _velocity,_max_speed, _max_force) -> Vector2:
	var desired_velocity: Vector2 = (_target - _position).normalized() * _max_speed
	var steering_force  =  ( - desired_velocity - _velocity) 
	return steering_force * _max_force

static func wander(_position, _circle_ray, _circle_distance, _max_force) -> Vector2:
	
	var circle_center = _position.normalized() * _circle_distance
	var wander_vector = Vector2(_circle_ray, 0).rotated(randf() * 2 * PI)
	var steering_force = circle_center + wander_vector
	steering_force = steering_force.clamped(_max_force)
	return steering_force
	
static func pursuit(_target, _position, _velocity, _target_velocity, _max_speed, _max_force) -> Vector2:
	var distance_target =  _target - _position
	var T = distance_target.length() / _max_speed
	var prev = _position + _target_velocity * T
	return seek(_target, prev, _velocity,_max_speed, _max_force)
	
static func evade(_target, _position, _velocity, _target_velocity,_max_speed, _max_force) -> Vector2:
	var distance_target =  _target - _position
	var T = distance_target.length() / _max_speed
	var prev = _position + _target_velocity * T
	return flee(_target, prev, _velocity,_max_speed, _max_force)
	
	
static func helloWorld():
	return ("HelloWord")