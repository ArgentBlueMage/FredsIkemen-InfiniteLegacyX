; _______________________________________
;| Dudley by Dick Buckus & Mr.Ansatsuken |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< COMMAND FILE >=======================================
;==============================================================================================

;===============================================================================
;Button Remaping
;===============================================================================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;===============================================================================
;Default Values
;===============================================================================

[Defaults]
command.time = 15
command.buffer.time = 1
 

;test commands====================================
;[Command]
;name="2HCB_2p"
;command=y+c
;time = 32;;;30


;===============================================================================
;Super Motions
;===============================================================================
;===============================================================================
;Super Motions
;===============================================================================

[Command]
name="2HCB_2k"
command=~D,DB,B,D,DB,a+b
time = 32;;;30
buffer.time=2
[Command]
name="2HCB_2k"
command=~D,DB,B,D,DB,a+c
time = 32;;;30
buffer.time=2
[Command]
name="2HCB_2k"
command=~D,DB,B,D,DB,b+b
time = 32;;;30
buffer.time=2
[Command]
name="2HCB_2k"
command=~D,DB,B,D,DB,~a+b
time = 32;;;30
buffer.time=2
[Command]
name="2HCB_2k"
command=~D,DB,B,D,DB,~a+c
time = 32;;;30
buffer.time=2
[Command]
name="2HCB_2k"
command=~D,DB,B,D,DB,~b+c
time = 32;;;30
buffer.time=2

[Command]
name="2HCB_2p"
command=~D,DB,B,D,DB,x+y
time = 32;;;30
buffer.time=2
[Command]
name="2HCB_2p"
command=~D,DB,B,D,DB,x+z
time = 32;;;30
buffer.time=2
[Command]
name="2HCB_2p"
command=~D,DB,B,D,DB,y+z
time = 32;;;30
buffer.time=2
[Command]
name="2HCB_2p"
command=~D,DB,B,D,DB,~x+y
time = 32;;;30
buffer.time=2
[Command]
name="2HCB_2p"
command=~D,DB,B,D,DB,~x+z
time = 32;;;30
buffer.time=2
[Command]
name="2HCB_2p"
command=~D,DB,B,D,DB,~y+z
time = 32;;;30
buffer.time=2

[Command]
name = "2HCF_k"
command = ~D,DF,F,D,DF,F,a
time = 32;;;30
[Command]
name = "2HCF_k"
command = ~D,DF,F,D,DF,F,b
time = 32;;;30
[Command]
name = "2HCF_k"
command = ~D,DF,F,D,DF,F,c
time = 32;;;30
[Command]
name = "2HCF_k"
command = ~D,DF,F,D,DF,F,~a
time = 32;;;30
[Command]
name = "2HCF_k"
command = ~D,DF,F,D,DF,F,~b
time = 32;;;30
[Command]
name = "2HCF_k"
command = ~D,DF,F,D,DF,F,~c
time = 32;;;30

[Command]
name = "2HCF_2k"
command = ~D,DF,F,D,DF,F,a+b
time = 32;;;30
[Command]
name = "2HCF_2k"
command = ~D,DF,F,D,DF,F,b+c
time = 32;;;30
[Command]
name = "2HCF_2k"
command = ~D,DF,F,D,DF,F,c+a
time = 32;;;30
[Command]
name = "2HCF_2k"
command = ~D,DF,F,D,DF,F,~a+b
time = 32;;;30
[Command]
name = "2HCF_2k"
command = ~D,DF,F,D,DF,F,~b+c
time = 32;;;30
[Command]
name = "2HCF_2k"
command = ~D,DF,F,D,DF,F,~c+a
time = 32;;;30

[Command]
name = "2HCF_p"
command = ~D,DF,F,D,DF,F,x
time = 32;;;30
[Command]
name = "2HCF_p"
command = ~D,DF,F,D,DF,F,y
time = 32;;;30
[Command]
name = "2HCF_p"
command = ~D,DF,F,D,DF,F,z
time = 32;;;30
[Command]
name = "2HCF_p"
command = ~D,DF,F,D,DF,F,~x
time = 32;;;30
[Command]
name = "2HCF_p"
command = ~D,DF,F,D,DF,F,~y
time = 32;;;30
[Command]
name = "2HCF_p"
command = ~D,DF,F,D,DF,F,~z
time = 32;;;30

[Command]
name = "2HCF_2p"
command = ~D,DF,F,D,DF,F,x+y
time = 32;;;30
[Command]
name = "2HCF_2p"
command = ~D,DF,F,D,DF,F,y+z
time = 32;;;30
[Command]
name = "2HCF_2p"
command = ~D,DF,F,D,DF,F,z+x
time = 32;;;30
[Command]
name = "2HCF_2p"
command = ~D,DF,F,D,DF,F,~x+y
time = 32;;;30
[Command]
name = "2HCF_2p"
command = ~D,DF,F,D,DF,F,~y+z
time = 32;;;30
[Command]
name = "2HCF_2p"
command = ~D,DF,F,D,DF,F,~z+x
time = 32;;;30

[Command]
name = "2HCB_p"
command = ~D,DB,B,D,DB,B,x
time = 32;;;30
[Command]
name = "2HCB_p"
command = ~D,DB,B,D,DB,B,y
time = 32;;;30
[Command]
name = "2HCB_p"
command = ~D,DB,B,D,DB,B,z
time = 32;;;30
[Command]
name = "2HCB_p"
command = ~D,DB,B,D,DB,B,~x
time = 32;;;30
[Command]
name = "2HCB_p"
command = ~D,DB,B,D,DB,B,~y
time = 32;;;30
[Command]
name = "2HCB_p"
command = ~D,DB,B,D,DB,B,~z
time = 32;;;30

;===============================================================================
;Special Motions
;===============================================================================

[Command]
name = "HCF_a"
command = ~D,DF,F,a
time = 15;;;25
[Command]
name = "HCF_b"
command = ~D,DF,F,b
time = 15;;;25
[Command]
name = "HCF_c"
command = ~D,DF,F,c
time = 15;;;25
[Command]
name = "HCF_a"
command = ~D,DF,F,~a
time = 15;;;25
[Command]
name = "HCF_b"
command = ~D,DF,F,~b
time = 15;;;25
[Command]
name = "HCF_c"
command = ~D,DF,F,~c
time = 15;;;25

[Command]
name = "HCF_2k"
command = ~D,DF,F,a+b
time = 15;;;25
[Command]
name = "HCF_2k"
command = ~D,DF,F,b+c
time = 15;;;25
[Command]
name = "HCF_2k"
command = ~D,DF,F,c+a
time = 15;;;25
[Command]
name = "HCF_2k"
command = ~D,DF,F,~a+b
time = 15;;;25
[Command]
name = "HCF_2k"
command = ~D,DF,F,~b+c
time = 15;;;25
[Command]
name = "HCF_2k"
command = ~D,DF,F,~c+a
time = 15;;;25

