;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Character Name: "Scott Summers"                          ;
; In Game Name: "Cyclops"                                  ;
; Game Play Style: MVC2 Remix                              ;
; Made By: Reza                                            ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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

command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.

command.buffer.time = 1

;-| Super/Hyper Motions |--------------------------------------------------------
[command]
name = "Mega Optic Blast"
command = ~D,DF,F,x+y
time = 25

[command]
name = "Mega Optic Blast"
command = ~D,DF,F,x+z
time = 25

[command]
name = "Mega Optic Blast"
command = ~D,DF,F,y+z
time = 25

[command]
name = "Mega Optic Blast Air"
command = ~D,DF,F,x+y
time = 25

[command]
name = "Mega Optic Blast Air"
command = ~D,DF,F,x+z
time = 25

[command]
name = "Mega Optic Blast Air"
command = ~D,DF,F,y+z
time = 25

[command]
name = "Optic Rage"
command = ~D,DB,B,x+y
time = 25

[command]
name = "Optic Rage"
command = ~D,DB,B,x+z
time = 25

[command]
name = "Optic Rage"
command = ~D,DB,B,y+z
time = 25

[command]
name = "Hyper Optic Slam"
command = ~D,DB,B,a+b
time = 25

[command]
name = "Hyper Optic Slam"
command = ~D,DB,B,a+c
time = 25

[command]
name = "Hyper Optic Slam"
command = ~D,DB,B,b+c
time = 25

[command]
name = "Super Optic Blast"
command = ~D,DF,F,a+b
time = 25

[command]
name = "Super Optic Blast"
command = ~D,DF,F,a+c
time = 25

[command]
name = "Super Optic Blast"
command = ~D,DF,F,b+c
time = 25

;-| Special Motions |------------------------------------------------------
[command]
name = "Optic Blast X"
command = ~D,DF,F,x
time = 25

[command]
name = "Optic Blast Y"
command = ~D,DF,F,y
time = 25

[command]
name = "Optic Blast Z"
command = ~D,DF,F,z
time = 25

[command]
name = "Optic Blast X Air"
command = ~D,DF,F,x
time = 25

[command]
name = "Optic Blast Y Air"
command = ~D,DF,F,y
time = 25

[command]
name = "Optic Blast Z Air"
command = ~D,DF,F,z
time = 25

[command]
name = "Optic Sweep X"
command = ~F,DF,D,x
time = 25

[command]
name = "Optic Sweep Y"
command = ~F,DF,D,y
time = 25

[command]
name = "Optic Sweep Z"
command = ~F,DF,D,z
time = 25

[command]
name = "Cyclone Kick A"
command = ~D,DB,B,a
time = 25

[command]
name = "Cyclone Kick B"
command = ~D,DB,B,b
time = 25

[command]
name = "Cyclone Kick C"
command = ~D,DB,B,c
time = 25

[command]
name = "Slice Kick A"
command = ~F,D,DF,a
time = 25

[command]
name = "Slice Kick B"
command = ~F,D,DF,b
time = 25

[command]
name = "Slice Kick C"
command = ~F,D,DF,c
time = 25

[command]
name = "Gene Slice X"
command = ~F,D,DF,x
time = 25

[command]
name = "Gene Slice Y"
command = ~F,D,DF,y
time = 25

[command]
name = "Gene Slice Z"
command = ~F,D,DF,z
time = 25

[command]
name = "Rushing Combo X"
command = ~30$B,F,x
time = 25

[command]
name = "Rushing Combo Y"
command = ~30$B,F,y
time = 25

[command]
name = "Rushing Combo Z"
command = ~30$B,F,z
time = 25

[command]
name = "Rushing Slam A"
command = ~30$B,F,a
time = 25

[command]
name = "Rushing Slam B"
command = ~30$B,F,b
time = 25

[command]
name = "Rushing Slam C"
command = ~30$B,F,c
time = 25

[command]
name = "Optic Slam A"
command = ~D,DF,F,a
time = 25

[command]
name = "Optic Slam B"
command = ~D,DF,F,b
time = 25

[command]
name = "Optic Slam C"
command = ~D,DF,F,c
time = 25

;-| Super Jump |----------------------------------------------------------------
[Command]
name = "Super Jump"
command = ~D,U
time = 5

[Command]
name = "Super Jump"
command = ~D,$UF
time = 5

[Command]
name = "Super Jump"
command = ~D,$UB
time = 5

;-| Single Button |-------------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddownfwd"
command = /DF
time = 1

[Command]
name = "holddownback"
command = /DB
time = 1

