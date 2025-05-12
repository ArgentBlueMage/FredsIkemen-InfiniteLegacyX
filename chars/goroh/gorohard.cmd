;Command File created by "EKEN55" and edited by "Fred McFrizzle"
;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;=======================< DEFAULT VALUES >========================

[Defaults]
command.time = 12
command.buffer.time = 1

;=======================< SUPER INPUTS >========================

[Command]
name = "super1"
command = ~D,DB,B,D,DB,B, x
time = 32

[Command]
name = "super1"
command = ~D,DB,B,D,DB,B, y
time = 32

[Command]
name = "super1"
command = ~D,DB,B,D,DB,B, z
time = 32

[Command]
name = "super3"
command = ~D,DF,F,D,DF,F, x
time = 32

[Command]
name = "super3"
command = ~D,DF,F,D,DF,F, y
time = 32

[Command]
name = "super3"
command = ~D,DF,F,D,DF,F, z
time = 32

;=======================< SPECIAL INPUTS >========================

[Command]
name = "throwslam_L"
command = ~F,DF,D,DB,B, x
time = 16

[Command]
name = "throwslam_M"
command = ~F,DF,D,DB,B, y
time = 16

[Command]
name = "throwslam_H"
command = ~F,DF,D,DB,B, z
time = 16

[Command]
name = "antiair/ground_throw"
command = ~B,DB,D,DF,F, x
time = 16

[Command]
name = "antiair/ground_throw"
command = ~B,DB,D,DF,F, y
time = 16

[Command]
name = "antiair/ground_throw"
command = ~B,DB,D,DF,F, z
time = 16

;=======================< REQUIRED >========================

[Command]
name = "s"
command = s
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
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
name = "recovery"
command = a
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "recovery"
command = x
time = 1

[Command]
name = "recovery"
command = y
time = 1

[Command]
name = "recovery"
command = z
time = 1

;-| CPU |--------------------------------------------------------------
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "s2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_a2"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_b2"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_c2"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_x2"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_y2"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_z2"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

[Command]
name = "hold_s2"
command = /s
time = 1

[Command]
name = "fwd2"
command = $F
time = 1

[Command]
name = "back2"
command = $B
time = 1

[Command]
name = "up2"
command = $U
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1, SetAI]
type = VarSet
triggerall = !RoundState
triggerall = IsHomeTeam
trigger1 = (TeamSide = 2)
trigger2 = (MatchNo > 1)
var(59) = 1

[State -1, DodgeF]
type = ChangeState
value = 477
triggerall = var(59) < 1
triggerall = map(cmd_214k)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

[state -1, super1_throwslam3]
type = ChangeState
value = 16207
triggerall = var(59) < 1
triggerall = command = "super1"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

[state -1, Super3_groundslaphard]
type = ChangeState
value = 16224
triggerall = var(59) < 1
triggerall = command = "super3"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl || ((stateno = 16169 || stateno = 16170 || stateno = 16171) && time >= 120)

[state -1, throwslam LP] 
type = ChangeState
value = 16166
triggerall = var(59) < 1
triggerall = command = "throwslam_L"
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = statetype = S
trigger1 = ctrl || stateno = 250 || stateno = 200 || stateno = 210 || stateno = 220

[state -1, throwslam MP] 
type = ChangeState
value = 16167
triggerall = var(59) < 1
triggerall = command = "throwslam_M"
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = statetype = S
trigger1 = ctrl || stateno = 250 || stateno = 200 || stateno = 210 || stateno = 220

[state -1, throwslam HP] 
type = ChangeState
value = 16168
triggerall = var(59) < 1
triggerall = command = "throwslam_H"
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = statetype = S
trigger1 = ctrl || stateno = 250 || stateno = 200 || stateno = 210 || stateno = 220

[state -1, antiair_throw]
type = ChangeState
value = 16177
triggerall = var(59) < 1
triggerall = command = "antiair/ground_throw"
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = statetype = S
trigger1 = ctrl

[state -1, antiair_throw_EX]
type = ChangeState
value = 16274
triggerall = var(59) < 1
triggerall = map(cmd_41236pp)
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl

[state -1, ground_throw]
type = ChangeState
value = 16185
triggerall = var(59) < 1
triggerall = command = "antiair/ground_throw"
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != S
triggerall = p2statetype != C
trigger1 = statetype = S
trigger1 = ctrl

[State -1, groundslap]
type = changestate
value = 16195
triggerall = !AIlevel
triggerall = map(cmd_623p)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 250
trigger2 = map(specialcancel)

[state -1, groundslap_ex]
type = ChangeState
value = 16200
triggerall = var(59) < 1
triggerall = map(cmd_623pp)
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl

