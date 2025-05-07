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
;  Note that if you modify the button remapping scheme here, this character will
; still be able to correctly detect the basic commands of other characters
; complying with the basic command order specified below, as long as their
; buttons haven't been remapped.  But no character (not even one with the same
; remapping scheme, not even another instance of this character) will be able to
; correctly detect this character's commands.  This shouldn't ever result in any
; false positives, but it could delay correct positives, and could erroneously
; make the helper AI activation method trigger a false negative in team simul
; modes, in which case the XOR-ed commands method would be needed to provide
; backup.  But of course, this isn't an issue in any version of Mugen prior to
; version 2002.04.14.

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


; These 11 Single Button and Hold Dir commands must be placed here at the top
; of the CMD, above all other commands, and in the standard order shown here,
; in order for the "Compatibly Partnered" version (9742) of the helper AI
; activation method to work with different partners in simul team mode.
; (When the partner is not compatible, then it's best to just use the regular
; version (9741) and rely on the XOR method for backup in case a human
; partner's input turns off the CPU partner's AI.)
;   (Now, even if you do not intend to give your character any custom AI, it
; would still be nice if you would place the commands at the top of your CMD,
; for the sake of other characters which do use this AI activation method.
; And then, define Anim 9741 in your AIR file to indicate to other characters
; that your character is compatible.
;   It may slightly increase the chances of faulty AI activation if the user
; is using characters with a poor implementation of the old humanly-impossible
; commands AI activation method when fighting against your character, but
; other than that, there's really no particular reason not to.  And you can
; change the names of the commands if you want.  For compatibility, all that
; really matters is the "command" and "time" parameters.)
;
; Please don't add any extra definitions for any of these 11 basic command
; names, nor for any of the 7 "hold[button]" command names that follow.
; For example, things like this should be avoided:
;	[Command]
;	name = "z"
;	command = y+b
;	time = 1
; There are several workarounds possible to achieve the same effect.  Please
; feel free to ask me about it if you have any uncertainty.
; Violating this rule would cause the KeyCtrl Helper method and/or the XORed
; Commands method to malfunction, and could also interfere with other future
; applications of this command order standard.
;
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

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

;--- None of your own command definitions should be above this line. ---

;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

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
name = "start2"
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
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

; Here add matching commands for any moves that must never be used randomly
; by the computer, such as suicide moves and super moves, and add the pairs
; to the XOR VarSet controller in State -3.

; If you're desperate to make sure that the AI always gets turned on as soon
; as possible, you can add more equivalents for your own commands here too,
; and add to the XOR VarSet controller's triggers accordingly.

; And of course, if you've run out of unique command labels (Mugen allows
; 128), you can remove as many of these as you want.  You'll of course need
; to modify the XOR VarSet controller's triggers accordingly, but Mugen
; will let you know if you forget to do so. :)


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "ChainDrive"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "ChainDrive"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

[Command]
name = "Dio"
command = ~D, DF, F, D, DF, F, x+y
time = 20

[Command]
name = "Dio"
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "WTFDio"
command = ~D, DB, B, D, DB, B, x+y
time = 20

[Command]
name = "WTFDio"
command = ~D, DB, B, D, DB, B, z
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "upper_xy"
command = ~F, D, DF, z

[Command]
name = "rupper_x"
command = ~B, D, DB, x

[Command]
name = "rupper_y"
command = ~B, D, DB, y

[Command]
name = "rupper_xy"
command = ~B, D, DB, x+y

[Command]
name = "rupper_xy"
command = ~B, D, DB, z

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
name = "HCF_x"
command = ~B, DB, D, DF, F, x
[Command]
name = "HCF_y"
command = ~B, DB, D, DF, F, x
[Command]
name = "HCF_xy"
command = ~B, DB, D, DF, F, x+y
[Command]
name = "HCF_xy"
command = ~B, DB, D, DF, F, z
[Command]
name = "HCF_x"
command = ~B, D, F, x
[Command]
name = "HCF_y"
command = ~B, D, F, y
[Command]
name = "HCF_xy"
command = ~B, D, F, x+y
[Command]
name = "HCF_xy"
command = ~B, D, F, z

