
;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 2

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
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;-| Hold Button |----------------------------------------------------------

[Command]
name = "holdbutton"
command = /a
time = 1

[Command]
name = "holdbutton"
command = /b
time = 1

[Command]
name = "holdbutton"
command = /c
time = 1

[Command]
name = "holdbutton"
command = /x
time = 1

[Command]
name = "holdbutton"
command = /y
time = 1

[Command]
name = "holdbutton"
command = /z
time = 1

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
[Command]
name = "holdp"
command = /x
time = 1
[Command]
name = "holdp"
command = /y
time = 1
[Command]
name = "holdp"
command = /z
time = 1
;----------------------------------------------------------------------------
;============================ ADD COMMANDS FROM HERE ON =====================
;----------------------------------------------------------------------------
;-| System Motions |--------------------------------------------------------
;Throw
[Command]
name = "punchthrow"
command = x+y
time = 1

[Command]
name = "punchthrow"
command = x+z
time = 1

[Command]
name = "punchthrow"
command = y+z
time = 1

;Throw
[Command]
name = "kickthrow"
command = a+b
time = 1

[Command]
name = "kickthrow"
command = b+c
time = 1

[Command]
name = "kickthrow"
command = a+c
time = 1

;V-Skill
[Command]
name = "a+x"
command = a+x
time = 1

;V-Skill
[Command]
name = "y+b"
command = y+b
time = 1