[State -1, changestate]
type = changestate
triggerall = var(59)>=1
triggerall = movetype!= A
TriggerAll = statetype != A
triggerall = statetype != C
triggerall = GameTime%14 = 5
triggerall = (ctrl)
triggerall = p2stateno != [5030,5300]
triggerall = p2movetype != A
trigger1 = (enemy, numproj >= 1) && (p2bodydist X > 149)
value = 477

[State -1, changestate]
type = changestate
triggerall = var(59)>=1
triggerall = movetype!= A
TriggerAll = statetype != A
triggerall = statetype != C
triggerall = GameTime%14 = 5
triggerall = (ctrl)
triggerall = p2stateno != [5030,5300]
triggerall = p2movetype = A
trigger1 = (enemy, numproj >= 1) && (p2bodydist X > 149)
value = 477

[State -1, changestate]
type = changestate
triggerall = var(59)>=1
triggerall = movetype!= A
TriggerAll = statetype != A
triggerall = statetype != C
triggerall = GameTime%14 = 5
triggerall = (ctrl)
triggerall = p2stateno != [5030,5300]
triggerall = p2movetype != A
trigger1 = (enemy, numhelper >= 1) && (p2bodydist X > 149)
value = 477

[State -1, changestate]
type = changestate
triggerall = var(59)>=1
triggerall = movetype!= A
TriggerAll = statetype != A
triggerall = statetype != C
triggerall = GameTime%14 = 5
triggerall = (ctrl)
triggerall = p2stateno != [5030,5300]
triggerall = p2movetype = A
trigger1 = (enemy, numhelper >= 1) && (p2bodydist X > 149)
value = 477

[State -1, changestate]
type = changestate
triggerall = var(59)>=1
triggerall = movetype!= A
TriggerAll = statetype != S
triggerall = statetype != A
triggerall = (ctrl)
triggerall = p2bodydist X > 149
triggerall = p2stateno != [5030,5300]
triggerall = p2movetype != A
trigger1 = enemy, numproj >= 1
trigger2 = ctrl
value = 477

[State -1, changestate]
type = changestate
triggerall = var(59)>=1
triggerall = movetype!= A
TriggerAll = statetype != S
triggerall = statetype != A
triggerall = (ctrl)
triggerall = p2bodydist X > 149
triggerall = p2stateno != [5030,5300]
triggerall = p2movetype = A
trigger1 = enemy, numproj >= 1
trigger2 = ctrl
value = 477

[State -1, changestate]
type = changestate
triggerall = var(59)>=1
triggerall = (Ctrl) && (Statetype = S) && (p2bodydist X = [111,200])
triggerall = (ctrl) && (numproj = 0)
triggerall = p2statetype != A
triggerall = p2stateno != [5030,5120]
triggerall = Enemy, numproj < 1
triggerall = Enemy, numhelper = 0
triggerall = random = [8,100]
trigger1 = (ctrl) && (random = [95,100])
trigger1 = p2movetype = A
trigger2 = (numproj = 0)
trigger3 = statetype != A
trigger4 = (random = [5,100]) && (stateno = 221044444)
trigger5 = (random = [5,100]) && (stateno = 220855555)
value = 16200

[State -1, changestate]
type = ChangeState
trigger1 = var(59) <= 0
trigger1 = stateno = 221044444
value = 0
ctrl = 1

[State -1, changestate]
type = ChangeState
trigger1 = var(59) <= 0
trigger1 = stateno = 220855555
value = 0
ctrl = 1

[State -1, changestate]
type = changestate
triggerall = var(59)>=1
triggerall = movetype!= A
TriggerAll = statetype != S
triggerall = statetype != C
triggerall = (ctrl)
triggerall = stateno != [200,650]
triggerall = p2stateno != [5030,5300]
trigger1 = p2movetype = A
value = 132

[State -1, changestate]
type = changestate
triggerall = var(59)>=1
triggerall = movetype!= A
TriggerAll = statetype != S
triggerall = statetype != C
triggerall = (ctrl)
triggerall = stateno != [200,650]
trigger1 = enemy, numproj >=1
value = 132

[State -1, changestate]
type = changestate
triggerall = var(59)>=1
triggerall = statetype = A
triggerall = (ctrl)
triggerall = stateno != [200,650]
triggerall = inguarddist
triggerall = p2stateno != [5030,5300]
trigger1 = statetype = A
value = 132

[State -1, changestate]
type = changestate
triggerall = var(59)>=1
triggerall = p2stateno = [5200,5210]
triggerall = p2statetype != A
triggerall = (ctrl)
triggerall = statetype != A
trigger1 = p2movetype != A
trigger1 = (P2bodydist X <= 59)
trigger1 = backedgebodydist > 40
value = 105