[Command]
name = "HCB_x"
command = ~F, DF, D, DB, B, x
[Command]
name = "HCB_y"
command = ~F, DF, D, DB, B, y
[Command]
name = "HCB_xy"
command = ~F, DF, D, DB, B, x+y
[Command]
name = "HCB_xy"
command = ~F, DF, D, DB, B, z
[Command]
name = "HCB_x"
command = ~F, D, B, x
[Command]
name = "HCB_y"
command = ~F, D, B, y
[Command]
name = "HCB_xy"
command = ~F, D, B, x+y
[Command]
name = "HCB_xy"
command = ~F, D, B, z

[Command]
name = "tap_x"
command = x,x,x
time = 23
[Command]
name = "tap_y"
command = y,y,y
time = 23

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
name = "SupahJump"
;command = ~$D, $U
command = ~$D, $U
time = 5
buffer.time = 2

[Command]
name = "ChargedSupahJump"
;command = ~$D, $U
command = ~12$D, $U
time = 5
buffer.time = 2


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z
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

; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; nor encounters any VarSets within State -1.
; But they also improve efficiency by preventing Mugen from wasting time
; processing the entire State -1 for the helper.
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

; This is generally the best place to put most of your AI directives.  For
; example, this controller would only be executed when the CPU is in control:
;
; [State -1, Haha!]
; type = ChangeState
; trigger1 = var(0) ; (Or use "var(58)>0" if you've chosen not to
;                   ; use the Simplifier variable/controller.)
; trigger1 = ctrl
; trigger1 = StateType = S
; trigger1 = MoveType = I
; trigger1 = P2MoveType = H
; trigger1 = NumEnemy = 1
; trigger1 = Enemy,GetHitVar(HitTime) > 60
; trigger1 = PrevStateNo != 195
; trigger1 = Random < 99
; value = 195

; And of course, most human-only command-based ChangeStates also belong
; in State -1.  For example, this move would only be performable by a human:
;
; [State -1, Death Before Dishonor]
; type = ChangeState
; trigger1 = command = "suicide"
; trigger1 = !var(0) ; (Or use "var(58)<1" if you've chosen not to
;                    ; use the Simplifier variable/controller.)
; trigger1 = ctrl
; trigger1 = StateType != A
; trigger1 = MoveType = I
; value = {suicide state number}


;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(9) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger3 = stateno = 195
trigger3 = time >= 60
var(9) = 1

; AI CONSIDERATIONS

[State -1, AI Consideration reset]
type = VarSet
trigger1 = 1
var(50) = 0

[State AI, ChangeState]
type = ChangeState
triggerall = stateno != 40
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType != C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<90&&(stateno!=[120,169])&&p2bodydist x<=20,1000,130)

[State AI, ChangeState]
type = ChangeState
triggerall = stateno != 40
triggerall = (var(55)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing) && (var(50)<40)
trigger1 = (P2StateType = C) && (((P2MoveType = A) && (inguarddist)) || (EnemyNear, NumProj > 0))
value = ifelse(random<90&&(stateno!=[120,169]),ifelse(random<1000,(1100 + ifelse(p2dist x+(enemynear,vel x)>=120,10,0) + ifelse(p2dist x>=160+(enemynear,vel x),10,0)),40),131)

[State AI, Consider Projectile Spam]
type = VarSet
triggerall = var(55)
triggerall = random < 123
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || random < 100
triggerall = (p2stateno != [5080,5130]) || random < 150
triggerall = p2bodydist x >= 80
triggerall = p2bodydist y >= -100
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30 || random < 100
triggerall = statetype != A
triggerall = !numhelper(1200)
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 100
trigger1 = !moveguarded
var(50) = 1200 + ifelse((p2stateno != [5080,5130]),(random%3*10),0)

[State AI, Consider Advancing]
type = VarSet
triggerall = var(55)
triggerall = random < 200 || stateno = 100
triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
;triggerall = p2stateno != [5080,5130]
triggerall = abs(p2bodydist x) >= 50 || ((p2stateno = [5080,5130]) && life >= p2life - 123) || p2bodydist y <= -230
triggerall = statetype != A
trigger1 = stateno != 40
trigger1 = !moveguarded
var(50) = 100