[Command]
name = "HCF_2p"
command = ~D,DF,F,y+z
time = 15;;;25
[Command]
name = "HCF_2p"
command = ~D,DF,F,~y+z
time = 15;;;25
[Command]
name = "HCF_2p"
command = ~D,DF,F,x+z
time = 15;;;25
[Command]
name = "HCF_2p"
command = ~D,DF,F,~x+z
time = 15;;;25
[Command]
name = "HCF_2p"
command = ~D,DF,F,y+x
time = 15;;;25
[Command]
name = "HCF_2p"
command = ~D,DF,F,~y+x
time = 15;;;25
[Command]
name = "HCF_x"
command = ~D,DF,F,x
time = 15;;;25
[Command]
name = "HCF_y"
command = ~D,DF,F,y
time = 15;;;25
[Command]
name = "HCF_z"
command = ~D,DF,F,z
time = 15;;;25
[Command]
name = "HCF_x"
command = ~D,DF,F,~x
time = 15;;;25
[Command]
name = "HCF_y"
command = ~D,DF,F,~y
time = 15;;;25
[Command]
name = "HCF_z"
command = ~D,DF,F,~z
time = 15;;;25

[Command]
name = "upper_x"
command = ~F,D,DF,x
time = 15;;;20
[Command]
name = "upper_y"
command = ~F,D,DF,y
time = 15;;;20
[Command]
name = "upper_z"
command = ~F,D,DF,z
time = 15;;;20
[Command]
name = "upper_x"
command = ~F,D,DF,x
time = 15;;;20
[Command]
name = "upper_y"
command = ~F,D,DF,y
time = 15;;;20
[Command]
name = "upper_z"
command = ~F,D,DF,z
time = 15;;;20

[Command]
name = "upper_2p"
command = ~F,D,DF,x+y
time = 15;;;20
[Command]
name = "upper_2p"
command = ~F,D,DF,y+z
time = 15;;;20
[Command]
name = "upper_2p"
command = ~F,D,DF,z+x
time = 15;;;20
[Command]
name = "upper_2p"
command = ~F,D,DF,x+y
time = 15;;;20
[Command]
name = "upper_2p"
command = ~F,D,DF,y+z
time = 15;;;20
[Command]
name = "upper_2p"
command = ~F,D,DF,z+x
time = 15;;;20

[Command]
name = "HCB_a"
command = ~D,DB,B,a
time = 15;;;25;;;20
[Command]
name = "HCB_b"
command = ~D,DB,B,b
time = 15;;;25;;;20
[Command]
name = "HCB_c"
command = ~D,DB,B,c
time = 15;;;25;;;20
[Command]
name = "HCB_a"
command = ~D,DB,B,~a
time = 15;;;25;;;20
[Command]
name = "HCB_b"
command = ~D,DB,B,~b
time = 15;;;25;;;20
[Command]
name = "HCB_c"
command = ~D,DB,B,~c
time = 15;;;25;;;20

[Command]
name = "HCB_2k"
command = ~D,DB,B,a+b
time = 15;;;25;;;20
[Command]
name = "HCB_2k"
command = ~D,DB,B,b+c
time = 15;;;25;;;20
[Command]
name = "HCB_2k"
command = ~D,DB,B,c+a
time = 15;;;25;;;20
[Command]
name = "HCB_2k"
command = ~D,DB,B,~a+b
time = 15;;;25;;;20
[Command]
name = "HCB_2k"
command = ~D,DB,B,~b+c
time = 15;;;25;;;20
[Command]
name = "HCB_2k"
command = ~D,DB,B,~c+a
time = 15;;;25;;;20

[Command]
name = "HCB_x"
command = ~D,DB,B,x
time = 15;;;25;;;20
[Command]
name = "HCB_y"
command = ~D,DB,B,y
time = 15;;;25;;;20
[Command]
name = "HCB_z"
command = ~D,DB,B,z
time = 15;;;25;;;20
[Command]
name = "HCB_x"
command = ~D,DB,B,~x
time = 15;;;25;;;20
[Command]
name = "HCB_y"
command = ~D,DB,B,~y
time = 15;;;25;;;20
[Command]
name = "HCB_z"
command = ~D,DB,B,~z
time = 15;;;25;;;20

[Command]
name = "HCB_2p"
command = ~D,DB,B,x+y
time = 15;;;25;;;20
[Command]
name = "HCB_2p"
command = ~D,DB,B,y+z
time = 15;;;25;;;20
[Command]
name = "HCB_2p"
command = ~D,DB,B,z+x
time = 15;;;25;;;20
[Command]
name = "HCB_2p"
command = ~D,DB,B,~x+y
time = 15;;;25;;;20
[Command]
name = "HCB_2p"
command = ~D,DB,B,~y+z
time = 15;;;25;;;20
[Command]
name = "HCB_2p"
command = ~D,DB,B,~z+x
time = 15;;;25;;;20


;===============================================================================
;Double Tap
;===============================================================================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "super jump"
command = $D, $U

;===============================================================================
;2/3 Button Combinations
;===============================================================================

[Command]
name = "roll"
command = a+x
time = 1

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "counter"
command = a+b
time = 1

[Command]
name = "throw1"
command = x+y
time = 1
[Command]
name = "throw1"
command = y+z
time = 1
[Command]
name = "throw1"
command = x+z
time = 1

[Command]
name = "throw2"
command = a+b
time = 1
[Command]
name = "throw2"
command = b+c
time = 1
[Command]
name = "throw2"
command = a+c
time = 1
 

;===============================================================================
;Single Buttons
;===============================================================================

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

;===============================================================================
;Target Combo
;===============================================================================

[Command]
name = "tgt.b"
command = b
time = 1
buffer.time=4;;;target combo

[Command]
name = "tgt.c"
command = c
time = 1
buffer.time=4;;;target combo

[Command]
name = "tgt.y"
command = y
time = 1
buffer.time=4;;;target combo

[Command]
name = "tgt.z"
command = z
time = 1
buffer.time=4;;;target combo



;===============================================================================
;Single Dir
;===============================================================================
[Command]
name="fwd"
command=F
time=1
[Command]
name="back"
command=B
time=1
[Command]
name="up"
command=U
time=1
[Command]
name="down"
command=D
time=1

;===============================================================================
;Hold Dir
;===============================================================================

[Command]
name="holdfwd"
command=/$F
time=1
[Command]
name="holdback"
command=/$B
time=1
[Command]
name="holdup"
command=/$U
time=1
[Command]
name="holddown"
command=/$D
time=1

[Command]
name = "Launcher"
command = $U
time = 25;;;20
buffer.time=5
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
 
;-| Hold Button |-----------------------------------------------------------
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

;---------------------------------------------------------------------------
;Release Direction
[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1

;--------------------------------------------------------------------------
;Release Button
[Command]
name = "rlsx"
command = ~x
time = 1
buffer.time = 1;Not sure if this is nessecary?

[Command]
name = "rlsy"
command = ~y
time = 1
buffer.time = 1

[Command]
name = "rlsz"
command = ~z
time = 1
buffer.time = 1

[Command]
name = "rlsa"
command = ~a
time = 1
buffer.time = 1

[Command]
name = "rlsb"
command = ~b
time = 1
buffer.time = 1

[Command]
name = "rlsc"
command = ~c
time = 1
buffer.time = 1

[Command]
name = "rlss"
command = ~s
time = 1
buffer.time = 1

;---------------------------------------------------------------------------
 
[Command]
name = "Counter_P"
command = ~B, DB, D, x
time = 16
[Command]
name = "Counter_P"
command = ~B, DB, D, y
time = 16
[Command]
name = "Counter_P"
command = ~B, DB, D, z
time = 16

[Command]
name = "Counter_P"
command = ~B, DB, D, ~x
time = 16
[Command]
name = "Counter_P"
command = ~B, DB, D, ~y
time = 16
[Command]
name = "Counter_P"
command = ~B, DB, D, ~z
time = 16

[Command]
name = "Counter_K"
command = ~B, DB, D, a
time = 16
[Command]
name = "Counter_K"
command = ~B, DB, D, b
time = 16
[Command]
name = "Counter_K"
command = ~B, DB, D, c
time = 16
[Command]
name = "Counter_K"
command = ~B, DB, D, ~a
time = 16
[Command]
name = "Counter_K"
command = ~B, DB, D, ~b
time = 16
[Command]
name = "Counter_K"
command = ~B, DB, D, ~c
time = 16

[Command]
name = "a+x"
command = a+x
time=1
[Command]
name = "b+y"
command = b+y
time = 1
[Command]
name = "c+z"
command = c+z
time = 1

;Other
[Command]
name="HighJump"
command=$D, $U
time=15
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
 
[State -1, Tick Fix]
type = CtrlSet
triggerall = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,299]) && !AnimTime
trigger3 = (StateNo = [400,499]) && !AnimTime
trigger4 = (StateNo = [97,99]) && !AnimTime
trigger5 = StateNo = 810 && !AnimTime
trigger6 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger7 = (StateNo = [710,721]) && !AnimTime
value = 1