[state -1, changestate]
type = changestate
triggerall = var(59)>=1
triggerall = (p2stateno = [5070,5110])
triggerall = p2statetype != A
triggerall = (ctrl)
triggerall = statetype != A
trigger1 = p2movetype != A
trigger1 = (P2bodydist X <= 59)
trigger1 = backedgebodydist > 40
value = 105

[State -1, changestate]
type = changestate
triggerall = var(59)>=1
triggerall = p2stateno = [5150,5170]
triggerall = p2statetype != A
triggerall = (ctrl)
triggerall = statetype != A
trigger1 = p2movetype != A
trigger1 = (P2bodydist X <= 59)
trigger1 = backedgebodydist > 40
value = 105

[State -1, changestate]
type = changestate
triggerall = var(59)>=1
triggerall = p2stateno = 5120
triggerall = p2statetype != A
triggerall = (ctrl)
triggerall = statetype != A
trigger1 = p2movetype != A
trigger1 = (P2bodydist X <= 59)
trigger1 = backedgebodydist > 40
value = 105

[State -1, changestate]
type = changestate
triggerall = var(59)>=1
triggerall = (Ctrl) && (Statetype = S) && (statetype != A)
triggerall = p2movetype != A
triggerall = p2stateno = [5030,5090]
triggerall = (P2bodydist X = [105,809]) && (p2stateno = [5030,5090])
triggerall = statetype != C
triggerall = statetype != A
trigger1 = (P2bodydist X = [105,809]) && (p2stateno = [5030,5090])
value = 221044444

[State -1, changestate]
type = changestate
triggerall = var(59)>=1
triggerall = (Ctrl) && (Statetype = S) && (statetype != A)
triggerall = p2movetype != A
triggerall = p2stateno != [5030,5090]
triggerall = statetype != C
triggerall = statetype != A
triggerall = p2stateno != [5110,5120]
triggerall = p2stateno != 16212
triggerall = p2stateno != 16172
trigger1 = (ctrl) && (P2bodydist X = [55,809]) && (p2movetype = H)
trigger1 = enemy, name != "cvszangief"
trigger2 = (ctrl) && (p2bodydist X = [55,809]) && (p2movetype != A)
trigger2 = enemy, name != "cvszangief"
trigger3 = (ctrl) && (p2bodydist X = [140,809]) && (p2movetype != A)
trigger3 = enemy, name = "cvszangief"
trigger4 = (ctrl) && (p2bodydist X = [60,809]) && (p2movetype != A)
trigger4 = enemy, name = "cvsking"
trigger5 = (ctrl) && (p2bodydist X = [55,809]) && (p2movetype != A)
trigger5 = enemy, name != "cvsking"
value = 220855555

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) < 1
triggerall = command = "FF"
trigger1 =  statetype = s
trigger1 = ctrl
trigger1 = var(9)<=0

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = changestate
value = 105
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(9)<=0

;---------------------------------------------------------------------------
;suplex
[State -1, Throw]
type = ChangeState
value = 815
triggerall = var(59) < 1
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 9
trigger1 = (p2statetype = S) || (p2statetype = C)

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) < 1
triggerall = command = "s"
triggerall = statetype != C
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) < 1
triggerall = command = "x"
triggerall = command != "holddown"
TriggerAll = statetype != A
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) < 1
triggerall = command = "y"
triggerall = command != "holddown"
TriggerAll = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact

;---------------------------------------------------------------------------

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) < 1
triggerall = command = "z"
triggerall = command != "holddown"
TriggerAll = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) < 1
triggerall = command = "a"
triggerall = command != "holddown"
TriggerAll = statetype != A
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) < 1
triggerall = command = "b"
triggerall = command != "holddown"
TriggerAll = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Stand Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) < 1
triggerall = command = "c"
triggerall = command != "holddown"
TriggerAll = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) < 1
triggerall = command = "x"
triggerall = command = "holddown"
TriggerAll = statetype != A
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) < 1
triggerall = command = "y"
triggerall = command = "holddown"
TriggerAll = statetype != A
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) < 1
triggerall = command = "a"
triggerall = command = "holddown"
TriggerAll = statetype != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact


;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) < 1
triggerall = command = "b"
triggerall = command = "holddown"
TriggerAll = statetype != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) < 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) < 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) < 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) < 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) < 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Guard]
type = ChangeState
value = 120
triggerall = command = "holdback"
triggerall = ctrl && stateno != 120
trigger1 = inguarddist
trigger1 = !enemy, MoveGuarded
trigger1 = var(9)<=0