[State AI, Consider Backing Off]
type = VarSet
triggerall = var(55)
triggerall = random < 250
;triggerall = ((enemynear, ctrl = 0) && p2movetype != A) || (p2movetype = A && (enemynear, facing = facing))
triggerall = (p2stateno = [5080,5130]) || random < 50
triggerall = p2bodydist x <= 35
triggerall = statetype != A
trigger1 = stateno != 40
trigger1 = stateno != 100 || random < 50
var(50) = 105

[State AI, Consider C.L]
type = VarSet
triggerall = var(50) != 0 || random < 326
triggerall = var(55)
triggerall = random < 165
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || random < 80
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-5,10]
triggerall = p2bodydist y >= -60
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -20
triggerall = statetype != A
triggerall = !numtarget(200)
triggerall = !numtarget(210)
triggerall = !moveguarded
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 100 || p2movetype = H
trigger1 = ctrl
var(50) = 400

[State AI, Consider Upper.L]
type = VarSet
triggerall = var(50) != 0 || random < 326
triggerall = var(55)
triggerall = random < 165
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || random < 500
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-5,26 + (p2bodydist y / -10)]
triggerall = p2bodydist y >= -150
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30
triggerall = p2statetype != C
triggerall = statetype != A
triggerall = !numtarget(1000)
triggerall = !moveguarded
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 100 || p2movetype = H || p2movetype = A
trigger1 = var(9)
var(50) = 1000

[State AI, Consider Upper.M]
type = VarSet
triggerall = var(50) != 0 || random < 326
triggerall = var(55)
triggerall = random < 165
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || random < 250
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-5,32 + (p2bodydist y / -9)]
triggerall = p2bodydist y >= -180
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30
triggerall = p2statetype != C
triggerall = statetype != A
triggerall = !numtarget(1000)
triggerall = !moveguarded
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 100 || p2movetype = H || p2movetype = A
trigger1 = var(9)
var(50) = 1010

[State AI, Consider Ralf]
type = VarSet
triggerall = var(50) != 0 || random < 326
triggerall = var(55)
triggerall = random < 100
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || random < 110
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-5,48 + (enemynear,vel x)]
triggerall = p2bodydist y >= -200
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -38
triggerall = p2statetype != C
triggerall = statetype != A
triggerall = !numtarget(1400)
triggerall = !moveguarded
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 100 || p2movetype = H
trigger1 = var(9)
var(50) = ifelse(random<500,1410,1400)


[State AI, Consider Upper.H]
type = VarSet
triggerall = var(50) != 0 || random < 326
triggerall = var(55)
triggerall = random < 165
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || random < 200
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-5,45 + (p2bodydist y / -8)]
triggerall = p2bodydist y >= -200
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -30
triggerall = p2statetype != C
triggerall = statetype != A
triggerall = !numtarget(1000)
triggerall = !moveguarded
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 100 || p2movetype = H || p2movetype = A
trigger1 = var(9)
var(50) = 1020

[State AI, Consider C.H]
type = VarSet
triggerall = var(50) != 0 || random < 326
triggerall = var(55)
triggerall = random < 165
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || random < 40
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [10,50]
triggerall = p2bodydist y >= -180
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -25
triggerall = statetype != A
triggerall = !numtarget(210)
triggerall = !moveguarded
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 100 || p2movetype = H
trigger1 = ctrl || stateno = 200
var(50) = 410

[State AI, Consider S.L]
type = VarSet
triggerall = var(50) != 0 || random < 326
triggerall = var(55)
triggerall = random < 165
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || random < 80
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-5,90]
triggerall = p2bodydist y >= -150
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -42
triggerall = statetype != A
triggerall = !numtarget(200)
triggerall = !numtarget(210)
triggerall = !moveguarded
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 100 || p2movetype = H
trigger1 = ctrl
var(50) = 200

[State AI, Consider S.H]
type = VarSet
triggerall = var(50) != 0 || random < 326
triggerall = var(55)
triggerall = random < 165
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || random < 40
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [10,91]
triggerall = p2bodydist y >= -150
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -10
triggerall = statetype != A
triggerall = !numtarget(210)
triggerall = !moveguarded
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 100 || p2movetype = H
trigger1 = ctrl || (stateno = 200 && anim = 200)
var(50) = 210

