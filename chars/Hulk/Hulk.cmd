; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

;-| Super Motions |--------------------------------------------------------
[Command]
name = "GammaWave"
command = ~D, DF, F, x+y
time = 20
[Command]
name = "GammaWave"
command = ~D, DF, F, x+z
time = 20
[Command]
name = "GammaWave"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "GammaQuake"
command = ~D, DF, F, a+b
time = 20
[Command]
name = "GammaQuake"
command = ~D, DF, F, a+c
time = 20
[Command]
name = "GammaQuake"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "GammaCrush"
command = ~D, DB, B, x+y
time = 20
[Command]
name = "GammaCrush"
command = ~D, DB, B, x+z
time = 20
[Command]
name = "GammaCrush"
command = ~D, DB, B, y+z
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "GammaThrowX"
command = ~$F, $DF, $D, $DB, $B, x
time = 20
[Command]
name = "GammaThrowY"
command = ~$F, $DF, $D, $DB, $B, y
time = 20
[Command]
name = "GammaThrowZ"
command = ~$F, $DF, $D, $DB, $B, z
time = 20

[Command]
name = "GammaThrowX"
command = ~F, D, B, x
time = 20
[Command]
name = "GammaThrowY"
command = ~F, D, B, y
time = 20
[Command]
name = "GammaThrowZ"
command = ~F, D, B, z
time = 20

[Command]
name = "GammaX"
command = ~D, DF, F, x
[Command]
name = "GammaY"
command = ~D, DF, F, y
[Command]
name = "GammaZ"
command = ~D, DF, F, z

[Command]
name = "GammaA"
command = ~30$B, F, a
[Command]
name = "GammaB"
command = ~30$B, F, b
[Command]
name = "GammaC"
command = ~30$B, F, c

[Command]
name = "GammaUpA"
command = ~30$D, $U, a
time = 15
command.buffer.time = 10


[Command]
name = "GammaUpB"
command = ~30$D, $U, b
time = 15
command.buffer.time = 10


[Command]
name = "GammaUpC"
command = ~30$D, $U, c
time = 15
command.buffer.time = 10

[Command]
name = "Roll1"
command = ~B, DB, D, x
[Command]
name = "Roll2"
command = ~B, DB, D, y
[Command]
name = "Roll1"
command = ~B, DB, D, a
[Command]
name = "Roll2"
command = ~B, DB, D, b
[Command]
name = "Roll3"
command = ~B, DB, D, z
[Command]
name = "Roll3"
command = ~B, DB, D, c


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Double Tap |-----------------------------------------------------------
;-| super jump |-----------------------------------------------------------
[command]
name = "du"
command = ~D, $U
time = 8

[command]
name = "abc"
command = a+b+c
time = 8

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1


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
[Command]
name = "uf_a"
command = /$UF, a
time = 1
[Command]
name = "ub_a"
command = /$UB, a
time = 1
[Command]
name = "uf_b"
command = /$UF, b
time = 1
[Command]
name = "ub_b"
command = /$UB, b
time = 1
[Command]
name = "uf_c"
command = /$UF, c
time = 1
[Command]
name = "ub_c"
command = /$UB, c
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
name = "start"
command = s
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
name = "hold_start"
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

[Command]
name = "undizzy"
command = ~B, F, B, F, B, F, B, F
time = 35

[Command]
name = "undizzy"
command = ~D, U, D, U, D, U, D, U
time = 35

[command]
name = "counter"
command = /F, x+a
time = 8

[command]
name = "counter"
command = /F, y+b
time = 8

[command]
name = "counter"
command = /F, z+c
time = 8

;[Command]
;name = "nuke"
;command = x,x,x,x,x,x
;time = 240

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   triggerall = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state   trigger3 = prevstateno = 420 && time > 15
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;===========================================================================

;Super Jump
[state -1]
type = changestate
value = 40
triggerall = command = "abc"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 421
trigger2 = movehit

;---------------------------------------------------------------------------
; Gamma Wave
[State -1, Gamma]
type = ChangeState
value = 3000
triggerall = !var(9)
triggerall = power >= 1000
triggerall = command = "GammaWave"
trigger1 = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,450]
trigger2 = StateNo != 215
trigger2 = Time > 5
; Gamma Crush
[State -1, Gamma]
type = ChangeState
value = 3100
triggerall = !var(9)
triggerall = power >= 1000
triggerall = command = "GammaCrush"
trigger1 = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,499]
trigger2 = StateNo != 215
trigger2 = Time > 5
; Gamma Quake
[State -1, Gamma]
type = ChangeState
value = 3200
triggerall = !var(9)
triggerall = power >= 1000
triggerall = command = "GammaQuake"
trigger1 = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,450]
trigger2 = StateNo != 215
trigger2 = Time > 5

;===========================================================================

;---------------------------------------------------------------------------
; Gamma Throw
[State -1, Gamma]
type = ChangeState
value = 1200
triggerall = !var(9)
triggerall = command = "GammaThrowX"
trigger1 = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,450]
trigger2 = StateNo != 215
trigger2 = Time > 5
[State -1, Gamma]
type = ChangeState
value = 1201
triggerall = !var(9)
triggerall = command = "GammaThrowY"
trigger1 = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,450]
trigger2 = StateNo != 215
trigger2 = Time > 5
[State -1, Gamma]
type = ChangeState
value = 1202
triggerall = !var(9)
triggerall = command = "GammaThrowZ"
trigger1 = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,450]
trigger2 = StateNo != 215
trigger2 = Time > 5