[State -1, CtrlSet For Helpers];special thanks to 20S
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(17) = 1

[State -1, Juggle Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1
;---------------------------------------------------------------------------
;LV3 Corkscrew Cross
[State -1, Cork Screw Cross]
type = ChangeState
value = 4100
triggerAll = !AILevel
triggerall = command = "2HCB_2k"
triggerall = ifelse(var(53) <= 0, power >= 3000, power >= 1000)
triggerall = statetype != A  
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=  var(6) 
;---------------------------------------------------------------------------
;Rolling Thunder
[State -1, Lv.2 Rolling Thunder]
type = ChangeState
value = 3015
triggerAll = !AILevel
triggerall = command = "2HCF_2k"
triggerall = ifelse(var(53) <= 0, power >= 2000, power >= 1000)
triggerall = statetype != A ;&& stateno!=3200
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=  var(6)||var(11)
;---------------------------------------------------------------------------
;Rolling Thunder
[State -1, Rolling Thunder]
type = ChangeState
value = 3010
triggerAll = !AILevel
triggerall = command = "2HCF_k"
triggerall = ifelse(var(53) <= 0, power >= 1000, power >= 0)
triggerall = statetype != A  
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2= var(6) 

;---------------------------------------------------------------------------
;MAX Rocket Uppercut
[State -1, MAX Rocket Uppercut]
type = ChangeState
value = 3055
triggerAll = !AILevel
triggerall = command = "2HCF_2p"
triggerall = ifelse(var(53) <= 0, power >= 2000, power >= 1000)
triggerall = statetype != A 
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=  var(6)|| var(11)

;---------------------------------------------------------------------------
;Rocket Uppercut
[State -1, Rocket Uppercut]
type = ChangeState
value = 3050
triggerAll = !AILevel
triggerall = command = "2HCF_p"
triggerall = ifelse(var(53) <= 0, power >= 1000, power >= 0)
triggerall = statetype != A  
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=  var(6) 
 
;---------------------------------------------------------------------------
;MAX Corkscrew Blow
[State -1, Cork Screw Blow]
type = ChangeState
value = 3005
triggerAll = !AILevel
triggerall = command = "2HCB_2p"
triggerall = ifelse(var(53) <= 0, power >= 2000, power >= 1000)
triggerall = statetype != A  
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2= var(6)||var(11)
;Corkscrew Blow
[State -1, Cork Screw Blow]
type = ChangeState
value = 3000
triggerAll = !AILevel
triggerall = command = "2HCB_p"
triggerall = ifelse(var(53) <= 0, power >= 1000, power >= 0)
triggerall = statetype != A  
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2= var(6)
;---------------------------------------------------------------------------

;EX Jet Upper
[State -1, EX Jet Upper]
type = ChangeState
value = 1080
triggerAll = !AILevel
triggerall = command = "upper_2p"
triggerall = statetype != A
triggerall = ifelse(var(53) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)

;---------------------------------------------------------------------------
;Light Jet Upper
[State -1, Light Jet Upper]
type = ChangeState
value = 1050
triggerAll = !AILevel
triggerall = command = "upper_x"
triggerall = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)

;---------------------------------------------------------------------------
;Strong Jet Upper
[State -1, Strong Jet Upper]
type = ChangeState
value = 1060
triggerAll = !AILevel
triggerall = command = "upper_y"
triggerall = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)

;;---------------------------------------------------------------------------
;Fierce Jet Upper
[State -1, Fierce Jet Upper]
type = ChangeState
value = 1070
triggerAll = !AILevel
triggerall = command = "upper_z"
triggerall = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)


;---------------------------------------------------------------------------
;EX Ducking
[State -1, EX Ducking]
type = ChangeState
value = 1180
triggerAll = !AILevel
triggerall = command = "HCF_2k"
triggerall = statetype != A
triggerall = ifelse(var(53) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)

;---------------------------------------------------------------------------
;Light Ducking
[State -1, Light Ducking]
type = ChangeState
value = 1150
triggerAll = !AILevel
triggerall = command = "HCF_a"
triggerall = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)

;---------------------------------------------------------------------------
;Strong Ducking
[State -1, Strong Ducking]
type = ChangeState
value = 1160
triggerAll = !AILevel
triggerall = command = "HCF_b"
triggerall = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)

;---------------------------------------------------------------------------
;Fierce Ducking
[State -1, Fierce Ducking]
type = ChangeState
value = 1170
triggerAll = !AILevel
triggerall = command = "HCF_c"
triggerall = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)

;---------------------------------------------------------------------------
;EX Machine Gun Blow
[State -1, EX Machine Gun Blow]
type = ChangeState
value = 1030
triggerAll = !AILevel
triggerall = command = "HCF_2p"
triggerall = statetype != A
triggerall = ifelse(var(53) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)
;---------------------------------------------------------------------------
;Light Machine Gun Blow
[State -1, Light Machine Gun Blow]
type = ChangeState
value = 1000
triggerAll = !AILevel
triggerall = command = "HCF_x"
triggerall = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)

;---------------------------------------------------------------------------
;Strong Machine Gun Blow
[State -1, Strong Machine Gun Blow]
type = ChangeState
value = 1010
triggerAll = !AILevel
triggerall = command = "HCF_y"
triggerall = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)

;---------------------------------------------------------------------------
;Fierce Machine Gun Blow
[State -1, Fierce Machine Gun Blow]
type = ChangeState
value = 1020
triggerAll = !AILevel
triggerall = command = "HCF_z"
triggerall = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)

;---------------------------------------------------------------------------
;EX Cross-Counter
[State -1, EX Cross-Counter]
type = ChangeState
value = 1110
triggerAll = !AILevel
triggerall = command = "HCB_2p"
triggerall = statetype != A
triggerall = ifelse(var(53) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)
;---------------------------------------------------------------------------
;Cross-Counter
[State -1, Cross-Counter]
type = ChangeState
value = 1100
triggerAll = !AILevel
triggerall = command = "HCB_x"||command = "HCB_y"||command = "HCB_z"
triggerall = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)
;;---------------------------------------------------------------------------

;EX Back Swing Blow
[State -1, EX Back Swing Blow]
type = ChangeState
value = 1230
triggerAll = !AILevel
triggerall = command = "HCB_2k"
triggerall = ifelse(var(53) <= 0, power >= 500, power >= 0)
triggerall = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)

