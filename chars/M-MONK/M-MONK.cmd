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

[Command]
name = "CPU68"
command = U,U,D,D,B,F,B,F,y
time = 0

[Command]
name = "CPU69"
command = U,U,D,D,B,F,B,F,s
time = 0

[Command]
name = "CPU70"
command = U,U,D,D,B,F,B,F,a,s
time = 0



;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "2hcb_p"
command = ~F, $D, B, F, $D, B, x+y
time = 40

[Command]
name = "superpuno"
command = ~D, DB, B, a

[Command]
name = "superpuno"
command = ~D, DB, B, b

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DF, F, D, DF, F, a;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DF, F, D, DF, F, b;~F, D, DF, F, D, DF, y
time = 20

[Command]
name = "roca" ; mismo nombre para el comando en el state entry -------------------------roca
command = ~D,DF,F,a ; esto es una media u hacia adelante mas golpe debil
time = 30

[Command]
name = "wave" ; mismo nombre para el comando en el state entry
command = ~F,DF,D,DB,B, a ; esto es una media u hacia adelante mas golpe debil
time = 30

[Command]
name = "wave2" ; mismo nombre para el comando en el state entry
command = ~F,DF,D,DB,B, b ; esto es una media u hacia adelante mas golpe debil
time = 30


;-| Special Motions |------------------------------------------------------
[Command]
name = "HCBF_p"
command = ~F, D, B, F, x
time = 30

[Command]
name = "HCBF_p"
command = ~F, D, B, F, y
time = 30

[Command]
name = "upper_a"
command = ~F, D, DF, a

[Command]
name = "upper_b"
command = ~F, D, DF, b

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "upper_xy"
command = ~F, D, DF, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a
[Command]

name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCF_xy"
command = ~D, DF, F, z

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCB_xy"
command = ~D, DB, B, z

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_ab"
command = F, F, c

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "F_p"
command = ~F, x
time = 25

[Command]
name = "F_p"
command = ~F, y
time = 25

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
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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

[Command]
name = "fwd_y"
command = /F,y
time = 20

[Command]
name = "fwd_y"
command = /F,z
time = 20

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

;===========================================================================
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
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3200
triggerall = !var(0)
triggerall = command = "2hcb_p"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact


[State -1, AI Smash Kung Fu Upper]
type=changestate
value=3200
triggerall= var(0)
triggerall= roundstate=2 && statetype!=A && power>=1000
triggerall= !(enemynear,ctrl) && ((p2stateno!=[120,155]) || p2statetype=A) && p2statetype!=L
triggerall= (p2bodydist x=[0,70]) && (p2dist y>=-180) && (enemynear,vel y>-2) && (enemynear,vel x>=0)
trigger1= ctrl && random<ifelse((enemynear,hitfall),200,50)
trigger2= (stateno=220||stateno=225||stateno=250||stateno=255) && movehit && random<50
trigger3= stateno=420 && movehit && anim=420 && animelemtime(6)>=0 && random<50
trigger4= stateno=1000 && movehit && anim=1000 && animelemtime(10)>=0 && random<50
trigger5= stateno=1010 && movehit && anim=1010 && animelemtime(18)>=0 && random<50
trigger6= stateno=1020 && movehit && anim=1020 && animelemtime(26)>=0 && random<50
;====================================================================
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3100
triggerall = !var(0)
triggerall = command = "SmashKFUpper"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact

[State -1, AI Smash Kung Fu Upper]
type = ChangeState
value = 3100
triggerall = var(0)
triggerall = Statetype = S
triggerall = P2statetype = S
triggerall = p2bodydist x = [71, 149]
triggerall = power > 1000
trigger1 = random <= 800

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = !var(0)
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

