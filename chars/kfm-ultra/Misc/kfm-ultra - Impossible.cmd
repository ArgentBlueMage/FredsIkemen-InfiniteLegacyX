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


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "Piss"
command = ~D, D, x+a
time = 30
buffer.time = 3

[Command]
name = "Suicide"
command = ~D, DB, B, D, DF, F, s
time = 30
buffer.time = 3

[Command]
name = "NC Bash"
command = ~D, DB, B, D, DF, F, b+c
time = 30
buffer.time = 3

[Command]
name = "Bazooka"
command = ~D, DF, F, D, DF, F, y+b
time = 30
buffer.time = 3

[Command]
name = "Bang"
command = ~D, D, s;~D, DB, B, D, DF, F, z+c
time = 30
buffer.time = 3

[Command]
name = "Pickle"
command = s;~D, DB, B, D, DF, F, z+c
time = 30
buffer.time = 3

[Command]
name = "Burstkick"
command = ~D, DF, F, D, DF, F, a
time = 30
buffer.time = 3

[Command]
name = "Burning"
command = ~D, DB, B, D, DB, B, z
time = 30
buffer.time = 3

[Command]
name = "Petition2"
command = ~D, DB, B, D, DB, B, y+z
time = 30
buffer.time = 3

[Command]
name = "Wrath"
command = ~D, DB, B, D, DB, B, b+c
time = 30
buffer.time = 3

[Command]
name = "JFK"
command = ~D, DF, F, D, DF, F, b+c
time = 30
buffer.time = 3

[Command]
name = "Sniper"
command = ~D, DF, F, D, DB, B, x+a
time = 30
buffer.time = 3

[Command]
name = "Sparta"
command = ~D, DB, B, D, DF, F, x+y
time = 30
buffer.time = 3

[Command]
name = "Rosen"
command = ~D, DF, F, D, DF, F, x+a
time = 30
buffer.time = 3

[Command]
name = "BigBoom2"
command = ~D, DB, B, D, DB, B, y+b
time = 30
buffer.time = 3

[Command]
name = "Petition1"
command = ~D, DB, B, D, DB, B, y
time = 30
buffer.time = 3

[Command]
name = "BigBoom1"
command = ~D, DF, F, D, DB, B, y+b
time = 30
buffer.time = 3

[Command]
name = "AGK"
command = ~D, DB, B, D, DB, B, x+a
time = 30
buffer.time = 3

[Command]
name = "AVGN"
command = ~D, DB, B, D, DF, F, y+b
time = 30
buffer.time = 3

[Command]
name = "NC"
command = ~D, DB, B, D, DB, B, s
time = 30
buffer.time = 3

[Command]
name = "Infinite"
command = ~D, DF, F, D, DF, F, s
time = 30
buffer.time = 3

[Command]
name = "AK47"
command = ~D, DF, F, D, DF, F, z
time = 30
buffer.time = 3

[Command]
name = "EPalm"
command = ~D, DF, F, D, DF, F, x
time = 30
buffer.time = 3

[Command]
name = "MGRAY"
command = ~D, DB, B, D, DF, F, x+a
time = 30
buffer.time = 3

[Command]
name = "Magnets"
command = ~D, DB, B, D, DB, B, a+b
time = 30
buffer.time = 3

[Command]
name = "Exodia"
command = ~D, DF, F, D, DF, F, a+b
time = 30
buffer.time = 3

[Command]
name = "MultiBS"
command = ~D, DB, B, D, DF, F, x
time = 30
buffer.time = 3

[Command]
name = "DooM1"
command = ~D, DF, F, D, DF, F, y
time = 30
buffer.time = 3

[Command]
name = "DooM2"
command = ~D, DB, B, D, DB, B, y
time = 30
buffer.time = 3

[Command]
name = "DooM3"
command = ~D, DB, B, D, DF, F, y
time = 30
buffer.time = 3

[Command]
name = "InitialD"
command = ~D, DB, B, D, DB, B, x
time = 30
buffer.time = 3

[Command]
name = "AndOne"
command = ~D, DB, B, D, DB, B, x+y
time = 30
buffer.time = 3

[Command]
name = "Rollin"
command = ~D, DB, B, D, DB, B, a
time = 30
buffer.time = 3

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_punch"
command = ~F, D, DF, x
buffer.time = 3

[Command]
name = "upper_punch"
command = ~F, D, DF, y

[Command]
name = "upper_punch"
command = ~F, D, DF, z

[Command]
name = "upper_a"
command = ~F, D, DF, a
buffer.time = 3

[Command]
name = "upper_b"
command = ~F, D, DF, b

[Command]
name = "upper_c"
command = ~F, D, DF, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x
buffer.time = 3

[Command]
name = "QCF_y"
command = ~D, DF, F, y
buffer.time = 3

[Command]
name = "QCF_z"
command = ~D, DF, F, z
buffer.time = 3

[Command]
name = "QCB_z"
command = ~D, DB, B, z
buffer.time = 3

[Command]
name = "QCF_a"
command = ~D, DF, F, a
buffer.time = 3

[Command]
name = "QCF_b"
command = ~D, DF, F, b
buffer.time = 3

[Command]
name = "QCF_c"
command = ~D, DF, F, c
buffer.time = 3

[Command]
name = "QCB_a"
command = ~D, DB, B, a
buffer.time = 3

[Command]
name = "QCB_b"
command = ~D, DB, B, b
buffer.time = 3

[Command]
name = "QCB_c"
command = ~D, DB, B, c
buffer.time = 3

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x
buffer.time = 3

[Command]
name = "QCB_y"
command = ~D, DB, B, y
buffer.time = 3

[Command]
name = "QCB_a"
command = ~D, DB, B, a
buffer.time = 3

[Command]
name = "QCB_b"
command = ~D, DB, B, b
buffer.time = 3

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y
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