;---------------------------------------------------------------------------
;Light Back Swing Blow
[State -1, Light Back Swing Blow]
type = ChangeState
value = 1200
triggerAll = !AILevel
triggerall = command = "HCB_a"
triggerall = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)

;---------------------------------------------------------------------------
;Strong Back Swing Blow
[State -1, Strong Back Swing Blow]
type = ChangeState
value = 1210
triggerAll = !AILevel
triggerall = command = "HCB_b"
triggerall = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)

;---------------------------------------------------------------------------
;Fierce Back Swing Blow
[State -1, Fierce Back Swing Blow]
type = ChangeState
value = 1220
triggerAll = !AILevel
triggerall = command = "HCB_c"
triggerall = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2=var(5)
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Roll Forward]
type = ChangeState
value = 720
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"

[State -1, Roll Backward]
type = ChangeState
value = 721
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 710
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, powercharge]
type = changestate
value = 740
trigger1 = !AIlevel
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = power < const(data.power) && power < powermax && !var(20)


 
;---------------------------------------------------------------------------
;Kung Fu Throw
;“Š‚°
[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
triggerall = command = "throw1"
triggerall = statetype = S
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
;trigger3 = ctrl
;---------------------------------------------------------------------------
;Kung Fu Throw
;“Š‚°
[State -1, Throw]
type = ChangeState
value = 901
triggerAll = !AILevel
triggerall = command = "throw2"
triggerall = statetype = S
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
 
;--------------------------------------------------------------------------
;[State -1, Custom Combo]
;type = ChangeState
;value = Ifelse(StateType = A,905,900)
;triggerAll = !AILevel && command = "c+z" && RoundState = 2 && power >= 1000 && !var(20)
;triggerAll = !var(54)
;trigger1 = RoundState = 2
;trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])
;trigger1 = !var(41)
;---------------------------------------------------------------------------
[State -1, Max Mode]
type = ChangeState
value = 770
triggerAll = !AILevel
;triggerAll = var(54)
triggerAll = command = "c+z"
triggerAll = RoundState = 2 && StateType != A
triggerAll = var(53) <= 0 && Power >= 1000
trigger1 = ctrl || (Stateno = [100,101])

;--------------------------------------------------------------------------
[State -1, Dart Shot]
type=ChangeState
value=251
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="c" && command="holdfwd"
trigger1=ctrl||stateno=[100,101]
trigger2= stateno =241 && movehit && time>=13
;trigger3=var(4)disabled
;--------------------------------------------------------------------------
[State -1, Lever Blow]
type=ChangeState
value=241
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="b" && command="holdfwd"
trigger1=ctrl||stateno=[100,101]
trigger2= stateno =211 && movehit && time>=14
;trigger3=var(4)disabled
;--------------------------------------------------------------------------
[State -1, Step Straight]
type=ChangeState
value=221
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="z" && command="holdfwd"
trigger1=ctrl||stateno=[100,101]
;trigger2=var(4 
;--------------------------------------------------------------------------
[State -1, Stomach Blow]
type=ChangeState
value=211
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="y" && command="holdfwd"
trigger1=ctrl||stateno=[100,101]
;trigger2=var(4 
;--------------------------------------------------------------------------
[State -1, Slipping Jab]
type=ChangeState
value=201
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="x" && command="holdfwd"
trigger1=ctrl||stateno=[100,101]
trigger2= (StateNo = 200 || StateNo = 201 || StateNo = 400 || StateNo = 430) && Time >=4
;trigger2=var(4) 
;--------------------------------------------------------------------------
[State -1, Standing Low Punch]
type=ChangeState
value=200
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="x"
trigger1=ctrl||stateno=[100,101]
trigger2= (StateNo = 200 || StateNo = 201 || StateNo = 400 || StateNo = 430) && Time >=4.5
;trigger3=var(4)disabled
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type=ChangeState
value=210
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown" && command="y"
trigger1=ctrl||stateno=[100,101]

 ;---------------------------------------------------------------------------
[State -1, Standing High Punch]
type=ChangeState
value=220
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="z"
trigger1=ctrl||stateno=[100,101]

 ;---------------------------------------------------------------------------
[State -1, Standing Low Kick]
type=ChangeState
value=230
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="a"
trigger1=ctrl||stateno=[100,101]
trigger2 = StateNo = 200 && MoveContact && Time >=7
;trigger3=var(4)disabled

;---------------------------------------------------------------------------
[State -1, Standing Medium Kick]
type=ChangeState
value=240
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="b"
trigger1=ctrl||stateno=[100,101]
;trigger3=var(4)disabled

;---------------------------------------------------------------------------
[State -1, Standing High Kick]
type=ChangeState
value=250
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="c"
trigger1=ctrl||stateno=[100,101]
;trigger2=stateno=240&&prevstateno<200&&movecontact;&&animelemtime(7)<=0;;; target combo
;trigger3=var(4)disabled

;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type=ChangeState
value=400
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="x"
trigger1=ctrl||stateno=[100,101]
trigger2= (StateNo = 200 || StateNo = 201 || StateNo = 400 || StateNo = 430) && Time >=4.5
;trigger3=var(4)disabled

;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type=ChangeState
value=410
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command= "holddown"&& command="y"
trigger1=ctrl||stateno=[100,101]
;trigger2=var(4)

;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type=ChangeState
value=420
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="z"
trigger1=ctrl||stateno=[100,101]
;trigger2=var(4

;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type=ChangeState
value=430
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="a"
trigger1=ctrl||stateno=[100,101]
trigger2= (StateNo = 200 || StateNo = 201 || StateNo = 400 || StateNo = 430) && Time >=4.5
;trigger3=var(4)disabled

;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type=ChangeState
value=440
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="b"
trigger1=ctrl||stateno=[100,101]

;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type=ChangeState
value=450
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="c"
trigger1=ctrl||stateno=[100,101]
trigger2 = StateNo = 430 && (MoveContact=[1,8]) && Time >=8

;--------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type=ChangeState
value=600
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="x"
trigger1=ctrl
;trigger2=var(4 ;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type=ChangeState
value=610
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="y"
trigger1=ctrl
;trigger2=var(4 ;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type=ChangeState
value=620
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="z"
trigger1=ctrl
;trigger2=var(4 ;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type=ChangeState
value=630
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="a"
trigger1=ctrl
;trigger2=var(4 ;---------------------------------------------------------------------------
[State -1, Jumping Medium Kick]
type=ChangeState
value=640
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="b"
trigger1=ctrl
;trigger2=var(4 ;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type=ChangeState
value=650
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="c"
trigger1=ctrl
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = !AILevel
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl

;==============================================================================================
;===========================================< A.I >==============================================
;==============================================================================================

[State -1, Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger1 = !var(26) || P2BodyDist x >= 40
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A || P2StateType = A
trigger1 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))
 
;Taunt
[State -1, taunt]
type=changestate
value=195
triggerall= AILevel && NumEnemy 
triggerall = RoundState = 2 && Statetype!=A
trigger1= p2dist x>160 && (enemynear,vel y>0) && ctrl && random<100
trigger1= !(enemynear,ctrl) && (enemynear,movetype=H)
 
[State -1, Roll Forward]
type = ChangeState
value = 720
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101]))  
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [92,122])

[State -1, Dodge]
type = ChangeState
value = 710
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101]))  
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0,60])
[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,40]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (75 * (AILevel ** 2 / 64.0))

