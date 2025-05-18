;#ADD004BASIC PIEs#
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 3

;MvC2 Features
[Command]
name = "SnapBack"
command = D,F,D,F,z
time = 20 

[Command]
name = "Counter"
command = a+b+c
time = 10

[Command]
name = "X-Over Combo"
command = ~D,DF,F,x+a
time = 20

;Hypers
;----------------------------------------
;Power Stone
[command]
name = "Power Stone"
command = ~D, DF, F, x+y

[command]
name = "Power Stone"
command = ~D, DF, F, y+z

[command]
name = "Power Stone"
command = ~D, DF, F, x+z

;----------------------------------------
;Reality Stone
[command]
name = "Reality Stone"
command = ~D, DB, B, x+y

[command]
name = "Reality Stone"
command = ~D, DB, B, y+z

[command]
name = "Reality Stone"
command = ~D, DB, B, x+z

;----------------------------------------
;Space Stone
[command]
name = "Space Stone"
command = ~D, DF, F, a+b

[command]
name = "Space Stone"
command = ~D, DF, F, b+c

[command]
name = "Space Stone"
command = ~D, DF, F, a+c

;----------------------------------------
;The Snap
[command]
name = "The Snap"
command = ~D, DB, B, a+b

[command]
name = "The Snap"
command = ~D, DB, B, b+c

[command]
name = "The Snap"
command = ~D, DB, B, a+c

;Specials
;----------------------------------------
;Titanic Rush
[Command]
name = "Titanic Rush X"
command = ~D, DF, F, x

[Command]
name = "Titanic Rush Y"
command = ~D, DF, F, y

[Command]
name = "Titanic Rush Z"
command = ~D, DF, F, z

;----------------------------------------
;Death Sphere
[Command]
name = "Death Sphere A"
command = ~D, DF, F, a

[Command]
name = "Death Sphere B"
command = ~D, DF, F, b

[Command]
name = "Death Sphere C"
command = ~D, DF, F, c

;----------------------------------------
;Ifinity Drop
[Command]
name = "Infinity Drop"
command = D, c

;----------------------------------------

[command]
name = "throw"
command = a+b
time = 15

;Required (do not remove)

[Command]
name = "highjump"
command = $D
time = 1
buffer.time = 8