[Command]
name = "Dodge"
command = x+y
time = 1

[Command]
name = "Throw2"
command = a+b
time = 1

[Command]
name = "Throw3"
command = b+c
time = 1

[Command]
name = "Counter"
command = y+z
time = 1

[Command]
name = "Powerup"
command = y+b
time = 1

[Command]
name = "Catnip"
command = c+z
time = 1

[Command]
name = "Crack"
command = x+a
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
buffer.time = 3

[Command]
name = "b"
command = b
time = 1
buffer.time = 3

[Command]
name = "c"
command = c
time = 1
buffer.time = 3

[Command]
name = "x"
command = x
time = 1
buffer.time = 3

[Command]
name = "y"
command = y
time = 1
buffer.time = 3

[Command]
name = "z"
command = z
time = 1
buffer.time = 3

[Command]
name = "start"
command = s
time = 1
;buffer.time = 3

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

;===========================================================================
;AI Bullshit

;Do the crack and catnip

[State -1, Taunt]
type = changestate
value = 970
triggerall = anim = 0
triggerall = var(41) = 0
triggerall = var(23) = 1
triggerall = var(59)
triggerall = AILevel>2
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*1.00

[State -1, Taunt]
type = changestate
value = 980
triggerall = p2stateno != 5110
triggerall = p2stateno != 3103
triggerall = p2name != "kfm-ultra"
triggerall = anim = 0
triggerall = var(27) = 1
triggerall = var(40) = 1
triggerall = var(59)
triggerall = AILevel>2
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*1.00

[State -1, Taunt]
type = changestate
value = 980
triggerall = p2stateno != 5110
triggerall = p2stateno != 3103
triggerall = p2name != "kfm-ultra"
triggerall = anim = 0
triggerall = var(24) = 0
triggerall = var(40) = 1
triggerall = var(59)
triggerall = AILevel>2
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*1.00

[State -1, Taunt]
type = changestate
value = 981
triggerall = p2stateno != 5110
triggerall = p2stateno != 3103
triggerall = p2name != "kfm-ultra"
triggerall = anim = 0
triggerall = var(24) = 1
triggerall = var(40) = 1
triggerall = var(59)
triggerall = AILevel>2
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*1.00

[State -1, Powerup]
type = changestate
value = 2001
triggerall = var(59)
triggerall = p2stateno = 5110
triggerall = power <= 3000
triggerall = AILevel>2
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*1.00

[State -1, Powerup]
type = changestate
value = 2001
triggerall = var(59)
triggerall = p2stateno = 5120
triggerall = power <= 3000
triggerall = AILevel>2
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*1.00

[State -1, Powerup]
type = null;ChangeState
value = 715
triggerall = var(59)
triggerall = AILevel>2
triggerall = p2bodydist x <= 40
triggerall = p2bodydist y >= -30
triggerall = p2movetype = A
triggerall = statetype != A
trigger1 = ctrl
trigger1 = random<var(50)*0.9

[State -1, Powerup]
type = null;ChangeState
value = 900
triggerall = var(59)
triggerall = AILevel>2
triggerall = p2bodydist x <= 40
triggerall = p2bodydist y >= -30
triggerall = p2movetype = A
triggerall = statetype != A
trigger1 = ctrl
trigger1 = random<var(50)*1.0

[State -1, AI Guard Counter Attack]
type = changestate
value = 902
triggerall = var(59)
triggerall = AILevel > 3
triggerall = statetype != A
triggerall = stateno = [150,156]
triggerall = power >= 500
triggerall = p2bodydist x <= 57
triggerall = p2bodydist Y >= -68
trigger1 = AILevel = [4,5]
trigger1 = random<var(50)*0.2
trigger2 = AILevel >= 6
trigger2 = ((Life*100)/LifeMax) < ((enemynear,Life*100)/enemynear,LifeMax)
trigger2 = random<var(50)*0.5
trigger3 = AILevel >= 6
trigger3 = enemynear,life <= 106
trigger3 = random<var(50)*1.0
trigger4 = AILevel >= 6
trigger4 = ((Life*100)/LifeMax) > ((enemynear,Life*100)/enemynear,LifeMax)
trigger4 = random<var(50)*0.2

[State -1, SRS]
type = changestate
value = 3700
triggerall = numhelper(3012) != 1
triggerall = numhelper(3051) != 1
triggerall = p2stateno != 5110
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = var(59)
triggerall = life <= 100
triggerall = roundsexisted > 0
triggerall = AILevel>2
triggerall = p2bodydist x <= 120
triggerall = p2bodydist y >= -30
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.4

;Nein Eleven
[State -1, Nein Eleven]
type = changestate
value = 6950
triggerall = numhelper(3012) != 1
triggerall = numhelper(3051) != 1
triggerall = p2stateno != 5110
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = var(59)
triggerall = life <= 100
triggerall = roundsexisted > 0
triggerall = AILevel>2
triggerall = p2bodydist x <= 150
triggerall = p2bodydist y >= -30
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.4

[State -1, Exodia]
type = changestate
value = 4600
triggerall = p2stateno != 5110
triggerall = numhelper(3012) != 1
triggerall = numhelper(3051) != 1
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = var(59)
triggerall = life <= 100
triggerall = roundsexisted > 0
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*1.0

[State -1, SRS]
type = changestate
value = 4050
triggerall = numhelper(3012) != 1
triggerall = numhelper(3051) != 1
triggerall = p2stateno != 5110
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = var(59)
triggerall = life <= 100
triggerall = roundsexisted > 0
triggerall = AILevel>2
triggerall = p2bodydist x <= 100
triggerall = p2bodydist y >= -30
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.6