;V-Trigger
[Command]
name = "z+c"
command = z+c
time = 1
;-| Super Motions |--------------------------------------------------------
;----------------------"QCFx2P"------------------------
[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, x
time = 25
[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, y
time = 25
[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, z
time = 25

[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, ~x
time = 25
[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, ~y
time = 25
[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, ~z
time = 25
;----------------------"QCFx2K"------------------------
[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, a
time = 25
[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, b
time = 25
[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, c
time = 25

[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, ~a
time = 25
[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, ~b
time = 25
[Command]
name = "QCFx2K"
command = ~D, DF, F, D, DF, F, ~c
time = 25

;-------------------------------- JET HADOU COMBO ---------------------------
[Command]
name = "QCB2_P"
command = ~D, DB, B, D, DB, B, x
time = 20
[Command]
name = "QCB2_P"
command = ~D, DB, B, D, DB, B, y
time = 20
[Command]
name = "QCB2_P"
command = ~D, DB, B, D, DB, B, z
time = 20

[Command]
name = "QCB2_P"
command = ~D, DB, B, D, DB, B, ~x
time = 20
[Command]
name = "QCB2_P"
command = ~D, DB, B, D, DB, B, ~y
time = 20
[Command]
name = "QCB2_P"
command = ~D, DB, B, D, DB, B, ~z
time = 20
;---------------------------------Air supers------------------------------

;---------------------------------------------------------------------
[Command]
name = "ShinFallingKick"
command = ~D, DF, F, D, DF, F, a
time = 20
[Command]
name =  "ShinFallingKick"
command = ~D, DF, F, D, DF, F, b
time = 20
[Command]
name =  "ShinFallingKick"
command = ~D, DF, F, D, DF, F, c
time = 20
;----------------------Ex-Moves--------------------------------
;--------------------EX Electric Hadouken-------------
[Command]
name = "HCF_pp"
command = ~B, D, F, x+y
[Command]
name = "HCF_pp"
command = ~B, D, F, x+z
[Command]
name = "HCF_pp"
command = ~B, D, F, y+z
;----------------Ex-Hadouken------------------------
[Command]
name = "QCF_pp"
command = ~D, DF, F, x+y
[Command]
name = "QCF_pp"
command = ~D, DF, F, x+z
[Command]
name = "QCF_pp"
command = ~D, DF, F, y+z
;----------------Ex-Gou Hadouken-----------------------
[Command]
name = "QCB_pp"
command = ~D, DB, B, x+y
[Command]
name = "QCB_pp"
command = ~D, DB, B, x+z
[Command]
name = "QCB_pp"
command = ~D, DB, B, y+z
;----------------Ex-Shoryuuken-----------------------
[Command]
name = "DP_pp"
command = ~F, D, DF, x+y
[Command]
name = "DP_pp"
command = ~F, D, DF, x+z
[Command]
name = "DP_pp"
command = ~F, D, DF, y+z
;----------------Ex-Tatzumaki------------------------
[Command]
name = "QCB_kk"
command = ~D, DB, B, a+b
[Command]
name = "QCB_kk"
command = ~D, DB, B, b+c
[Command]
name = "QCB_kk"
command = ~D, DB, B, a+c
;----------------Ex-Joudan------------------------
[Command]
name = "QCF_kk"
command = ~D, DF, F, a+b
[Command]
name = "QCF_kk"
command = ~D, DF, F, b+c
[Command]
name = "QCF_kk"
command = ~D, DF, F, a+c

;-| Special Motions |------------------------------------------------------
;------------------------Dragon Punch Kick-------------------
[Command]
name = "DP_a"
command = ~F, D, DF, a
[Command]
name = "DP_b"
command = ~F, D, DF, b
[Command]
name = "DP_c"
command = ~F, D, DF, c

[Command]
name = "DP_a"
command = ~F, D, DF, ~a
[Command]
name = "DP_b"
command = ~F, D, DF, ~b
[Command]
name = "DP_c"
command = ~F, D, DF, ~c
;------------------------Shoryuuken-------------------
[Command]
name = "DP_x"
command = ~F, D, DF, x
[Command]
name = "DP_y"
command = ~F, D, DF, y
[Command]
name = "DP_z"
command = ~F, D, DF, z

[Command]
name = "DP_x"
command = ~F, D, DF, ~x
[Command]
name = "DP_y"
command = ~F, D, DF, ~y
[Command]
name = "DP_z"
command = ~F, D, DF, ~z
;----------------Ashura Senkuu-----------------------
[Command]
name = "DP_ppp"
command = ~F, D, DF, x+y+z
[Command]
name = "DP_kkk"
command = ~F, D, DF, a+b+c
[Command]
name = "DPB_ppp"
command = ~B, D, DB, x+y+z
[Command]
name = "DPB_kkk"
command = ~B, D, DB, a+b+c
;----------------Ex-Tatzumaki------------------------
[Command]
name = "QCB_kk"
command = ~D, DB, B, a+b
[Command]
name = "QCB_kk"
command = ~D, DB, B, b+c
[Command]
name = "QCB_kk"
command = ~D, DB, B, a+c
;------------------------Hadouken---------------------
[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 20
[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 20
[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 20

[Command]
name = "QCF_x"
command = ~D, DF, F, ~x
time = 20
[Command]
name = "QCF_y"
command = ~D, DF, F, ~y
time = 20
[Command]
name = "QCF_z"
command = ~D, DF, F, ~z
time = 20
;------------------------Shakunetsu Hadoken---------------------
[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 20
[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 20
[Command]
name = "QCB_z"
command = ~D, DB, B, z
time = 20

[Command]
name = "QCB_x"
command = ~D, DB, B, ~x
time = 20
[Command]
name = "QCB_y"
command = ~D, DB, B, ~y
time = 20
[Command]
name = "QCB_z"
command = ~D, DB, B, ~z
time = 20
;------------------------Thrust kick-------------------
[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 20
[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 20
[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 20

[Command]
name = "QCF_a"
command = ~D, DF, F, ~a
time = 20
[Command]
name = "QCF_b"
command = ~D, DF, F, ~b
time = 20
[Command]
name = "QCF_c"
command = ~D, DF, F, ~c
time = 20
;---------------------Hadou combo------------
[Command]
name = "QCB_x"
command = ~D, DB, B, x
[Command]
name = "QCB_y"
command = ~D, DB, B, y
[Command]
name = "QCB_z"
command = ~D, DB, B, z
;------------------Tatzumaki------------------------
[Command]
name = "QCB_a"
command = ~D, DB, B, a
[Command]
name = "QCB_b"
command = ~D, DB, B, b
[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_a"
command = ~D, DB, B, ~a
[Command]
name = "QCB_b"
command = ~D, DB, B, ~b
[Command]
name = "QCB_c"
command = ~D, DB, B, ~c
;-----------------Float tatzumaki-------
[Command]
name = "HCB_a"
command = ~F, D, B, a
[Command]
name = "HCB_b"
command = ~F, D, B, b
[Command]
name = "HCB_c"
command = ~F, D, B, c

[Command]
name = "HCB_a"
command = ~F, D, B, ~a
[Command]
name = "HCB_b"
command = ~F, D, B, ~b
[Command]
name = "HCB_c"
command = ~F, D, B, ~c
;--------------------Fire Hadouken-------------
[Command]
name = "HCF_x"
command = ~B, D, F, x
[Command]
name = "HCF_y"
command = ~B, D, F, y
[Command]
name = "HCF_z"
command = ~B, D, F, z

[Command]
name = "HCF_x"
command = ~B, D, F, ~x
[Command]
name = "HCF_y"
command = ~B, D, F, ~y
[Command]
name = "HCF_z"
command = ~B, D, F, ~z
;--------------------Electric Hadouken-------------
[Command]
name = "HCB_x"
command = ~F, D, B, x
[Command]
name = "HCB_y"
command = ~F, D, B, y
[Command]
name = "HCB_z"
command = ~F, D, B, z

[Command]
name = "HCB_x"
command = ~F, D, B, ~x
[Command]
name = "HCF_y"
command = ~F, D, B, ~y
[Command]
name = "HCF_z"
command = ~F, D, B, ~z
;-------------------------Teleport-----------------------
[Command]
name = "DP_xyz"
command = ~F, D, DF, x+y+z

[Command]
name = "DPB_xyz"
command = ~B, D, DB, x+y+z

[Command]
name = "DP_abc"
command = ~F, D, DF, a+b+c

[Command]
name = "DPB_abc"
command = ~B, D, DB, a+b+c
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
[Command]
name = "recoverf"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "recoverb"     ;Required (do not remove)
command = B, B
time = 20

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "powercharge"
command = x+y+z
time = 1

[Command]
name = "powercharge"
command = a+b+c
time = 1

[Command]
name = "recovery"
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
;-------------------------------------------------
[Command]
name = "chargey"
command = /y
time = 1

[Command]
name = "chargeb"
command = /b
time = 1

;Super Jump
[Command]
name = "superjump"
command = $D, $U

[Command]
name = "superjump"
command = ~D, U

;[Command]
;name = "superjump"
;command = /D, U

;---------------------------------------------------------------------------
;Single direction
[Command]
name = "Up"
command = U
time = 5
[Command]
name = "Forward"
command = F
time = 5
[Command]
name = "Down"
command = D
time = 5
[Command]
name = "Back"
command = B
time = 1
;---------------------------------------------------------------
;relase direction
[Command]
name="rlsfwd"
command=~$F
time=1
[Command]
name="rlsback"
command=~$B
time=1
[Command]
name="rlsup"
command=~$U
time=1
[Command]
name="rlsdown"
command=~$D
time=1
;-----------------------------------------------------------------------
;relase button
[Command]
name="rlsx"
command=~x
time=1
[Command]
name="rlsy"
command=~y
time=1
[Command]
name="rlsz"
command=~z
time=1
[Command]
name="rlsa"
command=~a
time=1
[Command]
name="rlsb"
command=~b
time=1
[Command]
name="rlsc"
command=~c
time=1
;=========================================================================
;=========================================================================
[Statedef -1]

[State -1, Tick Fix]
type = ctrlset
triggerall = !ctrl
trigger1 = (stateno=52 || stateno=105 || stateno=5120) && !animtime
trigger2 = (stateno=[200,499]) && !animtime
trigger3 = (stateno=[4000,4002]) && time > 15
trigger4 = (stateno=5001 || stateno=5011 || stateno=151 || stateno=153) && hitover
value = 1
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !AIlevel
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;-----------------------------------------------------------------------
;Run
[State -1, Run]
type = changestate
triggerall = !AIlevel
value = ifelse(command = "FF", 100, 105)
trigger1 = command = "FF" || command = "BB"
trigger1 = roundstate = 2 && (stateno != [100, 106]) && statetype = S && ctrl
;---------------------------------------------------------------------------
[State -1, Ground Evade Forward]
type = ChangeState
value = 4501
triggerall = !AIlevel
triggerall = stateno != [4500,4502]
triggerall = command = "a+x"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = stateno = 220 && movecontact
;---------------------------------------------------------------------------
[State -1, Ground Evade Back]
type = ChangeState
value = 4502
triggerall = !AIlevel
triggerall = stateno != [4500,4502]
triggerall = command = "a+x"
triggerall = command = "holdback"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = stateno = 220 && movecontact
;---------------------------------------------------------------------------
[State -1, Ground Evade]
type = ChangeState
value = 4500
triggerall = !AIlevel
triggerall = stateno != [4500,4502]
triggerall = command = "a+x"
;triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger1 = var(11) = 0
;---------------------------------------------------------------------------
[State -1, Power Charge]
type = changestate
value = 4300
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = ctrl
triggerall = power < const(data.power) && power < powermax
trigger1 = command = "powercharge";(command = "x" && command = "y" && command = "z")
;trigger2 = (command = "a" && command = "b" && command = "c")
;---------------------------------------------------------------------------
[State -1, EX-Skill]
type = changestate
value = 4150
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "y+b"
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, EX-Trigger]
type = changestate
value = 4200
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "z+c"
trigger1 = power >= 1000
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Zero Counter]
type = changestate
value = 4100
triggerall = !AIlevel
trigger1 = stateno = 150 || stateno = 152
trigger1 = command = "holdback" && command = "z+c"
trigger1 = roundstate = 2 && statetype != A
;===========================================================================
;----------------------------- Ultra Attacks -------------------------------
;===========================================================================
[State -1, Trinity Geyser]
type = ChangeState
value = 3000
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCFx2P"
triggerall = (power >=3000)
trigger1 = ctrl ;&& command = "QCFx2P"
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger4 = (stateno = 1000) && (numhelper(1080))
trigger4 = helper(1080),var(3)
trigger5 = (stateno = 1100 || stateno = 1120) && movecontact
trigger6 = (stateno = 1200 || stateno = 1220) && movecontact
trigger7 = (stateno = 2000) && (ProjContactTime(2090) = [0,15])
trigger8 = (stateno = 2101) && (ProjContactTime(2180) = [0,15])
trigger9 = (stateno = 2200) && movecontact ;&& command = "QCFx2P"
trigger10 = (stateno = 2205) && (ProjContactTime(2290) >= 1) ;&& animelemtime(14) < 5
trigger11 = (stateno = 4200) && movecontact
;---------------------------------------------------------------------------
[State -1, Legendary Hungry Wolf]
type = ChangeState
value = 3100
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCFx2K"
triggerall = (power >=5000)
trigger1 = ctrl ;&& command = "QCFx2P"
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger4 = (stateno = 1000) && (numhelper(1080))
trigger4 = helper(1080),var(3)
trigger5 = (stateno = 1100 || stateno = 1120) && movecontact
trigger6 = (stateno = 1200 || stateno = 1220) && movecontact
;===========================================================================
;----------------------------- Super Attacks -------------------------------
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Power Dunk]
type = changestate
value = 2200
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCF_kk"
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger4 = (stateno = 1000) && (numhelper(1080))
trigger4 = helper(1080),var(3)
trigger5 = (stateno = 1100 || stateno = 1120) && movecontact
trigger6 = (stateno = 1200 || stateno = 1220) && movecontact
trigger7 = (stateno = 2000) && (ProjContactTime(2090) = [0,15])
trigger8 = (stateno = 2101) && (ProjContactTime(2180) = [0,15])
trigger9 = (stateno = 4200) && movecontact
;---------------------------------------------------------------------------
[State -1, Power Geyser]
type = ChangeState
value = 2000
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCF_pp"
triggerall = power >=1000
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger4 = (stateno = 1000) && (numhelper(1080))
trigger4 = helper(1080),var(3)
trigger5 = (stateno = 1100 || stateno = 1120) && movecontact
trigger6 = (stateno = 1200 || stateno = 1220) && movecontact
trigger7 = (stateno = 2101) && (ProjContactTime(2180) = [0,15]) && var(12) < 2
trigger8 = (stateno = 4200) && movecontact
;---------------------------------------------------------------------------
[State -1, Buster Wolf]
type = ChangeState
value = 2100
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCB_pp"
triggerall = power >=1000
trigger1 = ctrl ;&& command = "QCB_pp"
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger4 = (stateno = 1000) && (numhelper(1080))
trigger4 = helper(1080),var(3)
trigger5 = (stateno = 1100 || stateno = 1120) && movecontact
trigger6 = (stateno = 1200 || stateno = 1220) && movecontact
trigger7 = (stateno = 2000) && (ProjContactTime(2090) = [0,15]) && var(12) < 2
trigger8 = (stateno = 4200) && movecontact
;===========================================================================
;-----------------------------Special Attacks-------------------------------
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Air Power Wave]
type = ChangeState
value = 1050
triggerall = !AIlevel
triggerall = Statetype = A
triggerall = command = "QCF_x"||command = "QCF_y" ||command = "QCF_z"
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610|| stateno = 630 || stateno = 640) && movecontact
trigger3 = (stateno = 620 || stateno = 650) && movecontact
trigger4 = (stateno = [1100,1130]) && movecontact && power >= 1000
trigger5 = (stateno = [1200,1230]) && movecontact && power >= 1000
trigger6 = (stateno = [1300,1330]) && movecontact && power >= 1000
trigger7 = (stateno = 1000) && (numhelper(1080)) && power >= 1000
trigger7 = helper(1080),var(3)
;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = changestate
value = 800
triggerall = !AIlevel
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "punchthrow"
;---------------------------------------------------------------------------
;Throw
[State -1, Back Throw]
type = changestate
value = 810
triggerall = !AIlevel
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "kickthrow"
;---------------------------------------------------------------------------
[State -1, Power Wave]
type = ChangeState
value = 1000
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCF_x"||command = "QCF_y" ||command = "QCF_z"
triggerall = numhelper(1080) = 0
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger4 = (stateno = 1100 || stateno = 1120) && movecontact && power >= 1000
trigger5 = (stateno = 1200 || stateno = 1220) && movecontact && power >= 1000
trigger6 = (stateno = 4200) && movecontact ;&& (animelemtime(16) >= 4)
;---------------------------------------------------------------------------
[State -1, Rising Tackle]
type = ChangeState
value = 1200
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCF_a"||command = "QCF_b"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger4 = (stateno = 1000) && (numhelper(1080)) && power >= 1000
trigger4 = helper(1080),var(3)
trigger5 = (stateno = 1100 || stateno = 1120) && movecontact
trigger6 = (stateno = 4200) && movecontact
;---------------------------------------------------------------------------
[State -1, Heavy Rising Tackle]
type = ChangeState
value = 1220
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCF_c"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger4 = (stateno = 1000) && (numhelper(1080)) && power >= 1000
trigger4 = helper(1080),var(3)
trigger5 = (stateno = 1100 || stateno = 1120) && movecontact && power >= 1000
trigger6 = (stateno = 1200 || stateno = 1220) && movecontact && power >= 1000
trigger6 = (stateno = 4200) && movecontact
;---------------------------------------------------------------------------
[State -1, Light Burn Knuckle]
type = ChangeState
value = 1100
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCB_x"||command = "QCB_y"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger4 = (stateno = 1000) && (numhelper(1080)) && power >= 1000
trigger4 = helper(1080),var(3)
trigger5 = (stateno = 1200 || stateno = 1220) && movecontact && power >= 1000
trigger6 = (stateno = 4200) && movecontact
;---------------------------------------------------------------------------
[State -1, Heavy Burn Knuckle]
type = ChangeState
value = 1120
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCB_z"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger4 = (stateno = 1000) && (numhelper(1080)) && power >= 1000
trigger4 = helper(1080),var(3)
trigger5 = (stateno = 1200 || stateno = 1220) && movecontact && power >= 1000
trigger6 = (stateno = 4200) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Burn Knuckle]
type = ChangeState
value = 1130
triggerall = !AIlevel
triggerall = Statetype = A
triggerall = command = "QCB_x"||command = "QCB_y" ||command = "QCB_z"
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610|| stateno = 630 || stateno = 640) && movecontact
trigger3 = (stateno = 620 || stateno = 650) && movecontact
trigger4 = (stateno = [1200,1230]) && movecontact && power >= 1000
trigger5 = (stateno = [1300,1330]) && movecontact && power >= 1000
trigger6 = (stateno = 1050) && movecontact && power >= 1000
trigger7 = (stateno = 1000) && (numhelper(1080)) && power >= 1000
trigger7 = helper(1080),var(3)
;---------------------------------------------------------------------------
[State -1, Light Crack Shoot]
type = ChangeState
value = 1300
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCB_a"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger4 = (stateno = 1000) && (numhelper(1080))
trigger4 = helper(1080),var(3)
trigger5 = (stateno = 1100 || stateno = 1120) && movecontact && power >= 1000
trigger6 = (stateno = 1200 || stateno = 1220) && movecontact && power >= 1000
trigger7 = (stateno = 4200) && movecontact
;---------------------------------------------------------------------------
[State -1, Medium Crack Shoot]
type = ChangeState
value = 1310
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCB_b"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger4 = (stateno = 1000) && (numhelper(1080)) && power >= 1000
trigger4 = helper(1080),var(3)
trigger5 = (stateno = 1100 || stateno = 1120) && movecontact && power >= 1000
trigger6 = (stateno = 1200 || stateno = 1220) && movecontact && power >= 1000
trigger7 = (stateno = 4200) && movecontact
;---------------------------------------------------------------------------
[State -1, Heavy Crack Shoot]
type = ChangeState
value = 1320
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCB_c"
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger4 = (stateno = 1000) && (numhelper(1080)) && power >= 1000
trigger4 = helper(1080),var(3)
trigger5 = (stateno = 1100 || stateno = 1120) && movecontact && power >= 1000
trigger6 = (stateno = 1200 || stateno = 1220) && movecontact && power >= 1000
trigger7 = (stateno = 4200) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Crack Shoot]
type = ChangeState
value = 1330
triggerall = !AIlevel
triggerall = Statetype = A
triggerall = command = "QCB_a"||command = "QCB_b" ||command = "QCB_c"
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610|| stateno = 630 || stateno = 640) && movecontact
trigger3 = (stateno = 620 || stateno = 650) && movecontact
trigger4 = (stateno = [1100,1130]) && movecontact && power >= 1000
trigger5 = (stateno = [1200,1230]) && movecontact && power >= 1000
trigger6 = (stateno = 1050) && movecontact && power >= 1000
trigger7 = (stateno = 1000) && (numhelper(1080)) && power >= 1000
trigger7 = helper(1080),var(3)
;---------------------------------------------------------------------------
[State -1, Ex-Launcher]
type = ChangeState
value = 4400
triggerall = !AIlevel
triggerall = command = "z"
triggerall = command = "holdback"
triggerall = stateno != 4401
triggerall = statetype != A
trigger1 = (ctrl || stateno = 52) && statetype != A
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact
;---------------------------------------------------------------------------
;Overhead
[State -1, Overhead]
type = ChangeState
value = 300
triggerall = !AIlevel
triggerall = command = "holdfwd" && command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !AIlevel
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = stateno = 200 && time > 6
 ;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430) && movecontact
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = !AIlevel
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430|| stateno = 440) && movecontact
;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430) && movecontact
;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 250
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430|| stateno = 440) && movecontact
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = !AIlevel
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = stateno = 400 && time > 6
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430) && movecontact
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = !AIlevel
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430|| stateno = 440) && movecontact
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = stateno = 430 && time > 6
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430) && movecontact
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouch Strong Kick]
type = ChangeState
value = 450
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430|| stateno = 440) && movecontact
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = !AIlevel
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = !AIlevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 630) && movecontact
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610|| stateno = 630 || stateno = 640) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 630) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Heavy Kick]
type = ChangeState
value = 650
triggerall = !AIlevel
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610|| stateno = 630 || stateno = 640) && movecontact

