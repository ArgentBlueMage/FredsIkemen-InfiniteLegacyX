;-| Super Motions |--------------------------------------------------------
[Command]
name = "Wind StrikeA"
command = ~D,DF,F,D,DF,F,a
time = 25

[Command]
name = "Wind StrikeB"
command = ~D,DF,F,D,DF,F,b
time = 25

[Command]
name = "Buddah StrikeX"
command = ~D,DF,F,D,DF,F,x
time = 25

[Command]
name = "Buddah StrikeY"
command = ~D,DF,F,D,DF,F,y
time = 25

[Command]
name = "ShadowMove1"
command = ~D,DF,F,a+y
time = 15

[Command]
name = "ShadowMove2"
command = ~D,DF,F,b+y
time = 15

[Command]
name = "ShadowMove3"
command = ~D,DB,B,a+y
time = 15

[Command]
name = "ShadowMove4"
command = ~D,DB,B,b+y
time = 15
;-| Special Motions |------------------------------------------------------
[Command]
name = "Ascending Dragon"
command = ~F,D,DF, a

[Command]
name = "Ascending Dragon2"
command = ~F,D,DF, b

[Command]
name = "Hard Punch"
command = ~D,DF,F, x

[Command]
name = "Hard Punch 2"
command = ~D,DF,F, y

[Command]
name = "Straight Kick"
command = ~D,DF,F, a

[Command]
name = "Straight Kick 2"
command = ~D,DF,F, b

[Command]
name = "Zen Kick"
command = ~B,D,DB,B, a

[Command]
name = "Zen Kick2"
command = ~B,D,DB,B, b

[Command]
name = "Consequence Kick"
command = ~D,DB,B, a

[Command]
name = "Consequence Kick"
command = ~D,DB,B, a

[Command]
name = "Consequence Kick2"
command = ~D,DB,B, b

[Command]
name = "Shadowless Kick"
command = ~D,DF,F, a

[Command]
name = "Shadowless Kick2"
command = ~D,DF,F, b

[Command]
name = "Teleport Attack"
command = ~D, DF, F, x+a
time = 20

; Counter Punch
[Command]
name = "counter_p"
command = x+b

; Counter Kick
[Command]
name = "counter_k"
command = a+y

; Counter Kick
[Command]
name = "change1"
command = ~D,DB,B, y

[Command]
name = "Down"
command = $U,y
time = 10

[Command]
name = "Down"
command = $D,b
time = 10

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
name = "DF";
command = $D, $F 

