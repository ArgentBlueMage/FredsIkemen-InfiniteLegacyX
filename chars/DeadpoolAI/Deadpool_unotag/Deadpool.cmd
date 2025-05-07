
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]

command.time = 15


command.buffer.time = 1



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



[Command]
name = "holdfwd"
command=/$F
time=1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time=1

[Command]
name = "holddown"
command = /$D
time = 1


[Command]
name = "holddownback"
command = /$DB
time = 1
[Command]
name = "holdback"
command = /$B
time = 1
[Command]
name = "holdupback"
command = /$UB
time = 1
[Command]
name = "holdup"
command = /$U
time = 1
[Command]
name = "holdupfwd"
command = /$UF
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
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "dfwd"
command = DF
time = 1

[Command]
name = "dback"
command = DB
time = 1

[Command]
name = "ufwd"
command = UF
time = 1

[Command]
name = "uback"
command = UB
time = 1





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





[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1



[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10





[Command]
name = "recovery"
command = /x
time = 1

[Command]
name = "recovery"
command = /y
time = 1

[Command]
name = "recovery"
command = /z
time = 1







[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1


[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1


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


[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "a+c"
command = a+c
time = 1

[Command]
name = "b+c"
command = b+c
time = 1





[Command]
name = "highjump"
command = $D, $U
time = 15
buffer.time = 3

[Command]
name = "DU"
command = ~$D, U
time = 12
buffer.time = 3

[Command]
name = "DU"
command = DB, UF
time = 18
buffer.time = 3

[Command]
name = "DU"
command = DF, UB
time = 18
buffer.time = 3

[Command]
name = "DU"
command = ~$D, UF
time = 12
buffer.time = 3
[Command]
name = "DU"
command = ~$D, UB
time = 12
buffer.time = 3



;   --- Uno Tag System [Type-R] Command definition ---

[Command]
name = "aHsoNn"
command = ~D, D, D, s
Time = 25

[Command]
name = "sheoun"
command = ~D, DF, F, z+c
Time = 25

[Command]
name = "palit"
command = z+c
Time = 2

[Command]
name = "turtleuno"
command = s
Time = 2


[Statedef -1]


[State -1, Partner Assist]
type = VarSet
sysvar(4) = 10
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 60 && Time > 0
triggerall = teammode = Simul
triggerall = StateNo != [3000,1251199]
triggerall = hitdefattr != SCA, HA, HP, HT
triggerAll = StateNo != [130,152]
triggerall = !(StateNo = [5000,5500])
triggerall = stateno != [1000,1200]
triggerall = stateno != 11000
trigger1 = command = "turtleuno"
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = !ctrl && Movetype = A
trigger2 = Random < (((2 * ifelse(MoveContact, ifelse(MoveHit, 2, 3),1)) + (UniqHitCount * 2)) *(AILevel**2/64.0))
trigger3 = AILevel >  0
trigger3 = StateNo = [190,199]
trigger3 = AnimElemNo(0) = 2
ignorehitpause = 1

[State -1, Delayed Hyper]
type = ChangeState
value = 1251127
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Partner, life > 0
triggerall = power >= 1000
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = StateNo = 3000 || stateno = 3100
trigger1 = command = "sheoun"
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = NumTarget && MoveContact
trigger2 = Random < (10*(AILevel**2/64.0) + (Uniqhitcount*((Life < Partner,Life)*2)))
trigger2 = Partner, Time > 35
trigger3 = AILevel >  0
trigger3 = Partner, Time > 30 && Time > 25
trigger3 = HitCount >= 6
trigger3 = Random < (2 * Uniqhitcount * ifelse(hitcount > 9, 2, 1))
ignorehitpause = 1

[State -1, Team Hyper Attack]
type = ChangeState
value = 1251125
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = Partner, life > 0
triggerall = power >= 3000
triggerall = RoundState = 2
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 9		
triggerall= (StateType != A)
trigger1 = command = "sheoun"
trigger1 = (Ctrl = 1)
trigger1 = AILevel <=  0
trigger2 = command = "sheoun"
trigger2 = Anim = [200,1000]
trigger2 = AILevel <=  0
trigger3 = AILevel > 0 && ctrl
trigger3 = Random < (10 + ((Life < Lifemax/6)*3))
trigger3 = NumEnemy && enemy, pos x = [0,200]
trigger4 = AILevel >  0
trigger4 = Anim = [200,1000]
trigger4 = movetype = A
trigger4 = hitdefattr = SC, NA
trigger4 = MoveContact
trigger4 = Random < (11 + ((MoveHit)*5) + ((Life < Lifemax/6)*5))
trigger5 = stateno = [1000,1200]
trigger5 = command = "sheoun"
ignorehitpause = 1

[State -1, Change Attack]
type = ChangeState
value = 1251126
triggerall = command != "sheoun"
triggerall = NumPartner
triggerall = (sysvar(4) = 1 && power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),250,500)) || (sysvar(4) = 15 && power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),500,1000))
triggerall = Partner, life > 0
triggerall = !MoveReversed
triggerall = (Partner, StateNo = 1251112 || Partner, StateNo = 1251114)  && Time > 1
triggerall = StateNo = [200,2000]
triggerall = StateNo != [1251102,1251105]
triggerall = NumTarget > 0
triggerall = Target, pos Y > -160
triggerall = (Target, StateNo != [5110,5955])
triggerall = Hitdefattr != SCA, NT && ((Target, Statetype = A || (Hitdefattr != A, NA && Target, Statetype != A)) && ((!Target, HitOver || EnemyNear, StateNo = [5000,5900]) && (MoveContact || ProjContactTime(0) < 8)))
trigger1 = command = "palit"
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = UniqHitCount >= 2
trigger2 = Random < (((ifelse(sysvar(4)=15,25,50)*(AILevel**2/64.0)) + ((hitdefattr = SCA, SA, HA)*15) + ifelse(lifemax/life > 15, 15, lifemax/life)))
trigger2 = Partner, Life > Lifemax/10 || Life <= Partner, Life
trigger2 = Partner, Time > 25
trigger3 = AILevel >  0
trigger3 = Partner, Time > 27
trigger3 = Random < (25*(2*(Life = (Lifemax/4) && Life < Partner, Life)) *(AILevel**2/64.0))
trigger3 = MoveContact
ignorehitpause = 1

[State -1, TagIn]
type = ChangeState
value = 1251110
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner && NumEnemy
triggerall = RoundState = 2 
triggerall = Partner, life > 0
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 40	
triggerall = (MoveType != A && StateType != A) && (Ctrl = 1) || StateNo = 0
trigger1 = command = "palit"
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = Random < (ifelse((LifeMax/Life > 120), 120, LifeMax/Life)+((EnemyNear,statetype=L)*25))
trigger2 = Life < Partner, Life && Partner, Time > 1 * TicksPerSecond
trigger2 = EnemyNear, movetype != A
trigger3 = AILevel >  0
trigger3 = Life < Partner, Life && Partner, Time > 1 * TicksPerSecond && Life < LifeMax * (LifeMax*0.55)
trigger3 = Random < ((ifelse(LifeMax/Life > 10, 10, LifeMax/Life) + (10+ifelse((EnemyNear, StateNo > 5000),25,1))) * ifelse((Life < Partner, Life), 1.45, 0.5))
trigger3 = Partner, Time > 1 * TicksPerSecond
trigger3= EnemyNear, statetype = L || p2bodydist x > 250 && EnemyNear, movetype != A
trigger4 = AILevel >  0
trigger4 = Life < 150 && Life < Partner, Life
trigger4 = EnemyNear, statetype = L || p2bodydist x > 200 && EnemyNear, movetype != A
trigger4 = Random < (125*(AILevel**2/64.0))

[State -1, C_6]
type = CtrlSet
value = 1
triggerall = RoundState = 2 && NumPartner
triggerall = NumTarget
triggerall = Target, StateNo != [200,4999]
triggerall = StateNo != 1251106 && !Ctrl
triggerall = (Partner, StateNo != [1251128,1251129]) && (Partner, PrevStateNo != [1251128,1251129])
trigger1 = command="x"||command="y"||command="z"||command="a"||command="b"||command="c"
trigger1 = sysvar(4) = 7
trigger1 = Movetype = A
trigger1 = MoveContact
trigger1 = hitdefattr = SCA, NA, SA
trigger1 = StateNo != PrevStateNo
trigger1 = Time > 3
trigger2 = PrevStateNo = 1251106
ignorehitpause = 0

; ------ Uno Tag System [Type-R] END LINE -------

;==============================================================================================
;==============================================================================================
;================================<EXPLODsive Buffering System>=================================
;====================================<by JustMorphPointman>====================================
;==============================================================================================
;==============================================================================================

;This is an explod-based buffering system, designed to overcome several different errors and bugs
;related to MUGEN's default method of processing commands, as well as offering creators more control
;over how the commands of their character should work. It is designed to be easy to use, understand,
;and install. For more information, including instructions on how to add this to a character, as
;well as how to customize it and add new commands, please visit http://mugenguild.com/forum/msg.2366951

;==============================================================================================
;========================<QUICK REFERENCE GUIDE TO THE EXPLOD ID #'s>==========================
;==============================================================================================

;BASIC DIRECTIONAL INPUTS (these are primarily used to detect directional releases, but also can
;be used outside of the Buffering system code block to detect when a specific direction is currently
;being input or held down)

;Down: 90000002
;Down-right: 90000003
;Right: 90000006
;Up-right: 90000009
;Up: 90000008
;Up-left: 90000007
;Left: 90000004
;Down-left: 90000001


;BUTTON PRESS
;x: 90000200
;y: 90000210
;z: 90000220
;a: 90000230
;b: 90000240
;c: 90000250
;start: 90000195


;BUTTON RELEASE
;x: 90000205
;y: 90000215
;z: 90000225
;a: 90000235
;b: 90000245
;c: 90000255
;start: 90000196


;SYSTEM MOTIONS
;Down (3 ticks): (D with a 3 tick buffer) 90000012
;Down-right (3 ticks): (DR with a 3 tick buffer) 90000013
;Right (3 ticks): (R with a 3 tick buffer) 90000016
;Up-right (3 ticks): (UR with a 3 tick buffer) 90000019
;Up (3 ticks): (U with a 3 tick buffer) 90000018
;Up-left (3 ticks): (UL with a 3 tick buffer) 90000017
;Left (3 ticks): (L with a 3 tick buffer) 90000014
;Down-left (3 ticks): (DL with a 3 tick buffer) 90000011

;Down (3 ticks + HitPause): (D w/ 3 tick buffer + HitPause) 90000022
;Down-right (3 ticks + HitPause): (DR w/ 3 tick buffer + HitPause)90000023
;Right (3 ticks + HitPause): (R w/ 3 tick buffer + HitPause) 90000026
;Up-right (3 ticks + HitPause): (UR w/ 3 tick buffer + HitPause)90000029
;Up (3 ticks + HitPause): (U w/ 3 tick buffer + HitPause) 90000028
;Up-left (3 ticks + HitPause): (UL w/ 3 tick buffer + HitPause)90000027
;Left (3 ticks + HitPause): (L w/ 3 tick buffer + HitPause) 90000024
;Down-left (3 ticks + HitPause): (DL w/ 3 tick buffer + HitPause)90000021

;R, R: (F, F) 90001016
;L, L: (B, B) 90001064
;D, U: (D, U) 90000408
;U, U: (U, U) 90000518
;D, D: (D, D) 90000562
;R, DR, D (F, DF, D) 90007502
;L, DL, D (B, DB, D) 90007552


;SPECIAL MOTIONS
;D, DR, R: (QCF) 90010006
;D, DL, L: (QCB) 90010104
;R, D, DR: (F, D, DF) 90010203
;L, D, DL: (B, D, DB) 90010301
;L, DL, D, DR, R: (HCF) 90010406
;R, DR, D, DL, L: (HCB) 90010504
;(charge) L, R: ([charge] B, F) 90010606
;(charge) R, L: ([charge] F, B) 90010704
;(charge) D, U: ([charge] D, U) 90010808
;L, D, R, U: (360) 90011008
;L, U, R, D: (360) 90011102
;D, R, U, L: (360) 90011204
;D, L, U, R: (360) 90011306
;R, D, L, U: (360) 90011408
;R, U, L, D: (360) 90011502
;U, R, D, L: (360) 90011604
;U, L, D, R: (360) 90011706
;U, UR, R: (UP-QCF) 90011806
;U, UL, L: (UP-QCB) 90011904
;R, D, L, R: (HCB, F) 90012016
;L, D, R, L: (HCF, B) 90012114
;R, L, R: (F, B, F) 90012216
;L, R, L: (B, F, B) 90012314
;D, DR, R, UR: (QCF, UF) 90012409
;D, DL, L, UL: (QCB, UB) 90012507
;D, D: ([special] D, D) 90012602


;SUPER MOTIONS
;D, DR, R, D, DR, R: (QCFx2) 90030016
;D, DL, L, D, DL, L: (QCBx2) 90030114
;L, DL, D, DR, R, L, DL, D, DR, R: (HCFx2) 90030416
;R, DR, D, DL, L, R, DR, D, DL, L: (HCBx2) 90030514
;(charge) L, R, L, R: ([charge] B, F, B, F) 90030616
;(charge) R, L, R, L: ([charge] F, B, F, B) 90030714
;(charge) DL, DR, DL, UR: ([charge] DB, DF, DB, UF) 90030809
;(charge) DR, DL, DR, UL: ([charge] DF, DB, DF, UB) 90030907
;L, D, R, U, L, D, R, U: (720) 90031018
;L, U, R, D, L, U, R, D: (720) 90031112
;D, R, U, L, D, R, U, L: (720) 90031214
;D, L, U, R, D, L, U, R: (720) 90031316
;R, D, L, U, R, D, L, U: (720) 90031418
;R, U, L, D, R, U, L, D: (720) 90031512
;U, R, D, L, U, R, D, L: (720) 90031614
;U, L, D, R, U, L, D, R: (720) 90031716
;R, L, D, R: (F, HCF) 90032016
;L, R, D, L: (B, HCB) 90032114
;D, DR, R, D, L: (QCF, HCB) 90032204
;D, DL, L, D, R: (QCB, HCF) 90032306
;D, DR, R, DR, L: (QCF, DF, B) 90032404
;D, DL, L, DL, R: (QCB, DB, F) 90032506
;D, D, D: (D, D, D) 90032602


;SUPER MOTIONS (button inputs)
;x, x, F, a, z: (Shun Goku Satsu) 94000220
;x, y, F, b, b: (Midnight Pleasure) 94010241
;y, z, B, b, c: (Black Hayato) 94020250
;x, y, B, y, z: (Eternal Slumber) 94030220
;c, x, D, a, z: (Tour De Magie) 94040220
;z, a, B, x, x: (Otoko Michi) 94050211


;==============================================================================================
;===================================<DIRECTIONAL COMMANDS>=====================================
;==============================================================================================

;==============================================================================================
;These are required for the system to function; they are active whenever the specified direction
;is currently being input, and disappear as soon as they are released (via a series of RemoveExplods
;at the bottom of the Buffering system code block). They are used by the system to detect directional
;releases, but can also be used outside of the Buffering system code block to detect when a specific
;direction is being input or held down.
;==============================================================================================

[State -1, Release Down Detector]
type = Explod
;make sure explod doesn't already exist
triggerAll = !NumExplod(90000002)
;check to make sure Helper exists, and that the entity running this code isn't the helper, and that
;the AI isn't active. Only a human player should be making explods!
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
;If either of these explods exist, then down/up inputs have been reversed (this is usually caused
;by an attack of some sort, such as Thanos's Mind Gem super). We can easily flip left/right commands,
;but for down/up inputs, we must have two sets of triggers. This is the first set, which only activate
;if the explods don't exist, so we can just check the inputs normally.
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
;explod will be created if down is input
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
;no other directions may be input, otherwise it wouldn't be a down input!
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
;These sets of triggers, however, only are used if one of the direction input reversal explods exist.
;We treat "down" inputs as "up", and vice-versa; "down-right" is treated as "up-right", and so on.
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000002
;these explods are only removed via a RemoveExplod, so their RemoveTime is set to -1 (aka infinite)
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Down-Right Detector]
type = Explod
triggerAll = !NumExplod(90000003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000003
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Right Detector]
type = Explod
triggerAll = !NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000006
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up-Right Detector]
type = Explod
triggerAll = !NumExplod(90000009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000009
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up Detector]
type = Explod
triggerAll = !NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000008
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up-Left Detector]
type = Explod
triggerAll = !NumExplod(90000007)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000007
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Left Detector]
type = Explod
triggerAll = !NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000004
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Down-Left Detector]
type = Explod
triggerAll = !NumExplod(90000001)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000001
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1