[State -1, AI Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall= var(0)
triggerall = statetype != A && power >= 1000 && NumProj = 0 && movetype != H
triggerall = power > 1000
trigger1 = StateType = S && ctrl && random <= 30
trigger1 = P2StateType != L && P2Life > 0 && P2BodyDist x >= 60


;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.

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


;---------------------------------------------------------------------------
;Light Kung Fu Upper

[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1100
triggerall = !var(0)
triggerall = command = "upper_a"
trigger1 = var(1) ;Use combo condition (above)


;---------------------------------------------------------------------------
;Strong Kung Fu Upper

[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1110
triggerall = !var(0)
triggerall = command = "upper_b"
trigger1 = var(1) ;Use combo condition (above)

[State -1, AI Strong Kung Fu Upper]
type = ChangeState
value = 1110
triggerall = var(0)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2stateno = 1028
trigger1 = p2movetype = H
trigger1 = (p2dist X-(1.6*17) != [-15,90]) || (p2dist Y+(enemy, vel Y*17)+(0.175*289) = [-22,-10])
trigger1 = p2bodydist X+(enemy,vel X*12) = [0,50]
trigger1 = backedgebodydist>30
trigger2 = ctrl
trigger2 = p2bodydist X+(enemy,vel X*12) = [0,50]
trigger2 = p2dist Y>-70
trigger2 = p2statetype = A
trigger2 = p2movetype != H
trigger2 = p2movetype != A
trigger2 = random>920
trigger2 = p2stateno != 1028



;---------------------------------------------------------------------------wave
[State -1, wave]
type = ChangeState
value = 1030 ; este es el numero de statedef en tu cns
triggerall = command = "wave"; mismo nombre para el comando en el state entry
 trigger1 = statetype = S
 triggerall = power >=500
trigger1 = var(1) ;Use combo condition (above)
triggerall = NumProjId(20002) = 0 ; esto hace que no te salgan muchos proyectiles


[State -1, AI Kung Fu Throw] ;holdfwd version
type = ChangeState
value = 1030
triggerall = var(0)
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = random>500
triggerall = p2stateno != [5100,5110]
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;---------------------------------------------------------------------------wave2
[State -1, wave2]
type = ChangeState
value = 1040 ; este es el numero de statedef en tu cns
triggerall = command = "wave2"; mismo nombre para el comando en el state entry
 trigger1 = statetype = S
  triggerall = power >=500
trigger1 = var(1) ;Use combo condition (above)
triggerall = NumProjId(20002) = 0 ; esto hace que no te salgan muchos proyectiles


[State -1, AI Kung Fu Throw] ;holdfwd version
type = ChangeState
value = 1040
triggerall = var(0)
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = random>500
triggerall = p2stateno != [5100,5110]
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;---------------------------------------------------------------------------roca
;roca
[State -1, roca]
type = ChangeState
value = 1005 ; este es el numero de statedef en tu cns
triggerall = command = "QCF_a" || command = "QCF_b" || command = "QCF_x" || command = "QCF_y"; mismo nombre para el comando en el state entry
trigger1 = statetype = S
trigger1 = var(1) ;Use combo condition (above)
triggerall = NumProjId(20002) = 0 ; esto hace que no te salgan muchos proyectiles


[State -1, AI roca]
type = ChangeState
value = 1005
triggerall = var(0+3)
;triggerall = p2stateno != [1025,1028]
;triggerall = statetype != A
;trigger1 = stateno != 102
;trigger1 = movecontact &&   ctrl
;trigger2 = ctrl && p2dist X= [180,220]
;trigger2 = P2stateno != [5110,5130]
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = random>500
triggerall = p2stateno != [5100,5110]
trigger1=  p2bodydist x>70 && random<200
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H



;triggerall = var(2)
;triggerall = statetype = S
;trigger1 = stateno != 102
;trigger1 = ctrl
;trigger1 = p2dist X = [60,200]






;---------------------------------------------------------------------------
;--------------------------------------------------------......------------------------------------------------
[State -1, superpuno]
type = ChangeState
value = 9010
triggerall = command = "superpuno"
trigger1 = Ctrl
trigger1 = Statetype != A


[State -1, AI Standing Strong Kick]
type = ChangeState
value = 9010
triggerall = var(0)
triggerall = statetype = S
trigger1 = (stateno = 230) && time > 6
trigger1 = movehit
trigger1 = p2dist X = [0,65]


;---------------------------------------------------------------------------
;Light Kung Fu Upper
;カンフー・ウッパー（弱）
[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1100
triggerall = command = "upper_a"
trigger1 = var(1) ;Use combo condition (above)

[State -1, AI Strong Kung Fu Upper]
type = ChangeState
value = 1100
triggerall = var(0)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2stateno = 1028
trigger1 = p2movetype = H
trigger1 = (p2dist X-(1.6*17) != [-15,90]) || (p2dist Y+(enemy, vel Y*17)+(0.175*289) = [-22,-10])
trigger1 = p2bodydist X+(enemy,vel X*12) = [0,50]
trigger1 = backedgebodydist>30
trigger2 = ctrl
trigger2 = p2bodydist X+(enemy,vel X*12) = [0,50]
trigger2 = p2dist Y>-70
trigger2 = p2statetype = A
trigger2 = p2movetype != H
trigger2 = p2movetype != A
trigger2 = random>920
trigger2 = p2stateno != 1028


;---------------------------------------------------------------------------
;Strong Kung Fu Upper
;カンフー・ウッパー（強）
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1110
triggerall = command = "upper_b"
trigger1 = var(1) ;Use combo condition (above)

[State -1, AI Strong Kung Fu Upper]
type = ChangeState
value = 1110
triggerall = var(0)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2stateno = 1028
trigger1 = p2movetype = H
trigger1 = (p2dist X-(1.6*17) != [-15,90]) || (p2dist Y+(enemy, vel Y*17)+(0.175*289) = [-22,-10])
trigger1 = p2bodydist X+(enemy,vel X*12) = [0,50]
trigger1 = backedgebodydist>30
trigger2 = ctrl
trigger2 = p2bodydist X+(enemy,vel X*12) = [0,50]
trigger2 = p2dist Y>-70
trigger2 = p2statetype = A
trigger2 = p2movetype != H
trigger2 = p2movetype != A
trigger2 = random>920
trigger2 = p2stateno != 1028


;---------------------------------------------------------------------------



[State -1, AI Fast Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = var(0)
triggerall = power >= 500
trigger1 = var(1) ;Use combo condition (above)
trigger1 = stateno = 240 || stateno = 220
trigger1 = movehit
trigger1 = enemy,backedgebodydist>20

;---------------------------------------------------------------------------
;Fast Kung Fu Knee (1/3 super bar)

;[State -1, Fast Kung Fu Knee]
;type = ChangeState
;value = 1070
;triggerall = command = "FF_ab"
;triggerall = power >= 330
;trigger1 = var(1) ;Use combo condition (above)

;[State -1, AI Fast Kung Fu Knee]
;type = ChangeState
;value = 1070
;triggerall = var(0)
;triggerall = power >= 330
;triggerall = statetype = S
;trigger1 = stateno = 230
;trigger1 = movehit
;trigger1 = p2bodydist X<30
;trigger1 = enemy,backedgebodydist<=10
;trigger1 = p2statetype = S

;[State -1, AI Fast Kung Fu Knee Kick]
;type = ChangeState
;trigger1 = var(0)
;trigger1 = stateno = 1071
;trigger1 = Vel y < -1
;trigger1 = movehit
;value = 1075

;---------------------------------------------------------------------------
;Light Kung Fu Knee

;[State -1, Light Kung Fu Knee]
;type = ChangeState
;value = 1050
;triggerall = command = "FF_a"
;trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Knee

;[State -1, Strong Kung Fu Knee]
;type = ChangeState
;value = 1060
;triggerall = command = "FF_b"
;trigger1 = var(1) ;Use combo condition (above)

;[State -1, AI Strong Kung Fu Knee]
;type = ChangeState
;value = 1060
;triggerall = statetype != A
;triggerall = ctrl
;triggerall = var(0)
;trigger1 = p2stateno = 1028
;trigger1 = p2movetype = H
;trigger1 = p2dist X-(1.6*17) <-10
;trigger1 = facing != enemy,facing
;trigger1 = backedgebodydist<=30

;[State -1, AI Strong Kung Fu Knee Kick]
;type = ChangeState
;triggerall = var(0)
;trigger1 = (stateno = 1061) || (stateno = 1051)
;trigger1 = Vel y < -1
;value = 1055

;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)

[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = !var(0)
triggerall = command = "QCB_xy"
triggerall = power >= 500
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Palm

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = !var(0)
triggerall = command = "QCB_x"
trigger1 = var(1) ;Use combo condition (above)

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1001
triggerall = stateno = 1000 && movecontact || stateno = 1010 && movecontact
trigger1 = command = "F_p"
;---------------------------------------------------------------------------
;Strong Kung Fu Palm

[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = !var(0)
triggerall = command = "QCB_y"
trigger1 = var(1) ;Use combo condition (above)


[State -1, AI Strong Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = power>=500
triggerall = random>500
triggerall = var(0)
triggerall = statetype != A
trigger1 = var(1)
trigger1 = stateno = 240
trigger1 = movehit
trigger2 = (stateno = 230) && time > 6
trigger2 = movehit
trigger2 = p2dist X >65
trigger3 = stateno = [200,430]
trigger3 = moveguarded
trigger3 = p2life<=9


[State -1, AI Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = var(0)
triggerall = statetype != A
trigger1 = var(1) ;Use combo condition (above)
trigger1 = stateno = 240
trigger2 = (stateno = 230) && time > 6
trigger2 = movehit
trigger2 = p2dist X >65
trigger3 = stateno = [200,430]
trigger3 = moveguarded
trigger3 = p2life<=9


;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
; Kung Fu Blow walk/run

[State -1, AI Walk Special]
type = ChangeState
value = 21
triggerall = var(0)
triggerall = statetype = S
triggerall = ctrl
trigger1 = p2stateno = [1027,1028]
trigger1 = p2movetype = H
trigger1 = p2dist X <=150

[State -1, AI Run Special]
type = ChangeState
value = 22
triggerall = var(0)
triggerall = statetype = S
trigger1 = ctrl
trigger1 = p2stateno = [1027,1028]
trigger1 = p2movetype = H
trigger1 = p2dist X>150

;---------------------------------------------------------------------------
; Kick 'em when they're down

[State -1, AI Run Special]
type = ChangeState
value = 10000+(p2dist X<=90)
triggerall = var(0)
triggerall = !win
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2stateno = [5100,5110]
trigger1 = p2movetype = H
trigger1 = var(3)<=0

[State -1, Kick 'em?]
type = VarSet
triggerall = var(0)
trigger1 = prevstateno = 10001
trigger1 = stateno = 440
trigger1 = p2stateno = [5100,5110]
var(3) = 1

[State -1, Kick 'em?]
type = VarSet
triggerall = var(0)
trigger1 = p2movetype != H
var(3) = 0


;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = !var(0)
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
trigger1 = p2dist X>170

;---------------------------------------------------------------------------
;Run Back

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw

[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = command = "HCBF_p"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, AI Throw]
type = ChangeState
value = 900
triggerall= var(0)
triggerall= roundstate=2 && statetype=S && stateno!=100 && ctrl
triggerall= p2statetype!=A && p2statetype!=L && p2movetype!=H
trigger1= (p2bodydist x=[0,20]) && (p2bodydist y=[-25,25]) && random<250
trigger2= (p2stateno!=[120,155]) && (p2bodydist x=[0,26]) && (p2bodydist y=[-25,25]) && random<500

[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "x" && command = "y"
trigger1 = statetype != A
trigger1 = ctrl




;---------------------------------------------------------------------------
;triggerall = command = "y"
;triggerall = statetype = S
;triggerall = ctrl
;triggerall = stateno != 100
;trigger1 = command = "holdfwd"
;trigger1 = p2bodydist X < 3
;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
;trigger2 = command = "holdback"
;trigger2 = p2bodydist X < 5
;trigger2 = (p2statetype = S) || (p2statetype = C)
;trigger2 = p2movetype != H
;---------------------------------------------------------------------------
;[State -1, AI Kung Fu Throw] ;holdback version
;type = ChangeState
;value = 802
;triggerall = var(0)
;triggerall = statetype = S
;triggerall = ctrl
;triggerall = stateno != 100
;triggerall = random>500
;triggerall = p2stateno != [5100,5110]
;triggerall = (p2statetype = S) || (p2statetype = C)
;triggerall = p2movetype != H
;triggerall = p2bodydist X < 5
;trigger1 = backedgebodydist>30
;trigger1 = frontedgebodydist>120

[State -1, AI Kung Fu Throw] ;holdfwd version
type = ChangeState
value = 800
triggerall = var(0)
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = random>500
triggerall = p2stateno != [5100,5110]
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


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
trigger2 = stateno = 200
trigger2 = time > 6

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
triggerall = p2bodydist x > 50
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = !var(0)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 50
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

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
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

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
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

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
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

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
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, AI Crouching Light Kick]
type = ChangeState
triggerall = var(0)
value = 430+580*(!movecontact || p2bodydist X>30)
trigger1 = (stateno = 400) || (stateno = 430)
trigger1 = (time > 9) || (movecontact && time > 5)

[State -1, AI Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(0)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X<=55
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
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

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