;---------------------------------------------------------------------------
; Gamma
[State -1, Gamma]
type = ChangeState
value = 1000
triggerall = !var(9)
triggerall = command = "GammaX"
trigger1 = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,450]
trigger2 = StateNo != 215
trigger2 = Time > 5
; Gamma
[State -1, Gamma]
type = ChangeState
value = 1001
triggerall = !var(9)
triggerall = command = "GammaY"
trigger1 = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,450]
trigger2 = StateNo != 215
trigger2 = Time > 5
; Gamma
[State -1, Gamma]
type = ChangeState
value = 1002
triggerall = !var(9)
triggerall = command = "GammaZ"
trigger1 = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,450]
trigger2 = StateNo != 215
trigger2 = Time > 5

;---------------------------------------------------------------------------
; Gamma Charge
[State -1, Gamma]
type = ChangeState
value = 1100
triggerall = var(59) <=0
triggerall = var(54)=0
triggerall = !var(9)
triggerall = command = "GammaA"
trigger1 = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

; Gamma
[State -1, Gamma]
type = ChangeState
value = 1101
triggerall = var(59) <=0
triggerall = var(54)=0
triggerall = !var(9)
triggerall = command = "GammaB"
trigger1 = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

; Gamma
[State -1, Gamma]
type = ChangeState
value = 1102
triggerall = var(59) <=0
triggerall = var(54)=0
triggerall = !var(9)
triggerall = command = "GammaC"
trigger1 = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Gamma Charge
[State -1, Gamma]
type = ChangeState
value = 1106
triggerall = var(59) <=0
triggerall = var(54)=0
triggerall = !var(9)
triggerall = command = "GammaUpA"
trigger1 = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

; Gamma
[State -1, Gamma]
type = ChangeState
value = 1107
triggerall = var(59) <=0
triggerall = var(54)=0
triggerall = !var(9)
triggerall = command = "GammaUpB"
trigger1 = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

; Gamma
[State -1, Gamma]
type = ChangeState
value = 1108
triggerall = var(59) <=0
triggerall = var(54)=0
triggerall = !var(9)
triggerall = command = "GammaUpC"
trigger1 = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[state -1, run Fwd]
type = changestate
value = 100
trigger1 = command = "FF"
trigger1 = (statetype = s) && (stateno !=[100,106])
trigger1 = ctrl

;---------------------------------------------------------------------------
;run back
[state -1, run back]
type = changestate
value = 105
trigger1 = command = "BB"
trigger1 = (statetype = s) && (stateno !=[100,106])
trigger1 = ctrl
;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !var(9)
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = command = "holdfwd"
trigger1 = p2bodydist X < 70
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !var(9)
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = command = "holdback"
trigger1 = p2bodydist X < 70
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
; Air Throw
[state -1]
type = changestate
value = 810
triggerall = !var(9)
triggerall = StateType = a && P2StateType = A
triggerall = Ctrl && (P2MoveType != h && StateNo!=620 && StateNo!=650)
triggerall = P2Dist Y = [-10,30]
triggerall = P2Dist X != [-5,-200]
trigger1 = command = "fwd_z"
trigger2 = command = "fwd_y"
trigger3 = command = "back_z"
trigger4 = command = "back_y"

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(9)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(9)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !var(9)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = !var(9)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(9)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = !var(9)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = !var(9)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 400
trigger2 = MoveContact
trigger3 = StateNo = 430
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 400
trigger2 = MoveContact
trigger3 = StateNo = 430
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 400
trigger2 = MoveContact
trigger3 = StateNo = 430
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 400
trigger2 = MoveContact
trigger3 = StateNo = 430
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !var(9)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !var(9)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !var(9)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 640]
trigger2 = StateNo != 620
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !var(9)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !var(9)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600,610]
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact


;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !var(9)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600,640]
trigger2 = MoveContact

[State -1,Avalanche Leap]
type = ChangeState
value = 123
triggerall = var(23) != 1
trigger1 = ((backEdgeDist) > -10 && (backEdgeDist) < 2)
triggerall = Pos Y <= -50
triggerall = Vel X != 0
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = stateno != 107
triggerall = stateno != 460
trigger1 = command = "holdfwd"
trigger2 = ((frontEdgeDist) > -10 && (frontEdgeDist) < 2)
trigger2 = command = "holdback"



; Push Block (Stand)
[State -1]
type = ChangeState
value = 550
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 560
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 570
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10


[State -1, Forward Recovery Roll]
type = ChangeState
value = 890
triggerall = var(59) = 0
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Backward Recovery Roll]
type = ChangeState
value = 895
triggerall = var(59) = 0
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

;counter strike 1
[state -1, counter]
type = changestate
value = 910
triggerall = var(59) = 0
triggerall = (command = "counter") && (power >= 1000)
trigger1 = stateno = [150,153]


