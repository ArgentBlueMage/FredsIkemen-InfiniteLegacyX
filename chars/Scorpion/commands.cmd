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

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1
[Command]
name = "CPU0"
command = U,U,D,D,B,F,B,F,s,s,s
time = 0

[Command]
name = "CPU1"
command = U,U,D,D,B,F,B,F,a,a,s
time = 0

[Command]
name = "CPU2"
command = U,U,D,D,B,F,B,F,b,b,s
time = 0

[Command]
name = "CPU3"
command = U,U,D,D,B,F,B,F,c,c,s
time = 0

[Command]
name = "CPU4"
command = U,U,D,D,B,F,B,F,x,x,s
time = 0

[Command]
name = "CPU5"
command = U,U,D,D,B,F,B,F,y,y,s
time = 0

[Command]
name = "CPU6"
command = U,U,D,D,B,F,B,F,z,z,s
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B,F,B,F,a,a,a,s
time = 0

[Command]
name = "CPU8"
command = U,U,D,D,B,F,B,F,a,a,a,a,s
time = 0

[Command]
name = "CPU9"
command = U,D,B,F,b,b,s
time = 0

[Command]
name = "CPU10"
command = D,B,F,B,F,b,b,s
time = 0

[Command]
name = "CPU11"
command = U,D,D,B,F,b,b,s
time = 0

[Command]
name = "CPU12"
command = U,U,D,F,B,F,b,s
time = 0

[Command]
name = "CPU13"
command = U,U,D,D,B,F,x,x,s
time = 0

[Command]
name = "CPU14"
command = U,U,D,D,B,F,x,s
time = 0

[Command]
name = "CPU15"
command = D,D,B,F,B,F,x,s
time = 0

[Command]
name = "CPU16"
command = D,D,B,F,B,F,x,x,s
time = 0

[Command]
name = "CPU17"
command = U,U,D,D,B,F,B,F,x,x,s
time = 0

[Command]
name = "CPU18"
command = U,U,D,B,F,B,F,x,s
time = 0

[Command]
name = "CPU19"
command = U,U,B,F,B,F,y,y,s
time = 0

[Command]
name = "CPU20"
command = U,U,D,B,F,B,F,y,y,s
time = 0

[Command]
name = "CPU21"
command = U,U,U,U,B,F,B,F,y,s
time = 0

[Command]
name = "CPU22"
command = U,U,U,U,B,F,B,F,y,y,s
time = 0

[Command]
name = "CPU23"
command = U,U,D,D,U,U,B,F,y,s
time = 0

[Command]
name = "CPU24"
command = U,U,D,D,B,F,U,U,y,s
time = 0

[Command]
name = "CPU25"
command = U,U,U,U,U,U,B,F,y,s
time = 0

[Command]
name = "CPU26"
command = U,U,D,D,U,U,B,F,x,s
time = 0

[Command]
name = "CPU27"
command = U,U,D,D,B,F,D,D,x,s
time = 0

[Command]
name = "CPU28"
command = U,D,B,F,B,F,x,x,x,s
time = 0

[Command]
name = "CPU29"
command = U,D,U,D,U,D,x,x,s
time = 0

[Command]
name = "CPU30"
command = U,D,U,D,U,D,a,s
time = 0

[Command]
name = "CPU31"
command = U,D,U,D,U,D,a,a,a,s
time = 0

[Command]
name = "CPU32"
command = B,F,B,F,B,F,B,F,a,a,s
time = 0

[Command]
name = "CPU33"
command = B,F,B,F,B,F,B,F,a,s
time = 0

[Command]
name = "CPU34"
command = U,U,B,F,B,F,B,F,b,s
time = 0

[Command]
name = "CPU35"
command = B,F,D,D,B,F,B,F,b,s
time = 0

[Command]
name = "CPU36"
command = B,F,D,D,B,F,B,F,b,b,s
time = 0

[Command]
name = "CPU37"
command = U,U,D,D,B,F,D,B,s,s
time = 0

[Command]
name = "CPU38"
command = U,U,D,D,B,F,D,B,s
time = 0

[Command]
name = "CPU39"
command = U,U,D,B,F,D,B,F,s
time = 0

[Command]
name = "CPU40"
command = U,U,D,B,F,D,B,F,a,s
time = 0