;==============================================================================================
;==========================================<BUTTONS>===========================================
;==============================================================================================

[State -1, Press x]
type = Explod
;if there already exists a "press x" explod, and the player is in HitPauseTime, then we don't need another!
trigger1 = !HitPauseTime || !NumExplod(90000200)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 90000200
;the removeTime, pauseMoveTime, and superMoveTime all must be the same value. This represents the
;amount of time (in ticks) that this individual input is "active"; in other words, it's the window
;of time the player has to input the next input in sequence (or if it's the final input of a command,
;the amount of time that command will last, if the character cannot currently perform the move in
;question). We use "10" as the default value for most directional inputs, because it's generally the
;standard amount of time for most games
;We use "3" for button inputs, which is what many modern games use, but there's a lot of variance
;there.

;We also include " + ifElse(HitPauseTime, HitPauseTime - 1, 0)" to the RemoveTime/PauseMoveTime/SuperMoveTime
;in order to keep the command alive during hit pause. This goes on all button press commands, as well as
;the final directional input of any system, special, or super command.
;For more information on what the removeTime (and pauseMoveTime, et. al.) represents, see the comments for
;the "Right, Right" command
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press y]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000210)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1998
ID = 90000210
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press z]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000220)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 90000220
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press a]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000230)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a"
anim = 1998
ID = 90000230
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press b]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000240)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b"
anim = 1998
ID = 90000240
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press c]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000250)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c"
anim = 1998
ID = 90000250
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press start]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000195)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "start"
anim = 1998
ID = 90000195
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;These explods are used to detect button releases, much in the same way that the directional
;detectors work. These are required for the system, but it's easier to use MUGEN's standard
;"holda" / "holdx" / etc. for situations where you need to detect a held button input, rather than
;making use of these like you would the release direction detectors.
;==============================================================================================
[State -1, Release x Detector]
type = Explod
triggerAll = !NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x" || Helper(90000005), command = "holdx"
anim = 1998
ID = 90000201
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release y Detector]
type = Explod
triggerAll = !NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y" || Helper(90000005), command = "holdy"
anim = 1998
ID = 90000211
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release z Detector]
type = Explod
triggerAll = !NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z" || Helper(90000005), command = "holdz"
anim = 1998
ID = 90000221
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release a Detector]
type = Explod
triggerAll = !NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a" || Helper(90000005), command = "holda"
anim = 1998
ID = 90000231
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release b Detector]
type = Explod
triggerAll = !NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b" || Helper(90000005), command = "holdb"
anim = 1998
ID = 90000241
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release c Detector]
type = Explod
triggerAll = !NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c" || Helper(90000005), command = "holdc"
anim = 1998
ID = 90000251
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release start Detector]
type = Explod
triggerAll = !NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "start"
anim = 1998
ID = 90000194
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1



;==============================================================================================
;Take note of the RemoveTimes on these: release button inputs don't persist through hitpause!
;==============================================================================================

[State -1, Release x]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000205)
triggerAll = NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "x" && Helper(90000005), command != "holdx"
anim = 1998
ID = 90000205
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release y]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000215)
triggerAll = NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "y" && Helper(90000005), command != "holdy"
anim = 1998
ID = 90000215
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release z]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000225)
triggerAll = NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "z" && Helper(90000005), command != "holdz"
anim = 1998
ID = 90000225
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release a]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000235)
triggerAll = NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "a" && Helper(90000005), command != "holda"
anim = 1998
ID = 90000235
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release b]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000245)
triggerAll = NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "b" && Helper(90000005), command != "holdb"
anim = 1998
ID = 90000245
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release c]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000255)
triggerAll = NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "c" && Helper(90000005), command != "holdc"
anim = 1998
ID = 90000255
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release start]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000196)
triggerAll = NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "start" && Helper(90000005), command != "holdstart"
anim = 1998
ID = 90000196
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;==============================================================================================
;=============================<DIRECTIONAL INPUTS (3 TICK BUFFER)>=============================
;==============================================================================================

;==============================================================================================
;These activate whenever the direction in question is input, and persist for three ticks. Useful
;if you need to use only a single directional input, but also want it to last longer than one tick.
;==============================================================================================