[State AI, Consider Dash.L]
type = VarSet
triggerall = var(50) != 0 || random < 326
triggerall = var(55)
triggerall = random < 165
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || random < 80
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [10,128]
triggerall = p2bodydist y >= -90
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -50
triggerall = statetype != A
triggerall = !numtarget(1300)
triggerall = !moveguarded
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 50 || p2movetype = H
trigger1 = var(9)
var(50) = 1300

[State AI, Consider Dash.M]
type = VarSet
triggerall = var(50) != 0 || random < 326
triggerall = var(55)
triggerall = random < 165
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || random < 80
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [60,170]
triggerall = p2bodydist y >= -90
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -50
triggerall = statetype != A
triggerall = !numtarget(1300)
triggerall = !moveguarded
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 50 || p2movetype = H
trigger1 = var(9)
var(50) = 1310

[State AI, Consider Dash.H]
type = VarSet
triggerall = var(50) != 0 || random < 326
triggerall = var(55)
triggerall = random < 165
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || random < 80
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [120,224]
triggerall = p2bodydist y >= -90
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -50
triggerall = statetype != A
triggerall = !numtarget(1300)
triggerall = !moveguarded
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 50 || p2movetype = H
trigger1 = var(9)
var(50) = 1320

[State AI, Consider Dudley]
type = VarSet
triggerall = numenemy
triggerall = var(50) != 0 || random < 326
triggerall = var(55)
triggerall = random < 80
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || random < 100
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-5,220]
triggerall = p2bodydist y >= -190
triggerall = p2bodydist y <= -65 || (p2stateno != [5050,5070])
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 50
trigger1 = var(9) || ((stateno = 600 && movehit) || (statetype=A&&ctrl))
var(50) = 1100 + ifelse(p2dist x+(enemynear,vel x)>=110,10,0) + ifelse(p2dist x>=150+(enemynear,vel x),10,0)

[State AI, Consider blowing yourself up]
type = VarSet
triggerall = var(55)
triggerall = random < 125
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || random < 400
triggerall = p2bodydist x = [-10,30]
triggerall = p2bodydist y >= -90
triggerall = p2stateno != [5080,5130]
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 100 || p2movetype = H
trigger1 = (p2movetype = H) || (enemynear, ctrl = 0)
trigger1 = p2stateno != [120,165]
trigger1 = var(9) || ((stateno = 1001 || stateno = 1101 || stateno=1401) && time >= 2)
var(50) = 3000

[State AI, Consider a Super]
type = VarSet
triggerall = var(55)
triggerall = random < 60
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || random < 100
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [25,200]
triggerall = p2bodydist y >= -95 || numtarget(1000)
triggerall = ( p2dist y + (enemynear,const(size.head.pos.y) / ifelse(p2statetype=C,2,1) ) ) <= -40
triggerall = ( enemynear, vel y <= 0 ) || ( enemynear, vel y + pos y <= -15 )
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 100 || p2movetype = H
trigger1 =(p2movetype = H) || (enemynear, ctrl = 0)
trigger1 = p2stateno != [120,165]
trigger1 = var(9) || ((stateno = 1001 || stateno = 1101 || stateno=1401) && time >= 2)
var(50) = 3100

[State AI, Consider a WHOAH]
type = VarSet
triggerall = var(55)
triggerall = random < 215
triggerall = ((p2movetype != A && enemynear, numproj = 0) || (EnemyNear, Facing = Facing) || (EnemyNear, moveguarded >= 8) || (var(51)) || (!InGuardDist) ) || (p2movetype!= A && enemynear, ctrl = 0) || random < 90
triggerall = p2stateno != 5120 || random < 400
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = stateno != 40
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 100 || p2movetype = H
trigger1 =(p2movetype = H) || (enemynear, ctrl = 0)
trigger1 = p2stateno != [120,165]
trigger1 = var(9) || ((stateno = 1001 || stateno = 1101 || stateno=1401) && time >= 2)
var(50) = 3200

[State AI, Consider J.HP]
type = VarSet
triggerall = var(55)
triggerall = random < 80
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [0,70]
triggerall = !numtarget(610)
triggerall = !numtarget(1000)
trigger1 = statetype = A
var(50) = 610