[Command]
name = "CPU41"
command = U,U,D,B,F,D,B,F,b,s
time = 0

[Command]
name = "CPU42"
command = U,U,D,B,F,D,B,F,x,s
time = 0

[Command]
name = "CPU43"
command = U,U,D,B,F,D,B,F,y,s
time = 0

[Command]
name = "CPU44"
command = U,U,D,B,F,D,B,F,a,a,s
time = 0

[Command]
name = "CPU45"
command = U,U,D,B,F,D,B,F,b,b,s
time = 0

[Command]
name = "CPU46"
command = U,U,D,B,F,D,B,F,x,x,s
time = 0

[Command]
name = "CPU47"
command = U,U,D,B,F,D,B,F,y,y,s
time = 0

[Command]
name = "CPU48"
command = U,D,B,F,F,B,s,s
time = 0

[Command]
name = "CPU49"
command = U,D,B,F,F,B,a,s
time = 0

[Command]
name = "CPU50"
command = U,D,B,F,F,B,b,s
time = 0

[Command]
name = "CPU51"
command = U,D,B,F,F,B,x,s
time = 0

[Command]
name = "CPU52"
command = U,D,B,F,F,B,y,s
time = 0

[Command]
name = "CPU53"
command = U,D,B,F,F,B,a,a,s
time = 0

[Command]
name = "CPU54"
command = U,D,B,F,F,B,b,b,s
time = 0

[Command]
name = "CPU55"
command = U,D,B,F,F,B,x,x,s
time = 0

[Command]
name = "CPU56"
command = U,D,B,F,F,B,y,y,s
time = 0

[Command]
name = "CPU57"
command = B,F,U,D,F,B,s
time = 0

[Command]
name = "CPU58"
command = B,F,U,D,F,B,x,s
time = 0

[Command]
name = "CPU59"
command = B,F,U,D,F,B,y,s
time = 0

[Command]
name = "CPU60"
command = B,F,U,D,F,B,a,s
time = 0

[Command]
name = "CPU61"
command = B,F,U,D,F,B,b
time = 0

[Command]
name = "CPU62"
command = B,F,D,F,B,U,D,F,B,s
time = 0

[Command]
name = "CPU63"
command = B,F,D,F,B,U,D,F,B,a
time = 0

[Command]
name = "CPU64"
command = B,F,D,F,B,U,D,F,B,b
time = 0

[Command]
name = "CPU65"
command = B,F,D,F,B,U,D,F,B,x
time = 0

[Command]
name = "CPU66"
command = B,F,D,F,B,U,D,F,B,y
time = 0

[Command]
name = "CPU67"
command = U,U,D,D,B,F,B,F,b
time = 0


;-| Super Motions |--------------------------------------------------------
[Command]
name = "2qcb_2k"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "2qcf_k"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "2qcf_k"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "2qcf_p"
command = ~D, DF, F, D, DF, F, x
time = 25

[Command]
name = "2qcf_p"
command = ~D, DF, F, D, DF, F, y
time = 25

;-| Special Motions |------------------------------------------------------
[Command]
name = "qcf_k"
command = ~D, DF, F, a
time = 25

[Command]
name = "qcf_k"
command = ~D, DF, F, b
time = 25

[Command]
name = "hcb_a"
command = ~F, D, B, a
time = 25

[Command]
name = "hcb_b"
command = ~F, D, B, b
time = 25

[Command]
name = "hcf_a"
command = ~B, D, F, a
time = 25

[Command]
name = "hcf_b"
command = ~B, D, F, b
time = 25

[Command]
name = "rdp_y"
command = ~B, D, DB, y
time = 20

[Command]
name = "rdp_x"
command = ~B, D, DB, x
time = 20

[Command]
name = "rdp_k"
command = ~B, D, DB, a
time = 20

[Command]
name = "rdp_k"
command = ~B, D, DB, b
time = 20

[Command]
name = "dp_a"
command = ~F, D, DF, a
time = 20

[Command]
name = "dp_b"
command = ~F, D, DF, b
time = 20

[Command]
name = "dp_y"
command = ~F, D, DF, y
time = 20

[Command]
name = "dp_x"
command = ~F, D, DF, x
time = 20

[Command]
name = "wall"
command = D,DB,B,a
time = 30