[State -1, SRS]
type = changestate
value = 3900
triggerall = p2stateno != 5110
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = numhelper(3012) != 1
triggerall = numhelper(3051) != 1
triggerall = var(41) = 0
triggerall = var(59)
triggerall = life <= 100
triggerall = roundsexisted > 0
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y >= -30
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.5

[State -1, SRS]
type = changestate
value = 4100
triggerall = p2stateno != 5110
triggerall = numhelper(3012) != 1
triggerall = numhelper(3051) != 1
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = var(59)
triggerall = p2bodydist x <= 40
triggerall = p2bodydist y <= -30
triggerall = life <= 100
triggerall = roundsexisted > 0
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y <= 30
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.8

[State -1, SRS]
type = changestate
value = 4050
triggerall = p2stateno != 5110
triggerall = numhelper(3012) != 1
triggerall = numhelper(3051) != 1
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = var(59)
triggerall = life <= 100
triggerall = roundsexisted > 0
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.9

[State -1, SRS]
type = changestate
value = 4200
triggerall = p2stateno != 5110
triggerall = numhelper(3012) != 1
triggerall = numhelper(3051) != 1
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = var(59)
triggerall = life <= 100
triggerall = roundsexisted > 0
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*1.0

[State -1, SRS]
type = changestate
value = 4400
triggerall = p2stateno != 5110
triggerall = numhelper(3012) != 1
triggerall = numhelper(3051) != 1
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = var(59)
triggerall = life <= 100
triggerall = roundsexisted > 0
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.4

;Hypers Bruh

[State -1, SRS]
type = ChangeState
value = 3150
triggerall = p2stateno != 5110
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = numhelper(3012) != 1
triggerall = var(41) = 0
triggerall = var(59)
triggerall = power >= 3000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 150
triggerall = p2bodydist y >= -30
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.5

[State -1, SRS]
type = ChangeState
value = 4505
triggerall = p2stateno != 3103
triggerall = numhelper(4510) != 1
triggerall = numhelper(3051) != 1
triggerall = numhelper(3012) != 1
triggerall = var(41) = 0
triggerall = var(59)
triggerall = power >= 3000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 250
triggerall = p2bodydist y >= -30
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.5

;Piss added here
[State -1, SRS]
type = ChangeState
value = 4950
triggerall = p2stateno != 3103
triggerall = numhelper(4960) != 1
triggerall = numhelper(4510) != 1
triggerall = numhelper(3051) != 1
triggerall = numhelper(3012) != 1
triggerall = var(41) = 0
triggerall = var(59)
triggerall = power >= 3000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 200
triggerall = p2bodydist y >= -20
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.4

[State -1, SRS]
type = ChangeState
value = 3030
triggerall = p2stateno != 5110
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = numhelper(3012) != 1
triggerall = var(41) = 0
triggerall = var(59)
triggerall = power >= 2000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 180
triggerall = p2bodydist y >= -30
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.9

;This is where I added more stuff

[State -1, SRS]
type = ChangeState
value = 3350
triggerall = numhelper(3012) != 1
triggerall = numhelper(3051) != 1
triggerall = p2stateno != 5110
triggerall = p2stateno != 1028
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = var(59)
triggerall = power >= 2000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 100
triggerall = p2bodydist y >= -60
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.7

[State -1, Sniper Hyper]
type = ChangeState
value = 4800
triggerall = numhelper(3012) != 1
triggerall = numhelper(3051) != 1
triggerall = p2stateno != 5110
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = var(59)
triggerall = power >= 3000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y >= -15
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.6

[State -1, SRS]
type = ChangeState
value = 3100
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 5110
triggerall = p2stateno != 3103
triggerall = numhelper(3012) != 1
triggerall = var(41) = 0
triggerall = var(59)
triggerall = power >= 3000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 40
triggerall = p2bodydist y >= -30
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*1.0

[State -1, SRS]
type = ChangeState
value = 3600
triggerall = p2stateno != 5110
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = numhelper(3012) != 1
triggerall = var(41) = 0
triggerall = var(59)
triggerall = power >= 3000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 50
triggerall = p2bodydist y >= -30
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.4

[State -1, SRS]
type = ChangeState
value = 3400
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 5110
triggerall = p2stateno != 3103
triggerall = numhelper(3012) != 1
triggerall = var(41) = 0
triggerall = var(59)
triggerall = power >= 3000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 40
triggerall = p2bodydist y >= -30
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.7

[State -1, SRS]
type = ChangeState
value = 3500
triggerall = p2stateno != 5110
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = numhelper(3012) != 1
triggerall = var(41) = 0
triggerall = var(59)
triggerall = power >= 3000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 40
triggerall = p2bodydist y >= -30
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.5

[State -1, SRS]
type = ChangeState
value = 3300
triggerall = p2stateno != 5110
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = numhelper(3012) != 1
triggerall = var(41) = 0
triggerall = var(59)
triggerall = power >= 3000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 40
triggerall = p2bodydist y >= -30
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.1

[State -1, SRS]
type = null;ChangeState
value = 3750
triggerall = p2stateno != 5110
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = numhelper(3012) != 1
triggerall = var(41) = 0
triggerall = var(59)
triggerall = power >= 2000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 100
triggerall = p2bodydist y >= -10
triggerall = p2statetype != L
trigger1 = ctrl
trigger1 = random<var(50)*0.9

;The rest is old shit
[State -1, SRS]
type = ChangeState
value = 3800
triggerall = p2stateno != 5110
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = var(59)
triggerall = power >= 2000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 100
triggerall = p2bodydist y >= -10
triggerall = p2statetype != L
trigger1 = ctrl
trigger1 = random<var(50)*0.3

[State -1, SRS]
type = ChangeState
value = 3370
triggerall = p2stateno != 5110
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = numhelper(1071) != 1
triggerall = var(59)
triggerall = power >= 1000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 120
triggerall = p2bodydist y >= -10
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.2