;======================================<DOWN (3 TICKS)>========================================
[State -1, Down (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90000012
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;===================================<DOWN-RIGHT (3 TICKS)>=====================================
[State -1, Down-Right (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90000013
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;======================================<RIGHT (3 TICKS)>=======================================
[State -1, Right (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90000016
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;=====================================<UP-RIGHT (3 TICKS)>=====================================
[State -1, Up-Right (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90000019
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;========================================<UP (3 TICKS)>========================================
[State -1, Up (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "back"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "back"
anim = 1998
ID = 90000018
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;=====================================<UP-LEFT (3 TICKS)>======================================
[State -1, Up-Left (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90000017
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;=======================================<LEFT 3 TICKS>=========================================
[State -1, Left (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90000014
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;====================================<DOWN-LEFT 3 TICKS>=======================================
[State -1, Down-Left (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90000011
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;==============================================================================================
;=====================<DIRECTIONAL INPUTS (3 TICK BUFFER + HITPAUSE TIME)>=====================
;==============================================================================================

;==============================================================================================
;These are almost identical to the explods directly above this, except these will persist through
;a HitPause, and will only activate if the direction in question is being either held or input on
;the same tick that any button is input. These can be used to replicate the command behavior of Capcom
;games for crouching and command normal moves. For more information, please see [INSERT LINK].
;==============================================================================================

;==============================<DOWN (3 TICKS + HITPAUSE TIME)>================================
[State -1, Down (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "down" || Helper(90000005), command = "holddown") && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holdup" && Helper(90000005), command != "holdfwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "up" || Helper(90000005), command = "holdup") && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holddown" && Helper(90000005), command != "holdfwd"
anim = 1998
ID = 90000022
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




;===========================<DOWN-RIGHT (3 TICKS + HITPAUSE TIME)>=============================
[State -1, Down-Right (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "dfwd" || (Helper(90000005), command = "holddown" && Helper(90000005), command = "holdfwd")) && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "ufwd" || (Helper(90000005), command = "holdup" && Helper(90000005), command = "holdfwd")) && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000023
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================<RIGHT (3 TICKS + HITPAUSE TIME)>===============================
[State -1, Right (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd") && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holdup" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000026
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=============================<UP-RIGHT (3 TICKS + HITPAUSE TIME)>=============================
[State -1, Up-Right (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "ufwd" || (Helper(90000005), command = "holdup" && Helper(90000005), command = "holdfwd")) && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "dfwd" || (Helper(90000005), command = "holddown" && Helper(90000005), command = "holdfwd")) && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000029
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;================================<UP (3 TICKS + HITPAUSE TIME)>================================
[State -1, Up (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "up" || Helper(90000005), command = "holdup") && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "back" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holddown" && Helper(90000005), command != "holdback"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "down" || Helper(90000005), command = "holddown") && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "back" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holdup" && Helper(90000005), command != "holdback"
anim = 1998
ID = 90000028
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=============================<UP-LEFT (3 TICKS + HITPAUSE TIME)>==============================
[State -1, Up-Left (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "uback" || (Helper(90000005), command = "holdup" && Helper(90000005), command = "holdback")) && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "dback" || (Helper(90000005), command = "holddown" && Helper(90000005), command = "holdback")) && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000027
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;===============================<LEFT 3 TICKS + HITPAUSE TIME>=================================
[State -1, Left (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = (Helper(90000005), command = "back" || Helper(90000005), command = "holdback") && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holdup" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000024
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;============================<DOWN-LEFT 3 TICKS + HITPAUSE TIME>===============================
[State -1, Down-Left (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "dback" || (Helper(90000005), command = "holddown" && Helper(90000005), command = "holdback")) && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "uback" || (Helper(90000005), command = "holdup" && Helper(90000005), command = "holdback")) && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000021
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;Reminder: because this system is based on absolute directions (left/right) instead of relative
;directions (forward/backward), all commands must have a mirrored command as well (unless they are
;performed solely with up and/or down!) In other words, two different versions of each individual
;command must be defined in this system: one assuming the character is facing the right, and one
;for the left.
;==============================================================================================

;==============================================================================================
;================================<FORWARD, FORWARD/BACK, BACK>=================================
;==============================================================================================

;==============================================================================================
;Dash/run commands in SNK typically have release directions as their first inputs. In other words,
;in most SNK games, you can dash/run by holding forward or back for however long you like, and then
;quickly releasing the stick and returning to neutral, then quickly inputting forward/back again.
;In most Capcom games, this will not work. We have the dash/run commands in this system set up to
;follow Capcom's example.

;Different games have different input windows for dash commands. KOF gives you a 7 tick window between
;each the first and second forward/back commands, and the final input has a buffer time of 3 ticks.
;CPS2 Capcom games (under the normal speed setting) have an input window of 7 ticks for the consecutive
;forward/back commands, and the final input has a buffer time of 2 ticks. In SFIII, both the input
;window and the buffer time is 7 ticks. The default values in this system are 10 for the input window
;and 3 for the buffer time, to match up with the other commands (but feel free to change those values
;to suit your personal preference!)
;==============================================================================================

;=======================================<RIGHT, RIGHT>=========================================
[State -1, R, R: 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001006
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, R: Neutral]
type = Explod
triggerAll = NumExplod(90000006) && NumExplod(90001006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
;make sure no directional input is being performed
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90001005
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

;We remove the neutral explod if any non-right input is detected, or if the 1st right explod does not exist
;in most Capcom games, a dash command will be cancelled mid-input if any direction other than forward/back
;and neutral are input. But SNK games give you more leeway: as long as you have inputting forward/back, and
;have returned the stick to neutral, you can input any other directional command and still get a dash as long
;as you input another forward/back command. If you want to replicate this behavior, simply delete the first trigger
;of this RemoveExplod sctrl (you will still need the second trigger, though).
[State -1, Remove R, R: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000009) || NumExplod(90000008) || NumExplod(90000007) || NumExplod(90000004) || NumExplod(90000001)
trigger2 = !NumExplod(90001006)
ID = 90001005
ignoreHitPause = 1

[State -1, R, R: 2nd Right]
type = Explod
;we check to see if the user has input right recently, and has returned the stick to neutral
triggerAll = NumExplod(90001005) && NumExplod(90001006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001016
;see the button explods above for an explanation of this ifElse statement. This statement only goes on the final
;input of any command, and should not go anywhere else in the command!
;We also are using a non-standard removeTime for this input, as dash commands in most games are only active
;for a short period of time (around 1-3 ticks).
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, R, R: 2nd Right (10 ticks)]
type = Explod
;this one is used for Kung Fu Knee
triggerAll = NumExplod(90001005) && NumExplod(90001006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001026
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;Now for the reversed command:
;==============================================================================================

;=======================================<LEFT, LEFT>=========================================
[State -1, L, L: 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001054
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, L: Neutral]
type = Explod
triggerAll = NumExplod(90000004) && NumExplod(90001054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90001055
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove L, L: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000006) || NumExplod(90000009) || NumExplod(90000008) || NumExplod(90000007) || NumExplod(90000001)
trigger2 = !NumExplod(90001054)
ID = 90001055
ignoreHitPause = 1

[State -1, L, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90001055) && NumExplod(90001054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001064
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, L, L: 2nd Left (10 ticks)]
type = Explod
triggerAll = NumExplod(90001055) && NumExplod(90001054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001074
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================================<DOWN, UP (SUPER JUMP)>====================================
;==============================================================================================

;==============================================================================================
;Super jump commands can be done with any down directional input, followed by any up directional
;==============================================================================================

;=======================================<DOWN, UP>=========================================
[State -1, D, U: Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1998
ID = 90000402
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, U: Up]
type = Explod
triggerAll = NumExplod(90000402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger1 = Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger2 = Helper(90000005), command != "up"
anim = 1998
ID = 90000408
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=====================================<UP, UP/DOWN, DOWN>======================================
;==============================================================================================

;==============================================================================================
;Pretty similar to the Forward, Forward/Back, Back commands, only we don't need to worry about
;the player's facing or anything, since all the inputs are either down or up!

;Also of note is that any up/down direction may be used to activate this command (i.e., a UF, UF
;will still be considered a U, U command).
;==============================================================================================

;=======================================<UP, UP>=========================================
[State -1, U, U: 1st Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger1 = Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger2 = Helper(90000005), command != "up"
anim = 1998
ID = 90000508
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, U, U: Neutral]
type = Explod
triggerAll = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009)) && NumExplod(90000508)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
anim = 1998
ID = 90000505
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove U, U: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000006)
trigger2 = !NumExplod(90000508)
ID = 90000505
ignoreHitPause = 1

[State -1, U, U: 2nd Up]
type = Explod
triggerAll = NumExplod(90000505) && NumExplod(90000508)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger1 = Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger2 = Helper(90000005), command != "up"
anim = 1998
ID = 90000518
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=========================================<DOWN,DOWN>==========================================
[State -1, D, D: 1st Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1998
ID = 90000552
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, D: Neutral]
type = Explod
triggerAll = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003)) && NumExplod(90000552)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000555
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove D, D: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009) || NumExplod(90000006)
trigger2 = !NumExplod(90000552)
ID = 90000555
ignoreHitPause = 1

[State -1, D, D: 2nd Down]
type = Explod
triggerAll = NumExplod(90000555) && NumExplod(90000552)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1998
ID = 90000562
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================================<QUARTER CIRCLE DOWN>======================================
;==============================================================================================

;==============================================================================================
;This is the SFA2 style Zero Counter command. This is the first command in the system that uses
;a release directional input. However, this command works somewhat differently from the way pretty
;much every other command in this system works, so we're gonna avoid getting deep into discussion
;about anything here. Please see the following command (quarter-circle forward/back) for a basic
;look at how most release inputs work in this system.
;==============================================================================================


;================================<RIGHT, DOWN-RIGHT, DOWN>=====================================
[State -1, R, DR, D: Release Right]
type = Explod
;check to see if the Release Right Detector explod exists. If it exists and down is no longer being
;input, that means it was released!
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
;if right isn't currently being input by the user, then right was released!
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
;... but if right is currently being input by the user, AND there's another direction being input,
;then right is still considered to have been released.
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90007506
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D: Down-Right]
type = Explod
;the "Right" explod needs to exist before the next command in sequence is allowed
triggerAll = NumExplod(90007506)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90007503
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D: Down]
type = Explod
triggerAll = NumExplod(90007503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90007502
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<LEFT, DOWN-LEFT, DOWN>======================================
[State -1, L, DL, D: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90007554
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D: Down-Left]
type = Explod
triggerAll = NumExplod(90007554)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90007551
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D: Down]
type = Explod
triggerAll = NumExplod(90007551)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90007552
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===============================<QUARTER CIRCLE FORWARD/BACK>==================================
;==============================================================================================

;==============================================================================================
;The vast majority of all commands in fighting games allow the first input of any command to be
;a release input, so that you're allowed to hold the direction that the command starts with for
;however long you want, then input the rest of the command, and still get the move. This is why
;in MUGEN, people typically write all their character's commands as starting with a release input;
;however, things are a bit more complicated outside of MUGEN (and thus, more complicated in this
;buffer too). In most games, the window of time a player has to input the next command in sequence
;after performing a release input is shorter than the window of time they have to input the next
;command after a press input. For example, in Street Fighter III, if you want to perform a quarter-
;circle forward motion, and you press (or hold) the "down" direction, you will have 10 ticks to
;input "down-forward" and continue the command. But if instead you were to hold the "down" direction
;down for a few seconds before releasing it, you will have only 5 ticks to input "down-forward" to
;continue entering the command.

;The way this is translated to the EXPLODsive Buffering system is this: we have two separate explods
;for the first input of every command that uses a release directional input. One explod is created
;whenever the first input is entered, and has a RemoveTime of 10 (which is the same amount of time
;that most other directional explods use in this system); one other explod is also created whenever
;the direction of the first input is released: this has a RemoveTime of 5, which is generally what
;commercial fighting games use.

;Do note that not every game gives players the same input windows for every single command: for
;example, in Street Fighter Alpha 3 (on normal speed), press directional inputs all have a 10 tick
;input window, but the input window for the release directional input in a quarter-circle motion is
;6, while the input window for the release directional input in a forward, down, down-forward motion
;is only 4! There's a whole bunch of variance here, sometimes in the same game, and so it's best to check
;the source game of the character you're making (if applicable) to try and get an idea of what RemoveTime
;will be best for each of your commands.
;==============================================================================================

;================================<DOWN, DOWN-RIGHT, RIGHT>=====================================

;Since this is the press directional input for the first input, it has a RemoveTime of 10
[State -1, D, DR, R: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

;And since this is the release directional input for the first input, it has a RemoveTime of only 5!
[State -1, D, DR, R: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1998
ID = 90010052
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, D, DR, R: Down-Right]
type = Explod
;Remember, we have to check to see if either the "press down" or "release down" explods exist!
triggerAll = NumExplod(90010002) || NumExplod(90010052)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90010003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010006
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<DOWN, DOWN-LEFT, LEFT>======================================
[State -1, D, DL, L: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010102
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1998
ID = 90010152
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90010102) || NumExplod(90010152)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90010101
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010104
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===========================<DOUBLE QUARTER CIRCLE FORWARD/BACK>===============================
;==============================================================================================

;==============================================================================================
;This command is mostly identical to the QCF/QCB commands, but with different ID's; there are some
;important differences, however. Instead of repeating the entire first QCF/QCB command, we just
;(mostly) use the ones we already defined above!

;We do repeat the forward/backward input from the first QCF/QCB, though. This is because the final
;explod of the QCF/QCB command will persist through hitpause, which is not true for the QCFx2
;command: otherwise, you'd be able to input a QCF during a long hitpause, wait for the hitpause to
;end, and then input another QCF and still get a QCFx2 motion, and that's not how things are supposed
;to work!

;Also, do note that Capcom games use a command shortcut for QCFx2/QCBx2 motions; a D, DF, F, D, DF
;will work just as well as a D, DF, F, D, DF, F motion; if you want to replicate this behavior, all
;you have to do is check to see if either the repsective "DF/DB" or the "F/B" explods exist in the
;triggers for that move's ChangeState.
;==============================================================================================

;===========================<DOUBLE DOWN, DOWN-RIGHT, RIGHT>===============================
;this is almost identical to the D, DR, R: Right explod; the only difference is that it has a
;RemoveTime of 10 (with no additional ifElse statements), because it shouldn't persist through hitpause!
[State -1, D, DR, R, D, DR, R: 1st Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90030006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90030002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90030003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90030003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030016
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1


;===========================<DOUBLE DOWN, DOWN-LEFT, LEFT>===============================
[State -1, D, DL, L, D, DL, L: 1st Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030104
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90030104)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90030102
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90030101
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90030101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030114
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=====<QUARTER CIRCLE FORWARD, HALF CIRCLE BACK/QUARTER CIRCLE BACK, HALF CIRCLE FORWARD>======
;==============================================================================================

;==============================================================================================
;This is a command used mostly by SNK, and it has a few quirks compared to how Capcom approaches
;commands. For half-circle motions, SNK only checks for the cardinal inputs (i.e., the non-diagonal
;directions) to see if the user has successfully complated the move, and gives those cardinal inputs
;an extra-long input window (in KOF '98, for example, it's 16, compared to the 10 tick input window for
;normal commands) to compensate for the loss of the diagonal inputs.

;For the default EXPLODsive Buffering system, however, we have opted to allow diagonal inputs in
;these SNK-style half-circle commands, but to make them optional (because, to be quite honest, ignoring
;diagonal inputs entirely is pretty dumb!). What this ends up looking like is that the command can be
;completed only using cardinal inputs, but any diagonal inputs will still be cheked: any diagonal
;input will keep the command "alive" even if the cardinal input preceeding it has exhausted its input
;window.

;The way that translates to this explod system is that (for half-circle motions) we allow the user
;to skip the diagonal inputs: the "down" explod in a HCF command could be created if the "back"
;explod exists, e.g., instead of requiring the "down-back" explod to exist. However, we must also
;allow the "back" explod to be created if the "down-back" explod exists: this makes it so the diagonal
;inputs aren't just a waste of time; they will keep the command alive even if the previous cardinal
;direction explod has expired, which is exactly the same behavior that KOF has.

;To replicate the same behavior that SNK games use, simply delete the diagonal input explods, and increase
;the RemoveTime on each of the cardinal input explods.

;A final note: as with the QCFx2/QCBx2 commands, we use the parts of the earlier QCF/QCB command block
;instead of just repeating that code.
;==============================================================================================

;===============<DOWN, DOWN-RIGHT, RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>===================
[State -1, D, DR, R, DR, D, DL, L: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032206
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down-Right]
type = Explod
triggerAll = NumExplod(90032206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032203
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down]
type = Explod
triggerAll = NumExplod(90032203) || NumExplod(90032206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032202
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90032202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032201
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90032201) || NumExplod(90032202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032204
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;================<DOWN, DOWN-LEFT, LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>===================
[State -1, D, DL, L, DL, D, DR, R: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032304
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down-Left]
type = Explod
triggerAll = NumExplod(90032304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032301
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down]
type = Explod
triggerAll = NumExplod(90032301) || NumExplod(90032304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032302
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down-Right]
type = Explod
triggerAll = NumExplod(90032302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032303
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90032303) || NumExplod(90032302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032306
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=====<QUARTER CIRCLE FORWARD, DOWN-FORWARD, BACK/QUARTER CIRCLE BACK, DOWN-BACK, FORWARD>=====
;==============================================================================================

;==============================================================================================
;This is very, very similar to the preceding command, but it is a distinct command with its own
;quirks! This is typically used for Terry's Power Geyser super, among a few other moves. What
;makes this different from the QCF, HCB/QCB, HCF command is that although this command is officially
;referred to in move lists as "QCF, DF, B/QCB, DB, F", in KOF games, this command can (usually) skip
;straight from the starting QCF/QCB and proceed directly to the final input of the command (the
;command would here be rendered as "QCF, B"/"QCB, F"). But this can sometimes be weird: in KOF 2002
;this can only be done if that final input in the QCF/QCB part of the command is held for at least
;two ticks (KOF 2002 is the first game in the series where the player only needs to enter an individual
;input for only one frame and still complete a command; previous games required the inputs to be held
;for at least two). In the Fatal Fury series, however, generally this either uses a motion that is
;actually "QCF, DF, B / QCB, DB, F" motion, or sometimes even a QCF, HCB/QCB, HCF motion. Point is,
;there's a ton of variance here!

;As with the previous command, we have opted to modify this for the default EXPLODsive Buffering system,
;in order to keep it relatively simple and tried to change the manner in which the command worked into
;something that made more sense (to us, at least). We have it set up so that this command can skip straight
;from the starting QCF/QCB and proceed directly to the final input of the command (the command would here
;be rendered as "QCF, B"/"QCB, F"). It also can be performed using a QCF, HCB/QCB, HCF motion, with
;the additional quirk that the user can proceed immediately to the final input of the command no matter
;where they are in the half circle motion. So, for example, the user could perform QCB, DB, D, F, and
;still get the move. What this ends up looking like translated to MUGEN code is that, for instance, the
;explod representing QCF, DF, B: DB is allowed to be created if an explod exists representing "D", or "DF",
;or even "F".

;As with the the QCF, HCB / QCB, HCF command, this can be made to accurate to the source game(s)
;by removing some or all of the non-diagonal (and also the "down") explods.
;==============================================================================================

;========================<DOWN, DOWN-RIGHT, RIGHT, DOWN-RIGHT, LEFT>===========================
[State -1, D, DR, R, DR, L: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032406
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Down-Right]
type = Explod
triggerAll = NumExplod(90032406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032403
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Down]
type = Explod
;the Down explod will be created if either (or both) the Right or Down-Right explods exist
triggerAll = NumExplod(90032406) || NumExplod(90032403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032402
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Down-Left]
type = Explod
;the Down-Left explod will be created if the Right, Down-Right, or Down explods exist
triggerAll = NumExplod(90032406) || NumExplod(90032403) || NumExplod(90032402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032401
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Left]
type = Explod
;the Left explod will be created if the Right, Down-Right, Down, or Down-Left explods exist
triggerAll = NumExplod(90032406) || NumExplod(90032403) || NumExplod(90032402) || NumExplod(90032401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032404
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=========================<DOWN, DOWN-LEFT, LEFT, DOWN-LEFT, RIGHT>============================
[State -1, D, DL, L, DL, R: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032504
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Down-Left]
type = Explod
triggerAll = NumExplod(90032504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032501
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Down]
type = Explod
triggerAll = NumExplod(90032504) || NumExplod(90032501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032502
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Down-Right]
type = Explod
triggerAll = NumExplod(90032504) || NumExplod(90032501) || NumExplod(90032502)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032503
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Right]
type = Explod
triggerAll = NumExplod(90032504) || NumExplod(90032501) || NumExplod(90032502) || NumExplod(90032503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032506
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;============<QUARTER CIRCLE FORWARD, UP-FORWARD/QUARTER CIRCLE BACK, UP-BACK>=================
;==============================================================================================

;==============================================================================================
;Also known as a "Tiger Knee" motion. Works much the same way the double quarter circle motions
;work.
;==============================================================================================

;===========================<DOWN, DOWN-RIGHT, RIGHT, UP-RIGHT>================================
[State -1, D, DR, R, UR: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012406
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, UR: Up-Right]
type = Explod
triggerAll = NumExplod(90012406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90012409
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=============================<DOWN, DOWN-LEFT, LEFT, UP-LEFT>=================================
[State -1, D, DL, L, UL: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012504
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, UL: Up-Left]
type = Explod
triggerAll = NumExplod(90012504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90012507
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;====================<FORWARD, DOWN, DOWN-FORWARD/BACK, DOWN, DOWN-BACK>=======================
;==============================================================================================

;==============================================================================================
;Nothing special here, just the standard dragon punch motion!
;==============================================================================================

;================================<RIGHT, DOWN, DOWN-RIGHT>=====================================
[State -1, R, D, DR: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010206
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, D, DR: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90010256
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, D, DR: Down]
type = Explod
triggerAll = NumExplod(90010206) || NumExplod(90010256)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010202
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, D, DR: Down-Right]
type = Explod
triggerAll = NumExplod(90010202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90010203
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<LEFT, DOWN, DOWN-LEFT>======================================
[State -1, L, D, DL: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010304
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, D, DL: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90010354
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, D, DL: Down]
type = Explod
triggerAll = NumExplod(90010304) || NumExplod(90010354)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010302
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, D, DL: Down-Left]
type = Explod
triggerAll = NumExplod(90010302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90010301
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=================================<HALF CIRCLE FORWARD/BACK>===================================
;==============================================================================================

;==============================================================================================
;As mentioned earlier, SNK games have command shortcuts for half-circle moves, allowing the user
;to only input cardinal directions and still complete the command. We have opted to use Capcom's
;method for the standard half circle comands here, but these can very easily be modified to use
;the SNK method!
;==============================================================================================

;========================<LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>============================
[State -1, L, DL, D, DR, R: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010404
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90010454
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down-Left]
type = Explod
triggerAll = NumExplod(90010404) || NumExplod(90010454)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90010401
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down]
type = Explod
triggerAll = NumExplod(90010401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010402
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down-Right]
type = Explod
triggerAll = NumExplod(90010402) || NumExplod(90010401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90010403
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90010403) || NumExplod(90010402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010406
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;========================<RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>============================
[State -1, R, DR, D, DL, L: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010506
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1


[State -1, R, DR, D, DL, L: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90010556
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down-Right]
type = Explod
triggerAll = NumExplod(90010506) || NumExplod(90010556)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90010503
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down]
type = Explod
triggerAll = NumExplod(90010503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010502
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90010502) || NumExplod(90010503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90010501
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010501) || NumExplod(90010502)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010504
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;==============================<DOUBLE HALF CIRCLE FORWARD/BACK>===============================
;==============================================================================================

;==============================================================================================
;The double half circle motions use the exact same principles that the double quarter circle motions
;used: they're dependent on the standard half circle motions to reduce clutter and unnecessary
;duplication of code.
;==============================================================================================

;=====================<DOUBLE LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>========================
[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 1st Right]
type = Explod
triggerAll = NumExplod(90010403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030406
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Left]
type = Explod
triggerAll = NumExplod(90030406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030404
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030404)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90030401
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90030401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90030402
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90030403
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90030403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030416
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;========================<DOUBLE RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>============================
[State -1, R, DR, D, DL, L, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030504
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Right]
type = Explod
triggerAll = NumExplod(90030504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030506
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030506)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90030503
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90030503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90030502
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030502)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90030501
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90030501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030514
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1





;==============================================================================================
;===========================================<360>==============================================
;==============================================================================================

;==============================================================================================
;Much like with SNK's half circle commands, 360 commands (from both Capcom and SNK) only require
;you to input the cardinal directions. And again like SNK's half-circle commands, however, we have
;opted to make it so that diagonal inputs are still accepted and that they will keep the command "alive".
;There are eight different permutations of the 360 command: there are four different directional input
;that the move can be started in, and the move can be performed in either a clockwise or counter-clockwise
;direction.

;This all means a whole lot of code! If you aren't using either the 360 or 720 commands, it is strongly
;recommended that you delete this huge block of code!
;==============================================================================================

;=================================<360/LEFT, DOWN, RIGHT, UP>==================================
[State -1, 360/L, D, R, U: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011054
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Down-Left]
type = Explod
triggerAll = NumExplod(90011004) || NumExplod(90011054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011001
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Down]
type = Explod
triggerAll = NumExplod(90011004) || NumExplod(90011054) || NumExplod(90011001)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Down-Right]
type = Explod
triggerAll = NumExplod(90011002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Right]
type = Explod
triggerAll = NumExplod(90011003) || NumExplod(90011002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Up-Right]
type = Explod
triggerAll = NumExplod(90011006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011009
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Up]
type = Explod
triggerAll = NumExplod(90011006) || NumExplod(90011009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011008
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<360/LEFT, UP, RIGHT, DOWN>==================================
[State -1, 360/L, U, R, D: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011104
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011154
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Up-Left]
type = Explod
triggerAll = NumExplod(90011104) || NumExplod(90011154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011107
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Up]
type = Explod
triggerAll = NumExplod(90011104) || NumExplod(90011154) || NumExplod(90011107)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011108
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Up-Right]
type = Explod
triggerAll = NumExplod(90011108)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011109
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Right]
type = Explod
triggerAll = NumExplod(90011108) || NumExplod(90011109)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011106
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Down-Right]
type = Explod
triggerAll = NumExplod(90011106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011103
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Down]
type = Explod
triggerAll = NumExplod(90011106) || NumExplod(90011103)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011102
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<360/DOWN, RIGHT, UP, LEFT>==================================
[State -1, 360/D, R, U, L: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011202
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1998
ID = 90011252
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Down-Right]
type = Explod
triggerAll = NumExplod(90011202) || NumExplod(90011252)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011203
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Right]
type = Explod
triggerAll = NumExplod(90011202) || NumExplod(90011252) || NumExplod(90011203)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011206
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Up-Right]
type = Explod
triggerAll = NumExplod(90011206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011209
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Up]
type = Explod
triggerAll = NumExplod(90011206) || NumExplod(90011209)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011208
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Up-Left]
type = Explod
triggerAll = NumExplod(90011208)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011207
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Left]
type = Explod
triggerAll = NumExplod(90011208) || NumExplod(90011207)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011204
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1


;=================================<360/DOWN, LEFT, UP, RIGHT>==================================
[State -1, 360/D, L, U, R: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011302
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1998
ID = 90011352
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Down-Left]
type = Explod
triggerAll = NumExplod(90011302) || NumExplod(90011352)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011301
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Left]
type = Explod
triggerAll = NumExplod(90011302) || NumExplod(90011352) || NumExplod(90011301)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011304
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Up-Left]
type = Explod
triggerAll = NumExplod(90011304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011307
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Up]
type = Explod
triggerAll = NumExplod(90011304) || NumExplod(90011307)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011308
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Up-Right]
type = Explod
triggerAll = NumExplod(90011308)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011309
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Right]
type = Explod
triggerAll = NumExplod(90011308) || NumExplod(90011309)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011306
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<360/RIGHT, DOWN, LEFT, UP>==================================
[State -1, 360/R, D, L, U: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011406
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011456
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Down-Right]
type = Explod
triggerAll = NumExplod(90011406) || NumExplod(90011456)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011403
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Down]
type = Explod
triggerAll = NumExplod(90011406) || NumExplod(90011456) || NumExplod(90011403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011402
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Down-Left]
type = Explod
triggerAll = NumExplod(90011402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011401
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Left]
type = Explod
triggerAll = NumExplod(90011402) || NumExplod(90011401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011404
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Up-Left]
type = Explod
triggerAll = NumExplod(90011404)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011407
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Up]
type = Explod
triggerAll = NumExplod(90011404) || NumExplod(90011407)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011408
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<360/RIGHT, UP, LEFT, DOWN>==================================
[State -1, 360/R, U, L, D: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011506
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011556
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Up-Right]
type = Explod
triggerAll = NumExplod(90011506) || NumExplod(90011556)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011509
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Up]
type = Explod
triggerAll = NumExplod(90011506) || NumExplod(90011556) || NumExplod(90011509)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011508
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Up-Left]
type = Explod
triggerAll = NumExplod(90011508)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011507
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Left]
type = Explod
triggerAll = NumExplod(90011508) || NumExplod(90011507)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011504
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Down-Left]
type = Explod
triggerAll = NumExplod(90011504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011501
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Down]
type = Explod
triggerAll = NumExplod(90011504) || NumExplod(90011501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011502
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<360/UP, RIGHT, DOWN, LEFT>==================================
[State -1, 360/U, R, D, L: Press Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011608
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Release Up]
type = Explod
triggerAll = NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011658
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Up-Right]
type = Explod
triggerAll = NumExplod(90011608) || NumExplod(90011658)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011609
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Right]
type = Explod
triggerAll = NumExplod(90011608) || NumExplod(90011658) || NumExplod(90011609)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011606
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Down-Right]
type = Explod
triggerAll = NumExplod(90011606)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011603
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Down]
type = Explod
triggerAll = NumExplod(90011606) || NumExplod(90011603)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011602
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Down-Left]
type = Explod
triggerAll = NumExplod(90011602)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011601
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Left]
type = Explod
triggerAll = NumExplod(90011602) || NumExplod(90011601)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011604
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<360/UP, LEFT, DOWN, RIGHT>==================================
[State -1, 360/U, L, D, R: Press Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011708
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Release Up]
type = Explod
triggerAll = NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011758
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Up-Left]
type = Explod
triggerAll = NumExplod(90011708) || NumExplod(90011758)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011707
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Left]
type = Explod
triggerAll = NumExplod(90011708) || NumExplod(90011758) || NumExplod(90011707)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011704
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Down-Left]
type = Explod
triggerAll = NumExplod(90011704)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011701
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Down]
type = Explod
triggerAll = NumExplod(90011704) || NumExplod(90011701)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011702
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Down-Right]
type = Explod
triggerAll = NumExplod(90011702)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011703
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Right]
type = Explod
triggerAll = NumExplod(90011702) || NumExplod(90011703)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011706
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