;===========================================================================
;=================================< A.I.>====================================
[State -1, CPU Jump]
type = changestate
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT
;---------------------------------------------------------------------------
[State -1, CPU Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155])
trigger1 = p2bodydist x >= 40
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = ifelse(statetype = A, ((var(13) != [1, 2]) || stateno = 5210), 1)
trigger1 = random < (ifelse((p2stateno = [200, 699]), 100, ifelse((p2stateno = [1000, 2999]), 333, 1000)))
;---------------------------------------------------------------------------
[State -1, CPU Roll Forward]
type = changestate
value = 4501
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = random < 150
trigger1 = (ctrl)
trigger1 = (enemynear, movetype = A) && !(enemynear, hitdefattr = SCA, AT) && (p2bodydist x = [104, 154])
;----------------------------------------------------------------------------
[State -1, CPU Run]
type = changestate
value = 100
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl && (stateno != [100, 106])
trigger1 = (enemynear, movetype != A) && p2bodydist x >= 80 && random = [1,100]
;----------------------------------------------------------------------------
[State -1, CPU Power Geyser1]
type = ChangeState
value = ifelse(power>2000,2200,2000)
triggerall = power >=1000
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = ctrl = 1
trigger1 = p2bodydist x = [31,80]
trigger1 = p2bodydist y = [-40,-2]
;----------------------------------------------------------------------------
[State -1, CPU Power Geyser2]
type = ChangeState
value = ifelse(power>2000,2200,2000)
triggerall = power >=1000
triggerall = AIlevel && numenemy
triggerall = P2statetype != A
triggerall = ctrl
trigger1 = stateno = 210
trigger1 = movehit = 1
trigger2 = P2BodyDist X = [0,65]
trigger2 = P2BodyDist Y = [-90,0]
trigger2 = p2movetype = A
trigger2 = Random > 500
trigger3 = P2BodyDist X = [0,65]
trigger3 = P2BodyDist Y = [-90,0]
trigger3 = p2movetype = A
trigger3 = stateno = 1700
trigger3 = Random > 500
;----------------------------------------------------------------------------
[State -1, CPU Buster Wolf]
type = ChangeState
value = 2100
triggerall = power >=1000
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = ctrl = 1
trigger1 = p2bodydist x = [31,80]
trigger1 = p2bodydist y = [-40,-2]
;----------------------------------------------------------------------------
[State -1, CPU Buster Wolf2]
type = ChangeState
value = 2100
triggerall = power >=1000
triggerall = AIlevel && numenemy
triggerall = P2statetype != A
triggerall = ctrl
trigger1 = stateno = 210
trigger1 = movehit = 1
trigger2 = P2BodyDist X = [0,65]
trigger2 = P2BodyDist Y = [-40,0]
trigger2 = p2movetype = A
trigger2 = Random > 500
trigger3 = P2BodyDist X = [0,65]
trigger3 = P2BodyDist Y = [-40,0]
trigger3 = p2movetype = A
trigger3 = stateno = 1700
trigger3 = Random > 500
;----------------------------------------------------------------------------
[State -1, CPU Power Wave]
type = changestate
value = 1000
triggerall = numhelper(1080) = 0
triggerall = AIlevel && numenemy
triggerall = P2movetype != A && random <= 100
trigger1 = statetype != C
trigger1 = P2BodyDist X > 100 && P2BodyDist Y > -30 && random <= 400 && statetype != A && ctrl
trigger2 = stateno = 220 && moveguarded
trigger3 = stateno = 230 && moveguarded
trigger4 = stateno = 225 && movecontact && P2bodydist X = [21,60]
trigger5 = ctrl && (p2bodydist x = [36,45]) && (p2bodydist y = [-70,-50]) ;&& stateno = 450 && movecontact && p2bodydist X >60
trigger6 = stateno = 1120 && movehit && power >= 1000
;----------------------------------------------------------------------------
[State -1, CPU Rising Tackle]
type=changestate
value=1220
triggerall = AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2statetype!=L || p2stateno=5120) && (p2bodydist x=[0,80]) && (p2dist y=[-120,0])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2statetype=A && random<ifelse(prevstateno=1200, 233, 100)
trigger2= (stateno=[200,250])
trigger2= movehit && (p2bodydist x=[0,12]) && random<200
trigger3= ctrl && enemynear,movetype=A && (p2bodydist x=[0,40]) && random<150
trigger4= stateno=0 && prevstateno=5120 && time<=1
trigger4= ctrl && (p2bodydist x=[-40,40]) && random<200
trigger5= ctrl && (p2bodydist x=[-30,30])
trigger5= (enemynear,stateno=5120) && (enemynear,animtime=[-6,-3]) && random<150
;----------------------------------------------------------------------------
[State -1, CPU Crack Shoot]
type=changestate
value=1310
triggerall = AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2statetype!=L || p2stateno=5120) && (p2bodydist x=[0,80]) && (p2dist y=[-120,0])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2statetype=A && random<ifelse(prevstateno=1200, 233, 100)
trigger2= (stateno=[200,250])
trigger2= movehit && (p2bodydist x=[0,12]) && random<250
trigger3= ctrl && enemynear,movetype=A && (p2bodydist x=[0,40]) && random<200
trigger4= stateno=0 && prevstateno=5120 && time<=1
trigger4= ctrl && (p2bodydist x=[-40,40]) && random<250
trigger5= ctrl && (p2bodydist x=[-30,30])
trigger5= (enemynear,stateno=5120) && (enemynear,animtime=[-6,-3]) && random<200
;----------------------------------------------------------------------------
[State -1, CPU Burn Knuckle]
type=changestate
value=1120
triggerall = AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2statetype!=L || p2stateno=5120) && (p2bodydist x=[0,80]) && (p2dist y=[-120,0])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2statetype=A && random<ifelse(prevstateno=1200, 233, 100)
trigger2= (stateno=[200,250])
trigger2= movehit && (p2bodydist x=[0,12]) && random<250
trigger3= ctrl && enemynear,movetype=A && (p2bodydist x=[0,40]) && random<200
trigger4= stateno=0 && prevstateno=5120 && time<=1
trigger4= ctrl && (p2bodydist x=[-40,40]) && random<250
trigger5= ctrl && (p2bodydist x=[-30,30])
trigger5= (enemynear,stateno=5120) && (enemynear,animtime=[-6,-3]) && random<200
;----------------------------------------------------------------------------
[State -1, CPU Burn Knuckle2]
type = changestate
value = 1100
triggerall = numhelper(1080) = 0
triggerall = AIlevel && numenemy
triggerall = P2movetype != A && random <= 100
trigger1 = statetype != C
trigger1 = P2BodyDist X > 100 && P2BodyDist Y > -30 && random <= 400 && statetype != A && ctrl
trigger2 = stateno = 220 && moveguarded
trigger3 = stateno = 230 && moveguarded
trigger4 = stateno = 225 && movecontact && P2bodydist X = [21,60]
trigger5 = ctrl && (p2bodydist x = [36,45]) && (p2bodydist y = [-70,-50]) ;&& stateno = 450 && movecontact && p2bodydist X >60
;---------------------------------------------------------------------------
;[State -1, CPU Dodge]
;type = changestate
;value = 4500
;trigger1 = AIlevel && numenemy
;trigger1 = roundstate = 2 && statetype != A
;trigger1 = random < 150
;trigger1 = (ctrl)
;trigger1 = (enemynear, movetype = A) && !(enemynear, hitdefattr = SCA, AT) && (p2bodydist x = [0, 60])
;---------------------------------------------------------------------------
;[State -1, CPU Power Charge]
;type = changestate
;value = 4300
;triggerall = AIlevel && numenemy
;triggerall = Statetype != A
;triggerall = ctrl
;triggerall = power < const(data.power) && power < powermax
;trigger1 = !inguarddist && p2bodydist x >= 160 && random < 500
;---------------------------------------------------------------------------
;[State -1, CPU Power Wave]
;type = ChangeState
;value = 1000
;triggerall = AIlevel && numenemy
;triggerall = Statetype != A
;triggerall = numhelper(1080) = 0
;triggerall = p2bodydist x >= 76 && p2dist y >= -120 && enemynear, vel y >= 0
;triggerall = p2statetype != A || enemynear, vel x < 0
;trigger1 = (ctrl || stateno = 52) && random < 100
;---------------------------------------------------------------------------
;[State -1, CPU Light Burn Knuckle]
;type = ChangeState
;value = 1100
;triggerall = AIlevel && numenemy
;triggerall = Statetype != A
;triggerall = (p2bodydist x = [0, 88]) && p2statetype != A && p2statetype != L
;trigger1 = (ctrl || stateno = 52) && random < 200
;---------------------------------------------------------------------------
; Stand Light Punch
;[State -1, CPU Stand Light Punch]
;type = ChangeState
;value = 200
;triggerall = AIlevel && numenemy
;triggerall = statetype != A
;triggerall = (p2bodydist x = [0, 48]) && (p2dist y = [ -88, 0]) && p2statetype != C && p2statetype != L
;triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
;trigger1 = (ctrl) && random < 250
 ;---------------------------------------------------------------------------