[State -1, SRS]
type = ChangeState
value = 3021
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 5110
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = numhelper(3012) != 1
triggerall = var(59)
triggerall = power >= 1000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 30
triggerall = p2bodydist y >= -20
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.5

[State -1, SRS]
type = ChangeState
value = 3010
triggerall = p2stateno != 5110
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = numhelper(3012) != 1
triggerall = var(59)
triggerall = power >= 1000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 300
triggerall = p2bodydist y >= -10
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.7
trigger2 = prevstateno = 3450

[State -1, SRS]
type = ChangeState
value = 3005
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = p2stateno != 5110
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = numhelper(3012) != 1
triggerall = var(59)
triggerall = power >= 1000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 200
triggerall = p2bodydist y >= -20
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.6
trigger2 = prevstateno = 3450

[State -1, SRS]
type = ChangeState
value = 3020
triggerall = p2stateno != 5110
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = numhelper(1014) != 1
triggerall = var(59)
triggerall = power >= 1000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 150
triggerall = p2bodydist y >= -15
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.4

[State -1, SRS]
type = ChangeState
value = 4000
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = var(59)
triggerall = power >= 1000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 70
triggerall = p2bodydist y >= -10
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.6

[State -1, SRS]
type = ChangeState
value = 4090
triggerall = p2stateno != 5110
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = var(59)
triggerall = power >= 1000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 70
triggerall = p2bodydist y >= -10
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.8

[State -1, SRS]
type = ChangeState
value = 3000
triggerall = p2stateno != 5110
triggerall = p2stateno != 3103
triggerall = var(41) = 0
triggerall = var(59)
triggerall = power >= 1000
triggerall = AILevel>2
triggerall = statetype != A
triggerall = p2bodydist x <= 100
triggerall = p2bodydist y >= -60
triggerall = p2statetype != L
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.9

;Specials Duh

[State -1, AI Jump]
type = ChangeState
value = 40
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 40
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT
trigger1 = AILevel >= 4
trigger1 = random<var(50)*1.5

;AI Run Fwd
[State -1, AI stumble really fast to the enemy]
type = ChangeState
value = 100
Triggerall=!Inguarddist
triggerall = var(59)
triggerall = AILevel >= 3
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != [100,101]
triggerall = p2movetype != A
triggerall = enemynear, numproj = 0
trigger1 = p2bodydist x >= 50
trigger1 = random<var(50)*0.1
trigger2 = p2statetype = L && p2bodydist x >= 50
trigger2 = random<var(50)*1.0

[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59)
triggerall = statetype != A
triggerall = ctrl || stateno = [100,101]
triggerall = p2bodydist x <= 33
triggerall = p2bodydist Y = [-44,88]
triggerall = p2statetype != L
triggerall = enemynear,stateno != 5120
trigger1 = random<var(50)*1.1

[State -1, AI Stand Light Punch]
type = ChangeState
value = 230
triggerall = var(59)
triggerall = statetype != A
triggerall = ctrl || stateno = [100,101]
triggerall = p2bodydist x <= 35
triggerall = p2bodydist Y = [-20,88]
triggerall = p2statetype != L
triggerall = enemynear,stateno != 5120
trigger1 = random<var(50)*0.8

[State -1, AI Crouch kick]
type = ChangeState
value = 440
triggerall = !inguarddist
triggerall = var(59)
triggerall = !var(0)
triggerall = statetype != A
triggerall = p2bodydist x <= 40
triggerall = p2bodydist Y >= -20
triggerall = enemynear,stateno != 5120
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.2
trigger1 = AILevel <= 5
trigger2 = ctrl || stateno = 101
trigger2 = random<var(50)*0.5
trigger2 = enemynear,statetype != C
trigger2 = AILevel > 2
trigger3 = prevstateno = 1095

[State -1, AI Crouch kick]
type = ChangeState
value = 400
triggerall = !inguarddist
triggerall = var(59)
triggerall = !var(0)
triggerall = statetype != A
triggerall = p2bodydist x <= 72
triggerall = p2bodydist Y >= -32
triggerall = enemynear,stateno != 5120
trigger1 = ctrl || stateno = 101
trigger1 = random<var(50)*0.2
trigger1 = AILevel <= 5
trigger2 = ctrl || stateno = 101
trigger2 = random<var(50)*0.3
trigger2 = enemynear,statetype != C
trigger2 = AILevel > 2

[State -1, AI jump Light Punch]
type = ChangeState
value = 630
triggerall = !inguarddist
triggerall = var(59)
triggerall = statetype = A
triggerall = p2bodydist x <= 33 || vel x > 0 && p2bodydist x <= 60
triggerall = p2bodydist Y = [-44,88]
triggerall = p2statetype != L
triggerall = random<var(50)*1.1
triggerall = enemynear,stateno != 5120
trigger1 = ctrl

[State -1, AI throw them]
type = ChangeState
value = 850
triggerall = var(59)
triggerall = statetype != A
triggerall = ctrl
triggerall = p2statetype != L
triggerall = enemynear,stateno != 5120
triggerall = enemynear,prevstateno != 5120
trigger1 = p2bodydist x <= 30
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = random<var(50)*0.5
trigger2 = enemynear, stateno >= 120 && enemynear, stateno <= 155 && p2bodydist x <= 24
trigger2 = p2statetype != A
trigger2 = p2movetype != H
trigger2 = random<var(50)*0.5
trigger2 = AILevel >= 6

[State -1, AI throw them]
type = ChangeState
value = 870
triggerall = var(59)
triggerall = statetype != A
triggerall = ctrl
triggerall = p2statetype != L
triggerall = enemynear,stateno != 5120
triggerall = enemynear,prevstateno != 5120
trigger1 = p2bodydist x <= 24
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = random<var(50)*0.5
trigger2 = enemynear, stateno >= 120 && enemynear, stateno <= 155 && p2bodydist x <= 30
trigger2 = p2statetype != A
trigger2 = p2movetype != H
trigger2 = random<var(50)*0.5
trigger2 = AILevel >= 6

