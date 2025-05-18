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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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


;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
;[Remap]
;x = x
;y = y
;z = z
;a = a
;b = b
;c = c
;s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-|AI ACTIVATION |---------------------------------------------------------

[Command]
name = "AI 1"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 2"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 3"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 4"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 5"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 6"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 7"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 8"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 9"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 10"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 11"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 12"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 13"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 14"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 15"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 16"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 17"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 18"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 19"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 20"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 21"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 22"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 23"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 24"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 25"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 26"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 27"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 28"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 29"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 30"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 31"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 32"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

[Command]
name = "AI 33"
command = ~U, U, U, U, a+b+c+x+y+z+s, U, U, U, U, a+b+c+x+y+z+s, U, U
time = 1

;-| Hyper Motions |--------------------------------------------------------

[Command]
name = "Thunder Extreme"
command = ~D, DF, F, D, DF, F, x;~D, D, B, F, B, F, a+b
time = 40

[Command]
name = "Thunder Extreme"
command = ~D, DF, F, D, DF, F, y
time = 40


[Command]
name = "sword launch"
command = ~D, DF, F, D,DF , F, a
time = 30


[Command]
name = "sword launch"
command = ~D, DF, F, D,DF , F, b
time = 30


;-| Special Motions |------------------------------------------------------



[Command] 
name = "special throw"
command = x+a
time = 30

[Command]
name = "special throw"
command = y+b
time = 30


[Command]
name = "use cloak_x"
command = ~D, DF, F, a

[Command]
name = "use cloak_y"
command = ~D, DF, F, b

[Command]
name = "use cloak_x"
command = ~D, DF, F, x

[Command]
name = "use cloak_z"
command = ~D, DF, F, y

[Command]
name = "grey"
command = ~B, D, DB, x

[Command]
name = "grey"
command = ~B, D, DB, y


;[Command]
;name = "teleport_a"
;command = ~D, DB, B, a

;[Command]
;name = "teleport_b"
;command = ~D, DB, B, b

;[Command]
;name = "teleport_x"
;command = ~D, DB, B, x

;[Command]
;name = "teleport_y"
;command = ~D, DB, B, y

[Command]
name = "wave" ; mismo nombre para el comando en el state entry
command = ~B,F,x ; esto es una media u hacia adelante mas golpe debil
time = 30

[Command]
name = "wave2" ; mismo nombre para el comando en el state entry
command = ~B,F,y ; esto es una media u hacia adelante mas golpe debil
time = 30

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
command = x+y+z+a+b+c+s
time = 1

[Command]
name = "b+x"
command = b+x
time = 1

;[Command]
;name = "y+b"
;command = y+b
;time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------

[Command]
name = "hold c"
command = /c
time = 1

[Command]
name = "hold z"
command = /z
time = 1

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

;-| Press Up |--------------------------------------------------------------

;[Command]
;name = "Press Up"
;command = U
;time = 1

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

;-|AI Activation|------------------------------------------------------------------

[State -1, AI]
type = VarSet
v = 30
value = 1
trigger1 = command = "AI 1"
trigger2 = command = "AI 2"
trigger3 = command = "AI 3"
trigger4 = command = "AI 4"
trigger5 = command = "AI 5"
trigger6 = command = "AI 6"
trigger7 = command = "AI 7"
trigger8 = command = "AI 8"
trigger9 = command = "AI 9"
trigger10 = command = "AI 10"
trigger11 = command = "AI 11"
trigger12 = command = "AI 12"
trigger13 = command = "AI 13"
trigger14 = command = "AI 14"
trigger15 = command = "AI 15"
trigger16 = command = "AI 16"
trigger17 = command = "AI 17"
trigger18 = command = "AI 18"
trigger19 = command = "AI 19"
trigger20 = command = "AI 20"
trigger21 = command = "AI 21"
trigger22 = command = "AI 22"
trigger23 = command = "AI 23"
trigger24 = command = "AI 24"
trigger25 = command = "AI 25"
trigger26 = command = "AI 26"
trigger27 = command = "AI 27"
trigger28 = command = "AI 28"
trigger29 = command = "AI 29"
trigger30 = command = "AI 30"
trigger31 = command = "AI 31"
trigger32 = command = "AI 32"
trigger33 = command = "AI 33"

