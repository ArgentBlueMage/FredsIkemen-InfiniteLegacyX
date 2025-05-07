; _______________________________________
;| Dudley by Dick Buckus & Mr.Ansatsuken |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================< SPECIAL STATES >=======================================
;============================================================================================

; Light Machine Gun Blow
[Statedef 1000]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1000
ctrl = 0
poweradd = 70 * !var(20)
faceP2 = 1
sprpriority = 2

[State 1000, Width]
type = Width
trigger1 = AnimElemtime(1)>=0  
value = 10,0

[State 0, VelSet]
type = VelSet
trigger1 = Animelem = 1
x = 5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(5)<0
value = ,NP
time = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 0

[State 1000, Position]
type = PosAdd
trigger1 = (Anim = 1000 && (AnimElem = 2 || AnimElem = 12 || AnimElem = 19 || AnimElem = 20 || AnimElem = 23)) || (Anim = 1003 && (AnimElem = 2 || AnimElem = 4 || AnimElem = 16))
x = Ifelse ((Anim = 1000 && AnimElem = 2) || (AnimElem = 4), 7, Ifelse ((AnimElem = 12) || (AnimElem = 16), 15, Ifelse ((Anim = 1003 && AnimElem = 2), 18, Ifelse ((AnimElem = 19), 0, Ifelse ((AnimElem = 20), 3, 1)))))

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6||animelem = 7
value = S1000,2;0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 13
value = s1000,4;2
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6 || animelem = 7 || animelem = 14
value = S1,ifelse((animelem=14),3,1)
volume = ifelse((animelem=14),255,100)

[State 10001, HitDef] ;Opponent near
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6||animelem = 7
attr = S, SA
animtype  = Hard
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 07
getpower = 70 * !var(20), 30 * !var(20)
givePower = 25, 25
priority=4,Hit
guardflag = MA
hitflag = MAF
pauseTime = 6,6 
guard.pauseTime = 6,6
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=ifelse((animelem=7),-83,-71)
hitsound   = s2,3
guardsound = s130,0
ground.type = High
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-2.5
air.velocity=-4,0
guard.velocity=-6
airguard.velocity=-8,-3
airguard.ctrlTime=16
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.54
fall.recover=0
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
envShake.freq=120;##

[State 10001, Hitdef] ;Opponent near
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 14 
attr = S, SA
animtype  = Hard
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 07
getpower = 70 * !var(20), 30 * !var(20)
givePower = 25, 25
priority=4,Hit
guardflag = M
hitflag = MAF
pauseTime = 10,10
guard.pauseTime = 10,10
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=71), var(13):=-92
hitsound   = s2,3
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=High;Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-9.5
air.velocity=-6,0
guard.velocity=-9.5
airguard.velocity=-8,-3
airguard.ctrlTime=16
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.54
fall.recover=0
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
envShake.freq=120;##

[State AttackDone]
type=statetypeset
trigger1= animelemtime(15)>=0
movetype=I

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Strong Machine Gun Blow
[Statedef 1010]
type    = S
movetype= A
physics = S
poweradd = 70 * !var(20)
velset = 0,0
anim = 1010
ctrl = 0
facep2 = 1
sprpriority = 2