[Command]
name = "DBa"
command = ~D,DB,B,b
time = 17


;[Command]
;name = "PoisonKick"
;command = ~F, DF, F, x
;time = 30

;[Command]
;name = "PoisonKick"
;command = ~F, DF, F, y
;time = 30

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

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
;   trigger1 = command = command_name
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
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

; Guarding when cornered
; ==========================
; AI Standing Guard
; ==========================
[State -1]
type = ChangeState
triggerall = var(0)
triggerall = Statetype != A ;Player is not in the air
triggerall = P2statetype != C ;Player is not crouching
triggerall = Statetype = S ;Player is currently standing
triggerall = P2Movetype = A ;Opponent is attacking
triggerall = Pos Y != [-1,-999]
triggerall = p2bodydist X<80
triggerall = enemy,hitdefattr = SCA,AA,AP
triggerall = (random <= 800) || var(7)
trigger1 = ctrl
trigger2 = stateno = 102
trigger3 = stateno = [21,22]
value = 130 ;Default standing guard state

; =============================
; AI Stand to Crouch Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(0)
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

; =============================
; AI Crouching Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(0)
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = p2bodydist X<80
triggerall = enemy,hitdefattr = SCA,AA,AP
triggerall = (random <= 800) || var(7)
trigger1 = ctrl
trigger2 = stateno = 102
trigger3 = stateno = [21,22]
value = 131

; =============================
; AI Crouch to Stand Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(0)
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

; =============================
; AI Aerial Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(0)
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = p2bodydist X<80
triggerall = enemy,hitdefattr = SCA,AA,AP
triggerall = ctrl = 1
trigger1 = (random <= 800) || var(7)
value = 132

[State -1, supersnake2]
type = ChangeState
value = 3000
triggerall = command = "2qcb_2k"
triggerall = power>=2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 10
trigger7 = stateno = 240
trigger7 = time > 7
trigger8 = stateno = 410
trigger8 = time > 6
trigger9 = stateno = 440
trigger9 = time > 12
trigger10 = stateno = 225 && movecontact
trigger11 = stateno = 235 && movecontact
;---------------------------------------------------------------------------
[State -1, supersnake2]
type = ChangeState
value = 2500
triggerall = command = "2qcf_k"
triggerall = power>=1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 10
trigger7 = stateno = 240
trigger7 = time > 7
trigger8 = stateno = 410
trigger8 = time > 6
trigger9 = stateno = 440
trigger9 = time > 12
trigger10 = stateno = 225 && movecontact
trigger11 = stateno = 235 && movecontact

[State -1, supersnake1]
type = ChangeState
value = 2000
triggerall = command = "2qcf_p"
triggerall = power>=1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 10
trigger7 = stateno = 240
trigger7 = time > 7
trigger8 = stateno = 410
trigger8 = time > 6
trigger9 = stateno = 440
trigger9 = time > 12
trigger10 = stateno = 225 && movecontact
trigger11 = stateno = 235 && movecontact