; Stand Medium Punch
;[State -1, CPU Stand Medium Punch]
;type = ChangeState
;value = 210
;triggerall = AIlevel && numenemy
;triggerall = statetype != A
;triggerall = (p2bodydist x = [0, 52]) && (p2dist y = [ -77, 0]) && p2statetype != C && p2statetype != L
;triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
;trigger1 = (ctrl) && random < 250
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, CPU Stand Strong Punch]
type = ChangeState
value = 220
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = stateno = 410 && movehit && random = [1,250]
trigger2 = stateno = 440 && movehit && random = [1,250]
;---------------------------------------------------------------------------
;[State -1, CPU Stand Light Kick]
;type = ChangeState
;value = 230
;triggerall = AIlevel && numenemy
;triggerall = statetype != A
;triggerall = (p2bodydist x = [0, 64]) && (p2dist y = [ -48, 0]) && p2statetype != A && p2statetype != L
;trigger1 = (ctrl) && random < 250
;---------------------------------------------------------------------------
;[State -1, CPU Stand Medium Kick]
;type = ChangeState
;value = 240
;triggerall = AIlevel && numenemy
;triggerall = statetype != A
;triggerall = (p2bodydist x = [0, 48]) && (p2dist y = [ -68, 0]) && p2statetype != L
;triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
;trigger1 = (ctrl) && random < 300
;---------------------------------------------------------------------------
;[State -1, CPU Stand Strong Kick]
;type = ChangeState
;value = 250
;triggerall = AIlevel && numenemy
;triggerall = statetype != A
;triggerall = (p2bodydist x = [80, 102]) && (p2dist y = [ -68, 0]) && p2statetype != L
;triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
;trigger1 = (ctrl) && random < 250
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, CPU Crouch Light Punch]
type = ChangeState
value = 400
triggerall = AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall=  p2stateno!=[5000,5999]
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = (ctrl) && random = [1,250]
trigger1 = p2bodydist x <= 30
trigger1 = p2bodydist y = [-5,10]
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, CPU Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = stateno = 400 && movehit && random = [1,250]
;---------------------------------------------------------------------------
; Crouching Strong Punch
;[State -1, CPU Crouch Strong Punch]
;type = ChangeState
;value = 420
;triggerall = AIlevel && numenemy
;triggerall = statetype != A
;trigger1 = stateno = 410 && movehit && random = [1,250]
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, CPU Crouch Light Kick]
type = ChangeState
value = ifelse(random<300,200,430)
triggerall = AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall=  p2stateno!=[5000,5999]
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = (ctrl) && random = [251,750]
trigger1 = p2bodydist x <= 30
trigger1 = p2bodydist y = [-5,10]
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, CPU Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = stateno = 430 && movehit && random = [251,500]
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, CPU Crouch Strong Kick]
type = ChangeState
value = 450
triggerall = AIlevel && numenemy
triggerall = statetype != A
trigger1 = stateno = 440 && movehit && random = [251,500]
ignorehitpause = 1