[State 105, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = 1
pausemovetime = 255
supermovetime = 255
ownpal = 1
[State 1302, Dust Helper]
type = Helper
trigger1 = Time = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1
[State 1000, Width]
type = Width
trigger1 = AnimElemtime(1) >=0
value = 10,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(7)<0
value = ,NP
time = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 10

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 0

[State 1000, Position]
type = PosAdd
trigger1 = (Anim = 1010 && (AnimElem = 2 || AnimElem = 4 || AnimElem = 15 || AnimElem = 22 || AnimElem = 23 || AnimElem = 25)) || (Anim = 1002 && (AnimElem = 2 || AnimElem = 4 || AnimElem = 16 || AnimElem = 24 || AnimElem = 25 || AnimElem = 27))
x = Ifelse((AnimElem=2),18,Ifelse((AnimElem=4),7,Ifelse((Anim=1010&&AnimElem=15)||(Anim=1002&&AnimElem=16),15,Ifelse((Anim=1010&&AnimElem=22)||(Anim=1002&&AnimElem=23),0,Ifelse((Anim=1010&&AnimElem=23)||(Anim=1002&&AnimElem=25),0,1)))))

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8||animelem = 9||animelem = 10
value = S100,2;0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1||animelem = 16
value = s1000,4;
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8 || animelem = 9 || animelem = 10 || animelem = 17
value = S1,ifelse((animelem=17),3,1)
volume = ifelse((animelem=17),255,100)

[State 10001, 2] ;Opponent near
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 8||animelem = 9||animelem = 10
attr = S, SA
animtype  = Hard
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 07
getpower = 70 * !var(20), 30 * !var(20)
givePower = 25, 25
priority=4,Hit
guardflag = MA
hitflag = MAF
pauseTime = 6,6
guard.pauseTime = 6,6
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=ifelse((animelem=9),-89,ifelse((animelem=10),-80,-71))
hitsound   = s2,3
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=high;Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-3
air.velocity=-4,0
guard.velocity=-8
airguard.velocity=-8,-3
airguard.ctrlTime=16
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.54
fall.recover=0
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
envShake.freq=120

[State 10001, 2] ;Opponent near
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 17
attr = S, SA
animtype  = Hard
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 07
getpower = 70 * !var(20), 30 * !var(20)
givePower = 25, 25
priority=4,Hit
guardflag = M
hitflag = MAF
pauseTime = 8,8
guard.pauseTime = 8,8
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=71), var(13):=-92
hitsound   = s2,3
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=high;Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-9.5
air.velocity=-6,0
guard.velocity=-8
airguard.velocity=-8,-3
airguard.ctrlTime=16
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.54
fall.recover=0
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
envShake.freq=120

[State AttackDone]
type=statetypeset
trigger1= animelemtime(18)>=0
movetype=I

[State 1003, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Fierce Machine Gun Blow
[Statedef 1020]
type    = S
movetype= A
physics = S
poweradd = 70 * !var(20)
velset = 0,0
anim = 1020
ctrl = 0
facep2 = 1
sprpriority = 2

[State 105, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = 1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 110, Dust Helper]
type = Helper
trigger1 = Time=2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(7)<0
value = ,NP
time = 1

[State 1000, Width]
type = Width
trigger1 = AnimElemtime(1) >=0
value = 10,0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 15

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 0

[State 1000, Position]
type = PosAdd
trigger1 = (Anim = 1010 && (AnimElem = 2 || AnimElem = 4 || AnimElem = 15 || AnimElem = 22 || AnimElem = 23 || AnimElem = 25)) || (Anim = 1020 && (AnimElem = 2 || AnimElem = 4 || AnimElem = 16 || AnimElem = 23 || AnimElem = 24 || AnimElem = 26))
x = Ifelse((AnimElem=2),25,Ifelse((AnimElem=4),9,Ifelse((Anim=1010&&AnimElem=15)||(Anim=1020&&AnimElem=16),15,Ifelse((Anim=1010&&AnimElem=22)||(Anim=1020&&AnimElem=23),0,Ifelse((Anim=1010&&AnimElem=23)||(Anim=1020&&AnimElem=26),0,1)))))

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8||animelem = 9||animelem = 10||animelem = 11
value = S100,2;0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1||animelem = 17
value = s1000,4;2
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11 || animelem = 18
value = S1,ifelse((animelem=18),3,1)
volume = ifelse((animelem=18),255,100)

[State 10001, 2] ;Opponent near
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 8||animelem = 9||animelem = 10||animelem = 11||animelem= 12
attr = S, SA
animtype  = Hard
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 07
getpower = 70 * !var(20), 30 * !var(20)
givePower = 25, 25
priority=4,Hit
guardflag = MA
hitflag = MAF
pauseTime = 6,6
guard.pauseTime = 6,6
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=(77)), var(13):=ifelse((animelem=9),-83,ifelse((animelem=10),-89,ifelse((animelem=11),-61,ifelse((animelem=12),-72,-77))))
hitsound   = s2,3
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=high;Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-3
air.velocity=-4,0
guard.velocity=-8
airguard.velocity=-8,-3
airguard.ctrlTime=16
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.54
fall.recover=0
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
envShake.freq=120

[State 10001, 2] ;Opponent near
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 18
attr = S, SA
animtype  = Hard
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 07
getPower = ifElse(!var(13), 60, 30) * !var(20), 12 * !var(20)
givePower = 30, 30
priority=4,Hit
guardflag = M
hitflag = MAF
pauseTime = 8,8
guard.pauseTime = 8,8
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=71), var(13):=-92
hitsound   = s2,3
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=High;Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-9.5
air.velocity=-6,0
guard.velocity=-8
airguard.velocity=-8,-3
airguard.ctrlTime=16
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.54
fall.recover=0
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
envShake.freq=120