[State -1, ]
type = ChangeState
value = 1110
triggerall = var(59)
triggerall = AILevel>1
triggerall = statetype != A
triggerall = p2bodydist x <= 40
triggerall = p2bodydist Y >= -10
triggerall = p2statetype != L
triggerall = enemynear,stateno != 5120
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.2 || enemynear,statetype = A && random<var(50)*0.5
trigger1 = !var(3) || var(1) && var(0) && var(4)

[State -1, ]
type = ChangeState
value = 1090
triggerall = var(59)
triggerall = AILevel>1
triggerall = statetype != A
triggerall = p2bodydist x <= 50
triggerall = p2bodydist Y >= -10
triggerall = p2statetype != L
triggerall = enemynear,stateno != 5120
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.2 || enemynear,statetype = A && random<var(50)*0.5
trigger1 = !var(3) || var(1) && var(0) && var(4)

[State -1, ]
type = ChangeState
value = 1015
triggerall = stateno != 52
triggerall = var(59)
triggerall = AILevel>1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist x <= 50
triggerall = p2bodydist Y >= -20
triggerall = enemynear,stateno != 5120
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.2 || enemynear,statetype = A && random<var(50)*0.5
trigger1 = !var(3) || var(1) && var(0) && var(4)

[State -1, ]
type = ChangeState
value = 1050
triggerall = var(59)
triggerall = AILevel>1
triggerall = statetype != A
triggerall = p2bodydist x >= 105
triggerall = p2bodydist Y >= -30
triggerall = p2statetype != L
triggerall = enemynear,stateno != 5120
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.3 || enemynear,statetype = A && random<var(50)*0.6
trigger1 = !var(3) || var(1) && var(0) && var(4)

[State -1, ]
type = ChangeState
value = 1010
triggerall = var(59)
triggerall = AILevel>1
triggerall = statetype != A
triggerall = p2bodydist x >= 100
triggerall = p2bodydist Y >= -30
triggerall = p2statetype != L
triggerall = enemynear,stateno != 5120
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.2 || enemynear,statetype = A && random<var(50)*0.5
trigger1 = !var(3) || var(1) && var(0) && var(4)

[State -1, ]
type = ChangeState
value = 1005
triggerall = var(59)
triggerall = AILevel>1
triggerall = statetype != A
triggerall = p2bodydist x <= 40
triggerall = p2bodydist Y >= -30
triggerall = p2statetype = A
triggerall = enemynear,stateno != 5120
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.8 || enemynear,statetype = A && random<var(50)*0.8
trigger1 = !var(3) || var(1) && var(0) && var(4)

[State -1, ]
type = ChangeState
value = 1000
triggerall = var(59)
triggerall = AILevel>1
triggerall = statetype != A
triggerall = p2bodydist x <= 70
triggerall = p2bodydist Y >= -30
triggerall = p2statetype != L
triggerall = enemynear,stateno != 5120
trigger1 = ctrl || stateno = 100 || stateno = 101
trigger1 = random<var(50)*0.2 || enemynear,statetype = A && random<var(50)*0.5
trigger1 = !var(3) || var(1) && var(0) && var(4)

;AI Guarding
[State -1]
Type=Changestate
Triggerall=Inguarddist ; Guard when in guard distance
triggerall = var(59)  ; and the AI is on
triggerall = random<var(50)*1.0
trigger1 = stateno!=[120,160]
Trigger1=ctrl ; and we have control
value=120

;---------------------------------------------------------------------------
;Human Controls
;---------------------------------------------------------------------------

[State -1, NC Bash]
type = ChangeState
value = 4400
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3012) != 1
triggerall = numhelper(3051) != 1
triggerall = roundsexisted > 0
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "NC Bash"
triggerall = life <= 100
trigger1 = statetype != A
trigger1 = ctrl

[State -1, I regret nothing]
type = ChangeState
value = 6666
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = command = "Suicide"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, AGK]
type = ChangeState
value = 3600
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3051) != 1
triggerall = numhelper(3012) != 1
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "AGK"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = [1020,1030]
trigger5 = movehit
trigger6 = stateno = [400,499]
trigger6 = movehit
trigger7 = stateno = 3000 && movehit
trigger7 = time >= 50

[State -1, Wrath]
type = ChangeState
value = 4050
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3051) != 1
triggerall = numhelper(3012) != 1
triggerall = roundsexisted > 0
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "Wrath"
triggerall = life <= 100
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Wrath]
type = ChangeState
value = 4200
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3051) != 1
triggerall = numhelper(3012) != 1
triggerall = roundsexisted > 0
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "JFK"
triggerall = life <= 100
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Bang]
type = ChangeState
value = 3900
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3051) != 1
triggerall = numhelper(3012) != 1
triggerall = roundsexisted > 0
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "Bang"
triggerall = life <= 100
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Funniest shit I have ever seen]
type = ChangeState
value = 3700
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3012) != 1
triggerall = numhelper(3051) != 1
triggerall = roundsexisted > 0
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "Pickle"
triggerall = life <= 100
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Fuckin' Magnets]
type = ChangeState
value = 4600
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3012) != 1
triggerall = numhelper(3051) != 1
triggerall = roundsexisted > 0
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "Exodia"
triggerall = life <= 100
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Fuckin' Magnets]
type = ChangeState
value = 4100
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3012) != 1
triggerall = numhelper(3051) != 1
triggerall = roundsexisted > 0
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "Magnets"
triggerall = life <= 100
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Big Boom 2]
type = ChangeState
value = 3400
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3051) != 1
triggerall = numhelper(3012) != 1
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "BigBoom2"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = [1020,1030]
trigger5 = movehit
trigger6 = stateno = [400,499]
trigger6 = movehit
trigger7 = stateno = 3000 && movehit
trigger7 = time >= 50