;-|HYPERS/FINALS|-------------------------------------------------------------------


[State -1, Thunder Extreme]
type = ChangeState
value = 3400
triggerall = var(30) = 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "Thunder Extreme" && power >= 1000


[State -1, sword launch]
type = ChangeState
value = 3700
triggerall = var(30) = 0
triggerall = statetype != A
triggerall = ctrl && command = "sword launch"
trigger1 = var(10) = 0 || var(10) = 1
trigger1 = power >= 1000 || life < 350

;-|SPECIALS|------------------------------------------------------------------------



[State -1, sogoga]
type = ChangeState
value = 1040
triggerall = var(30) = 0
triggerall = ctrl
triggerall = statetype != A
trigger1 = command = "grey"



;---------------------------------------------------------------------------
[State -1]
type = varset
v = 10
value = 1
trigger1 = command = "use cloak_x"

[State -1]
type = varset
v = 10
value = 2
trigger1 = command = "use cloak_y"

[State -1]
type = varset
v = 10
value = 3
trigger1 = command = "use cloak_z"



;---------------------------------------------------------------------------
; ¼Ö ½º¸Å½¬
[State -1, Sol]
type = ChangeState
value = 1005
triggerall = NumProjID(1011) = 0
triggerall = NumProjID(1021) = 0
triggerall = numhelper(1026) = 0
triggerall = command = "use cloak_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = Pos Y <= -55

;---------------------------------------------------------------------------
; ¼Ö ½º¸Å½¬
[State -1, Sol]
type = ChangeState
value = 1005
triggerall = NumProjID(1011) = 0
triggerall = NumProjID(1021) = 0
triggerall = numhelper(1026) = 0
triggerall = command = "use cloak_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = Pos Y <= -55

;---------------------------------------------------------------------------
; ¼Ö ½º¸Å½¬
[State -1, Sol]
type = ChangeState
value = 1005
triggerall = NumProjID(1011) = 0
triggerall = NumProjID(1021) = 0
triggerall = numhelper(1026) = 0
triggerall = command = "use cloak_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = Pos Y <= -55

;---------------------------------------------------------------------------
; ¼Ö ½º¸Å½¬
[State -1, Sol]
type = ChangeState
value = 1000
triggerall = NumProjID(1011) = 0
triggerall = NumProjID(1021) = 0
triggerall = numhelper(1026) = 0
triggerall = command = "use cloak_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7 || movecontact = 1
trigger3 = stateno = 210
trigger3 = time >= 6 || movecontact = 1
trigger4 = stateno = 230
trigger4 = time >= 6 || movecontact = 1
;trigger5 = stateno = 240
;trigger5 = time >= 27 || movecontact = 1
trigger6 = stateno = 400
trigger6 = time >= 6 || movecontact = 1
trigger7 = stateno = 430
trigger7 = time >= 7 || movecontact = 1
trigger8 = stateno = 410
trigger8 = time >= 7 || movecontact = 1
;trigger9 = stateno = 440
;trigger9 = time >= 7 || movecontact = 1

;---------------------------------------------------------------------------
; ¼Ö ½º¸Å½¬
[State -1, Sol]
type = ChangeState
value = 1000
triggerall = NumProjID(1011) = 0
triggerall = NumProjID(1021) = 0
triggerall = numhelper(1026) = 0
triggerall = command = "use cloak_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7 || movecontact = 1
trigger3 = stateno = 210
trigger3 = time >= 6 || movecontact = 1
trigger4 = stateno = 230
trigger4 = time >= 6 || movecontact = 1
;trigger5 = stateno = 240
;trigger5 = time >= 27 || movecontact = 1
trigger6 = stateno = 400
trigger6 = time >= 6 || movecontact = 1
trigger7 = stateno = 430
trigger7 = time >= 7 || movecontact = 1
trigger8 = stateno = 410
trigger8 = time >= 7 || movecontact = 1
;trigger9 = stateno = 440
;trigger9 = time >= 7 || movecontact = 1