[State AI, Consider J.LP]
type = VarSet
triggerall = var(55)
triggerall = random < 200
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-5,36]
triggerall = p2bodydist y = [-91,37]
triggerall = vel y > 0 || random < 50 || p2statetype = A || p2movetype = A
trigger1 = statetype = A
var(50) = 600

[State AI, Consider J.HHP]
type = VarSet
triggerall = var(55)
triggerall = random < 50
triggerall = p2stateno != [5080,5130]
triggerall = p2bodydist x = [-10,160]
triggerall = p2bodydist y = [-50,60]
triggerall = !numtarget(610)
triggerall = !numtarget(1000)
trigger1 = statetype = A
var(50) = 620

[State AI, Consider Jumping in]
type = VarSet
triggerall = var(55)
triggerall = random < 200
trigger1 = stateno = 210 || stateno = 410
trigger1 = movehit >= 6
var(50) = 40

[State AI, THROW IT!]
type = VarSet
triggerall = var(55)
triggerall = random < 800
triggerall = numenemy
triggerall = (p2stateno != [5080,5130])
triggerall = statetype != A
triggerall = p2bodydist x <= 5
triggerall = p2statetype != A
triggerall = p2movetype != H
triggerall = (enemynear,prevstateno!=5120)
triggerall = prevstateno != 800
trigger1 = ctrl
trigger1 = stateno != 20 || random < 100
trigger1 = stateno != 100 || random < 100 || p2statetype != A || p2statetype != L
trigger1 = !moveguarded
var(50) = ifelse(random<80,ifelse(random<250,100,105),800)

;===========================================================================
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3200
triggerall = (command = "Dio")  || var(50) = 3200
triggerall = power >= 2000
triggerall = statetype != A
triggerall = !numhelper(3200)
triggerall = !numhelper(3209)
trigger1 = var(9)
trigger2 = stateno = 3106
trigger2 = animelemno(0) >= 46
trigger3 = stateno = 1001 || stateno = 1101 || stateno = 1401