;================================<UP, UP-RIGHT, RIGHT>=====================================

;Since this is the press directional input for the first input, it has a RemoveTime of 10
[State -1, U, UR, R: Press Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011808
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

;And since this is the release directional input for the first input, it has a RemoveTime of only 5!
[State -1, U, UR, R: Release Up]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011852
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, U, UR, R: Up-Right]
type = Explod
;Remember, we have to check to see if either the "press down" or "release down" explods exist!
triggerAll = NumExplod(90011808) || NumExplod(90011852)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011809
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, U, UR, R: Right]
type = Explod
triggerAll = NumExplod(90011809)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011806
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<UP, UP-LEFT, LEFT>======================================
[State -1, U, UL, L: Press Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011908
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, U, UL, L: Release Up]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011952
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, U, UL, L: Up-Left]
type = Explod
triggerAll = NumExplod(90011908) || NumExplod(90011952)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011907
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, U, UL, L: Left]
type = Explod
triggerAll = NumExplod(90011907)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "up"
anim = 1998
ID = 90011904
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

;==============================================================================================
;===========================================<720>==============================================
;==============================================================================================

;==============================================================================================
;This block of code is pretty much identical to the 360 command block, but we only have to code
;one additional rotation, because the first rotation is already covered by the 360 command block
;(much in the same way that the QCFx2/QCBx2 block only needed to code a single quarter-circle motion)
;==============================================================================================