[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
time = 1

[Command]
name = "holdfwd2"
command = /F
time = 1

[Command]
name = "holdback2"
command = /B
time = 1

[Command]
name = "holdup2"
command = /U
time = 1

[Command]
name = "holddown2"
command = /D
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

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "UF"
command = UF
time = 1

[Command]
name = "UB"
command = UB
time = 1

[Command]
name = "DUF"
command = D, UF
time = 10

[Command]
name = "DUB"
command = D, UB
time = 10

[Command]
name = "up"
command = U
time = 1

;-| Advance Guard |--------------------------------------------------------

[Command]
name = "Advance Guard Standing/Jumping"
command = z+c
time = 6

[Command]
name = "Advance Guard Crouching"
command = z+c
time = 6

;-| 2/3 Button Combination |------------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "Rolling"
command = a+x
time = 1

[Command]
name = "Alpha Counter"
command = y+b
time = 1

;-| Dir + Button |---------------------------------------------------------
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
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
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
;------------------------------------------------------------------------------;
;                              SUPER/HYPER MOVES                               ;
;------------------------------------------------------------------------------;
;Super Optic Blast
;[State -1, Super Optic Blast]
;type = ChangeState
;value = 3500
;triggerall = command = "Super Optic Blast"
;triggerall = power > 1000
;trigger1 = (statetype = S) && ctrl

;-------------------------------------------------------------------------------
; Hyper Optic Slam
[State -1, Hyper Optic Slam]
type = ChangeState
value = 3016
triggerall = command = "Hyper Optic Slam"
triggerall = power > 1000
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact
trigger14 = ((stateno = 1000) && (AnimElem = 1, > 0))
trigger15 = ((stateno = 1002) && (AnimElem = 1, > 0))
trigger16 = ((stateno = 1004) && (AnimElem = 1, > 0))
trigger17 = ((stateno = 1012) && (AnimElem = 1, > 0))
trigger18 = ((stateno = 1015) && (AnimElem = 1, > 0))
trigger19 = ((stateno = 1037) && (AnimElem = 1, > 0))
trigger20 = ((stateno = 1044) && (AnimElem = 1, > 0))

;-------------------------------------------------------------------------------
; Optic Rage
[State -1, Optic Rage]
type = ChangeState
value = 3010
triggerall = command = "Optic Rage"
trigger1 = (statetype = S) && ctrl
triggerall = power > 3000


;Mega Optic Blast Air
[State -1, Mega Optic Blast Air]
type = ChangeState
value = 3005
triggerall = command = "Mega Optic Blast Air"
triggerall = power > 1000
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact
trigger8 = ((stateno = 1006) && (AnimElem = 1, > 0))
trigger9 = ((stateno = 1008) && (AnimElem = 1, > 0))
trigger10 = ((stateno = 1010) && (AnimElem = 1, > 0))
trigger11 = stateno = [1022,1024];((stateno = 1021) && (AnimElem = 1, < 0))
trigger12 = stateno = [1028,1030];((stateno = 1027) && (AnimElem = 1, < 0))
trigger13 = stateno = [1032,1035];((stateno = 1031) && (AnimElem = 1, < 0))
trigger14 = ((stateno = 1014) && (AnimElem = 1, > 0))
trigger15 = ((stateno = 1016) && (AnimElem = 1, > 0))

;-------------------------------------------------------------------------------
;Mega Optic Blast
[State -1, Mega Optic Blast]
type = ChangeState
value = 3000
triggerall = command = "Mega Optic Blast"
triggerall = power > 1000
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact
trigger14 = ((stateno = 1000) && (AnimElem = 1, > 0))
trigger15 = ((stateno = 1002) && (AnimElem = 1, > 0))
trigger16 = ((stateno = 1004) && (AnimElem = 1, > 0))
trigger17 = ((stateno = 1012) && (AnimElem = 1, > 0))
trigger18 = ((stateno = 1015) && (AnimElem = 1, > 0))
trigger19 = ((stateno = 1037) && (AnimElem = 1, > 0))
trigger20 = ((stateno = 1044) && (AnimElem = 1, > 0))

;------------------------------------------------------------------------------;
;                               SPECIAL MOVES                                  ;
;------------------------------------------------------------------------------;
; Rushing Slam C
[State -1, Rushing Slam C]
type = ChangeState
value = 1040
triggerall = command = "Rushing Slam C"
trigger1 = (statetype = S) && ctrl

;-------------------------------------------------------------------------------
; Rushing Slam B
[State -1, Rushing Slam B]
type = ChangeState
value = 1040
triggerall = command = "Rushing Slam B"
trigger1 = (statetype = S) && ctrl

;-------------------------------------------------------------------------------
; Rushing Slam A
[State -1, Rushing Slam A]
type = ChangeState
value = 1040
triggerall = command = "Rushing Slam A"
trigger1 = (statetype = S) && ctrl

;-------------------------------------------------------------------------------
;Slice Kick C
[State -1, Slice Kick C]
type = ChangeState
value = 1016
triggerall = command = "Slice Kick C"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Slice Kick B
[State -1, Slice Kick B]
type = ChangeState
value = 1016
triggerall = command = "Slice Kick B"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Slice Kick A
[State -1, Slice Kick A]
type = ChangeState
value = 1016
triggerall = command = "Slice Kick A"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Optic Slam C
[State -1, Optic Slam C]
type = ChangeState
value = 1044
triggerall = command = "Optic Slam C"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Optic Slam B
[State -1, Optic Slam B]
type = ChangeState
value = 1044
triggerall = command = "Optic Slam B"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Optic Slam A
[State -1, Optic Slam A]
type = ChangeState
value = 1044
triggerall = command = "Optic Slam A"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Cyclone Kick C
[State -1, Cyclone Kick C]
type = ChangeState
value = 1014
triggerall = command = "Cyclone Kick C"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Cyclone Kick B
[State -1, Cyclone Kick B]
type = ChangeState
value = 1014
triggerall = command = "Cyclone Kick B"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Cyclone Kick A
[State -1, Cyclone Kick A]
type = ChangeState
value = 1014
triggerall = command = "Cyclone Kick A"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Rushing Combo Z
[State -1, Rushing Combo Z]
type = ChangeState
value = 1037
triggerall = command = "Rushing Combo Z"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Rushing Combo Y
[State -1, Rushing Combo Y]
type = ChangeState
value = 1037
triggerall = command = "Rushing Combo Y"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Rushing Combo X
[State -1, Rushing Combo X]
type = ChangeState
value = 1037
triggerall = command = "Rushing Combo X"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Gene Slice Z
[State -1, Gene Slice Z]
type = ChangeState
value = 1031
triggerall = command = "Gene Slice Z"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Gene Slice Y
[State -1, Gene Slice Y]
type = ChangeState
value = 1027
triggerall = command = "Gene Slice Y"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Gene Slice X
[State -1, Gene Slice X]
type = ChangeState
value = 1021
triggerall = command = "Gene Slice X"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Optic Sweep Z
[State -1, Optic Sweep Z]
type = ChangeState
value = 1012
triggerall = command = "Optic Sweep Z"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Optic Sweep Y
[State -1, Optic Sweep Y]
type = ChangeState
value = 1012
triggerall = command = "Optic Sweep Y"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Optic Sweep X
[State -1, Optic Sweep X]
type = ChangeState
value = 1012
triggerall = command = "Optic Sweep X"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Optic Blast Z Air
[State -1, Optic Blast Z Air]
type = ChangeState
value = 1010
triggerall = command = "Optic Blast Z Air"
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact

;-------------------------------------------------------------------------------
;Optic Blast Y Air
[State -1, Optic Blast Y Air]
type = ChangeState
value = 1008
triggerall = command = "Optic Blast Y Air"
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact

;-------------------------------------------------------------------------------
;Optic Blast X Air
[State -1, Optic Blast X Air]
type = ChangeState
value = 1006
triggerall = command = "Optic Blast X Air"
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact

;-------------------------------------------------------------------------------
;Optic Blast Z
[State -1, Optic Blast Z]
type = ChangeState
value = 1004
triggerall = command = "Optic Blast Z"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Optic Blast Y
[State -1, Optic Blast Y]
type = ChangeState
value = 1002
triggerall = command = "Optic Blast Y"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;-------------------------------------------------------------------------------
;Optic Blast X
[State -1, Optic Blast X]
type = ChangeState
value = 1000
triggerall = command = "Optic Blast X"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = ((stateno = 220) && (AnimElem = 1, > 0))
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = [250,251]
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = ((stateno = 420) && (AnimElem = 1, > 0))
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;------------------------------------------------------------------------------;
;                         CUSTOM MVC2 SYSTEM                                   ;
;------------------------------------------------------------------------------;
; Advance Guard
[State -1, Advance Guard Standing]
type = ChangeState
value = 909
triggerall = command = "Advance Guard Standing/Jumping"
triggerall = statetype = S
trigger1 = stateno = [150,153]

[State -1, Advance Guard Crouching]
type = ChangeState
value = 910
triggerall = command = "Advance Guard Crouching"
triggerall = statetype = C
trigger1 = stateno = [150,153]

[State -1, Advance Guard Jumping]
type = ChangeState
value = 911
triggerall = command = "Advance Guard Standing/Jumping"
triggerall = statetype = A
trigger1 = stateno = [154,155]

;-------------------------------------------------------------------------------
; Air Dash Forward
[State -1, Air Dash Forward]
type = ChangeState
value = 905
triggerall = command = "FF"
trigger1 = (statetype = A) && ctrl && (stateno = [50,57])

; Air Dash Backward
[State -1, Air Dash Backward]
type = ChangeState
value = 907
triggerall = command = "BB"
trigger1 = (statetype = A) && ctrl && (stateno = [50,57])

;-------------------------------------------------------------------------------
; Alpha Counter
[State -1, Alpha Counter]
type = ChangeState
value = 902
triggerall = power >= 1000
triggerall = command = "Alpha Counter"
triggerall = statetype != A
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;-------------------------------------------------------------------------------
; Rolling Backward
[State -1, Rolling Backward]
type = ChangeState
value = 901
triggerall = command = "Rolling"
trigger1 = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl

;-------------------------------------------------------------------------------
; Rolling Forward
[State -1, Rolling Forward]
type = ChangeState
value = 900
triggerall = command = "Rolling"
trigger1 = command != "holdback"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------;
;                          RUN BACKWARD/FORWARD                                ;
;------------------------------------------------------------------------------;
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------------------
; Throw
;[State -1, Throw]
;type = ChangeState
;value = 800
;triggerall = command = "y" || command = "z"
;triggerall = statetype = S
;triggerall = ctrl
;triggerall = stateno != 100
;trigger1 = command = "holdfwd"
;trigger1 = p2bodydist X < 10
;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
;trigger2 = command = "holdback"
;trigger2 = p2bodydist X < 10
;trigger2 = (p2statetype = S) || (p2statetype = C)
;trigger2 = p2movetype != H

;------------------------------------------------------------------------------;
;                               THROWS                                         ;
;------------------------------------------------------------------------------;
; Throw 1
[State -1, Throw 1]
type = ChangeState
value = 800
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdfwd2" || command = "holdback2"
triggerall = command = "y"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl

;-------------------------------------------------------------------------------
; Throw 2
[State -1, Throw 2]
type = ChangeState
value = 820
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdfwd2" || command = "holdback2"
triggerall = command = "z"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl

;-------------------------------------------------------------------------------
; Throw 3
[State -1, Throw 3]
type = ChangeState
value = 830
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdfwd2"
triggerall = command = "c"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl

;-------------------------------------------------------------------------------
; Throw 4
[State -1, Throw 4]
type = ChangeState
value = 840
triggerall = StateType = C
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holddownfwd"
triggerall = command = "c"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl

;-------------------------------------------------------------------------------
; Throw 5
[State -1, Throw 5]
type = ChangeState
value = 850
triggerall = StateType = A
triggerall = p2StateType = A
triggerall = command = "holdfwd2" || command = "holdback2"
triggerall = command = "z"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = Pos Y < -80
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl

;------------------------------------------------------------------------------;
;                              TAUNT                                           ;
;------------------------------------------------------------------------------;
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------;
;                              BASIC ATTACKS                                   ;
;------------------------------------------------------------------------------;
; Standing Low Punch
[State -1, Standing Low Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------------------
; Standing Medium Punch
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;-------------------------------------------------------------------------------
; Standing High Punch
[State -1, Standing High Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact

;-------------------------------------------------------------------------------
; Standing Low Kick
[State -1, Standing Low Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger2 = movecontact

;-------------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 430
trigger6 = movecontact

;-------------------------------------------------------------------------------
; Standing High Kick
[State -1, Standing High Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact

;-------------------------------------------------------------------------------
; Crouching Low Punch
[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;-------------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;-------------------------------------------------------------------------------
; Crouching High Punch
[State -1, Crouching High Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact

;-------------------------------------------------------------------------------
; Crouching Low Kick
[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact

;-------------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

;-------------------------------------------------------------------------------
; Crouching High Kick
[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact

;-------------------------------------------------------------------------------
; Jumping Low Punch
[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------------------------------------------------
; Jumping Medium Punch
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact

;-------------------------------------------------------------------------------
; Jumping High Punch
[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact

;-------------------------------------------------------------------------------
; Jumping Low Kick
[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;-------------------------------------------------------------------------------
; Jumping Medium Kick
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact

;-------------------------------------------------------------------------------
; Jumping High Kick
[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact

;------------------------------------------------------------------------------;
;                            SUPER JUMP                                        ;
;------------------------------------------------------------------------------;
; Super Jump
[State -1, Super Jump]
type = ChangeState
value = 55
triggerall = command = "Super Jump"
trigger1 = statetype != A
trigger1 = ctrl = 1

;------------------------------------------------------------------------------;
;                         AIR COMBO ACTIVATION                                 ;
;------------------------------------------------------------------------------;
; Air Combo
[State -1, Air Combo]
type = VarSet
trigger1 = HitDefAttr = A, NA
trigger1 = MoveHit = 1
trigger1 = var(7) >= 3
var(8) = var(8) + 1