[State -1, AI Triple Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = var(0)
triggerall = Statetype = S
triggerall = P2statetype = S
triggerall = p2bodydist x = [81, 149]
triggerall = power > 2000
trigger1 = random <= 800
;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
;[State -1, R. Light Kung Fu Palm]
;type = ChangeState
;value = 1300
;triggerall = command = "QCF_x"
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
;High Kung Fu Palm
;カンフー突き手（弱）
;[State -1, R. High Kung Fu Palm]
;type = ChangeState
;value = 1400
;triggerall = command = "QCF_y"
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
;DBa
[State -1]
type = ChangeState
value = 1110
triggerall = command = "qcf_k"
trigger1 = stateno = 1100 || stateno = 1105

;DBa
[State -1]
type = ChangeState
value = 1100
triggerall = command = "hcf_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 10
trigger7 = stateno = 240
trigger7 = time > 7
trigger8 = stateno = 410
trigger8 = time > 6
trigger9 = stateno = 440
trigger9 = time > 12
trigger10 = stateno = 225 && movecontact
trigger11 = stateno = 235 && movecontact

;---------------------------------------------------------------------------
;DBa
[State -1]
type = ChangeState
value = 1105
triggerall = command = "hcf_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 10
trigger7 = stateno = 240
trigger7 = time > 7
trigger8 = stateno = 410
trigger8 = time > 6
trigger9 = stateno = 440
trigger9 = time > 12
trigger10 = stateno = 225 && movecontact
trigger11 = stateno = 235 && movecontact

;---------------------------------------------------------------------------
;DBa
[State -1]
type = ChangeState
value = 676
triggerall = command = "dp_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 10
trigger7 = stateno = 240
trigger7 = time > 7
trigger8 = stateno = 410
trigger8 = time > 6
trigger9 = stateno = 440
trigger9 = time > 12
trigger10 = stateno = 225 && movecontact
trigger11 = stateno = 235 && movecontact

;---------------------------------------------------------------------------
;DBa
[State -1]
type = ChangeState
value = 680
triggerall = command = "dp_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 10
trigger7 = stateno = 240
trigger7 = time > 7
trigger8 = stateno = 410
trigger8 = time > 6
trigger9 = stateno = 440
trigger9 = time > 12
trigger10 = stateno = 225 && movecontact
trigger11 = stateno = 235 && movecontact


[State -1, AI DBa]
type = ChangeState
value = 676
triggerall = !win
triggerall = p2stateno != [1025,1028]
triggerall = statetype = S
trigger1 = stateno != 102
trigger1 = var(0)
trigger1 = ctrl
trigger1 = p2dist X> 170

;---------------------------------------------------------------------------
;wall
[State -1, wall]
type = ChangeState
value = 1130
triggerall = command = "rdp_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 10
trigger7 = stateno = 240
trigger7 = time > 7
trigger8 = stateno = 410
trigger8 = time > 6
trigger9 = stateno = 440
trigger9 = time > 12
trigger10 = stateno = 225 && movecontact
trigger11 = stateno = 235 && movecontact

;wall
[State -1, wall]
type = ChangeState
value = 1150
triggerall = command = "rdp_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 10
trigger7 = stateno = 240
trigger7 = time > 7
trigger8 = stateno = 410
trigger8 = time > 6
trigger9 = stateno = 440
trigger9 = time > 12
trigger10 = stateno = 225 && movecontact
trigger11 = stateno = 235 && movecontact

;wall
[State -1, wall]
type = ChangeState
value = 1140
triggerall = command = "rdp_k"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 10
trigger7 = stateno = 240
trigger7 = time > 7
trigger8 = stateno = 410
trigger8 = time > 6
trigger9 = stateno = 440
trigger9 = time > 12
trigger10 = stateno = 225 && movecontact
trigger11 = stateno = 235 && movecontact

[State -1, AI wall]
type = ChangeState
value = 1130
triggerall = var(0)
triggerall = statetype != A
trigger1= ctrl && p2bodydist x>100 && random<200
trigger1 = pos Y >= -20

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Reika Throw
[State -1, Reika Throw]
type = ChangeState
value = 800
triggerall = command = "x" && command = "y"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;Viper Punch
;カンフー突き手（弱）
[State -1, ]
type = ChangeState
value = 1000
triggerall = command = "hcb_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 10
trigger7 = stateno = 240
trigger7 = time > 7
trigger8 = stateno = 410
trigger8 = time > 6
trigger9 = stateno = 440
trigger9 = time > 12
trigger10 = stateno = 225 && movecontact
trigger11 = stateno = 235 && movecontact

;Viper Punch
;カンフー突き手（弱）
[State -1, ]
type = ChangeState
value = 1200
triggerall = command = "hcb_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 10
trigger7 = stateno = 240
trigger7 = time > 7
trigger8 = stateno = 410
trigger8 = time > 6
trigger9 = stateno = 440
trigger9 = time > 12
trigger10 = stateno = 225 && movecontact
trigger11 = stateno = 235 && movecontact
;---------------------------------------------------------------------------
;Poison Kick
;カンフー突き手（弱）
;[State -1, ]
;type = ChangeState
;value = 4300
;triggerall = command = "PoisonKick"
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
;Poison Kick
;カンフー突き手（弱）
[State -1, Viper Punch]
type = ChangeState
value = 4400
triggerall = command = "dp_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 10
trigger7 = stateno = 240
trigger7 = time > 7
trigger8 = stateno = 410
trigger8 = time > 6
trigger9 = stateno = 440
trigger9 = time > 12
trigger10 = stateno = 225 && movecontact
trigger11 = stateno = 235 && movecontact

;Poison Kick
;カンフー突き手（弱）
[State -1, Viper Punch]
type = ChangeState
value = 4405
triggerall = command = "dp_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 10
trigger7 = stateno = 240
trigger7 = time > 7
trigger8 = stateno = 410
trigger8 = time > 6
trigger9 = stateno = 440
trigger9 = time > 12
trigger10 = stateno = 225 && movecontact
trigger11 = stateno = 235 && movecontact


[State -1, AI PoisonKick2] ;holdfwd version
type = ChangeState
value = 4400
triggerall = var(0)
triggerall = statetype = S
trigger1 = (stateno = 230) && time > 6
trigger1 = movehit
trigger1 = p2dist X = [0,65]
;---------------------------------------------------------------------------

;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Run Fwd]
type = ChangeState
value = 102
triggerall = !win
triggerall = p2stateno != [1025,1028]
triggerall = statetype = S
trigger1 = stateno != 102
trigger1 = var(0)
trigger1 = ctrl
trigger1 = p2dist X>160
;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------