[State -1, AGK]
type = ChangeState
value = 4505
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(4510) != 1
triggerall = numhelper(3051) != 1
triggerall = numhelper(3012) != 1
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "Bazooka"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = [1020,1030]
trigger5 = movehit
trigger6 = stateno = [400,499]
trigger6 = movehit
trigger7 = stateno = 3000 && movehit
trigger7 = time >= 50

[State -1, RULES OF NATURE!]
type = ChangeState
value = 3300
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3012) != 1
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "MGRAY"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl

[State -1, RULES OF NATURE!]
type = ChangeState
value = 4800
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3012) != 1
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "Sniper"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Nein Eleven]
type = ChangeState
value = 6950
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3051) != 1
triggerall = numhelper(3012) != 1
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "Rosen"
triggerall = life <= 100
triggerall = roundsexisted > 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = [1020,1030]
trigger5 = movehit
trigger6 = stateno = 3020 && time >= 50
trigger7 = stateno = [400,499]
trigger7 = movehit
trigger8 = stateno = 3000 && movehit
trigger8 = time >= 50

[State -1, Michael Rosen]
type = ChangeState
value = 3150
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3051) != 1
triggerall = numhelper(3012) != 1
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "Rosen"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = [1020,1030]
trigger5 = movehit
trigger6 = stateno = 3020 && time >= 50
trigger7 = stateno = [400,499]
trigger7 = movehit
trigger8 = stateno = 3000 && movehit
trigger8 = time >= 50

[State -1, Sign this petition]
type = ChangeState
value = 3800
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = command = "Petition2"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Nuclear Punch Out]
type = ChangeState
value = 3100
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3051) != 1
triggerall = numhelper(3012) != 1
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "BigBoom1"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = [1020,1030]
trigger5 = movehit
trigger6 = stateno = [400,499]
trigger6 = movehit
trigger7 = stateno = 3000 && movehit
trigger7 = time >= 50

[State -1, Piss]
type = ChangeState
value = 4950
triggerall = numhelper(4960) != 1
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = command = "Piss"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
;trigger5 = stateno = 3020 && time >= 50
trigger5 = stateno = 1020
trigger5 = movehit
trigger6 = stateno = 1030
trigger6 = movehit
trigger7 = stateno = [400,499]
trigger7 = movehit

[State -1, Madness]
type = ChangeState
value = 3750
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "Sparta"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl

[State -1, AVGN]
type = ChangeState
value = 3500
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3051) != 1
triggerall = numhelper(3012) != 1
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "AVGN"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = [1020,1030]
trigger5 = movehit
trigger6 = stateno = [400,499]
trigger6 = movehit
trigger7 = stateno = 3000 && movehit
trigger7 = time >= 50

[State -1, And one]
type = ChangeState
value = 3030
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "AndOne"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = [1020,1030]
trigger5 = movehit
trigger6 = stateno = [400,499]
trigger6 = movehit
trigger7 = stateno = 3000 && movehit
trigger7 = time >= 50

[State -1, Random Bomb]
type = ChangeState
value = 3050
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3051) != 1
triggerall = command = "DooM3"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = [1020,1030]
trigger5 = movehit
trigger6 = stateno = [400,499]
trigger6 = movehit
trigger7 = stateno = 3000 && time >= 50

[State -1, 100 Hand Slap]
type = ChangeState
value = 3040
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = command = "MultiBS"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = [1020,1030]
trigger5 = movehit
trigger6 = stateno = [400,499]
trigger6 = movehit
trigger7 = stateno = 3000 && movehit
trigger7 = time >= 50

[State -1, That guy with the glasses]
type = ChangeState
value = 3450
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = command = "NC"
triggerall = power >= 1000
triggerall = numhelper(3460) != 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = [1020,1030]
trigger5 = movehit
trigger6 = stateno = 3020 && time >= 50
trigger7 = stateno = 1050 && time >= 46
trigger8 = stateno = [400,499]
trigger8 = movehit
trigger9 = stateno = 3372
trigger10 = stateno = 3000 && movehit
trigger10 = time >= 50

[State -1, Keep Rollin]
type = ChangeState
value = 3005
triggerall = var(41) = 0
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = !var(59)
triggerall = command = "Rollin"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = 3020 && time >= 50
trigger6 = stateno = [1020,1030]
trigger6 = movehit
trigger7 = stateno = [400,499]
trigger7 = movehit
trigger8 = stateno = 3000 && movehit
trigger8 = time >= 50

[State -1, Burning Buster]
type = ChangeState
value = 4090
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = command = "Burning"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = [1020,1030]
trigger5 = movehit
trigger6 = stateno = [400,499]
trigger6 = movehit
trigger7 = stateno = 3000
trigger7 = movehit && time >= 50

[State -1, Chaingun]
type = ChangeState
value = 3021
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3051) != 1
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "DooM2"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = [1020,1030]
trigger5 = movehit
trigger6 = stateno = [400,499]
trigger6 = movehit
trigger7 = stateno = 3000 && movehit
trigger7 = time >= 50

[State -1, Drifto]
type = ChangeState
value = 3010
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3012) != 1
triggerall = command = "InitialD"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = [1020,1030]
trigger5 = movehit
trigger6 = stateno = [400,499]
trigger6 = movehit
trigger7 = stateno = 3372
trigger8 = stateno = 3000 && time >= 50