;Corkscrew Cross
[State -1, Corkscrew Cross]
type=changestate
value=4100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerall = power >= 3000
triggerAll = (EnemyNear, HitOver || !(EnemyNear, MoveType = H) || var(21)) &&!(EnemyNear, StateNo = [120,155])
triggerall= (p2bodydist x=[-60,110]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
triggerall= (p2stateno!=[1100,1105])
trigger1 = !var(16) && var(15) < 1 || (StateNo = [1000, 4999])  
trigger1 = P2StateType != A
trigger1 = P2StateType != L && (P2Dist y = [-85, 0]) && P2BodyDist x = [0, 110]
trigger1 = var(6) && MoveHit&& Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = EnemyNear, GetHitVar(HitTime) >= 7
;---------------------------------------------------------------------------
;MAX Rolling Thunder
[State -1, Rolling Thunder]
type = ChangeState
value =  3015
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll =  power >= 2000
triggerall= ceil(enemynear, stateno!=[120,155]) && (p2statetype!=L) && enemynear, ctrl = 0
triggerall= (p2bodydist x=[0,150]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
triggerall= p2stateno!=1105
trigger1 = !var(16) && var(15) < 1 || (StateNo = [1000, 4999]) 
trigger1 = P2StateType != A
trigger1 = P2StateType != L && (P2Dist y = [-85, 0]) && P2BodyDist x = [0, 110]
trigger1 = var(6) && MoveHit&& Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = EnemyNear, GetHitVar(HitTime) >= 7

;Rolling Thunder
[State -1, Rolling Thunder]
type = ChangeState
value =  3010
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll =  power >= 2000
triggerall= ceil(enemynear, stateno!=[120,155]) && (p2statetype!=L) && enemynear, ctrl = 0
triggerall= (p2bodydist x=[0,150]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
triggerall= p2stateno!=1105
trigger1 = !var(16) && var(15) < 1 || (StateNo = [1000, 4999]) 
trigger1 = P2StateType != A
trigger1 = P2StateType != L && (P2Dist y = [-85, 0]) && P2BodyDist x = [0, 110]
trigger1 = var(6) && MoveHit&& Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = EnemyNear, GetHitVar(HitTime) >= 7

;---------------------------------------------------------------------------
;MAX Rocket Uppercut
[State -1, Rocket Uppercut]
type = ChangeState
value =  3055
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll =  power >= 2000 
triggerall= ceil(enemynear, stateno!=[120,155]) && (p2statetype!=L) && enemynear, ctrl = 0
triggerall= (p2bodydist x=[0,ifelse(power>=2000,50,40)]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
triggerall= p2stateno!=1305
trigger1 = !var(16) && var(15) < 1 || (StateNo = [1000, 4999]) 
trigger1 = P2StateType != A
trigger1 = P2StateType != L && (P2Dist y = [-85, 0]) && P2BodyDist x = [0, 110]
trigger1 = var(6) && MoveHit&& Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = EnemyNear, GetHitVar(HitTime) >= 7

;Rocket Uppercut
[State -1, Rocket Uppercut]
type = ChangeState
value =  3010
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll =  power >= 1000 
triggerall= ceil(enemynear, stateno!=[120,155]) && (p2statetype!=L) && enemynear, ctrl = 0
triggerall= (p2bodydist x=[0,ifelse(power>=2000,50,40)]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
triggerall= p2stateno!=1305
trigger1 = !var(16) && var(15) < 1 || (StateNo = [1000, 4999]) 
trigger1 = P2StateType != A
trigger1 = P2StateType != L && (P2Dist y = [-85, 0]) && P2BodyDist x = [0, 110]
trigger1 = var(6) && MoveHit && Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = EnemyNear, GetHitVar(HitTime) >=6
;---------------------------------------------------------------------------
;Corkscrew Blow
[State -1, Corkscrew Blow]
type=changestate
value=3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll =  power >= 1000 
triggerall= ceil(enemynear, stateno!=[120,155]) && (p2statetype!=L) && enemynear, ctrl = 0
triggerall= (p2bodydist x=[0,110]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
triggerall= (p2stateno!=[1100,1105])
trigger1 = !var(16) && var(15) < 1 || (StateNo = [1000, 4999]) 
trigger1 = P2StateType != A
trigger1 = P2StateType != L && (P2Dist y = [-85, 0]) && P2BodyDist x = [0, 110]
trigger1 = var(6) && MoveHit&& Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = EnemyNear, GetHitVar(HitTime) >= 6
;---------------------------------------------------------------------------
[State -1, Cross-Counter]
type = changestate
value = 1100
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2bodydist x = [0, 72]) && (p2dist y = [ -124, -48]) && inguarddist && !var(26)
triggerall = inguarddist && enemynear, vel x >= 0 && (enemynear, vel y = [ -2, 8])
triggerall = (enemynear, statetype = A) || (enemynear, stateno = [200, 1999]) || (enemynear, hitdefattr = A, NA) || (enemynear, hitdefattr = SCA, SA, HA)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (250 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, EX Cross-Counter]
type=changestate
value=1110
triggerall = AIlevel && numenemy && power >= 500 && power < 3000
triggerall = roundstate = 2 && statetype != A
triggerall = (p2bodydist x = [0, 72]) && (p2dist y = [ -124, -48]) && inguarddist && !var(26)
triggerall = inguarddist && enemynear, vel x >= 0 && (enemynear, vel y = [ -2, 8])
triggerall = (enemynear, statetype = A) || (enemynear, stateno = [200, 1999]) || (enemynear, hitdefattr = A, NA) || (enemynear, hitdefattr = SCA, SA, HA)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (250 * (AIlevel ** 2 / 64.0)) 
;---------------------------------------------------------------------------
;Light Back Swing Blow
;[State -1, Light Back Swing Blow]
;type=changestate
;value=1200
;triggerall=  AILevel && NumEnemy  
;triggerall= Roundstate=2 && Statetype!=A
;triggerall=stateno!=[1200,1225]
;triggerall= (p2stateno!=[120,155]) && (p2statetype!=L) && backedgedist >50
;triggerall= (p2bodydist x=[0,60]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
;trigger1 = !var(16) && var(15) < 1 || (StateNo = [200, 1099]) && random<125
;trigger2 = var(5) && MoveHit
;trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
;---------------------------------------------------------------------------
;Strong Back Swing Blow
;[State -1, Strong Back Swing Blow]
;type=changestate
;value=1210
;triggerall=  AILevel && NumEnemy  
;triggerall= Roundstate=2 && Statetype!=A
;triggerall=stateno!=[1200,1225]
;triggerall= (p2stateno!=[120,155]) && (p2statetype!=L) && backedgedist >50
;triggerall= (p2bodydist x=[0,70]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
;trigger1 = !var(16) && var(15) < 1 || (StateNo = [200, 1099]) && random<125
;trigger2 = var(5) && MoveHit
;trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
;
;---------------------------------------------------------------------------
;Fierce Back Swing Blow
;[State -1, Fierce Back Swing Blow]
;type=changestate
;value=1220
;triggerall=  AILevel && NumEnemy  
;triggerall= Roundstate=2 && Statetype!=A
;triggerall=stateno!=[1200,1225]
;triggerall= (p2stateno!=[120,155]) && (p2statetype!=L) && backedgedist >60
;triggerall= (p2bodydist x=[0,80]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
;trigger1 = !var(16) && var(15) < 1 || (StateNo = [200, 1099]) && random<125
;trigger2 = var(5) && MoveHit
;trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
;---------------------------------------------------------------------------
;EX Back Swing Blow
;[State -1, EX Back Swing Blow]
;type=changestate
;value=1230
;triggerall = power >= 500  
;triggerall=  AILevel && NumEnemy  
;triggerall= Roundstate=2 && Statetype!=A
;triggerall=stateno!=[1200,1225]
;triggerall= (p2stateno!=[120,155]) && (p2statetype!=L) && backedgedist >60
;triggerall= (p2bodydist x=[0,80]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
;trigger1 = !var(16) && var(15) < 1 || (StateNo = [200, 1999]) && random<125
;trigger2 = var(5) && MoveHit
;trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
;------------------------------------------------------------------------



;Light Jet Upper
[State -1, Light Jet Upper]
type = ChangeState
value = 1050
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) &&  var(15) < 1  
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-48,48]) && P2StateType != A) || ((P2BodyDist x = [-140,140]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(5) && MoveHit && Random < (70 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

;trigger4= ctrl && prevstateno=1200 && random<200
;------------------------------------------------------------------------
;Strong Jet Upper
[State -1, Strong Jet Upper]
type = ChangeState
value = 1060
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) &&  var(15) < 1  
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-48,48]) && P2StateType != A) || ((P2BodyDist x = [-140,140]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(5) && MoveHit && Random < (70 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

;trigger4= ctrl && prevstateno=1200 && random<200
;------------------------------------------------------------------------
;Fierce Jet Upper
[State -1, Fierce Jet Upper]
type = ChangeState
value = 1070
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) &&  var(15) < 1  
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-48,48]) && P2StateType != A) || ((P2BodyDist x = [-140,140]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(5) && MoveHit && Random < (70 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

;trigger4= ctrl && prevstateno=1200 && random<200
;------------------------------------------------------------------------
;EX Jet Upper
[State -1, EX Jet Upper]
type = ChangeState
value = 1080
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) &&  var(15) < 1  
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-48,48]) && P2StateType != A) || ((P2BodyDist x = [-140,140]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(5) && MoveHit && Random < (70 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

;trigger4= ctrl && prevstateno=1200 && random<200
;---------------------------------------------------------------------------
;Light Machine Gun Blow
[State -1, Light Machine Gun Blow]
type=changestate
value=1000
triggerall=  AILevel && NumEnemy  
triggerall= Roundstate=2 && Statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,60]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = !var(16) && var(15) < 1 || (StateNo = [200, 499]) 
trigger2 = var(5) && MoveHit  
trigger2 = EnemyNear, GetHitVar(HitTime) >= 6
;---------------------------------------------------------------------------
;Strong Machine Gun Blow
[State -1, Strong Machine Gun Blow]
type=changestate
value=1010
triggerall=  AILevel && NumEnemy  
triggerall= Roundstate=2 && Statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[61,80]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = !var(16) && var(15) < 1 || (StateNo = [200, 499]) 
trigger2 = var(5) && MoveHit 
trigger2 = EnemyNear, GetHitVar(HitTime) >= 6
;---------------------------------------------------------------------------
;Fierce Machine Gun Blow
[State -1, Fierce Machine Gun Blow]
type=changestate
value=1020
triggerall=  AILevel && NumEnemy  
triggerall= Roundstate=2 && Statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[81,150]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = !var(16) && var(15) < 1 || (StateNo = [200, 499]) 
trigger2 = var(5) && MoveHit 
trigger2 = EnemyNear, GetHitVar(HitTime) >= 6
;---------------------------------------------------------------------------
;EX Machine Gun Blow
[State -1, EX Machine Gun Blow]
type=changestate
value=1030
triggerall=  AILevel && NumEnemy  
triggerall= Roundstate=2 && Statetype!=A
triggerall= power >= 500
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[81,190]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = !var(16) && var(15) < 1 || (StateNo = [200, 499]) 
trigger2 = var(5) && MoveHit  
trigger2 = EnemyNear, GetHitVar(HitTime) >= 6
;------------------------------------------------------------------------
;Light Ducking
[State -1, Light Ducking]
type = ChangeState
value = 1150
triggerall=  AILevel && NumEnemy  
triggerall= Roundstate=2 && Statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x = [0, 68]) && p2statetype != A && p2statetype != L
trigger1 = !var(16) && var(15) < 1 || (StateNo = [200, 499]) 
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(5) && movehit  
trigger2 = enemynear, gethitvar(hittime) >= 9
;trigger2= (stateno=[220,225]) && movehit && p2bodydist x<60 && random<40
;trigger3= (stateno=[250,255]) && movehit && p2bodydist x<60 && random<50
;trigger4= (stateno=[210,215]) && movehit && p2bodydist x<60 && random<33
;trigger5= (stateno=[240,245]) && movehit && p2bodydist x<60 && random<33
;
 

;trigger6 = ctrl && p2bodydist X = [20,60]
;trigger6 = enemynear,numhelper > 0
;trigger6 = random <= var(7)*100
;trigger7 = ctrl && p2bodydist X = [20,60]
;trigger7 = enemynear,numproj > 0
;trigger7 = random <= var(7)*100
;------------------------------------------------------------------------
;Strong Ducking
[State -1, Strong Ducking]
type = ChangeState
value = 1160
triggerall=  AILevel && NumEnemy  
triggerall= Roundstate=2 && Statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x = [0, 68]) && p2statetype != A && p2statetype != L
trigger1 = !var(16) && var(15) < 1 || (StateNo = [200, 499]) 
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(5) && movehit  
trigger2 = enemynear, gethitvar(hittime) >= 9
;trigger2= (stateno=[220,225]) && movehit && p2bodydist x<60 && random<40
;trigger3= (stateno=[250,255]) && movehit && p2bodydist x<60 && random<50
;trigger4= (stateno=[210,215]) && movehit && p2bodydist x<60 && random<33
;trigger5= (stateno=[240,245]) && movehit && p2bodydist x<60 && random<33
;trigger6 = ctrl && p2bodydist X = [61,100]
;trigger6 = enemynear,numhelper > 0
;trigger6 = random <= var(7)*100
;trigger7 = ctrl && p2bodydist X = [61,100]
;trigger7 = enemynear,numproj > 0
;trigger7 = random <= var(7)*100
;------------------------------------------------------------------------
;Fierce Ducking
[State -1, Fierce Ducking]
type = ChangeState
value = 1170
triggerall=  AILevel && NumEnemy  
triggerall= Roundstate=2 && Statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x = [0, 68]) && p2statetype != A && p2statetype != L
trigger1 = !var(16) && var(15) < 1 || (StateNo = [200, 499]) 
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(5) && movehit  
trigger2 = enemynear, gethitvar(hittime) >= 9
;trigger2= (stateno=[220,225]) && movehit && p2bodydist x<60 && random<40
;trigger3= (stateno=[250,255]) && movehit && p2bodydist x<60 && random<50
;trigger4= (stateno=[210,215]) && movehit && p2bodydist x<60 && random<33
;trigger5= (stateno=[240,245]) && movehit && p2bodydist x<60 && random<33
;trigger6 = ctrl && p2bodydist X = [101,160]
;trigger6 = enemynear,numhelper > 0
;trigger6 = random <= var(7)*100
;trigger7 = ctrl && p2bodydist X = [101,160]
;trigger7 = enemynear,numproj > 0
;trigger7 = random <= var(7)*100
;------------------------------------------------------------------------
;EX Ducking
[State -1, EX Ducking]
type = ChangeState
value = 1180
triggerall=  AILevel && NumEnemy  
triggerall= Roundstate=2 && Statetype!=A
triggerall= power >= 500 
triggerall= (p2stateno!=[120,155])  
triggerall= (p2bodydist x = [0, 68]) && p2statetype != A && p2statetype != L
trigger1 = !var(16) && var(15) < 1 || (StateNo = [200, 499]) 
trigger1 = (ctrl || stateno = 52 || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(5) && movehit  
trigger2 = enemynear, gethitvar(hittime) >= 9
;trigger2= (stateno=[220,225]) && movehit && p2bodydist x<60 && random<20
;trigger3= (stateno=[250,255]) && movehit && p2bodydist x<60 && random<25
;trigger4= (stateno=[210,215]) && movehit && p2bodydist x<60 && random<17
;trigger5= (stateno=[240,245]) && movehit && p2bodydist x<60 && random<17
;trigger6 = ctrl && p2bodydist X = [20,320]
;trigger6 = enemynear,numhelper > 0
;trigger6 = random <= var(7)*50
;trigger7 = ctrl && p2bodydist X = [20,320]
;trigger7 = enemynear,numproj > 0
;trigger7 = random <= var(7)*50
;---------------------------------------------------------------------------
[State -1, Run]
type = ChangeState
value = 100
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100,105])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 140 && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155]) && !var(20)
trigger1 = !var(26) || p2bodydist x >= 40
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = ifelse(statetype = A, ((var(3) != [1, 2]) || stateno = 5210), 1)
trigger1 = random < (ifelse((p2stateno = [200, 699]), 100, ifelse((p2stateno = [1000, 2999]), 333, 1000)) * (AIlevel ** 2 / 64.0))