;======================<720/LEFT, DOWN, RIGHT, UP, LEFT, DOWN, RIGHT, UP>======================
[State -1, 720/L, D, R, U, L, D, R, U: 1st Up]
type = Explod
triggerAll = NumExplod(90011006) || NumExplod(90011009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031008
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: Up-Left]
type = Explod
triggerAll = NumExplod(90031008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031007
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Left]
type = Explod
triggerAll = NumExplod(90031008) || NumExplod(90031007)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031001
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Down]
type = Explod
triggerAll = NumExplod(90031001) || NumExplod(90031004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Right]
type = Explod
triggerAll = NumExplod(90031003) || NumExplod(90031002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031009
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Up]
type = Explod
triggerAll = NumExplod(90031006) || NumExplod(90031009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031018
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=====================<720/LEFT, UP, RIGHT, DOWN, LEFT, UP, RIGHT, DOWN>=======================
[State -1, 720/L, U, R, D, L, U, R, D: 1st Down]
type = Explod
triggerAll = NumExplod(90011106) || NumExplod(90011103)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031102
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: Down-Left]
type = Explod
triggerAll = NumExplod(90031102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031101
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Left]
type = Explod
triggerAll = NumExplod(90031102) || NumExplod(90031101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031104
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031104)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031107
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Up]
type = Explod
triggerAll = NumExplod(90031107) || NumExplod(90031104)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031108
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031108)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031109
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Right]
type = Explod
triggerAll = NumExplod(90031108) || NumExplod(90031109)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031106
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031103
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Down]
type = Explod
triggerAll = NumExplod(90031106) || NumExplod(90031103)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031112
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;======================<720/DOWN, RIGHT, UP, LEFT, DOWN, RIGHT, UP, LEFT>======================
[State -1, 720/D, R, U, L, D, R, U, L: 1st Left]
type = Explod
triggerAll = NumExplod(90011208) || NumExplod(90011207)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031204
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: Down-Left]
type = Explod
triggerAll = NumExplod(90031204)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031201
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90031204) || NumExplod(90031201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031202
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031203
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Right]
type = Explod
triggerAll = NumExplod(90031202) || NumExplod(90031203)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031206
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031209
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Up]
type = Explod
triggerAll = NumExplod(90031206) || NumExplod(90031209)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031208
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031208)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031207
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90031208) || NumExplod(90031207)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031214
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<360/DOWN, LEFT, UP, RIGHT>==================================
[State -1, 720/D, L, U, R, D, L, U, R: 1st Right]
type = Explod
triggerAll = NumExplod(90011308) || NumExplod(90011309)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031306
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: Down-Right]
type = Explod
triggerAll = NumExplod(90031306)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031303
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90031306) || NumExplod(90031303)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031302
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031301
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Left]
type = Explod
triggerAll = NumExplod(90031302) || NumExplod(90031301)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031304
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031307
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Up]
type = Explod
triggerAll = NumExplod(90031304) || NumExplod(90031307)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031308
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031308)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031309
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90031308) || NumExplod(90031309)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031316
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;======================<720/RIGHT, DOWN, LEFT, UP, RIGHT, DOWN, LEFT, UP>======================
[State -1, 720/R, D, L, U, R, D, L, U: 1st Up]
type = Explod
triggerAll = NumExplod(90011404) || NumExplod(90011407)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031408
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: Up-Right]
type = Explod
triggerAll = NumExplod(90031408)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031409
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Right]
type = Explod
triggerAll = NumExplod(90031408) || NumExplod(90031409)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031406
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031403
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Down]
type = Explod
triggerAll = NumExplod(90031406) || NumExplod(90031403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031402
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031401
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Left]
type = Explod
triggerAll = NumExplod(90031402) || NumExplod(90031401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031404
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031404)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031407
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Up]
type = Explod
triggerAll = NumExplod(90031404) || NumExplod(90031407)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031418
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;======================<720/RIGHT, UP, LEFT, DOWN, RIGHT, UP, LEFT, DOWN>======================
[State -1, 720/R, U, L, D, R, U, L, D: 1st Down]
type = Explod
triggerAll = NumExplod(90011504) || NumExplod(90011501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031505
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: Down-Right]
type = Explod
triggerAll = NumExplod(90031505)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031503
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Right]
type = Explod
triggerAll = NumExplod(90031505) || NumExplod(90031503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031506
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031506)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031509
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Up]
type = Explod
triggerAll = NumExplod(90031506) || NumExplod(90031509)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031508
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031508)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031507
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Left]
type = Explod
triggerAll = NumExplod(90031508) || NumExplod(90031507)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031504
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031501
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Down]
type = Explod
triggerAll = NumExplod(90031504) || NumExplod(90031501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031502
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;======================<720/UP, RIGHT, DOWN, LEFT, UP, RIGHT, DOWN, LEFT>======================
[State -1, 720/U, R, D, L, U, R, D, L: 1st Left]
type = Explod
triggerAll = NumExplod(90011602) || NumExplod(90011601)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031604
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: Up-Left]
type = Explod
triggerAll = NumExplod(90031604)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031607
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Up]
type = Explod
triggerAll = NumExplod(90031604) || NumExplod(90031607)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031608
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031608)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031609
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Right]
type = Explod
triggerAll = NumExplod(90031608) || NumExplod(90031609)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031606
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031606)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031603
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90031606) || NumExplod(90031603)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031602
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031602)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031601
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90031602) || NumExplod(90031601)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031614
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<720/UP, LEFT, DOWN, RIGHT>==================================
[State -1, 720/U, L, D, R, U, L, D, R: 1st Right]
type = Explod
triggerAll = NumExplod(90011702) || NumExplod(90011703)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031706
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: Up-Right]
type = Explod
triggerAll = NumExplod(90031706)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031709
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Up]
type = Explod
triggerAll = NumExplod(90031706) || NumExplod(90031709)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031708
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031708)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031707
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Left]
type = Explod
triggerAll = NumExplod(90031708) || NumExplod(90031707)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031704
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031704)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031701
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90031704) || NumExplod(90031701)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031702
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031702)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031703
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90031702) || NumExplod(90031703)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031716
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================<HALF CIRCLE FORWARD, BACK/HALF CIRCLE BACK, FORWARD>======================
;==============================================================================================

;==============================================================================================
;This command is used generally by SNK for characters with command throws; much like SNK half-circle
;commands, a player can skip the diagonal inputs and still complete the move.
;==============================================================================================

;====================<RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT, RIGHT>=========================
[State -1, R, DR, D, DL, L, R: Press 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Release 1st Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90012056
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Down-Right]
type = Explod
triggerAll = NumExplod(90012006) || NumExplod(90012056)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90012003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Down]
type = Explod
triggerAll = NumExplod(90012003) || NumExplod(90012006) || NumExplod(90012056)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90012002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Down-Left]
type = Explod
triggerAll = NumExplod(90012002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90012001
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Left]
type = Explod
triggerAll = NumExplod(90012001) || NumExplod(90012002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90012004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012016
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=====================<LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT, LEFT>=========================
[State -1, L, DL, D, DR, R, L: Press 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012104
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Release 1st Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90012154
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Down-Left]
type = Explod
triggerAll = NumExplod(90012104) || NumExplod(90012154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90012101
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Down]
type = Explod
triggerAll = NumExplod(90012101) || NumExplod(90012104) || NumExplod(90012154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90012102
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Down-Right]
type = Explod
triggerAll = NumExplod(90012102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90012103
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Right]
type = Explod
triggerAll = NumExplod(90012103) || NumExplod(90012102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012106
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90012106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012114
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;========================<FORWARD, BACK, FORWARD/BACK, FORWARD, BACK>==========================
;==============================================================================================

;==============================================================================================
;The Zanretsuken motion, used mostly in Art of Fighting characters. Despite looking somewhat similar
;to a dash command, the first forward/back input can be a release motion, and there's no need to return
;the stick to neutral.
;==============================================================================================

;====================================<RIGHT, LEFT, RIGHT>======================================
[State -1, R, L, R: Press 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012206
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, R: Release 1st Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90012256
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, L, R: Left]
type = Explod
triggerAll = NumExplod(90012206) || NumExplod(90012256)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012204
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90012204)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012216
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;====================================<LEFT, RIGHT, LEFT>=======================================
[State -1, L, R, L: Press 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012304
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, L: Release 1st Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90012354
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, R, L: Right]
type = Explod
triggerAll = NumExplod(90012304) || NumExplod(90012354)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012306
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90012306)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012314
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;==================================<(SPECIAL) DOWN, DOWN >=====================================
;==============================================================================================