[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3100
triggerall = (command = "ChainDrive") || var(50) = 3100
triggerall = power >= 1000
triggerall = statetype != A
triggerall = !numhelper(3101)
trigger1 = var(9)
trigger2 = stateno = 1001 || stateno = 1101 || stateno = 1401
trigger3 = stateno = 3001

[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3000
triggerall = (command = "SmashKFUpper")  || var(50) = 3000
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = var(9)
trigger2 = stateno = 3106
trigger2 = animelemno(0) >= 46
trigger3 = stateno = 1001 || stateno = 1101 || stateno = 1401

;---------------------------------------------------------------------------
[State -1, Shoryuken]
type = ChangeState
value = 1020
triggerall = (ifelse((anim!=[5,6]),command = "upper_xy",command = "rupper_xy"))  || var(50) = 1020
trigger1 = var(9)

[State -1, Shoryuken]
type = ChangeState
value = 1010
triggerall = (ifelse((anim!=[5,6]),command = "upper_y",command = "rupper_y"))  || var(50) = 1010
trigger1 = var(9)

[State -1, Shoryuken]
type = ChangeState
value = 1000
triggerall = (ifelse((anim!=[5,6]),command = "upper_x",command = "rupper_x"))  || var(50) = 1000
trigger1 = var(9)

[State -1, Balrog]
type = ChangeState
value = 1320
triggerall = (ifelse((anim!=[5,6]),command = "HCF_xy",command = "HCB_xy"))  || var(50) = 1320
trigger1 = var(9)

[State -1, Balrog]
type = ChangeState
value = 1300
triggerall = (ifelse((anim!=[5,6]),command = "HCF_x",command = "HCB_x"))  || var(50) = 1300
trigger1 = var(9)

[State -1, Balrog]
type = ChangeState
value = 1310
triggerall = (ifelse((anim!=[5,6]),command = "HCF_y",command = "HCB_y"))  || var(50) = 1310
trigger1 = var(9)

[State -1, Dudley]
type = ChangeState
value = 1120
triggerall = (ifelse((anim!=[5,6]),command = "QCB_xy",command = "QCF_xy"))  || var(50) = 1120
trigger1 = var(9)
trigger2 = statetype = A
trigger2 = ctrl || (stateno = 600 && movecontact)

[State -1, Dudley]
type = ChangeState
value = 1100
triggerall = (ifelse((anim!=[5,6]),command = "QCB_x",command = "QCF_x"))  || var(50) = 1100
trigger1 = var(9)
trigger2 = statetype = A
trigger2 = ctrl || (stateno = 600 && movecontact)

[State -1, Dudley]
type = ChangeState
value = 1110
triggerall = (ifelse((anim!=[5,6]),command = "QCB_y",command = "QCF_y"))  || var(50) = 1110
trigger1 = var(9)
trigger2 = statetype = A
trigger2 = ctrl || (stateno = 600 && movecontact)

[State -1, Duken]
type = ChangeState
value = 1220
triggerall = !numhelper(1200)
triggerall = (ifelse((anim!=[5,6]),command = "QCF_xy",command = "QCB_xy"))  || var(50) = 1220
trigger1 = var(9)

[State -1, Duken]
type = ChangeState
value = 1200
triggerall = !numhelper(1200)
triggerall = (ifelse((anim!=[5,6]),command = "QCF_x",command = "QCB_x"))  || var(50) = 1200
trigger1 = var(9)

[State -1, Duken]
type = ChangeState
value = 1210
triggerall = !numhelper(1200)
triggerall = (ifelse((anim!=[5,6]),command = "QCF_y",command = "QCB_y"))  || var(50) = 1210
trigger1 = var(9)

[State -1, Ralf]
type = ChangeState
value = 1400
triggerall = (command = "tap_x")  || var(50) = 1400
trigger1 = var(9)
trigger2 = stateno = 200 || stateno = 400

[State -1, Ralf]
type = ChangeState
value = 1410
triggerall = (command = "tap_y")  || var(50) = 1400
trigger1 = var(9)
trigger2 = stateno = 200 || stateno = 400

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 220;800
triggerall = ((command = "x") && (command = "y")) || (command = "z") || var(50) = 800
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && anim = 200)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = (ifelse((anim!=[5,6]),command = "FF",command = "BB"))  || var(50) = 100
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 100
trigger2 = (stateno = 200 && anim = 200)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = (ifelse((anim!=[5,6]),command = "BB",command = "FF"))  || var(50) = 105
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = ((command = "x") && (command != "holddown")) || var(50) = 200
trigger1 = statetype != A
trigger1 = ctrl
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = ((command = "y") && (command != "holddown")) || var(50) = 210
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && anim = 200)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = (command = "start") || var(50) = 195 || (var(58) = -2 && winko && !var(48))
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = ((command = "x") && (command = "holddown")) || var(50) = 400
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && anim = 200)
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 410
triggerall = ((command = "y") && (command = "holddown")) || var(50) = 410
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && anim = 200)
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 620
triggerall = ((command = "x") && (command = "y")) || (command = "z") || var(50) = 620
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") || var(50) = 600
trigger1 = statetype = A
trigger1 = ctrl
[State -1, Jump Heavy Punch]
type = ChangeState
value = 610
triggerall = (command = "y") || var(50) = 610
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = (command = "holdup") || var(50) = 40
trigger1 = stateno = 200 || stateno = 400 || stateno = 410 || stateno = 210
trigger1 = movehit
trigger2 = stateno = 810
trigger2 = time >= 37

[State 0, Helper]
type = Helper
;triggerall = (command = "z") && (command = "holdback") || ((command = "x") && (command = "y") && command = "holdback")
triggerall = stateno = [120,169]
triggerall = power >= 1000
triggerall = !numhelper(229)
trigger1 = (command = "z") || ((command = "x") && (command = "y"))
trigger2 = var(55)
trigger2 = life <= 200 || p2life < 100 || random < (50 + abs(p2dist x))
trigger2 = power <= 1750 || random < 150
helpertype = normal
name = "MONKEYEATTACO"
ID = 229
stateno = 229
pos = 50,-100
postype = front
facing = -1
ownpal = 1
size.xscale = .5
size.yscale = .5
ignorehitpause = 1