;---------------------------------------------------------------------------
; ¼Ö ½º¸Å½¬
[State -1, Sol]
type = ChangeState
value = 1000
triggerall = NumProjID(1011) = 0
triggerall = NumProjID(1021) = 0
triggerall = numhelper(1026) = 0
triggerall = command = "use cloak_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7 || movecontact = 1
trigger3 = stateno = 210
trigger3 = time >= 6 || movecontact = 1
trigger4 = stateno = 230
trigger4 = time >= 6 || movecontact = 1
;trigger5 = stateno = 240
;trigger5 = time >= 27 || movecontact = 1
trigger6 = stateno = 400
trigger6 = time >= 6 || movecontact = 1
trigger7 = stateno = 430
trigger7 = time >= 7 || movecontact = 1
trigger8 = stateno = 410
trigger8 = time >= 7 || movecontact = 1
;trigger9 = stateno = 440
;trigger9 = time >= 7 || movecontact = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------wave
[State -1, wave]
type = ChangeState
value = 1500 ; este es el numero de statedef en tu cns
triggerall = command = "wave"; mismo nombre para el comando en el state entry
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 7
trigger3 = stateno = 400
trigger3 = time > 9
trigger4 = stateno = 430
trigger4 = time > 6
trigger5 = stateno = 210
trigger5 = time > 9
trigger6 = stateno = 211
trigger6 = time > 4
trigger7 = stateno = 230
trigger7 = time > 7
trigger8 = stateno = 241
trigger8 = time > 7
trigger9 = stateno = 410
trigger9 = time > 8
trigger10 = stateno = 440
trigger10 = time > 10


[State -1, AI Kung Fu Throw] ;holdfwd version
type = ChangeState
value = 1500
triggerall = var(0)
triggerall = statetype = S
trigger1 = (stateno = 230) && time > 6
trigger1 = movehit
trigger1 = p2dist X = [0,65]


;---------------------------------------------------------------------------wave2
[State -1, wave2]
type = ChangeState
value = 1500 ; este es el numero de statedef en tu cns
triggerall = command = "wave2"; mismo nombre para el comando en el state entry
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 7
trigger3 = stateno = 400
trigger3 = time > 9
trigger4 = stateno = 430
trigger4 = time > 6
trigger5 = stateno = 210
trigger5 = time > 9
trigger6 = stateno = 211
trigger6 = time > 4
trigger7 = stateno = 230
trigger7 = time > 7
trigger8 = stateno = 241
trigger8 = time > 7
trigger9 = stateno = 410
trigger9 = time > 8
trigger10 = stateno = 440
trigger10 = time > 10


[State -1, AI Kung Fu Throw] ;holdfwd version
type = ChangeState
value = 1500
triggerall = var(0)
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = random>500
triggerall = p2stateno != [5100,5110]
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------


;[State -1, Teleport a]
;type = ChangeState
;value = 1110
;triggerall = var(30) = 0
;triggerall = ctrl
;triggerall = command = "teleport_a"
;trigger1 = statetype = S
;trigger2 = statetype = A

;[State -1, Teleport b]
;type = ChangeState
;value = 1120
;triggerall = var(30) = 0
;triggerall = ctrl
;triggerall = command = "teleport_b"
;trigger1 = statetype = S
;trigger2 = statetype = A

;[State -1, Teleport x]
;type = ChangeState
;value = 1130
;triggerall = var(30) = 0
;triggerall = ctrl
;triggerall = command = "teleport_x"
;trigger1 = statetype = S
;trigger2 = statetype = A

;[State -1, Teleport y]
;type = ChangeState
;value = 1140
;triggerall = var(30) = 0
;triggerall = ctrl
;triggerall = command = "teleport_y"
;trigger1 = statetype = S
;trigger2 = statetype = A

;-|BUTTON COMBINATIONS|-------------------------------------------------------------



;-|NORMAL HIT/COMBOS|---------------------------------------------------------------
;Reika Throw
[State -1, Reika Throw]
type = ChangeState
value = 799
triggerall = command = "a" && command = "x"
trigger1 = statetype != A
trigger1 = ctrl

;-|NORMAL HIT/COMBOS|---------------------------------------------------------------
;Reika Throw
[State -1, Reika Throw]
type = ChangeState
value = 799
triggerall = command = "b" && command = "y"
trigger1 = statetype != A
trigger1 = ctrl