[State -1, Yo wanna do a fuckin' infinite?]
type = ChangeState
value = 3350
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(3012) != 1
triggerall = numhelper(3051) != 1
triggerall = teammode != simul
triggerall = enemy, teammode != simul
triggerall = command = "Infinite"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Burst Kick]
type = ChangeState
value = 4000
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = command = "Burstkick"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = 3020 && time >= 50
trigger6 = stateno = 1020
trigger6 = movehit
trigger7 = stateno = 1030
trigger7 = movehit
trigger8 = stateno = [400,499]
trigger8 = movehit

[State -1, AK47 Assault Rifle]
type = ChangeState
value = 3370
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = command = "AK47"
triggerall = power >= 1000
triggerall = numhelper(1071) != 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = [1020,1030]
trigger5 = movehit
trigger6 = stateno = 3020 && time >= 50
trigger7 = stateno = 1050 && time >= 46
trigger8 = stateno = [400,499]
trigger8 = movehit
trigger9 = stateno = 3000 && time >= 50
trigger10 = stateno = 4505 && time >= 45

[State -1, Super shotgun]
type = ChangeState
value = 3020
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = numhelper(1014) != 1
triggerall = command = "DooM1"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
trigger5 = stateno = 1020
trigger5 = movehit
trigger6 = stateno = 1030
trigger6 = movehit
trigger7 = stateno = 960 && time >= 10
trigger8 = stateno = 1050 && time >= 46
trigger9 = stateno = [400,499]
trigger9 = movehit
trigger10 = stateno = 3000 && time >= 50
trigger11 = stateno = 4505 && time >= 45

[State -1, So Original]
type = ChangeState
value = 3000
triggerall = var(41) = 0
triggerall = !var(59)
triggerall = command = "EPalm"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = 1010 && time >= 17 || stateno = 1015 && movehit
trigger4 = stateno = [1000,1005]
trigger4 = movehit
;trigger5 = stateno = 3020 && time >= 50
trigger5 = stateno = 1020
trigger5 = movehit
trigger6 = stateno = 1030
trigger6 = movehit
trigger7 = stateno = [400,499]
trigger7 = movehit
;---------------------------------------------------------------------------

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
[State -1, Classic Uppercut]
type = ChangeState
value = 1121
triggerall = !var(59)
triggerall = command = "upper_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = [400,450]
trigger3 = movehit
trigger4 = stateno = 1120 && movehit
trigger5 = stateno = 1110 && movehit
trigger5 = time >= 30
trigger6 = stateno = 1030 && movehit

[State -1, Classic Uppercut]
type = ChangeState
value = 1068
triggerall = !var(59)
triggerall = command = "upper_b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movehit
trigger3 = stateno = 1043 && movehit
trigger4 = stateno = 1090 && movehit
trigger5 = stateno = 1105 && movehit
trigger6 = stateno = 1100 && movehit
trigger7 = stateno = 1061 && movehit
trigger8 = stateno = 1062 && movehit
trigger9 = stateno = 1121 && movehit
trigger10 = stateno = 1110 && movehit
trigger10 = time >= 30

[State -1, Classic Uppercut]
type = ChangeState
value = 1065
triggerall = !var(59)
triggerall = command = "upper_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = [400,450]
trigger3 = movehit
trigger4 = stateno = 1030 && movehit

[State -1, Classic Uppercut]
type = ChangeState
value = 1040
triggerall = !var(59)
triggerall = command = "upper_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = [400,450]
trigger3 = movehit
trigger4 = stateno = 1030 && movehit
trigger5 = stateno = 1110 && movehit
trigger5 = time >= 30

[State -1, Classic Uppercut]
type = ChangeState
value = 1005
triggerall = !var(59)
triggerall = command = "upper_punch"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = [400,450]
trigger3 = movehit
trigger4 = stateno = 1030 && movehit
;trigger5 = stateno = 1200 && movehit

[State -1, Classic Uppercut]
type = ChangeState
value = 1062
triggerall = !var(59)
triggerall = command = "QCB_c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movehit
trigger3 = stateno = 1100 && movehit
trigger4 = stateno = 1105 && movehit
;trigger5 = stateno = 1121 && movehit

[State -1, Classic Uppercut]
type = ChangeState
value = 1060
triggerall = !var(59)
triggerall = command = "QCB_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = [400,450]
trigger3 = movehit
trigger4 = stateno = 1030 && movehit
trigger5 = stateno = 1110 && movehit
trigger5 = time >= 30
trigger6 = stateno = 1091 || stateno = 1092 || stateno = 1093

[State -1, Classic Uppercut]
type = ChangeState
value = 1105
triggerall = !var(59)
triggerall = command = "QCB_b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movehit
trigger3 = stateno = 1090 && movehit
trigger4 = stateno = 1121 && movehit
trigger5 = stateno = 1121 && movehit

[State -1, Classic Uppercut]
type = ChangeState
value = 1100
triggerall = !var(59)
triggerall = command = "QCB_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = [400,450]
trigger3 = movehit
trigger4 = stateno = 1030 && movehit
trigger5 = stateno = 1110 && movehit
trigger5 = time >= 30
trigger6 = stateno = 1091 || stateno = 1092 || stateno = 1093

[State -1, Classic Uppercut]
type = ChangeState
value = 1095
triggerall = !var(59)
triggerall = command = "QCB_a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movehit
trigger3 = stateno = 1068 && movehit
trigger4 = stateno = 1067 && movehit

[State -1, Classic Uppercut]
type = ChangeState
value = 1090
triggerall = !var(59)
triggerall = command = "QCB_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = [400,450]
trigger3 = movehit
trigger4 = stateno = 1030 && movehit
trigger5 = stateno = 1110 && movehit
trigger5 = time >= 30
trigger6 = stateno = 1092 || stateno = 1093

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1080
triggerall = !var(59)
;triggerall = numhelper (1019) = 3
triggerall = command = "QCB_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = [400,450]
trigger3 = movehit
trigger4 = stateno = 1015 && movehit
trigger5 = stateno = 1091

