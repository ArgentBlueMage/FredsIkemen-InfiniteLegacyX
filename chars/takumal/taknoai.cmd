;Command File created by "EKEN55"
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
name = "hold_a2"
command = /a
time = 1

[Command]
name = "hold_b2"
command = /b
time = 1

[Command]
name = "hold_c2"
command = /c
time = 1

[Command]
name = "hold_x2"
command = /x
time = 1

[Command]
name = "hold_y2"
command = /y
time = 1

[Command]
name = "hold_z2"
command = /z
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

;-| Super Motions |--------------------------------------------------------

[command]
name = "kyokugen"
command = ~F,D,B, z
time = 25

[command]
name = "kyokugen"
command = ~F,DF,D,DB,B, z
time = 21

[command]
name = "ranbu"
command = ~F,DF,D,DB,B, b
time = 21

[command]
name = "ranbu"
command = ~F,D,B, b
time = 25

[command]
name = "haohsk"
command = ~F,B,B, y
time = 25

[command]
name = "haohsk"
command = ~F,DF,D,DB,B, y
time = 21


;-| Special Motions |------------------------------------------------------

[command]
name = "upperk"
command = ~F,D,DF, y
time = 19

[command]
name = "upperk"
command = ~F,D,F, y
time = 24

[command]
name = "zanretsuken"
command = ~F,B,F,x
time = 22

[command]
name = "kyaku"
command = ~D,F,b
time = 20

[command]
name = "kyaku"
command = ~D,F,b
time = 20

[command]
name = "exxxx"
command = ~D,F,z
time = 20

[command]
name = "exxxx"
command = ~D,DF,F,z
time = 19

[command]
name = "kyaku"
command = ~D,DF,F,b
time = 18

[command]
name = "kooutwot"
command = ~F,DF,D,DB,B, x
time = 20

[command]
name = "kooutwot"
command = ~F,D,B, x
time = 25

[command]
name = "koou"
command = ~D,DF,F, x
time = 18

[command]
name = "koou"
command = ~D,F, x
time = 20

[command]
name = "roll f"
command = F,c
time = 5

[command]
name = "roll f"
command = DF,c
time = 5

[command]
name = "roll b"
command = DB,c
time = 5

[command]
name = "roll b"
command = B,c
time = 5

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 20

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 6

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
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

[State -1, light kick back]
type = ChangeState
value = 477
triggerall = command = "roll f"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

[State -1, light kick back]
type = ChangeState
value = 478
triggerall = command = "roll b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

[state -1, change]
type = ChangeState
value = 2413
triggerall = statetype != A
triggerall = numproj = 0
triggerall = command = "koou"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact

[state -1, change]
type = ChangeState
value = 2415
triggerall = statetype != A
triggerall = command = "kyaku"
trigger1 = statetype = S
trigger1 = ctrl

[state -1, change]
type = ChangeState
value = 2417
triggerall = statetype != A
triggerall = command = "zanretsuken"
trigger1 = statetype = S
trigger1 = ctrl

[state -1, change]
type = ChangeState
value = 2427
triggerall = power >= 1500
triggerall = statetype != A
triggerall = numproj = 0
triggerall = command = "haohsk"
triggerall = p2bodydist Y > -200
trigger1 = statetype = S
trigger1 = ctrl

[state -1, change]
type = ChangeState
value = 2438
triggerall = power >= 2000
triggerall = statetype != A
triggerall = command = "ranbu"
triggerall = p2bodydist Y > -200
trigger1 = statetype = S
trigger1 = ctrl

[state -1, change]
type = ChangeState
value = 2451
triggerall = power >= 4000
triggerall = statetype != A
triggerall = command = "kyokugen"
triggerall = p2bodydist Y > -200
trigger1 = statetype = S
trigger1 = ctrl

[state -1, change]
type = ChangeState
value = 2487
triggerall = power >= 1000
triggerall = statetype != A
triggerall = command = "exxxx"
trigger1 = statetype = S
trigger1 = ctrl

[state -1, change]
type = ChangeState
value = 2755
triggerall = statetype != A
triggerall = numproj = 0
triggerall = command = "kooutwot"
trigger1 = statetype = S
trigger1 = ctrl

[state -1, change]
type = ChangeState
value = 2787
triggerall = statetype != A
triggerall = command = "upperk"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
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
value = 842
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 9
trigger1 = (p2statetype = S) || (p2statetype = C)

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = statetype != C
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
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
triggerall = command = "y"
triggerall = command != "holddown"
TriggerAll = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
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
triggerall = command = "a"
triggerall = command != "holddown"
TriggerAll = statetype != A
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
TriggerAll = statetype != A
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
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
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Guard]
type = ChangeState
value = 120
triggerall = command = "back"
triggerall = ctrl && stateno != 120
trigger1 = inguarddist
trigger1 = !enemy, MoveGuarded
trigger1 = var(9)<=0