;[State -1, Presa normale]
;type = ChangeState
;value = 801 ;tentativo di presa
;triggerall = var(30) = 0
;triggerall = command = "y"
;triggerall = command = "holdfwd"
;triggerall = statetype = S
;trigger1 = p2bodydist X <= 27
;trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Light Punch`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger4 = stateno = [8000]
trigger4 = movecontact
trigger1 = ctrl


;---------------------------------------------------------------------------
;Forward Strong Punch
;-§‚¿‹­ƒpƒ“ƒ`
[State -1, Elbow Smash]
type = ChangeState
value = 215
triggerall = command = "y" && command = "holdfwd" && command != "holddown"
trigger1 = StateType = S && ctrl
;---------------------------------------------------------------------------

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Run Fwd

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = !var(0)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl


;Run Back

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl



[State -1, Crouching Light Punch (no swd)]
type = ChangeState
value = 400
triggerall = var(30) = 0
triggerall = command = "x"
triggerall = command = "holddown"
;triggerall = var(10) != 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 7
trigger3 = (stateno = 420) && time > 5

[State -1, Crouching Strong Punch (no swd)]
type = ChangeState
value = 410
triggerall = var(30) = 0
triggerall = command = "y"
triggerall = command = "holddown"
;triggerall = var(10) != 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 7
trigger3 = (stateno = 420) && time > 5

[State -1, Crouching Light Kick (no swd)]
type = ChangeState
value = 420
triggerall = var(30) = 0
triggerall = command = "a"
triggerall = command = "holddown"
;triggerall = var(10) != 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 7
trigger3 = (stateno = 420) && time > 5

[State -1, Crouching High Kick (common)]
type = ChangeState
value = 430
triggerall = var(30) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 7
trigger3 = (stateno = 420) && time > 5


[State -1, Jump Light Punch (no swd)]
type = ChangeState
value = 600
triggerall = var(30) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Jump Strong Punch (no swd)]
type = ChangeState
value = 610
triggerall = var(30) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Jump Light Kick (common)]
type = ChangeState
value = 620
triggerall = var(30) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump High Kick (no swd)]
type = ChangeState
value = 630
triggerall = var(30) = 0
triggerall = command = "b"
;triggerall = var(10) != 1
trigger1 = statetype = A
trigger1 = ctrl

;-----------------------------------------------------------------------------------------
;--------------------------------------------------------------------------------------
; AI MOVEMENTS
;-----------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------

[State -1, AI nessun altro movimento dopo KO]
type = VarSet
v = 30
value = 2
triggerall = var(30) = 1
trigger1 = roundstate > 2


[State -1, AI grey addon 2]
type = ChangeState
value = 1040
triggerall = var(30) = 1
triggerall = !win
triggerall = p2stateno != [1025,1028]
triggerall = statetype = S
trigger1 = stateno != 102
trigger1 = ctrl
trigger1 = (p2bodydist x=[26,80])


[State -1, AI thunder Extreme]
type = ChangeState
value = 3400
triggerall = var(30) = 1
trigger1 = ctrl && power >= 1000 && statetype = S
trigger1 = p2BodyDist X >= 73


[State -1, AI cloak Destroyer]
type = ChangeState
value = 3700
triggerall = var(30) = 1
trigger1 = ctrl && power >= 1000 && statetype = S
trigger1 = p2BodyDist X <= 73


[State -1, AI Throw]
type = ChangeState
value = 1100
triggerall= var(30) = 1
triggerall= roundstate=2 && statetype=S && stateno!=100 && ctrl
triggerall= p2statetype!=A && p2statetype!=L && p2movetype!=H
trigger1= (p2bodydist x=[0,20]) && (p2bodydist y=[-25,25]) && random<250
trigger2= (p2stateno!=[120,155]) && (p2bodydist x=[0,26]) && (p2bodydist y=[-25,25]) && random<500

[State -1, AI sogoga]
type = ChangeState
value = 1000
triggerall = var(30) = 1
triggerall = ctrl && statetype != A
trigger1 = p2dist X = [80,170]