;==============================================================================================
;This explod is for the special move variant of the D, D motion; the only difference between this
;and the one above is that this has a RemoveTime of 10, like every other special move, since it's
;designed to be used for special moves (as opposed to the earlier D, D command, which was for air
;dashing).
;==============================================================================================

[State -1, (special) D, D: 2nd Down]
type = Explod
triggerAll = NumExplod(90000555) && NumExplod(90000552)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1998
ID = 90012602
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;====================================<DOWN, DOWN, DOWN>========================================
;==============================================================================================

;==============================================================================================
;And this is just extending the principle futher, to a third down input! This is typically used
;as a super command.
;==============================================================================================

[State -1, D, D, D: 2nd Neutral]
type = Explod
triggerAll = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003)) && NumExplod(90012602)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90032605
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, Remove D, D, D: 2nd Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009) || NumExplod(90000006)
trigger2 = !NumExplod(90012602)
ID = 90032605
ignoreHitPause = 1

[State -1, D, D, D: 3rd Down]
type = Explod
triggerAll = NumExplod(90032605) && NumExplod(90012602)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1998
ID = 90032602
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================<FORWARD, HALF CIRCLE FORWARD/BACK, HALF CIRCLE BACK>======================
;==============================================================================================

;==============================================================================================
;A super motion used mostly by SNK; uses the modified SNK half-circle rules defined earlier.
;==============================================================================================

;=====================<RIGHT, LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>========================
[State -1, R, L, DL, D, DR, R: Press 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Release 1st Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90032056
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Left]
type = Explod
triggerAll = NumExplod(90032006) || NumExplod(90032056)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Down-Left]
type = Explod
triggerAll = NumExplod(90032004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032001
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Down]
type = Explod
triggerAll = NumExplod(90032001) || NumExplod(90032004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Down-Right]
type = Explod
triggerAll = NumExplod(90032002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90032003) || NumExplod(90032002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032016
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==================<LEFT, RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>======================
[State -1, L, R, DR, D, DL, L: Press 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032104
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: 1st Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90032154
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: Right]
type = Explod
triggerAll = NumExplod(90032104) || NumExplod(90032154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032106
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: Down-Right]
type = Explod
triggerAll = NumExplod(90032106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032103
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: Down]
type = Explod
triggerAll = NumExplod(90032103) || NumExplod(90032106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032102
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90032102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032101
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90032101) || NumExplod(90032102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032114
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1



;==============================================================================================
;===========================<SHUN GOKU SATSU/x, x, FORWARD, a, z>==============================
;==============================================================================================

;==============================================================================================
;This move to demonstrates how button press commands work: note that we use unique button press explods
;here because we need to keep track of what order the buttons have been pressed in, and because
;unlike the regular button inputs, which only stay active for a fairly brief period of time, the
;button inputs for the Shun Goku Satsu motion stay active for the same period of time that all other
;directional commands do.
;==============================================================================================

;This is the 2nd x input for this move, but it goes above the 1st x input because otherwise, a single
;press of x would activate both explods! Placing it above the 1st means that x must be input twice, each
;on separate ticks.
[State -1, x, x, F, a, z: 2nd x]
type = Explod
triggerAll = NumExplod(94000200)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94000201
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, x, F, a, z: 1st x]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94000200
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1


;This forward input is a little bit tricky and weird. We have it patterned after SFA and other CPS2 games
;here, where it behaves a little differently compared to how most games (including SFA itself) operate
;for moves done in or inputted while in the air (see http://mugenguild.com/forum/msg.2366955 for a discussion
;about how most games operate). In CPS2 games, if you jump over an opponent while inputting this command,
;"forward" won't have flipped directions until you land. This is in contrast to how the move behaves in SFIII
;and elsewhere. Remove the "StateType != A" in the triggers below to have it work like SFIII/most other games.

;An additional item of interest here is that directional inputs in (most) games's command supers accept diagonals
;in place of cardinal directional inputs; i.e., "LP, LP, DF, LK, HP" would still activate an SGS in SFA2. Weirdly
;enough, though diagonals are allowed in SFA2, SFIII, and the Darkstalkers series, SFA3 only allows a cardinal input!
;SNK games also only allow cardinal inputs. We however have opted to follow Capcom's (usual) method and allow diagonals.
[State -1, x, x, F, a, z: Forward]
type = Explod
triggerAll = NumExplod(94000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType != A, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "back"
trigger2 = ifElse(P2dist x < 0 && StateType != A, Facing = 1, Facing = -1)
trigger2 = (Helper(90000005), command = "back" || Helper(90000005), command = "dback" || Helper(90000005), command = "uback") && Helper(90000005), command != "fwd"
anim = 1998
ID = 94000006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, x, F, a, z: a]
type = Explod
triggerAll = NumExplod(94000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a"
anim = 1998
ID = 94000230
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, x, F, a, z: z]
type = Explod
triggerAll = NumExplod(94000230)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 94000220
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;==========================<MIDNIGHT PLEASURE/x, y, FORWARD, b, b>=============================
;==============================================================================================

[State -1, x, y, F, b, b: x]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94010200
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, F, b, b: y]
type = Explod
triggerAll = NumExplod(94010200)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1998
ID = 94010210
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, F, b, b: Forward]
type = Explod
triggerAll = NumExplod(94010210)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType != A, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "back"
trigger2 = ifElse(P2dist x < 0 && StateType != A, Facing = 1, Facing = -1)
trigger2 = (Helper(90000005), command = "back" || Helper(90000005), command = "dback" || Helper(90000005), command = "uback") && Helper(90000005), command != "fwd"
anim = 1998
ID = 94010006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, F, b, b: 2nd b]
type = Explod
triggerAll = NumExplod(94010240)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b"
anim = 1998
ID = 94010241
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1


[State -1, x, y, F, b, b: 1st b]
type = Explod
triggerAll = NumExplod(94010006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b"
anim = 1998
ID = 94010240
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1 



;==============================================================================================
;==========================<BLACK HAYATO/y, z, BACK, b, c>=============================
;==============================================================================================

[State -1, y, z, B, b, c: y]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1998
ID = 94020210
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, y, z, B, b, c: z]
type = Explod
triggerAll = NumExplod(94020210)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 94020220
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, y, z, B, b, c: Back]
type = Explod
triggerAll = NumExplod(94020220)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType != A, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005), command = "back" || Helper(90000005), command = "dback" || Helper(90000005), command = "uback") && Helper(90000005), command != "fwd"
trigger2 = ifElse(P2dist x < 0 && StateType != A, Facing = 1, Facing = -1)
trigger2 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "back"
anim = 1998
ID = 94020004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, y, z, B, b, c: b]
type = Explod
triggerAll = NumExplod(94020004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b"
anim = 1998
ID = 94020240
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, y, z, B, b, c: c]
type = Explod
triggerAll = NumExplod(94020240)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c"
anim = 1998
ID = 94020250
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1



;==============================================================================================
;==========================<ETTERNAL SLUMBER/x, y, Back, y, z >=============================
;==============================================================================================

[State -1, x, y, B, y, z : x]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94030200
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1,x, y, B, y, z : 2nd y]
type = Explod
triggerAll = NumExplod(94030004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1998
ID = 94030211
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, B, y, z : Back]
type = Explod
triggerAll = NumExplod(94030210)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType != A, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005), command = "back" || Helper(90000005), command = "dback" || Helper(90000005), command = "uback") && Helper(90000005), command != "fwd"
trigger2 = ifElse(P2dist x < 0 && StateType != A, Facing = 1, Facing = -1)
trigger2 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "back"
anim = 1998
ID = 94030004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, B, y, z : 1st y]
type = Explod
triggerAll = NumExplod(94030200)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1998
ID = 94030210
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, B, y, z : z]
type = Explod
triggerAll = NumExplod(94030211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 94030220
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1



;==============================================================================================
;==========================<TOUR DE MAGIE/c, x, Down, a, z>=============================
;==============================================================================================

[State -1, c, x, D, a, z: c]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c"
anim = 1998
ID = 94040250
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, c, x, D, a, z: x]
type = Explod
triggerAll = NumExplod(94040250)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94040200
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, c, x, D, a, z: Down]
type = Explod
triggerAll = NumExplod(94040200)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = (Helper(90000005), command = "down" || Helper(90000005), command = "dback" || Helper(90000005), command = "dfwd") && Helper(90000005), command != "up"
anim = 1998
ID = 94040002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, c, x, D, a, z: a]
type = Explod
triggerAll = NumExplod(94040002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a"
anim = 1998
ID = 94040230
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, c, x, D, a, z: z]
type = Explod
triggerAll = NumExplod(94040230)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 94040220
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1



;==============================================================================================
;==========================<OTOKO MICHI/ z, a, B, x, x>=============================
;==============================================================================================

[State -1, z, a, B, x, x: z]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 94050220
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, z, a, B, x, x: a]
type = Explod
triggerAll = NumExplod(94050220)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a"
anim = 1998
ID = 94050230
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, z, a, B, x, x: Back]
type = Explod
triggerAll = NumExplod(94050230)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType != A, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005), command = "back" || Helper(90000005), command = "dback" || Helper(90000005), command = "uback") && Helper(90000005), command != "fwd"
trigger2 = ifElse(P2dist x < 0 && StateType != A, Facing = 1, Facing = -1)
trigger2 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "back"
anim = 1998
ID = 94050004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, z, a, B, x, x: 2nd x]
type = Explod
triggerAll = NumExplod(94050200)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94050211
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, z, a, B, x, x: 1st x]
type = Explod
triggerAll = NumExplod(94050004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94050200
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1



;==============================================================================================
;===============================<REMOVE DIRECTIONAL DETECTORS>=================================
;==============================================================================================

;==============================================================================================
;This block of RemoveExplods gets rid of any active release detector explods; if the direction in
;question isn't currently being input, or if the direction is being input but other directions are
;also being input, then the detector explod is removed, having served its purpose as a detector.
;This must go at the very bottom of the entire EXPLODsive Buffering system code!
;==============================================================================================

[State -1, Remove Down Detector]
type = RemoveExplod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000002
ignoreHitPause = 1

[State -1, Remove Down-Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000003
ignoreHitPause = 1

[State -1, Remove Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000006
ignoreHitPause = 1

[State -1, Remove Up-Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000009
ignoreHitPause = 1

[State -1, Remove Up Detector]
type = RemoveExplod
triggerAll = NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000008
ignoreHitPause = 1

[State -1, Remove Up-Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000007)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000007
ignoreHitPause = 1

[State -1, Remove Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000004
ignoreHitPause = 1

[State -1, Remove Down-Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000001)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000001
ignoreHitPause = 1



;==============================================================================================
;==============================<REMOVE RELEASE BUTTON DETECTORS>===============================
;==============================================================================================

;==============================================================================================
;Same principle here as with the directional release detector explods.
;==============================================================================================

[State -1, Remove x Detector]
type = RemoveExplod
triggerAll = NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "x" && Helper(90000005), command != "holdx"
ID = 90000201
ignoreHitPause = 1

[State -1, Remove y Detector]
type = RemoveExplod
triggerAll = NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "y" && Helper(90000005), command != "holdy"
ID = 90000211
ignoreHitPause = 1

[State -1, Remove z Detector]
type = RemoveExplod
triggerAll = NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "z" && Helper(90000005), command != "holdz"
ID = 90000221
ignoreHitPause = 1

[State -1, Remove a Detector]
type = RemoveExplod
triggerAll = NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "a" && Helper(90000005), command != "holda"
ID = 90000231
ignoreHitPause = 1

[State -1, Remove b Detector]
type = RemoveExplod
triggerAll = NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "b" && Helper(90000005), command != "holdb"
ID = 90000241
ignoreHitPause = 1

[State -1, Remove c Detector]
type = RemoveExplod
triggerAll = NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "c" && Helper(90000005), command != "holdc"
ID = 90000251
ignoreHitPause = 1

[State -1, Remove start Detector]
type = RemoveExplod
triggerAll = NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "start" && Helper(90000005), command != "holdstart"
ID = 90000194
ignoreHitPause = 1


;==============================================================================================
;==========================================<GUARDING>==========================================
;==============================================================================================

;==============================================================================================
;Here, we override the MUGEN's default guard system when the character is airborne, and add our
;own triggers. This will ensure that the player can always block as long as they are holding a
;direction away from the opponent. This block of code also adds "chicken guarding", which is allowing
;the player to air guard by holding not only back, but down-back and up-back.

;It is also recommended that you also override the guard states (120, 130, 131, 132, 140, 150, 151,
;152, 154, 155) with an updated version that uses the EXPLODsive buffering system. A copy of those
;fixed states can be found here: http://network.mugenguild.com/jmorphman/resources/EXPLODsiveBuffering_GuardStates.txt
;==============================================================================================

[State -1, AssertSpecial: NoAirGuard]
type = AssertSpecial
trigger1 = P2dist x < 0 && StateType = A
trigger1 = !AILevel
flag = NoAirGuard
ignoreHitPause = 0

[State -1, Air Blocking]
type = ChangeState
triggerAll = !AILevel
triggerAll = InGuardDist
triggerAll = StateType = A
triggerAll = ctrl
triggerAll = !(StateNo = [120,155])
triggerAll = !NumExplod(90000004) && !NumExplod(90000006) && !NumExplod(90000001) && !NumExplod(90000003) && !NumExplod(90000007) && !NumExplod(90000009)
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
trigger2 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000001)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000003))
trigger3 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000007)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000009))
value = 120