[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "recovery"
command = y+z
time = 1
[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "a"
command = a
time = 1
buffer.time = 1

[Command]
name = "b"
command = b
time = 1
buffer.time = 1

[Command]
name = "c"
command = c
time = 1
buffer.time = 1

[Command]
name = "x"
command = x
time = 1
buffer.time = 1

[Command]
name = "y"
command = y
time = 1
buffer.time = 1

[Command]
name = "z"
command = z
time = 1
buffer.time = 1

[Command]
name = "start"
command = s
time = 1
buffer.time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1
buffer.time = 1

[Command]
name = "holdback"
command = /$B
time = 1
buffer.time = 1

[Command]
name = "holdup"
command = /$U
time = 1
buffer.time = 1

[Command]
name = "holddown"
command = /$D
time = 1
buffer.time = 1

[Command]
name = "hold_a"
command = /a
time = 1
buffer.time = 1

[Command]
name = "hold_b"
command = /b
time = 1
buffer.time = 1

[Command]
name = "hold_c"
command = /c
time = 1
buffer.time = 1

[Command]
name = "hold_x"
command = /x
time = 1
buffer.time = 1

[Command]
name = "hold_y"
command = /y
time = 1
buffer.time = 1

[Command]
name = "hold_z"
command = /z
time = 1
buffer.time = 1

[Command]
name = "hold_start"
command = /s
time = 1
buffer.time = 1

[Command]
name = "dash"
command = x+y
time = 1
buffer.time = 1
[Command]
name = "dash"
command = x+z
time = 1
buffer.time = 1
[Command]
name = "dash"
command = y+z
time = 1
buffer.time = 1

[Statedef -1];Counter

;//==========================
;// add004-1-sctrls-start
;//==========================
;--- partner_standby
[state 0]
	type=selfstate
	value=190190
	ctrl=0
	trigger1=ctrl && numpartner && !ishelper && roundstate=2 && pos y=0
	trigger1=(sysfvar(4)>0) && (sysfvar(0)>0) && playeridexist(floor(sysfvar(0)))
	trigger1=(playerid(floor(sysfvar(0))),var(0)=90900) && (playerid(floor(sysfvar(0))),var(22)=4)
	ignorehitpause=1
;##Add.List01##
;//==========================
;// add004-1-sctrls-end
;//==========================



[State -1, Counter]
type = ChangeState
value = 50100
triggerall = roundstate = 2 && !var(59)
triggerall = command = "Counter"
triggerall = var(33) = 1
triggerall = partner, life > 0
triggerall = StateType != A
triggerall = partner, stateno = 100512
triggerall = power >= 1000
trigger1 = stateno = [150,152]
ignorehitpause = 1



[State -1, Partner Assist]
type = ChangeState
value = 100700
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command = "b"
triggerall = var(33) = 1
triggerall = partner, life > 0
triggerall = StateType != A
triggerall = partner, stateno = 100512
trigger1 = ctrl
trigger2 = (stateno = [200, 299]) && MoveContact
trigger3 = (stateno = [400, 499]) && MoveContact
trigger2 = (stateno = [600, 650]) && MoveContact
trigger3 = (stateno = [1000, 2999]) && MoveContact

[State -1, Partner Change]
type = ChangeState
value = 100510
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command = "z"
triggerall = var(33) = 1
triggerall = partner, life > 0
triggerall = StateType != A
triggerall = partner, stateno = 100512
trigger1 = ctrl
trigger2 = (stateno = [200, 299]) && MoveContact

;SnapBack
[State -1, SnapBack]
type = ChangeState
value = 50000
triggerall = roundstate = 2 && !var(59)
triggerall = command = "SnapBack"
triggerall = var(33) = 1
triggerall = Power >= 1000
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && MoveContact

;X-Over Combination
[State -1]
type = ChangeState
value = 150099
triggerall = !numhelper(160000)
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "X-Over Combo"
triggerall = power >= 2000
triggerall = var(33) = 1
triggerall = partner, life > 0
triggerall = StateType != A
triggerall = partner, stateno = 100512
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact

;Guard Push buffer reset
[State -1, buffer reset]
type = VarSet
trigger1 = stateno != [150,155]
var(11) = 0

;Guard Push buffer reset
[State -1, buffer for stuff]
type = VarSet
trigger1 = stateno = [150,155]
trigger1 = command = "recovery"
var(11) = 1

;Hyper Combos
;-----------------------------

;Power Stone
[State -1]
type = ChangeState
value = 3500
triggerall = roundstate = 2 && !var(59) && var(6) < 2 && var(15) = 0 & !fvar(10)
triggerall = command = "Power Stone"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = stateno = 1000
trigger15 = stateno = 1010
trigger16 = stateno = 1020
trigger17 = stateno = 1040
trigger18 = stateno = 1060
trigger19 = stateno = 1070

;Space Stone
[State -1]
type = ChangeState
value = 3000
triggerall = roundstate = 2 && !var(59) && var(6) < 2 && var(15) = 0 & !fvar(10)
triggerall = command = "Space Stone"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = stateno = 1000
trigger15 = stateno = 1010
trigger16 = stateno = 1020
trigger17 = stateno = 1040
trigger18 = stateno = 1060
trigger19 = stateno = 1070

;Reality Stone
[State -1]
type = ChangeState
value = 3200
triggerall = roundstate = 2 && !var(59) && var(6) < 2 && var(15) = 0 & !fvar(10)
triggerall = command = "Reality Stone"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = stateno = 1000
trigger15 = stateno = 1010
trigger16 = stateno = 1020
trigger17 = stateno = 1040
trigger18 = stateno = 1060
trigger19 = stateno = 1070

;The Snap
[State -1]
type = ChangeState
value = 4000
triggerall = roundstate = 2 && !var(59) && var(6) < 2 && var(15) = 0 & !fvar(10)
triggerall = command = "The Snap"
triggerall = power >= 5000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = stateno = 1000
trigger15 = stateno = 1010
trigger16 = stateno = 1020
trigger17 = stateno = 1040
trigger18 = stateno = 1060
trigger19 = stateno = 1070

;Specials
;-----------------------------

;Titanic Rush X
[State -1]
type = ChangeState
value = 1000
triggerall = var(57) = 0
triggerall = var(40) = 1
triggerall = command = "Titanic Rush X"
triggerall = roundstate = 2 && !var(59) && var(15) = 0
triggerall = numproj = 0
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = stateno = 600
trigger15 = stateno = 610
trigger16 = stateno = 620
trigger17 = stateno = 630
trigger18 = stateno = 640
trigger19 = stateno = 650

;Titanic Rush Y
[State -1]
type = ChangeState
value = 1010
triggerall = var(57) = 0
triggerall = var(40) = 1
triggerall = command = "Titanic Rush Y"
triggerall = roundstate = 2 && !var(59) && var(15) = 0
triggerall = numproj = 0
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = stateno = 600
trigger15 = stateno = 610
trigger16 = stateno = 620
trigger17 = stateno = 630
trigger18 = stateno = 640
trigger19 = stateno = 650

;Titanic Rush Z
[State -1]
type = ChangeState
value = 1020
triggerall = var(57) = 0
triggerall = var(40) = 1
triggerall = command = "Titanic Rush Z"
triggerall = roundstate = 2 && !var(59) && var(15) = 0
triggerall = numproj = 0
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = stateno = 600
trigger15 = stateno = 610
trigger16 = stateno = 620
trigger17 = stateno = 630
trigger18 = stateno = 640
trigger19 = stateno = 650

;Death Sphere A
[State -1]
type = ChangeState
value = 1040
triggerall = var(57) = 0
triggerall = var(40) = 1
triggerall = command = "Death Sphere A"
triggerall = roundstate = 2 && !var(59) && var(15) = 0
triggerall = numproj = 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450

;Death Sphere B
[State -1]
type = ChangeState
value = 1060
triggerall = var(57) = 0
triggerall = var(40) = 1
triggerall = command = "Death Sphere B"
triggerall = roundstate = 2 && !var(59) && var(15) = 0
triggerall = numproj = 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450

;Death Sphere C
[State -1]
type = ChangeState
value = 1070
triggerall = var(57) = 0
triggerall = var(40) = 1
triggerall = command = "Death Sphere C"
triggerall = roundstate = 2 && !var(59) && var(15) = 0
triggerall = numproj = 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450

; Infinity Drop
[State -1]
type = ChangeState
value = 1030
triggerall = var(57) = 0
triggerall = var(40) = 1
triggerall = command = "Infinity Drop"
triggerall = StateType = A && ctrl
trigger1 = Pos Y <= -60
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640
trigger7 = stateno = 650

 
[State -1]
type = null;ChangeState
value = 900
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl
;
;; ‹ó’†“Š‚°1
;[State -1]
;type = ChangeState
;value = 910
;triggerall = roundstate = 2 && !var(59)
;trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
;trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
;trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------

; Psychic Throw
[State -1, Psychic Throw]
type = ChangeState
value = 800
triggerall= var(59)!= 1  
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = !ishelper
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Rock Slam Throw
[State -1, Rock Slam Throw]
type = ChangeState
value = 830
triggerall= var(59)!= 1  
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = !ishelper
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1,Forward Air Dash] ;Forward Dash
type = ChangeState
value = 100000
triggerall = (StateType = A && command = "FF")
trigger1 = StateNo != [100,109]
trigger1 = ctrl

[State -1,Back Air Dash] ;Back Dash
type = ChangeState
value = 100001
triggerall = (StateType = A && command = "BB")
trigger1 = StateNo != [100,109]
trigger1 = ctrl

;Standing Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810



;Standing Medium Punch
[State -1]
type = ChangeState
value = 210
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

;Standing Fierce Punch
[State -1]
type = ChangeState
value = 220
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

;Standing Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 400 && movecontact

;Standing Medium Kick
[State -1]
type = ChangeState
value = 240
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact


;Standing Strong Kick
[State -1]
type = ChangeState
value = 250
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact


;Crouching Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger3 = stateno = 200 && animelem = 3,> 0

;Crouching Medium Punch
[State -1]
type = ChangeState
value = 410
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;Crouching Strong Punch
[State -1]
type = ChangeState
value = 420
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact


;Crouching Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact

;Crouching Medium Kick
[State -1]
type = ChangeState
value = 440
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact

;Crouching Strong Kick
[State -1]
type = ChangeState
value = 450
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact


;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 106
trigger3 = stateno = 100000
trigger4 = stateno = 100001
trigger5 = stateno = 100002

;Jump Medium Punch
[State -1]
type = ChangeState
value = 610
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 106
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 100000
trigger6 = stateno = 100001
trigger7 = stateno = 100002

;Jump Strong Punch
[State -1]
type = ChangeState
value = 620
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 106
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact
trigger7 = stateno = 100000
trigger8 = stateno = 100001
trigger9 = stateno = 100002

;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 106
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 100000
trigger5 = stateno = 100001
trigger6 = stateno = 100002

;Jump Medium Kick
[State -1]
type = ChangeState
value = 640
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 106
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 100000
trigger7 = stateno = 100001
trigger8 = stateno = 100002

;Jump Strong Kick
[State -1]
type = ChangeState
value = 650
triggerall = command != "holddown"
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 106
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact
trigger7 = stateno = 100000
trigger8 = stateno = 100001
trigger9 = stateno = 100002


;Dash Forwards
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2 && !var(59)
triggerall = command = "FF"
trigger1 = statetype != A && ctrl


;Dash Backwards
[State -1]
type = ChangeState
value = 105
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl

;Double Jump
[State -1]
type = null;ChangeState
value = 45
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "holdup"
trigger1 = statetype = A && ctrl
trigger1 = var(2) && !var(3)

;Jump
[State -1]
type = ChangeState
value = 40
triggerall = roundstate = 2 && !var(59)
triggerall = command = "holdup" && !var(1) && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = 410 && movehit &&  animelem = 3, > 0

;Crouch
[State -1]
type = ChangeState
triggerall = command = "holddown" && prevstateno != 810
trigger1 = stateno = [100,102]
value = 10
ctrl = 1

;Guard Push
[State -1, Guard-push]
type = ChangeState
value = 160
triggerall = roundstate = 2 && !var(59)
trigger1 = var(11) = 1
trigger1 = stateno = 151 || stateno = 153 || stateno = 155

;Roll Backwards
[State -1, Roll Back]
type = ChangeState
value = 5121
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = (stateno = 5110) && (alive = 1)
trigger2 = (stateno = 5120) && (alive = 1)

;Roll Foward
[State -1, Roll Foward]
type = ChangeState
value = 5122
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = (stateno = 5110) && (alive = 1)
trigger2 = (stateno = 5120) && (alive = 1)

;Taunt
[State -1]
type = ChangeState
triggerall = roundstate = 2 && !var(59)
triggerall = command = "start" 
trigger1 = statetype != A && ctrl
trigger2 = stateno = 101&& time > 3
value = 195