;--------------------------------------------------------------------------- 
 
[State -1, Dash Backward]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = ctrl && (stateno != [100, 106])  && !var(26)
trigger1 = (enemynear, movetype = A) && backedgedist >= 80 && (p2bodydist x = [80, 120]) && (enemynear, vel x)
trigger1 = random < (ifelse((enemynear, hitdefattr = SC, AT), 150, 50) * (AIlevel ** 2 / 64.0))
trigger2 = (p2bodydist x = [0, 80]) && backedgebodydist >= 80
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT

[State -1, Roll Forward]
type = changestate
value = 720
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (stateno = [100, 101])) && var(20) <= 164 && !var(26)
trigger1 = (enemynear, movetype = A) && !(enemynear, hitdefattr = SCA, AT) && (p2bodydist x = [104, 154])

[State -1, Dodge]
type = changestate
value = 710
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (stateno = [100, 101])) && var(20) <= 164 && !var(26)
trigger1 = (enemynear, movetype = A) && !(enemynear, hitdefattr = SCA, AT) && (p2bodydist x = [0, 60])
;----------------------------------------------------------------------------
 
;===========================================================================
; Initiate Ground Combos
;===========================================================================
[State -1, SLP]
type=changestate
value=200
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = !var(16) && (var(15) < 1 || var(20))
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1= (P2BodyDist x=[0,58]) && (P2BodyDist y=[-50,50]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
[State -1, SMP]
type=changestate
value=210
triggerAll = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1= (P2BodyDist x=[0,53]) && (P2BodyDist y=[-50,50]) && P2StateType != A && P2StateType != L
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = (Stateno=[200,205]) && MoveHit
trigger2 = (Stateno=[230,235]) && MoveHit
;---------------------------------------------------------------------------
[State -1, Standing Far Heavy Punch]
type = ChangeState
value = 220
triggerAll = AILevel && NumEnemy && (Abs(P2BodyDist X) <= 30)
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,0]) && (P2Dist y = [-50,50]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
;[State -1, SHP]
;type=changestate
;value=220
;trigger1 = AILevel && NumEnemy
;trigger1 = RoundState = 2 && StateType != A
;triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
;trigger1= ctrl && random<100
;trigger2= (stateno=[200,205]) && movehit && random<75
;trigger3= (stateno=[230,235]) && movehit && random<75
;trigger4= (stateno=[210,215]) && movehit && random<500
;trigger5= (stateno=[240,245]) && movehit && random<500
;trigger6 = stateno = 100 && random<300
[State -1, Standing Light Kick]
type = ChangeState
value = 230
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A  
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = (P2BodyDist x = [0, 59]) && (P2Dist y = [-50, 50]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
;Stand Light Kick
;[State -1, SLK]
;type=changestate
;value=230
;trigger1 = AILevel && NumEnemy
;trigger1 = RoundState = 2 && StateType != A
;triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
;trigger1= ctrl && random<300
;trigger2 = stateno = 100 && random<300

[State -1, Standing Far Medium Kick]
type = ChangeState
value = 240
triggerAll = AILevel && NumEnemy && (Abs(P2BodyDist X) > 25)
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 50]) && (P2Dist y = [-50, 50]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (10 * (AILevel ** 2 / 64.0))
trigger1 = AIlevel &&(Stateno=[200,205]) && MoveHit 
trigger2 = AIlevel &&(Stateno=[230,235]) && MoveHit
; 
;;---------------------------------------------------------------------------
;[State -1, SMK]
;type=changestate
;value=240
;trigger1 = AILevel && NumEnemy
;trigger1 = RoundState = 2 && StateType != A
;triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
;trigger1= ctrl && random<33
;trigger2= (stateno=[200,205]) && movehit && random<500
;trigger3= (stateno=[230,235]) && movehit && random<500
;trigger4 = stateno = 100 && random<300
;-----------------------------------------------------------------------------
[State -1, Standing Far Heavy Kick]
type = ChangeState
value = 250
triggerAll = AILevel && NumEnemy && (Abs(P2BodyDist X) > 30)
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 59]) && (P2Dist y = [-50, 50]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 11) && Random < (250 * (AILevel ** 2 / 64.0))
;[State -1, SHK]
;type=changestate
;value=250
;trigger1 = AILevel && NumEnemy
;trigger1 = RoundState = 2 && StateType != A
;triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
;trigger1= ctrl && random<100
;trigger2= (stateno=[200,205]) && movehit && random<75
;trigger3= (stateno=[230,235]) && movehit && random<75
;trigger4= (stateno=[210,215]) && movehit && random<500
;trigger5= (stateno=[240,245]) && movehit && random<500
;trigger6 = stateno = 100 && random<300
;--------------------------------------------------------------------------
;[State -1, Combo1]
;type=changestate
;value=300
;trigger1 = AILevel && NumEnemy
;trigger1 = RoundState = 2 && StateType != A
;triggerall= (P2Stateno!=[120,155]) && (P2Statetype!=L)
;triggerall= (P2BodyDist x=[0,57]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
;trigger1= stateno=250 && prevstateno = 240 && movehit && random<333
;trigger2= stateno=310 && prevstateno = 240 && movehit && random<333
;
;[State -1, Combo2]
;type=changestate
;value=310
;trigger1 = AILevel && NumEnemy
;trigger1 = RoundState = 2 && StateType != A
;triggerAll = !var(16) && (var(15) < 1 || var(20))
;triggerall= (P2Stateno!=[120,155]) && (P2statetype!=L)
;triggerall= (P2BodyDist x=[0,57]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
;trigger1= stateno=240 && prevstateno = 230 && movehit && random<333
;
;[State -1, Combo3]
;type=changestate
;value=320
;trigger1 = AILevel && NumEnemy
;trigger1 = RoundState = 2 && StateType != A
;triggerAll = !var(16) && (var(15) < 1 || var(20))
;triggerall= (P2Stateno!=[120,155]) && (P2statetype!=L)
;triggerall= (P2Bodydist x=[0,57]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
;trigger1= stateno=210 && (prevstateno = [200,205]) && movehit && random<333
;trigger2= stateno=241 && (prevstateno = [200,230]) && movehit && random<333
;trigger3= stateno=251 && movehit && random<333
;
;[State -1, Combo4]
;type=changestate
;value=330
;trigger1 = AILevel && NumEnemy
;trigger1 = RoundState = 2 && StateType != A
;triggerAll = !var(16) && (var(15) < 1 || var(20))
;triggerall= (P2Stateno!=[120,155]) && (P2Statetype!=L)
;triggerall= (P2Bodydist x=[0,57]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
;trigger1= stateno=320 && (prevstateno = 210||prevstateno = 241) && movehit && random<333

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 43]) && (P2Dist y = [-50,50]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (125 * (AILevel ** 2 / 64.0))
;
;[State -1, CLP]
;type=changestate
;value=400
;trigger1 = AILevel && NumEnemy
;trigger1 = RoundState = 2 && StateType != A
;triggerall= (P2Bodydist x=[0,40]) && (P2Bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
;trigger1= ctrl && random<50
;trigger2 = stateno = 100 && time > 2
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 45]) && (P2Dist y = [-50, 50]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -50) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
;------------------------------------------------------------------------
;[State -1, CMP]
;type=changestate
;value=410
;trigger1 = AILevel && NumEnemy
;trigger1 = RoundState = 2 && StateType != A
;triggerall= (P2Bodydist x=[0,45]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
;trigger1= ctrl && random<75
;trigger2= (stateno=[400,405]) && movehit && random<500
;trigger3= (stateno=[430,435]) && movehit && random<500
;trigger4 = stateno = 100 && time > 2
;--------------------------------------------------------------------------
[State -1, CHP]
type=changestate
value=420
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
triggerall= (P2BodyDist x=[0,33]) && (P2BodyDist y=[-50,50]) && (p2statetype!=L)
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
;trigger2= (stateno=[400,405]) && Movehit && random<75
;trigger3= (stateno=[430,435]) && Movehit && random<75
;trigger4= (stateno=[410,415]) && Movehit && random<500
;trigger5= (stateno=[440,445]) && Movehit && random<500
;----------------------------------------------------------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 54]) && (P2Dist y = [-50, 50]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))
;----------------------------------------------------------------------------
;[State -1, CLK]
;type=changestate
;value=430
;trigger1 = AILevel && NumEnemy
;trigger1 = RoundState = 2 && StateType != A
;triggerall= (p2bodydist x=[0,54]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype=S)
;trigger1= ctrl && random<50
;trigger2 = stateno = 100 && time > 2
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 62]) && (P2Dist y = [-12, 0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (10 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))
;-----------------------------------------------------------------------
;[State -1, CMK]
;type=changestate
;value=440
;trigger1 = AILevel && NumEnemy
;trigger1 = RoundState = 2 && StateType != A
;triggerall= (p2bodydist x=[0,62]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype=S)
;trigger1= ctrl && random<75
;trigger2= (stateno=[400,405]) && movehit && random<500
;trigger3= (stateno=[430,435]) && movehit && random<500
;trigger4 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 56]) && (P2Dist y = [-12, 0]) && P2StateType != A && P2StateType != L
triggerAll = (P2StateType = S || (P2StateType = C && P2MoveType = H))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 6) && Random < (250 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) &&  var(15) < 1 
triggerAll = (P2BodyDist x = [0,23]) && (P2Dist y = [-35,45]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) &&  var(15) < 1 
triggerAll = (P2BodyDist x = [0,48]) && (P2Dist y = [-35,45]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,40]) && (P2Dist y = [-35,45]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jumping Light Kick]
type = ChangeState
value = 630  
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) &&  var(15) < 1 
triggerAll = (P2BodyDist x = [0,20]) && (P2Dist y = [-25,55]) && P2StateType != L
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (ifElse(P2Dist x < 0, 250, 50) * (AILevel ** 2 / 64.0))
 