;These three ChangeStates are only in use when the character has landed from a jump after switching
;sides, to get around a MUGEN bug where a character's directions don't switch until a tick has passed,
;after they've landed from a jump and switched sides. Otherwise, MUGEN's default guard behavior works
;well enough!
[State -1, AssertSpecial: No StandGuard and NoCrouchGuard]
type = AssertSpecial
triggerAll = !AILevel
trigger1 = P2dist x < 0 && StateType != A
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger3 = !NumExplod(90000004) && !NumExplod(90000006) && !NumExplod(90000001) && !NumExplod(90000003) && !NumExplod(90000007) && !NumExplod(90000009)
flag = NoStandGuard
flag2 = NoCrouchGuard
ignoreHitPause = 0

[State -1, Stand Blocking]
type = ChangeState
triggerAll = !AILevel
triggerAll = InGuardDist
triggerAll = (P2dist x < 0 && StateType != A) || NumExplod(94646464) || NumExplod(92468246)
triggerAll = StateType = S
triggerAll = ctrl
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
value = 120

[State -1, Crouch Blocking]
type = ChangeState
triggerAll = !AILevel
triggerAll = InGuardDist
triggerAll = (P2dist x < 0 && StateType != A) || NumExplod(94646464) || NumExplod(92468246)
triggerAll = StateType = C
triggerAll = ctrl
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000001)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000003))
value = 120



;==============================================================================================
;==============================================================================================
;=============================<End of EXPLODsive Buffering System>=============================
;==============================================================================================
;==============================================================================================



;  ;]

[State -1, Tick Fix]
type = CtrlSet
triggerall = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = StateNo = 810 && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger5 = (StateNo = [700,715]) && !AnimTime
trigger6 = (StateNo = [6080,6082]) && !AnimTime
value = 1

[State -1, 4th Wall Crisis]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=3300
triggerall=!AILevel && RoundState=2 && StateType != A && power >= 3000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = NumHelper(90000005) 
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90030016))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90030114))
triggerall = ((numexplod(90000200)||numexplod(90000205)) && (numexplod(90000210)||numexplod(90000215))) || ((numexplod(90000220)||numexplod(90000225)) && (numexplod(90000210)||numexplod(90000215))) || ((numexplod(90000200)||numexplod(90000205)) && (numexplod(90000220)||numexplod(90000225)))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2= stateno = [200,450]
trigger3 = stateno = [1000,1600]

[State -1, Cutting Time]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=3100
triggerall=!AILevel && RoundState=2 && StateType != A && power >= 1000
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90030114))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90030016))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
triggerall = !ishelper
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2= stateno = [200,450]
trigger3 = stateno = [1000,1600]

[State -1, Happy Happy Trigger]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=3000
triggerall=!AILevel && RoundState=2 && stateno!= 3000 && StateType != A && power >= 1000
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90030016))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90030114))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
triggerall = !ishelper
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2= stateno = [200,450]
trigger3 = stateno = [1000,1600]

[State -1, Air Happy Happy Trigger]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=3050
triggerall=!AILevel && RoundState=2 && stateno!= 3050 && StateType = A && Pos y<=-15 && power >= 1000
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90030016))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90030114))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
triggerall = !ishelper
trigger1=ctrl
trigger2=var(6)|| var(7)
trigger3=(stateno=[600,650])
trigger4 = stateno = [11000,11050]

[State -1, Shoryuken]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1500
triggerall = stateno != 225
triggerall=!AILevel && RoundState=2 && StateType != A && (command="c")
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2= stateno = [200,450]
trigger2 = movecontact

[State -1, Chimichangas Follow up]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=1150
triggerall=!AILevel && RoundState=2 && StateType != A && command="z"
trigger1= stateno=1100 && movecontact

[State -1, Katana-Rama]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 1100
triggerall=!AILevel && RoundState=2 && StateType != A
triggerall = !ishelper
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90010203))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90010301))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2=stateno = [200,450]
trigger2 = movecontact

[State -1, Teleport]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
;value=Ifelse(command="TeleportEX"&&var(20) <= 60&&power>=500,1350,1300)
value = 1300
triggerall=!AILevel && RoundState=2 && StateType != A
triggerall = !ishelper
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90010301))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90010203))
triggerall =ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102]) || (stateno = [200,450]) || (stateno = [1000,1500])
trigger1 = numexplod(90000200)||numexplod(90000205)
trigger1 = var(10) := 0 || 1
trigger2 = numexplod(90000210)||numexplod(90000215)
trigger2 = var(10) := 1 || 1
trigger3 = numexplod(90000220)||numexplod(90000225)
trigger3 = var(10) := 2 || 1


[State -1, Quick Work]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
;value=Ifelse(command="QuickWorkEX"&&var(20) <= 60&&power>=500,1225,1200)
value = 1200
triggerall=!AILevel && RoundState=2 && StateType != A
triggerall = !ishelper
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90010104))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90010006))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)

trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2= stateno = [200,450]
trigger2 = movecontact

[State -1, Trigger Happy]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
;value=Ifelse(command="TriggerHappyEX"&&var(20) <= 60&&power>=500,1025,1000)
value = 1000
triggerall=!AILevel && RoundState=2 && StateType != A
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
triggerall = !ishelper
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,103])
trigger2= stateno = [200,450]
trigger2 = movecontact

[State -1, Air Trigger Happy]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
;value=Ifelse(command="TriggerHappyEX"&&var(20) <= 60&&power>=500,1075,1050)
value = 1050
triggerall=!AILevel && RoundState=2 && StateType = A && Pos y<=-25 && (var(3) != [1, 2])
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
triggerall = !ishelper
trigger1=ctrl
trigger2=(stateno=[600,650])

[State -1, Zero Counter]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1550
triggerall = NumHelper(90000005)
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90007552))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90007502))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
triggerall = !ishelper
trigger1 = StateNo = [150,153]
trigger1 = !AILevel&&RoundState = 2 && StateType != A
trigger1 = power >= 1000

[State -1, Throw]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 800
trigger1 = (command = "holdfwd" || command = "holdback") && command = "z"
trigger1 = p2dist X < 56 && p2movetype != H
triggerall = !AILevel&&RoundState = 2 && StateType != A
triggerall = ctrl
trigger2 = command = "b"

[State -1, Air Throw]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value =850
trigger1=(command="holdfwd"||command="holdback")&&(command="pp")
trigger1=!AILevel&&RoundState=2 && Statetype=A && Pos Y<=-30
triggerall=ctrl
trigger2 = command = "b"

[State -1, SIdestep/Dodge]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = Ifelse(command="holdfwd",710,Ifelse(command="holdback",715,700))
triggerall = command = "a"
triggerall = !AILevel && RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,103]))

[State -1, Custom Combo]
type = null;ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = Ifelse(StateType = A,905,900)
triggerAll = !AILevel && command = "c+z" && RoundState = 2 && power >= 1000 
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,103])
trigger1 = !var(41)

[State -1, Super Jump]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 123
triggerall= !AILevel && var(55)=2 && roundstate=2 && statetype != A
trigger1 = ctrl && command = "DU"
trigger2 = stateno=420 && movehit && command = "holdup"

[State -1, Wall Jumps]
type = null;ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = Ifelse(command = "holdfwd",60,61)
triggerall = !AIlevel && roundstate = 2 && statetype = A && pos y <= -32 && vel x != 0 && (prevstateno!=[60,61])
triggerall = (command = "holdfwd" && backedgebodydist <= 0||command = "holdback"&&frontedgebodydist <= 0)
trigger1 = ctrl

[State -1, Forward Dash/ Run /Dash Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = Ifelse(command = "BB",105,102)
trigger1 = !AILevel&&Roundstate=2&&statetype = S
trigger1 = command = "FF"||command = "BB"
trigger1 = ctrl

[State -1, Standing Low Punch]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=200
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="x"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=stateno=200&&movecontact

[State -1, Standing High Punch]
type= ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 225
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="y" && command = "holdfwd"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,220])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact

[State -1, Standing Medium Punch]
type= ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=220
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="y"
triggerall = stateno != 220
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact

[State -1, Standing High Punch]
type= ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 250
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="z"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,220])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact

[State -1, Crouching Low Punch]
type=null;ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=400
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="x"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)

[State -1, Crouching Medium Punch]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=410
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command= "holddown"&& command="y"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact

[State -1, Crouching High Punch]
type=null;ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=420
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="z"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact&&var(55)

[State -1, Crouching Low Kick]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=430
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="x"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3= stateno = 430
trigger3 = movecontact

[State -1, Crouching Medium Kick]
type=null;ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=440
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="b"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439]))&&movecontact&&var(55)

[State -1, Crouching High Kick]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=450
triggerall = stateno != 225
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="z"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,249])||(stateno=[400,449]))&&movecontact

[State -1, Jumping Low Punch]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 600
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="x"
trigger1=ctrl
trigger2=var(4)
trigger3 = stateno = 600 & movecontact

[State -1, Jumping Medium Punch]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=610
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="y"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,609])||(stateno=[630,639]))&&movecontact

[State -1, Jumping High Punch]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=620
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="z"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,649]))&&movecontact

[State -1, Jumping High Kick]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=625
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="c"
trigger1=ctrl
trigger2=var(4)
trigger3=(stateno=[600,620])&&movecontact

[State -1, Idle]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 0
triggerall = AIlevel && numenemy&&roundstate = 2 && statetype != A && enemynear, movetype = A && (p2stateno=[5100,5220])
trigger1=ctrl