[State AttackDone]
type=statetypeset
trigger1= animelemtime(19)>=0
movetype=I

[State 1006, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Light Jet Upper
[Statedef 1050]
type    = S
movetype= A
physics = S
poweradd = 70 * !var(20)
velset = 0,0
anim = 1050
ctrl = 0
facep2 = 1
sprpriority = 2
[State 810, Effect]
type = PlaySnd
trigger1 = anim = 1050
trigger1 = animelem=7
value = 1, 3
[State 220, 1]
type = PlaySnd
trigger1 = anim = 1050
trigger1 = animelem = 7
value = 40, 7
[State 1302, Dust Helper]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem=2||animelem=3||animelem=7
trigger1 = anim != 1051
x = 8

[State 0, Traditional F, D, DF Uppercut invincibile startup]
type = NotHitBy
trigger1 = time<=2
value = ,NA,SA,NP,SP,NT
time = 1

[State 1051, VelSet]
type = StatetypeSet
trigger1 = time >=7
statetype=A
physics = N

[State 1051, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 1.25
y = -7

[State 1051, VelAdd]
type = VelAdd
trigger1 = time >=7
y = .5

[State 0, Voice]
type = PlaySnd
triggerall = anim = 1050
trigger1 = animelem = 4
value = S1050,0
channel = 0

[State 810, Swing Snd]
type = PlaySnd
trigger1 = anim =1050
trigger1 = AnimElem = 5
value = S1, 3

[State 220, Jump Snd]
type = PlaySnd
trigger1 = anim =1050
trigger1 = AnimElem = 5
value = S41, 0


[State 1051, Hit Ground]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 6
attr = S, SA
animtype  = Up
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 07
getpower = 70 * !var(20), 30 * !var(20)
givePower = 25, 25
priority=4,Hit
guardflag = M
hitflag = MAF
pausetime =12,12
guard.pausetime = 12,12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-69
hitsound   = s2,3
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-3.8,-10
air.velocity=-3.8,-10
guard.velocity=-12.64
airguard.velocity=-8,-3
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.5325
fall=1
air.fall=1
fall.recover=0
fall.recoverTime=120
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
envShake.freq=120

[State 1051, Hit Air]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem >= 7
trigger1= !movecontact && !movereversed
attr = S, SA
animtype  = Up
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 07
getpower = 70 * !var(20), 30 * !var(20)
givePower = 25, 25
priority=4,Hit
guardflag = M
hitflag = MAF
ID = 1050
pausetime =12,12
guard.pausetime = 12,12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-110
hitsound   = s2,3
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-3.8,-10
air.velocity=-3.8,-10
guard.velocity=-12.64
airguard.velocity=-8,-3
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.5325
fall=1
air.fall=1
fall.recover=0
fall.recoverTime=120
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
envShake.freq=120

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 20
value = 1051

[State AttackDone]
type=statetypeset
trigger1= anim=1051
movetype=I

[State 1051, 3] ;Change state when KFM is close to ground
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -10
value = 1052
;--------------------------------------------------------------------------
;Jet Upper - Land
[Statedef 1052]
type    = S
movetype= I
physics = S
anim = ifelse(prevstateno=1080,1053,1052)
sprpriority = 1
velset = 0,0

[State 52, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1052, 1]  
type = PosSet
trigger1 = Time = 0
y = 0
 
[State 1052, 3]  
type = CtrlSet
trigger1 = AnimElemtime(3) = 1
value = 1

[State 1052, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------
;---------------------------------------------------------------------------
; Strong Jet Upper
[Statedef 1060]
type    = S
movetype= A
physics = S
poweradd = 70 * !var(20)
velset = 0,0
anim = 1060
ctrl = 0
facep2 = 1
sprpriority = 2
[State 810, Effect]
type = PlaySnd
trigger1 = anim = 1060
trigger1 = animelem=7
value = 1, 3
[State 220, 1]
type = PlaySnd
trigger1 = anim = 1060
trigger1 = animelem = 7
value = 40, 7

[State 1302, Dust Helper]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem=2||animelem=3||animelem=7
trigger1 = anim != 1061
x = 8

[State 1051, VelSet]
type = StatetypeSet
trigger1 = time >=10
statetype=A
physics = N

[State 0, Traditional F, D, DF Uppercut invincibile startup]
type = NotHitBy
trigger1 = time<=2
value = ,NA,SA,NP,SP,NT
time = 1

[State 1051, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 1.5
y = -8

[State 1051, VelAdd]
type = VelAdd
trigger1 = time >=10
y = .5

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 1060
trigger1 = animelem = 4
value = S1050,0
channel = 0

[State 810, Swing Snd]
type = PlaySnd
trigger1 = anim =1060
trigger1 = AnimElem = 5
value = S1, 3

[State 220, Jump Snd]
type = PlaySnd
trigger1 = anim =1060
trigger1 = AnimElem = 5
value = S41, 0

[State 1051, Hit Ground]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 6
attr = S, SA
animtype  = Up
damage = ceil(ifElse(fvar(11) * 112 < 7, 7, fvar(11) * 112)), 07
getpower = 70 * !var(20), 30 * !var(20)
givePower = 25, 25
priority=4,Hit
guardflag = M
hitflag = MAF
pausetime =12,12
guard.pausetime = 12,12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-69
hitsound   = s2,3
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-3.8,-10
air.velocity=-3.8,-10
guard.velocity=-12.64
airguard.velocity=-8,-3
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.5325
fall=1
air.fall=1
fall.recover=0
fall.recoverTime=120
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
envShake.freq=120

[State 1051, Hit Air]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem >= 7
trigger1= !movecontact && !movereversed
attr = S, SA
animtype  = Up
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 07
getpower = 70 * !var(20), 30 * !var(20)
givePower = 20, 20
priority=4,Hit
guardflag = M
hitflag = MAF
pausetime =12,12
guard.pausetime = 12,12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-110
hitsound   = s2,3
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-3.8,-10
air.velocity=-3.8,-10
guard.velocity=-12.64
airguard.velocity=-8,-3
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.5325
fall=1
air.fall=1
fall.recover=0
fall.recoverTime=120
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
envShake.freq=120

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 26
value = 1061

[State AttackDone]
type=statetypeset
trigger1= anim=1061
movetype=I

[State 1051, 3] ;Change state when KFM is close to ground
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -10
value = 1052
;---------------------------------------------------------------------------
; Fierce Jet Upper
[Statedef 1070]
type    = S
movetype= A
physics = S
poweradd = 70 * !var(20)
velset = 0,0
anim = 1070
ctrl = 0
facep2 = 1
sprpriority = 2
[State 810, Effect]
type = PlaySnd
trigger1 = anim = 1070
trigger1 = animelem=7
value = 1, 3
[State 220, 1]
type = PlaySnd
trigger1 = anim = 1070
trigger1 = animelem = 7
value = 40, 7

[State 450, 2]
type = nothitby
trigger1 = prevstateno = 750
value = SCA
 
[State 1302, Dust Helper]
type = Helper
trigger1 = Anim = 1070 && AnimElem = 7
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1
[State 0, PosAdd]
type = PosAdd
triggerall = anim = 1070
trigger1 = animelem=2||animelem=3||animelem=7
trigger1 = anim != 1071
x = 10

[State 1051, VelSet]
type = StatetypeSet
trigger1 = time >=10
statetype=A
physics = N

[State 1051, VelSet]
type = VelSet
trigger1 = time =10
x = 2.25
y = -10

[State 1051, VelAdd]
type = VelAdd
trigger1 = time >=10
y = .5

;[State 1051, VelAdd]
;type = VelMul
;trigger1 = time >=20
;x = .975


[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 1070
trigger1 = animelem = 4
value = S1050,0
channel = 0

[State 0, Traditional F, D, DF Uppercut invincibile startup]
type = NotHitBy
trigger1 = time<2
value = ,NA,SA,NP,SP,NT
time = 1

[State 810, Swing Snd]
type = PlaySnd
trigger1 = anim =1070
trigger1 = AnimElem = 5
value = S1, 3

[State 220, Jump Snd]
type = PlaySnd
trigger1 = anim =1070
trigger1 = AnimElem = 5
value = S41, 0

[State 1051, Hit Ground]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = animelem = 4
attr = C, SA
ID = 1070
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 07
getpower = 70 * !var(20), 30 * !var(20)
givePower = 25, 25
priority=4,Hit
animtype  = Medium
hitflag = MAF
guardflag = H
pausetime =12,12
guard.pausetime = 12,12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-69
hitsound   = s2,3
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-3.8,-11
air.velocity=-3.8,-11
guard.velocity=-12.64
airguard.velocity=-8,-3
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.5325
fall=1
air.fall=1
fall.recover=0
fall.recoverTime=120
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
envShake.freq=120

[State 1051, Hit Air]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem >= 7
attr = S, SA
animtype  = Up
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 07
getpower = 70 * !var(20), 30 * !var(20)
givePower = 15, 1
priority=4,Hit
guardflag = M
hitflag = MAF
pausetime =12,12
guard.pausetime = 12,12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-110
hitsound   = s2,3
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-3.8,-11
air.velocity=-3.8,-11
guard.velocity=-12.64
airguard.velocity=-8,-3
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.5325
fall=1
air.fall=1
fall.recover=0
fall.recoverTime=120
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
envShake.freq=120

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 1071

[State AttackDone]
type=statetypeset
trigger1= anim=1071
movetype=I

[State 1051, 3] ;Change state when KFM is close to ground
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -10
value = 1052
;------------------------------------------------------------------------------------------
;Cross-Counter - Start
[Statedef 1100]
type = S
movetype = I
physics = S
anim = ceil(ifelse(AIlevel, ifelse(random<333,1100,ifelse(random<500,1101,1102)), ifelse(command = "HCB_z", 1102, ifelse(command = "HCB_x", 1100, 1101))))
sprpriority = 2
poweradd = 70 * !var(20)
velset = 0,0
ctrl = 0
facep2 = 1

[State 1100, Reversal]
type = ReversalDef
trigger1 = 1
reversal.attr = SA, AA
pausetime = 0, 24
hitsound = -1
numhits = 0
p1stateno = 1105

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Cross-Counter - Strike
[Statedef 1105]
type = S
movetype = A
physics = S
Anim = ifelse(anim=1102,1125, ifelse(anim=1100,1105, 1115))
sprpriority = 0
velset = 0,0
ctrl = 0
facep2 = 0
 
[State 1105, Reversal Spark]
type = Helper
trigger1 = !Time
helpertype = Normal
stateno = 8020
ID = 8000
name = "Reversal Spark"
postype = p1
pos = ceil(25 * const(size.xscale)), ceil(-70 * const(size.yscale))
facing = -1
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1105, Cross]
type = Explod
trigger1 = animelem = 5
anim = 1106
postype = p1
sprpriority = 1
bindtime = -1

[State 1105, Damage]
type = LifeAdd
trigger1 = Time = 0
value = ceil((Ifelse((P2StateNo = [200, 999]), -40, Ifelse ((P2StateNo = [1000, 2999]), -80, -140)))*(const(data.attack)*0.01))
kill = 0

[State 1105, Sprite]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 1105, Push]
type = PlayerPush
trigger1 = AnimElemTime(21) < 0
value = 0

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 6
x = ifelse(anim=1105,25, ifelse(anim=1125, 40, 30))

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 9
x = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S1100,0
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S1100,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S1,3

[State 1105, Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 8
attr = S, SA
guardflag = MA
hitflag = MAF
animtype  = Hard
air.animtype = Diagup
priority = 7
getpower = 70 * !var(20), 30 * !var(20)
givepower = 30,30
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 07
pausetime = 1, 11
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-80
hitsound = S2,3
guardsound = S6, 0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-2,-10
air.velocity=-2,-10
guard.velocity=-8
airguard.velocity=-8,-3
airguard.ctrlTime=16
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.6
fall=1
fall.recover=0
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=16
envshake.freq=30
envshake.ampl=4



[State AttackDone]
type=statetypeset
trigger1= animelemtime(9)>=0
movetype=I

[State 1100, StateChange]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Light Ducking
[Statedef 1150]
type    = S
movetype= I
physics = S
poweradd = 70 * !var(20)
velset = 0,0
anim = 1150
ctrl = 0
facep2 = 1
sprpriority = 2
[State 105, Dust]
type = helper
trigger1 = Animelem = 2
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = 1
pausemovetime = 255
supermovetime = 255
ownpal = 1
[State 0, Velset]
type = Velset
trigger1 = animelem= 2
x = 4*const(size.xscale)

[State 0, Velset]
type = Velset
trigger1 = animelem= 6
x = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = [3,20]
value = ,AP, NA,NT

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S1,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S102,0

[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1000, 8]
type = ChangeState
triggerall = !AILevel
triggerall = time = [10,19]
trigger1 = command = "hold_x"||command = "hold_y"||command = "hold_z"
value = 1151
ctrl = 0

[State 1000, 8]
type = ChangeState
triggerall = !AILevel
triggerall = time = [10,19]
trigger1 = command = "hold_a"||command = "hold_b"||command = "hold_c"
value = 1152
ctrl = 0

[State 1100, Straight]
type=changestate
trigger1= AILevel && time>=10 && anim=1150 && p2dist x>=0
trigger1= p2bodydist x<95 && random<500
value=1151

[State 1100, Uppercut]
type=changestate
trigger1= AILevel && time>=10 && anim=1150 && p2dist x>=0
trigger1= p2bodydist x<75 && random<500
value=1152

;---------------------------------------------------------------------------
; Ducking Straight
[Statedef 1151]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 220
ctrl = 0
sprpriority = 2
 

[State 0, Velset]
type = Velset
trigger1 = animelem= 1
x = 8

[State 0, Velset]
type = Velset
trigger1 = animelem= 6
x = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S1,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = s1000,4;2
channel = 0

[State 0, HitBy]
type = HitBy
trigger1 = time = [0,10]
value = ,AA,AT

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = [0,10]
value = ,AP


[State 220, 2]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
attr = S, SA
animtype  = Hard
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 07
getpower = 70 * !var(20), 30 * !var(20)
givePower = 25, 25
guardflag = MA
hitflag = MAF
pauseTime = 12,12
guard.pauseTime = 12,12
priority=4,Hit
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-73
hitsound   = s2,3+var(52)*10
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=High;Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=12
ground.velocity=-10.75
air.velocity=-2.5,-4
guard.velocity=-8
airguard.velocity=-8,-3
airguard.ctrlTime=16
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.54
fall.recover=0
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=16
envshake.freq=30
envshake.ampl=4


[State AttackDone]
type=statetypeset
trigger1= animelemtime(9)>=0
movetype=I

[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Ducking Upper
[Statedef 1152]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1152
ctrl = 0
sprpriority = 2
 

[State 0, Velset]
type = Velset
trigger1 = animelem= 1
x = 8

[State 0, Velset]
type = Velset
trigger1 = animelem= 6
x = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = [0,10]
value = ,AP, NA,NT

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S1,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S1050,0
channel = 0

[State 420, HitDef]
type=HitDef
triggerall= !var(16) && var(15) < 2;!var(16) && (var(15)<2 || var(20))&& !Time
trigger1=AnimElem=6
attr=S,SA        
hitflag=MAF       
guardflag=MA         
animtype=Hard         
priority=4, Hit   
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 7
getpower=30 * !var(20), 0
givepower=30, 30
pausetime=12,12
guard.pausetime=12,12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-65
hitsound   = s2,3
 guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=Low;High
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-5.2;*(ifelse(!var(20),1,.5)) disabled
guard.velocity=-8
air.velocity=-5,-3
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.5325
air.fall = 1
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 420, HitDef]
type=HitDef
triggerall= !var(16) && var(15) < 2;!var(16) && (var(15)<2 || var(20))&& !Time
trigger1=AnimElem=7
attr=S,SA        
hitflag=MAF       
guardflag=MA         
animtype=Hard         
priority=4, Hit   
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getpower=30 * !var(20), 0
givepower=30, 30
pausetime=12,12
guard.pausetime=12,12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-65
hitsound   = s2,3
 guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=High
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-5.2;*(ifelse(!var(20),1,.5)) disabled
guard.velocity=-8
air.velocity=-5,-3
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.5325
air.fall = 1
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48


;[State 1152, 2]
;type = HitDef
;trigger1 = !var(16) && var(15) < 2
;trigger1 = animelem = 6
;attr = S, SA
;damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 07
;getpower = 37,0
;animtype  = Hard
;hitflag = MAF
;guardflag = M
;pausetime = 8,8
;priority=4,Hit
;sparkno = -1 + 0 * (var(33) := 8013)
;guard.sparkno= -1 + 0 * (var(34) := 8001)
;sparkxy = -10 + 0*(var(12):=77), var(13):=-55
;hitsound   = s2,3
;guardsound = s130,0
;air.animtype=Back
;fall.animtype=Back
;ground.type=Low
;air.type=Low
;ground.slidetime=18
;ground.hittime=18
;guard.hittime=12
;ground.velocity=-1
;air.velocity=-1,-2
;guard.velocity=-8
;airguard.velocity=-8,-3
;airguard.ctrlTime=16
;ground.cornerPush.velOff=0
;guard.cornerPush.velOff=0
;air.cornerPush.velOff=0
;yaccel=.54
;fall.recover=0
;forcestand=1
;palFX.time=12 * var(29)
;palFX.add=255,255,255
;palFX.sinAdd=-255,-255,-255,48
;envshake.time=16
;envshake.freq=30
;envshake.ampl=4
;
;[State 1152, 2]
;type = HitDef
;trigger1 = !var(16) && var(15) < 2
;trigger1 = animelem = 7
;attr = S, SA
;damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 07
;getpower = 75,75
;animtype  = Hard
;hitflag = MAF
;guardflag = M
;pausetime = 12,18
;priority=4,Hit
;sparkno = -1 + 0 * (var(33) := 8013)
;guard.sparkno= -1 + 0 * (var(34) := 8001)
;sparkxy = -10 + 0*(var(12):=77), var(13):=-93
;hitsound   = s2,3
;guardsound = s130,0
;air.animtype=Back
;fall.animtype=Back
;ground.type=High;Low
;air.type=Low
;ground.slidetime=18
;ground.hittime=18
;guard.hittime=12
;ground.velocity=-10.52
;air.velocity=-3,-4
;guard.velocity=-10.52
;airguard.velocity=-8,-3
;airguard.ctrlTime=16
;ground.cornerPush.velOff=0
;guard.cornerPush.velOff=0
;air.cornerPush.velOff=0
;yaccel=.54
;fall.recover=0
;forcestand=1
;palFX.time=12 * var(29)
;palFX.add=255,255,255
;palFX.sinAdd=-255,-255,-255,48
;envshake.time=16
;envshake.freq=30
;envshake.ampl=4

[State AttackDone]
type=statetypeset
trigger1= animelemtime(9)>=0
movetype=I

[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; Strong Ducking
[Statedef 1160]
type    = S
movetype= I
physics = S
poweradd = 70 * !var(20)
velset = 0,0
anim = 1160
ctrl = 0
facep2 = 1
sprpriority = 2
[State 105, Dust]
type = helper
trigger1 = Animelem = 2
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = 1
pausemovetime = 255
supermovetime = 255
ownpal = 1
 
[State 0, Velset]
type = Velset
trigger1 = animelem= 2
x = 14

[State 0, Velset]
type = Velset
trigger1 = animelem= 6
x = 0

[State 0, HitBy]
type = HitBy
trigger1 = time = [5,24]
value = ,NA,NT

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = [5,24]
value = ,AP

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S1,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S102,0

[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1000, 8]
type = ChangeState
triggerall = !AIlevel 
triggerall = time = [12,23]
trigger1 = command = "hold_x"||command = "hold_y"||command = "hold_z"
value = 1151
ctrl = 0

[State 1000, 8]
type = ChangeState
triggerall = !AIlevel 
triggerall = time = [12,23]
trigger1 = command = "hold_a"||command = "hold_b"||command = "hold_c"
value = 1152
ctrl = 0

[State 1100, Straight]
type=changestate
trigger1= AIlevel  && time>=12 && anim=1160 && p2dist x>=0 
trigger1= p2bodydist x<95 && random<500
value=1151

[State 1100, Uppercut]
type=changestate
trigger1= AIlevel  && time>=12 && anim=1160 && p2dist x>=0 
trigger1= p2bodydist x<75 && random<500
value=1152
;---------------------------------------------------------------------------
; Fierce Ducking
[Statedef 1170]
type    = S
movetype= I
physics = S
poweradd = 70 * !var(20)
velset = 0,0
anim = 1170
ctrl = 0
facep2 = 1
sprpriority = 2
[State 105, Dust]
type = helper
trigger1 = Animelem = 2
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = 1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 110, Dust Helper]
type = Helper
trigger1 = Animelemtime(2)=1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 0, Velset]
type = Velset
trigger1 = animelem= 2
x = 20

[State 0, Velset]
type = Velset
trigger1 = animelem= 6
x = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = [7,28]
value = ,AP, NA,NT

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S1,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S102,0

[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1000, 8]
type = ChangeState
triggerall = !AILevel
triggerall = time = [14,26]
trigger1 = command = "hold_x"||command = "hold_y"||command = "hold_z"
value = 1151
ctrl = 0

[State 1000, 8]
type = ChangeState
triggerall = !AILevel
triggerall = time = [14,26]
trigger1 = command = "hold_a"||command = "hold_b"||command = "hold_c"
value = 1152
ctrl = 0

[State 1100, Uppercut]
type=changestate
trigger1= AILevel && time>=14 && anim=1170 && p2dist x>=0;var(30)=1
trigger1= p2bodydist x<75 && random<500
value=1152

;---------------------------------------------------------------------------
; Light Short Swing Blow
[Statedef 1200]
type    = S
movetype= A
physics = S
poweradd = 70 * !var(20)
velset = 0,0
anim = 1200
ctrl = 0
facep2 = 1
sprpriority = 2

[State 105, Dust]
type = helper
trigger1 = Animelem = 2
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = -32

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = -32

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 15

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 12
x = 0

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = S102,0

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1, 3

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(6)<0
value = ,NA,NP
time = 1

[State 1200, Width 1]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(17) < 0
value = 20,0

[State 240, 2]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = time = 0
attr = S, SA
animtype  = Medium
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 07
getPower = ifElse(!var(13), 50, 25) * !var(20), 12 * !var(20)
givePower = 30, 30
guardflag = MA
hitflag = MAF
pauseTime = 10,10
guard.pauseTime = 10,10
priority=4,Hit
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-64
hitsound   = s2,3
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-7
air.velocity=-2.2,-3.2
guard.velocity=-8
airguard.velocity=-8,-3
airguard.ctrlTime=16
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.54
fall.recover=0
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=16
envshake.freq=30
envshake.ampl=4

[State AttackDone]
type=statetypeset
trigger1= animelemtime(14)>=0
movetype=I

[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Strong Short Swing Blow
[Statedef 1210]
type    = S
movetype= A
physics = S
poweradd = 70 * !var(20)
velset = 0,0
anim = 1210
ctrl = 0
facep2 = 1
sprpriority = 2

[State 105, Dust]
type = helper
trigger1 = Animelem = 2
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = -32

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = -32

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 17

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 12
x = 0

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = S102,0

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1, 3

[State 1200, Width 1]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(17) < 0
value = 20,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(6)<0
value = ,NA,NP
time = 1

[State 240, 2]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = time = 0
attr = S, SA
animtype  = Medium
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 07
getPower = ifElse(!var(13), 50, 25) * !var(20), 12 * !var(20)
givePower = 40, 40
guardflag = MA
hitflag = MAF
pauseTime = 10,10
guard.pauseTime = 10,10
priority=4,Hit
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-64
hitsound   = s2,3
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-7
air.velocity=-2.2,-3.2
guard.velocity=-8
airguard.velocity=-8,-3
airguard.ctrlTime=16
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.54
fall.recover=0
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=16
envshake.freq=30
envshake.ampl=4


[State AttackDone]
type=statetypeset
trigger1= animelemtime(14)>=0
movetype=I

[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Fierce Short Swing Blow
[Statedef 1220]
type    = S
movetype= A
physics = S
poweradd = 70 * !var(20)
velset = 0,0
anim = 1220
ctrl = 0
facep2 = 1
sprpriority = 2

[State 105, Dust]
type = helper
trigger1 = Animelem = 2
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = -33

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = -33

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 19

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 12
x = 0

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = S102,0

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1, 3

[State 1200, Width 1]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(17) < 0
value = 20,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(6)<0
value = ,NA,NP
time = 1

[State 240, 2]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = time = 0
attr = S, SA
animtype  = Medium
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 07
getPower = ifElse(!var(13), 50, 25) * !var(20), 12 * !var(20)
givePower = 53, 50
guardflag = MA
hitflag = MAF
pauseTime = 10,10
guard.pauseTime = 10,10
priority=4,Hit
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-64
hitsound   = s2,3
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=18
air.hittime=120
ground.velocity=-7
air.velocity=-2.2,-3.2
guard.velocity=-8
airguard.velocity=-8,-3
airguard.ctrlTime=16
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.54
fall.recover=0
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=16
envshake.freq=30
envshake.ampl=4


[State AttackDone]
type=statetypeset
trigger1= animelemtime(14)>=0
movetype=I

[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