[State -1, AI Jump]
type = ChangeState
value = 40
triggerall = var(0)
triggerall = ctrl || stateno = 102
triggerall = p2movetype != H
triggerall = stateno != [40,55]
triggerall = statetype = S
triggerall = p2stateno != 1028
trigger1 = p2dist X = [110,120]
trigger1 = stateno != [100,102]
trigger1 = random>800
trigger2 = p2dist X = [120,140]
trigger2 = stateno = [100,102]
trigger2 = random>800
trigger3 = enemy,numproj>0
trigger3 = p2dist X = [80,360]
trigger4 = p2movetype = A
trigger4 = enemy,hitdefattr = SCA,HT
trigger4 = p2dist X = [0,100]
trigger4 = enemy,vel X>0

[State -1, AI Run Back]
type = ChangeState
value = 105
triggerall = !win
triggerall = var(0)
triggerall = ctrl
triggerall = stateno != [100,105]
triggerall = stateno != [40,55]
triggerall = statetype = S
trigger1 = p2dist X<=80
trigger1 = p2stateno = [5100,5110]
trigger1 = backedgebodydist>20
;---------------------------------------------------------------------------
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Overhead Smash
[State -1, Overhead Smash]
type = ChangeState
value = 225
triggerall = command = "a" && command = "holdfwd" && command != "holddown"
trigger1 = StateType = S && ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 10
trigger7 = stateno = 240
trigger7 = time > 7
trigger8 = stateno = 410
trigger8 = time > 6
trigger9 = stateno = 440
trigger9 = time > 12

;---------------------------------------------------------------------------
; Overhead Smash
[State -1, Overhead Smash]
type = ChangeState
value = 235
triggerall = command = "b" && command = "holdfwd" && command != "holddown"
trigger1 = StateType = S && ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 10
trigger7 = stateno = 240
trigger7 = time > 7
trigger8 = stateno = 410
trigger8 = time > 6
trigger9 = stateno = 440
trigger9 = time > 12
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------


;Stand Light Punch

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(0)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = time > 5
trigger3 = stateno = 400
trigger3 = time > 4
trigger4 = stateno = 430
trigger4 = time > 9
trigger5 = stateno = 240
trigger5 = time > 9