[State -1, Jumping Strong Kick]
type = ChangeState
value = 650
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) &&  var(15) < 1 
triggerAll = (P2BodyDist x = [0,65]) && (P2Dist y = [-40,55]) && P2StateType = A
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))
 
;---------------------------------------------------------------------------
;[State -1, CHK]
;type=changestate
;value=450
;trigger1 = AILevel && NumEnemy
;trigger1 = RoundState = 2 && StateType != A
;triggerall= (p2bodydist x=[0,56]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype=S)
;trigger1= ctrl && random<100
;trigger2= (stateno=[400,405]) && movehit && random<75
;trigger3= (stateno=[430,435]) && movehit && random<75
;trigger4= (stateno=[410,415]) && movehit && random<500
;trigger5= (stateno=[440,445]) && movehit && random<500
;trigger6 = stateno = 100 && time > 2
;--------------------------------------------------------------------------
;[State -1, ALP]
;type=changestate
;value=600
;triggerall= var(7)>=1 && statetype=A && roundstate=2
;triggerall= (p2bodydist x=[0,84]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
;trigger1= ctrl && random<50
;
;[State -1, AMP]
;type=changestate
;value=610
;triggerall= var(7)>=1 && statetype=A && roundstate=2
;triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
;trigger1= ctrl && random<75
;trigger2= (stateno=[600,605]) && movehit && random<500
;trigger3= (stateno=[630,635]) && movehit && random<500
;
;[State -1, AHP]
;type=changestate
;value=620
;triggerall= var(7)>=1 && statetype=A && roundstate=2
;triggerall= (p2bodydist x=[0,110]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
;trigger1= ctrl && random<100
;trigger2= (stateno=[600,605]) && movehit && random<75
;trigger3= (stateno=[630,635]) && movehit && random<75
;trigger4= (stateno=[610,615]) && movehit && random<500
;trigger5= (stateno=[640,645]) && movehit && random<500
;
;[State -1, ALK]
;type=changestate
;value=630
;triggerall= var(7)>=1 && statetype=A && roundstate=2
;triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
;trigger1= ctrl && random<50
;
;
;[State -1, AMK]
;type=changestate
;value=640
;triggerall= var(7)>=1 && statetype=A && roundstate=2
;triggerall= (p2bodydist x=[-50,130]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
;trigger1= ctrl && random<75
;trigger2= (stateno=[600,605]) && movehit && random<500
;trigger3= (stateno=[630,635]) && movehit && random<500
;
;[State -1, AHK]
;type=changestate
;value=650
;triggerall= var(7)>=1 && statetype=A && roundstate=2
;triggerall= (p2bodydist x=[0,130]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
;trigger1= ctrl && random<100
;trigger2= (stateno=[600,605]) && movehit && random<75
;trigger3= (stateno=[630,635]) && movehit && random<75
;trigger4= (stateno=[610,615]) && movehit && random<500
;trigger5= (stateno=[640,645]) && movehit && random<500