[State -1, run]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 102
trigger1 = AIlevel && numenemy
trigger1 = statetype = S && roundstate = 2 && ctrl && random < (400 * (AIlevel ** 2 / 64.0))
trigger1 = (stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x > 90

[State -1, dash]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 105
triggerall = AIlevel && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (p2bodydist x = [0, 80]) && backedgebodydist > 80 && (stateno != [100, 105])
trigger1 = enemynear, movetype = A && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT

[state -1,AI Air Guard]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 132
triggerall = AIlevel && numenemy&& roundstate = 2&&InGuardDist
triggerall = ctrl&&statetype = A
trigger1 = enemynear,numproj
trigger2 = enemynear,HitDefAttr = SCA, NA,SA,HA
trigger2 = random <=ifelse(backedgedist<=10,950,800)

[State -1, Guard]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155])
trigger1 = ifelse(statetype = A, (var(9) != 2 || stateno = 5210), 1)
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = random < (ifelse((p2stateno = [200, 699]), 500, ifelse((p2stateno = [1000, 2999]), 750, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 120
triggerall= AILevel && numenemy&& (StateNo!=[120,155]) && !(enemynear,ctrl) && random < (600 * (AIlevel ** 2 / 64.0))
triggerall= Ctrl||stateno = 21
triggerall=enemynear,Movetype=A && !(enemynear,hitdefattr=SCA,AT)
trigger1 = inguarddist

[State -1, Super Jump]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 123
triggerall = AILevel && numenemy && var(55)=2 && statetype != A && roundstate = 2 && (p2bodydist y = [-320,5])
triggerall = stateno != 100 && pos y = 0 && (enemynear,Statetype!=C)
trigger1 = ctrl && enemy,vel y < -1 && (p2bodydist x = [ 10, 70]) && enemynear,movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && enemy,vel y < -1 && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear,movetype = H && (enemynear,stateno=5040)
trigger2 = p2bodydist x <= 50 && random < (150 * (AIlevel ** 2 / 64.0))
trigger3 = ctrl && enemynear,MoveType != H&&P2BodyDist Y < -90&& enemy,vel y <= 0 && random < (350 * (AIlevel ** 2 / 64.0))
trigger4 = stateno=420 && MoveHit && random < (800 * (AIlevel ** 2 / 64.0))
trigger5 = ctrl && (p2bodydist x<=140) && (enemynear,statetype!=A) && (enemynear,movetype=A) && (enemynear,stateno=[2000,4999]) && random < (750 * (AIlevel ** 2 / 64.0))

[State -1, Zero Counter]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 750
trigger1 = AIlevel && numenemy
trigger1 = (p2dist x = [-90, 90]) && stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && power >= 2000 && !var(24) && life < 500 && random < (10 * (AIlevel ** 2 / 64.0))

[State -1, roll / dodge]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(random < 600, 700, 710)
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, movetype = A && p2bodydist x < 100

[State -1, airrecover]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=ifelse((pos y>=-20),5200,5210)
triggerall= AILevel && numenemy
triggerall= roundstate=2 && stateno=5050
trigger1= vel y>-1 && alive && canrecover && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Throw]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 800
triggerall = AILevel&&random < (500 * (AIlevel ** 2 / 64.0))
triggerall = roundstate=2&&statetype!=A&& enemynear,statetype!=L&&(enemynear,stateno!=[5120,5201])
triggerall = enemynear,movetype!=H&&enemynear,statetype!=A&&enemynear,Hitover&&(p2bodydist x =[0,30])
triggerall = ctrl||stateno=100||stateno=52
trigger1 = random>=800
trigger2 = enemynear,stateno=[120,155]
trigger2 = random>=500
trigger3 = stateno=100
trigger4=(p2bodydist x=[0,30])&&random<250
trigger5=(p2stateno=[120,155])&&(p2bodydist x=[0,30])&&random<500

[State -1, Air Throw]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 850
triggerall = AILevel&&random < (500 * (AIlevel ** 2 / 64.0))
triggerall = roundstate=2&&statetype=A&& enemynear,statetype!=L&&(enemynear,stateno!=[5120,5201])
triggerall = enemynear,movetype!=H&&enemynear,statetype=A&&enemynear,Hitover&&(p2bodydist x =[0,30])&&(p2bodydist y =[-50,0])
triggerall = ctrl
trigger1 = random>=800
trigger2 = enemynear,stateno=[120,155]
trigger2 = random>=500
trigger3=(p2bodydist x=[0,30])&&random<250
trigger4=(p2stateno=[120,155])&&(p2bodydist x=[0,30])&&random<500

[State -1, Standing Low Punch AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 200
triggerall = AILevel && numenemy&&roundstate=2&&StateType != A
triggerall = (p2bodydist x = [0, 50])&&(p2bodydist y = [-80,5])&&P2statetype != A&&P2statetype != C&&P2statetype != L&& random < (750 * (AIlevel ** 2 / 64.0))
trigger1 = ctrl
trigger2 = (stateno = [100,101]) && random < 750
trigger3 = stateno=200&&movecontact&&random < 100

[State -1, Standing Medium Punch AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 210
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (450 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350

[State -1, Standing High Punch AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 220
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 55]) && (p2bodydist y = [ -90, 80]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (350 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit&&var(55)
trigger2 = random < 750

[State -1, Standing Low Kick AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 230
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (500 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [400,409]))&& movehit&&var(55)
trigger2 = random < 300
trigger3 = (stateno = [100,101]) && random < 200

[State -1, Standing Medium Kick AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 240
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 55]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (300 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350

[State -1, Standing High Kick AI]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 250
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -60, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (300 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [240,249])|| (stateno = [440,449]))&& movehit && stateno != 225&&var(55)
trigger2 = random < 800

[State -1, Crouching Low Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 400
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 40]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [100,101]

[State -1, Crouching Medium Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 410
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 55]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 800

[State -1, Crouching High Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 420
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 70]) &&(p2bodydist y = [-80,5]) && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit&&var(55)
trigger2 = random < 600

[State -1, Crouching Low Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 430
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 35]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [400,409]))&& movehit&&var(55)

[State -1, Crouching Medium Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 440
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 45]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (75 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350

[State -1, Crouching High Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 450
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 55]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [220,229])|| (stateno = [240,249])||(stateno = [420,429])||(stateno = [440,449]))&& movehit&&var(55)
trigger2 = random < 900

[State -1, Jumping Low Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 600
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0,60]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, Jumping Medium Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 610
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (ifelse((vel x > 0 && p2statetype = A), 250, 125) * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [600,609])&& movehit && var(55)=2 && random < 750
trigger3 = (stateno = [630,639])&& movehit && var(55)=2 && random < 250

[State -1, Jumping High Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 620
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 100]) && (p2bodydist y = [ -80, 50]) && p2statetype != L
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 700
trigger3 = (stateno = [640,649])&& movehit && var(55)=2 && random < 200

[State -1, Jumping Low Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 630
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [600,609])&& movehit && var(55)=2 && random < 250

[State -1, Jumping Medium Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 640
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 90]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (250 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 100
trigger3 = (stateno = [630,639])&& movehit && var(55)=2 && random < 750

[State -1, Jumping High Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 650
triggerall = AILevel && numenemy &&roundstate=2&&statetype = A && (p2bodydist x = [0, 130]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (250 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 250
trigger3 = (stateno = [640,649])&& movehit && var(55)=2 && random < 750

[State -1, The Death Strike]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=3000
triggerall=AILevel && numenemy && RoundState=2 && StateType != A && power >= 3000 && random < (450 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,stateno!=5120)&&(enemynear,stateno!=[120,155])&&(p2bodydist x >=140)&&(p2bodydist y=[-140,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2=var(6)

[State -1, 4th Wall Crisis]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=3300
triggerall=AILevel && numenemy && RoundState=2 && StateType != A && power >= 3000 && random < (400 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,Movetype = A)&&!(enemynear, hitdefattr = SCA, AT, AP)&&(enemynear,stateno!=5120)&&(enemynear,stateno!=[120,155])&&(p2bodydist x =[50,160])&&(p2bodydist y=[-90,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2=var(6)

[State -1, Weapon XI]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value= 3100
triggerall=AILevel && numenemy && RoundState=2 && (stateno!=[3200,3205]) && StateType != A && power >= 1000 && random < (200 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) &&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(p2bodydist x =[40,160])&&(p2bodydist y=[-80,5])
triggerall=(enemynear,Statetype!=A) && (enemynear,Statetype!=C)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2=var(6)|| var(7)

[State -1, Cutting Time]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=3100
triggerall=AILevel && numenemy && RoundState=2 && (stateno!=[3100,3105]) && StateType != A && power >= 1000 && random < (250 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) &&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(p2bodydist x =[40,140])&&(p2bodydist y=[-80,5])
triggerall=(enemynear,Statetype!=A) && (enemynear,Statetype!=C)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2=var(6)|| var(7)

[State -1, Happy Happy Trigger]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=3000
triggerall=AILevel && numenemy && RoundState=2 && (stateno!=3000) && StateType != A && power >= 1000 && random < (100 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) &&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(p2bodydist x >=55)&&(p2bodydist y=[-80,5])&&(enemynear,Statetype!=A)
trigger1=ctrl|| StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2=var(6)|| var(7)

[State -1, Air Happy Happy Trigger]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=3050
triggerall=AILevel && numenemy && RoundState=2 && StateType = A && (stateno!=3050) && Pos y<=-15 && power >= 1000 && random < (150 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,stateno!=[5120,5220])&&(p2bodydist x =[80,160])&&(p2bodydist y=[-20,255])&&(enemynear,Statetype!=C)
trigger1=ctrl
trigger2=var(6)|| var(7)
trigger3=(stateno=[600,650]) && movecontact

[State -1, Shoryuken]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1500
triggerall = prevstateno != 1500
triggerall = prevstateno != 1100
triggerall = stateno != 1100
triggerall=AILevel && numenemy && RoundState=2 && StateType != A&&(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&random < (250 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,stateno!=[120,155])&&(enemynear,statetype!=C) && (p2bodydist x =[5,60])&&(p2bodydist y=[-140,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2=var(5)

[State -1, Katana-Rama]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=1100
triggerall = prevstateno != 1100
triggerall = stateno != 1100
triggerall=AILevel && numenemy && RoundState=2 && StateType != A && (p2bodydist x =[10,180])&&(p2bodydist y=[-130,5])&&random < (200 * (AIlevel ** 2 / 64.0))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2=var(5)

[State -1, Teleport]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=1300
triggerall=AILevel && numenemy && RoundState=2 && Power>1000 && StateType != A && random < (100 * (AIlevel ** 2 / 64.0)) && (p2bodydist x >=80)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2=var(5)
trigger3=(stateno=1000||stateno=1000)
trigger3=Numhelper(1005)
trigger3=Helper(1005), var(18)=1

[State -1, Quick Work]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=1200
triggerall=AILevel && numenemy && RoundState=2 && StateType != A && (enemynear,stateno!=[5120,5220]) && random < (250 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,stateno!=[120,155])&&(enemynear,statetype=S) &&(enemynear,Movetype != A) && (p2bodydist x >=65)&&(p2bodydist y=[-80,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2=var(5)

[State -1, Ninja Gift]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=11000
triggerall=AILevel && numenemy && RoundState=2 && StateType = A && Pos y<=-35 && (var(3) != [1, 2])
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(enemynear,statetype!=C)
triggerall=random < (250 * (AIlevel ** 2 / 64.0)) && (p2bodydist x >=50)&&(p2bodydist y=[-40,225])
trigger1=ctrl
trigger2=var(5)
trigger3=(stateno=[600,650]) && movecontact

[State -1, Grenade Toss]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=11000
triggerall=AILevel && numenemy && RoundState=2 && StateType != A && !Numhelper(1405)
triggerall=(enemynear,statetype != A)&&(enemynear,Movetype != A)&&(enemynear,stateno!=[120,155])&&(enemynear,statetype!=C)
triggerall=random < (300 * (AIlevel ** 2 / 64.0)) && (p2bodydist x >=75)&&(p2bodydist y=[-40,225])
trigger1=ctrl
trigger2=var(5)

[State -1, Pineapple Surprise]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=11000
triggerall=AILevel && numenemy && RoundState=2 && StateType = A && Pos y<=-25 && (var(3) != [1, 2]) && !Numhelper(1405)
triggerall=(enemynear,statetype != A)&&(enemynear,Movetype != A)&&(enemynear,stateno!=[120,155])&&(enemynear,statetype!=C)
triggerall=random < (350 * (AIlevel ** 2 / 64.0)) && (p2bodydist x >=75)&&(p2bodydist y=[-40,225])
trigger1=ctrl
trigger2=var(5)
trigger3=(stateno=[600,650]) && movecontact

[State -1, Trigger Happy]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value= 1000
triggerall=AILevel && numenemy && RoundState=2 && StateType != A
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])
triggerall=random < (200 * (AIlevel ** 2 / 64.0)) && (p2bodydist x >=35)&&(p2bodydist y=[-80,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,103])
trigger2=var(5)

[State -1, Air Trigger Happy]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value= 1050
triggerall=AILevel && numenemy && RoundState=2 && StateType = A && Pos y<=-25 && (var(3) != [1, 2]) && !Numhelper(1005)
triggerall=(enemynear,statetype != C)&&(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])
triggerall=random < (250 * (AIlevel ** 2 / 64.0)) && (p2bodydist x >=25)&&(p2bodydist y=[-60,125])
trigger1=ctrl
trigger2=var(5)
trigger3=(stateno=[600,650]) && movecontact

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 550
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "z")
trigger1 = stateno = [150,151]


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 560
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "z")
trigger1 = stateno = [152,153]


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 570
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = teammode != Simul 
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = teammode = Simul 
triggerall = numpartner
triggerall = partner,life = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