[State -1, Classic Uppercut]
type = ChangeState
value = 1015
triggerall = !var(59)
triggerall = command = "QCB_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = [400,450]
trigger3 = movehit
trigger4 = stateno = 1005 && movehit
trigger4 = time >= 30

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = !var(59)
triggerall = command = "QCB_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = [400,450]
trigger3 = movehit
trigger4 = stateno = [1000,1001]
trigger4 = movehit

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1120
triggerall = !var(59)
triggerall = command = "QCF_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = [400,450]
trigger3 = movehit
trigger4 = stateno = 1110 && movehit
trigger4 = time >= 30
trigger5 = stateno = 1030 && movehit
trigger6 = stateno = 1092

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1110
triggerall = !var(59)
triggerall = command = "QCF_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = [400,450]
trigger3 = movehit
trigger4 = stateno = 1020 && movehit
trigger5 = stateno = 1030 && movehit

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1030
triggerall = !var(59)
triggerall = command = "QCF_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = [400,450]
trigger3 = movehit
trigger4 = stateno = 1020 && movehit

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1050
triggerall = !var(59)
;triggerall = numhelper (1019) = 3
triggerall = command = "QCF_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = [400,450]
trigger3 = movehit
trigger4 = stateno = 1015 && movehit

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = !var(59)
triggerall = command = "QCF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = [400,450]
trigger3 = movehit
trigger4 = stateno = 1015 && movehit
trigger5 = stateno = 1050 && time >= 46
trigger6 = stateno = 961 && time >= 40

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = command = "QCF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movehit
trigger3 = stateno = [400,450]
trigger3 = movehit
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stuff goes here

[State -1, Taunt]
type = ChangeState
value = 980
triggerall = p2name != "kfm-ultra"
triggerall = anim = 0
triggerall = var(27) = 1
triggerall = var(40) = 1
triggerall = !var(59)
triggerall = command = "Catnip"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
value = 980
triggerall = p2name != "kfm-ultra"
triggerall = anim = 0
triggerall = var(24) = 0
triggerall = var(40) = 1
triggerall = !var(59)
triggerall = command = "Catnip"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
value = 981
triggerall = p2name != "kfm-ultra"
triggerall = anim = 0
triggerall = var(24) = 1
triggerall = var(40) = 1
triggerall = !var(59)
triggerall = command = "Catnip"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
value = 970
triggerall = anim = 0
triggerall = var(41) = 0
triggerall = var(23) = 1
triggerall = !var(59)
triggerall = command = "Crack"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Gunnin']
type = ChangeState
value = 870
triggerall = !var(59)
triggerall = command = "Throw3"  && (command = "holdfwd" || command = "holdback")
triggerall = command != "holddown"
trigger1 = roundstate = 2 && ctrl && statetype = S && stateno != 100

;Kickin'
[State -1, Kickin']
type = ChangeState
value = 850
triggerall = !var(59)
triggerall = command = "Throw2"  && (command = "holdfwd" || command = "holdback")
triggerall = command != "holddown"
trigger1 = roundstate = 2 && ctrl && statetype = S && stateno != 100

[State -1, Guard Counter Attack]
type = ChangeState
value = 902
triggerall = !var(59)
triggerall = command = "Counter"
triggerall = statetype != A
trigger1 = stateno = [150,156]
trigger1 = power >= 500

[State -1, Kickin']
type = ChangeState
value = 900
triggerall = power >= 500
triggerall = !var(59)
triggerall = command = "Counter"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S && stateno != 100

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerall = !var(59)
triggerall = command = "Dodge"
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"

[State -1, Roll Backward]
type = ChangeState
value = 715
triggerall = !var(59)
triggerall = command = "Dodge"
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Kickin']
type = ChangeState
value = 700
triggerall = !var(59)
triggerall = command = "Dodge"
trigger1 = roundstate = 2 && ctrl && statetype = S && stateno != 100

;Taunt
[State -1, Taunt]
type = ChangeState
value = 950+random%2
triggerall = !var(59)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Powerup]
type = ChangeState
value = 2000
triggerall = !var(59)
triggerall = power < 3000
triggerall = command = "Powerup"
trigger1 = statetype = S
trigger1 = ctrl

;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = [100,101]
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 1092
trigger6 = time >= 3

;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = [100,101]
trigger5 = stateno = 1092
trigger5 = time >= 3

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 425 && movecontact
trigger4 = stateno = [100,101]
trigger5 = stateno = 1092
trigger5 = time >= 3
;---------------------------------------------------------------------------

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = [100,101]
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 1092
trigger7 = time >= 3

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = [100,101]
trigger6 = stateno = 1092
trigger6 = time >= 3

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 400 && movehit
trigger3 = stateno = [100,101]
trigger4 = stateno = 430 && movehit
trigger5 = stateno = 1092
trigger5 = time >= 3
;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = !var(59)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movehit
trigger3 = stateno = 430 && movehit
trigger4 = stateno = [100,101]
trigger5 = stateno = 425 && movehit
trigger6 = stateno = 1092
trigger6 = time >= 3

;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !var(59)
triggerall = command = "b" 
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = [100,101]
trigger4 = stateno = 425 && movecontact
trigger5 = stateno = 1092
trigger5 = time >= 3

;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 425
triggerall = !var(59)
triggerall = command = "a" 
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = [100,101]
trigger4 = stateno = 1092
trigger4 = time >= 3

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = [100,101]
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 1092
trigger6 = time >= 3

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = [100,101]
trigger5 = stateno = 1092
trigger5 = time >= 3

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 1092
trigger3 = time >= 3
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !var(59)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 640
trigger2 = movehit

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = !var(59)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 
trigger2 = movehit

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !var(59)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 605
trigger2 = movehit
trigger3 = stateno = 630 && movehit

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 605
triggerall = !var(59)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movehit

;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time >= 12

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
