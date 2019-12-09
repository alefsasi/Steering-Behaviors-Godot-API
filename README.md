# Steering-Behaviors-Godot-API
API desenvolvida na engine Godot, para implementar os comportamentos de steering behaviors
Esta API possui licença MIT

# Features!

<ul>
  <li>
   Implementação do Comportamento Seek
  </li>
  <li>
    Implementação do Comportamento Flee
  </li>
  <li>
  Implementação do Comportamento Arrival
  </li>
    <li>
  Implementação do Comportamento Wander
  </li>  
  <li>
  Implementação do Comportamento Pursuit
  </li>
    <li>
  Implementação do Comportamento Evade
  </li>
</ul>

# Backlog

<ul>
  <li>Implementação dos demais comportamentos de Steering Behaviors.</li>
</ul>

# Required

Godot >= 3.1 

# Importing

Você deve passar o caminho do pacote com extenção .pck para que ele possa carregar a API, nesse caso o pacote está na raiz da pasta do jogo

```shell
	ProjectSettings.load_resource_pack("res://steering.pck")
```
Após Carregar o pacote, o script vai está virtualmente na pasta raiz do jogo, pronto para ser utilizado

```shell
	var steering = load("res://Steerings.gd")
```
# Interface

Contém a descrição das funções implementadas pela API, seus parâmetros de entradas e seus retornos

## Seek
Comportamento Seek
Comportamento de seguir um determinado alvo

```shell
# Força Máxima do Agente, valor do tipo float
var max_force  = 10

# Velocidade Máxima do Agente, valor do tipo float
var max_speed = 1000

# Posição do Agente na Tela, Variavel do tipo Vector2
var position = Vector2()

# Velocidade do Agente na Tela, Variavel do tipo Vector2
var velocity = Vector2()

# Posição do Alvo na Tela, Variavel do tipo Vector2
var target = Vector2()

# Retorna o Vetor do comportamento seek
# Vector2
var seek = steering.seek(target, position, velocity,max_speed, max_force)
```
## Flee
Comportamento Flee
Comportamento de Fugir de um determinado alvo

```shell
# Força Máxima do Agente, valor do tipo float
var max_force  = 10

# Velocidade Máxima do Agente, valor do tipo float
var max_speed = 1000

# Posição do Agente na Tela, Variavel do tipo Vector2
var position = Vector2()

# Velocidade do Agente na Tela, Variavel do tipo Vector2
var velocity = Vector2()

# Posição do Alvo na Tela, Variavel do tipo Vector2
var target = Vector2()

# Retorna o Vetor do comportamento flee
# Vector2
var flee =  steering.flee(target, position, velocity,max_speed, max_force)
```

## Arrival
Comportamento Arrival
Comportamento para desacelerar gradativamente ao se aproximar do alvo até parar.

```shell
# Força Máxima do Agente, valor do tipo float
var max_force  = 10

# Velocidade Máxima do Agente, valor do tipo float
var max_speed = 1000

# Distância para que o Agênte comece a desacelear
var min_distance = 50

# Posição do Agente na Tela, Variavel do tipo Vector2
var position = Vector2()

# Velocidade do Agente na Tela, Variavel do tipo Vector2
var velocity = Vector2()

# Posição do Alvo na Tela, Variavel do tipo Vector2
var target = Vector2()

# Retorna o Vetor do comportamento arrival
# Vector2
var arrival =  steering.arrival(target, position, velocity, max_speed, max_force, min_distance)
```
## Pursuit
Comportamento Pursuit
Comportamento parecido com o do seek, porém que tenta antecipar a movimentação do alvo

```shell
# Força Máxima do Agente, valor do tipo float
var max_force  = 10

# Velocidade Máxima do Agente, valor do tipo float
var max_speed = 1000

# Posição do Agente na Tela, Variavel do tipo Vector2
var position = Vector2()

# Velocidade do Agente na Tela, Variavel do tipo Vector2
var velocity = Vector2()

# Posição do Alvo na Tela, Variavel do tipo Vector2
var target = Vector2()

# Velocidade do Alvo na Tela, Variavel do tipo Vector2
var target_velocity = Vector2()

# Retorna o Vetor do comportamento pursuit
# Vector2
var pursuit =  steering.pursuit(target, position, velocity, target_velocity, max_speed, max_force)
```

## Evade
Comportamento Evade
Comportamento parecido com o do flee, porém que tenta antecipar a movimentação do alvo

```shell
# Força Máxima do Agente, valor do tipo float
var max_force  = 10

# Velocidade Máxima do Agente, valor do tipo float
var max_speed = 1000

# Posição do Agente na Tela, Variavel do tipo Vector2
var position = Vector2()

# Velocidade do Agente na Tela, Variavel do tipo Vector2
var velocity = Vector2()

# Posição do Alvo na Tela, Variavel do tipo Vector2
var target = Vector2()

# Velocidade do Alvo na Tela, Variavel do tipo Vector2
var target_velocity = Vector2()

# Retorna o Vetor do comportamento evade
# Vector2
var evade =  steering.evade(target, position, velocity, target_velocity, max_speed, max_force)
```

## Wander
Comportamento Wander
Comportamento parecido com o do wander, porém que tenta antecipar a movimentação do alvo

```shell
# Força Máxima do Agente, valor do tipo float
var max_force  = 10

# Posição do Agente na Tela, Variavel do tipo Vector2
var position = Vector2()

# Raio do Circulo Utilizado na Função Wander, valor do tipo float
var  circle_ray = 50

# Distância do Circulo Utilizado na Função Wander, valor do tipo float
var  circle_distance = 800

# Retorna o Vetor do comportamento wander
# Vector2
var wander =  steering.wander(position, circle_ray, circle_distance, max_force):
```
## helloWorl
Utilizado apenas para testar a API

```shell
# Devolve a string "HelloWord" somente para teste da API
var str =  steering. helloWorld():
```