[Command]
name = "DB";
command = $D, $B 
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
;---------------------------------------------------------------------------
;Wind Strike
[State -1, Wind Strike]
type = ChangeState
value = 7000
triggerall = command = "Wind StrikeA"
triggerall = power>=1000
triggerall = statetype != A
trigger1 = ctrl
;----------------------------------------------------------------------------
;Wind Strike
[State -1, Wind Strike]
type = ChangeState
value = 7000
triggerall = command = "Wind StrikeB"
triggerall = power>=1000
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Buddah Strike
[State -1, Buddah Strike]
type = ChangeState
value = 8000
triggerall = command = "Buddah StrikeX"
triggerall = power>=1000
triggerall = statetype != A
trigger1 = ctrl
;----------------------------------------------------------------------------
;Buddah Strike
[State -1, Buddah Strike]
type = ChangeState
value = 8000
triggerall = command = "Buddah StrikeY"
triggerall = power>=1000
triggerall = statetype != A
trigger1 = ctrl
;----------------------------------------------------------------------------
;Shadow Move
[State -1, Shadow Move]
type = ChangeState
value = 9000
triggerall = command = "ShadowMove1"
triggerall = power>=1000
triggerall = statetype != A
triggerall = numhelper(10000) = 0
triggerall = numhelper(10001) = 0
triggerall = numhelper(10002) = 0
triggerall = numhelper(10004) = 0
trigger1 = ctrl
;----------------------------------------------------------------------------
;Shadow Move
[State -1, Shadow Move]
type = ChangeState
value = 9000
triggerall = command = "ShadowMove2"
triggerall = power>=1000
triggerall = statetype != A
triggerall = numhelper(10000) = 0
triggerall = numhelper(10001) = 0
triggerall = numhelper(10002) = 0
triggerall = numhelper(10004) = 0
trigger1 = ctrl
;----------------------------------------------------------------------------
;Shadow Move
[State -1, Shadow Move]
type = ChangeState
value = 9001
triggerall = command = "ShadowMove3"
triggerall = power>=1000
triggerall = statetype != A
triggerall = numhelper(10002) = 0
triggerall = numhelper(10004) = 0
triggerall = numhelper(10000) = 0
triggerall = numhelper(10001) = 0
trigger1 = ctrl
;----------------------------------------------------------------------------
;Shadow Move
[State -1, Shadow Move]
type = ChangeState
value = 9001
triggerall = command = "ShadowMove4"
triggerall = power>=1000
triggerall = statetype != A
triggerall = numhelper(10002) = 0
triggerall = numhelper(10004) = 0
triggerall = numhelper(10000) = 0
triggerall = numhelper(10001) = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
;Teleport Attack
[State -1, Teleport Attack]
type = ChangeState
value = 2500
triggerall = command = "Teleport Attack"
triggerall = power >= 1000
trigger1 = StateType != A && Ctrl = 1
trigger2 = movecontact && stateno = 210
trigger3 = movecontact && stateno = 215
trigger4 = movecontact && stateno = 220
trigger5 = movecontact && stateno = 240
trigger6 = movecontact && stateno = 245
trigger7 = movecontact && stateno = 400
trigger8 = movecontact && stateno = 410
trigger9 = movecontact && stateno = 440
trigger10 = stateno = 52 && Animelemtime(1) 
;---------------------------------------------------------------------------
;Ascending Dragon
[State -1, Ascending Dragon]
type = ChangeState
value = 3000
triggerall = command = "Ascending Dragon"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Ascending Dragon
[State -1, Ascending Dragon]
type = ChangeState
value = 3100
triggerall = command = "Ascending Dragon2"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Hard Punch
[State -1, Hard Punch]
type = ChangeState
value = 1000
triggerall = command = "Hard Punch"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Hard Punch
[State -1, Hard Punch]
type = ChangeState
value = 1010
triggerall = command = "Hard Punch 2"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Straight Kick
[State -1, Straight Kick]
type = ChangeState
value = 1100
triggerall = command = "Straight Kick"
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Straight Kick
[State -1, Straight Kick]
type = ChangeState
value = 1110
triggerall = command = "Straight Kick 2"
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Zen Kick
[State -1, Zen Kick]
type = ChangeState
value = 3500
triggerall = command = "Zen Kick"
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Zen Kick
[State -1, Zen Kick]
type = ChangeState
value = 3600
triggerall = command = "Zen Kick2"
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Consequence Kick
[State -1, Consequence Kick]
type = ChangeState
value = 2000
triggerall = command = "Consequence Kick"
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Consequence Kick
[State -1, Consequence Kick]
type = ChangeState
value = 2100
triggerall = command = "Consequence Kick2"
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Shadowless Kick
[State -1, Shadowless Kick]
type = ChangeState
value = 4100
triggerall = command = "Shadowless Kick"
triggerall = StateType = A
triggerall = MoveType != H
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Shadowless Kick
[State -1, Shadowless Kick]
type = ChangeState
value = 4200
triggerall = command = "Shadowless Kick2"
triggerall = StateType = A
triggerall = MoveType != H
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; Wake Up
[State -1, Wake Up]
type = ChangeState
value = 2800
triggerall = Command = "a" && Command = "y"
triggerall = Power >= 1000 && StateType != A
trigger1 = (stateno = 150 || stateno = 152)
;----------------------------------------------------------------------------
; Suddenly Attack
[State -1, Suddenly Attack]
type = ChangeState
value = 2200
triggerall = Command = "holddown" && Command = "x" && Command = "a"
trigger1 = StateType != A && Ctrl = 1
;----------------------------------------------------------------------------
; Back Escape && Suddenly Attack
[State -1, Back Escape && Suddenly Attack]
type = ChangeState
value = 2300
triggerall = Command != "holddown"
triggerall = Command = "holdback" && Command = "x" && Command = "a"
trigger1 = StateType != A && StateType != C && Ctrl = 1
;----------------------------------------------------------------------------
; Down Attack
[State -1, Down Attack]
type = ChangeState
value = 2600
triggerall = Command = "Down"
triggerall = p2statetype = L
trigger1 = StateType != A && Ctrl = 1
trigger2 = stateno = 40
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------------------------------------------------
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
value = 800
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command = "counter_p"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 840
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command = "counter_k"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 870
triggerall = command = "change1"
trigger1 = statetype = S
trigger1 = ctrl
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
;-ｧち強パンチ
[State -1, Elbow Smash]
type = ChangeState
value = 215
triggerall = command = "y" && command = "holdfwd" && command != "holddown"
trigger1 = StateType = S && ctrl
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Back Weak Kick
;-ｧち強パンチ
[State -1, Back Weak Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Punch (neutral)
[State -1, Jump Light Punch (neutral)]
type = ChangeState
value = 600
triggerall = vel x = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 605
triggerall = vel x != 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 2300 && animelemtime(10) > 0
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = vel x = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 2300 && animelemtime(10) > 0
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 615
triggerall = vel x != 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 2300 && animelemtime(10) > 0
;---------------------------------------------------------------------------
;Jump Light Kick (neutral)
[State -1, Jump Light Kick (neutral)]
type = ChangeState
value = 630
triggerall = vel x = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 635
triggerall = vel x != 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 2300 && animelemtime(10) > 0
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 2300 && animelemtime(10) > 0
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 645
triggerall = command = "b"
triggerall = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 2300 && animelemtime(10) > 0