[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(0)
triggerall = statetype = S
triggerall = ctrl
trigger1 = prevstateno = 1056
trigger1 = enemy,backedgebodydist<=20
trigger1 = p2movetype = H
trigger1 = p2stateno != [120,170]
trigger1 = p2stateno = [5030,5100]
trigger2 = p2stateno != [5100,5150]
trigger2 = p2dist X<50
trigger2 = p2statetype = S
trigger2 = random>900
trigger3 = prevstateno = [810,811]
trigger3 = p2bodydist X = [0,15]
trigger3 = enemy,backedgebodydist<=20
trigger4 = p2stateno = 821
trigger4 = p2bodydist X = [0,20]

;---------------------------------------------------------------------------
;Stand Strong Punch

[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = !var(0)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X > 20
trigger1 = statetype = S
trigger1 = ctrl


[State -1, AI Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(0)
triggerall = statetype = S
trigger1 = stateno = 200
trigger1 = p2stateno = [5030,5100]
trigger1 = enemy,backedgebodydist<=20
trigger1 = time > 5
trigger1 = movehit
trigger2 = p2stateno != [5100,5150]
trigger2 = p2stateno != 1028
trigger2 = p2dist X<60
trigger2 = ctrl
trigger2 = random>980


; Hard Punch Close
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X < 90
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = time > 5
trigger3 = stateno = 400
trigger3 = time > 4
trigger4 = stateno = 430
trigger4 = time > 9
trigger5 = stateno = 240
trigger5 = time > 9
trigger6 = stateno = 200
trigger6 = time > 3
;---------------------------------------------------------------------------
;Stand Light Kick

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(0)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 210
trigger6 = time > 9
trigger7 = stateno = 240
trigger7 = time > 9


[State -1, AI Stand Light Kick]
type = ChangeState
value = 230+(200*p2statetype = C)
triggerall = var(0)
triggerall = statetype = S
trigger1 = (stateno = 200) && time > 7
trigger1 = movehit
trigger1 = p2dist X = [0,69]
trigger2 = p2stateno != [5100,5150]
trigger2 = p2stateno != 1028
trigger2 = ctrl
trigger2 = statetype = S
trigger2 = p2dist X = [0,69]
trigger2 = random>800

;---------------------------------------------------------------------------
;Standing Strong Kick

[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = !var(0)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 440
trigger6 = time > 9


[State -1, AI Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(0)
triggerall = statetype = S
trigger1 = (stateno = 230) && time > 6
trigger1 = movehit
trigger1 = p2dist X = [0,65]



;---------------------------------------------------------------------------
;Taunt

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(0)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !var(0)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 410
trigger6 = time > 9
trigger7 = stateno = 440
trigger7 = time > 9

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(0)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = p2dist X<40

;---------------------------------------------------------------------------
;Crouching Strong Punch

[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 240
trigger6 = time > 9
trigger7 = stateno = 440
trigger7 = time > 9

[State -1, Crouching Light Punch]
type = ChangeState
value = 410
triggerall = var(0)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = p2dist X<50
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 410
trigger6 = time > 9
trigger7 = stateno = 440
trigger7 = time > 9


[State -1, AI Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(0)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X<=105
trigger1 = p2statetype = S
trigger1 = p2stateno = [200,250]
trigger1 = p2movetype = A

;---------------------------------------------------------------------------
;Crouching Strong Kick

[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = !var(0)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 230
trigger3 = time > 5
trigger4 = stateno = 400
trigger4 = time > 4
trigger5 = stateno = 430
trigger5 = time > 9
trigger6 = stateno = 240
trigger6 = time > 9
trigger7 = stateno = 410
trigger7 = time > 9
;---------------------------------------------------------------------------
;Jump Light Punch

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(0)
trigger1 = stateno = 600
trigger1 = statetime >= 7
trigger1 = movecontact
trigger1 = p2dist X-(vel X*7)<=40
trigger1 = prevstateno != 600
trigger2 = stateno != 600
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist X<=30
trigger2 = p2statetype = A
trigger2 = p2dist Y = [-60,10]



;---------------------------------------------------------------------------

; JUMP NEUTRAL Hard PUNCH
;[State -1]
;type = ChangeState
;value = 621
;triggerall = vel X = 0
;triggerall = command = "y"
;trigger1 = statetype = A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch

[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking



;---------------------------------------------------------------------------

[State -1, AI Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(0)
trigger1 = stateno = 600
trigger1 = statetime >= 7
trigger1 = movecontact
trigger1 = (prevstateno = 600) || (p2dist X-(vel X*7)>40)

;---------------------------------------------------------------------------


;Jump Light Kick

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !var(0)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

[State -1, AI Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(0)
triggerall = p2dist Y>20
triggerall = p2dist X = [0,40]
triggerall = statetype = A
trigger1 = p2statetype = S
trigger1 = vel Y>0
trigger1 = ctrl
trigger2 = vel Y>0
trigger2 = command = "a"
trigger2 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick

[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = !var(0)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

[State -1, AI Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(0)
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2statetype = C
trigger1 = vel Y>0
trigger1 = pos Y>-60
trigger1 = p2dist X<80
trigger2 = stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
