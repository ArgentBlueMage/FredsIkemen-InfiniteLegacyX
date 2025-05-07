; _______________________________________
;| Dudley by Dick Buckus & Mr.Ansatsuken |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;===================================< EX SPECIAL STATES >======================================
;============================================================================================

; EX Machine Gun Blow
[Statedef 1030]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1030
ctrl = 0
facep2 = 1
sprpriority = 2
poweradd = ifelse(var(53) > 0, 0, -500)
[State 1030, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -335
[State 1260, ExFX]
type = varset
trigger1 = !time
var(25) = 50
[State 1260, ExFX]
type = playsnd
trigger1 = !time
value = 6, 2
[State 1260, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 22, -76
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S40,8
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
trigger1 = !Time 
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
trigger1 = animelemtime(2)>=0 && animelemtime(4)<0
value = ,NA,NP
time = 1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(2)<0
value = ,NA,NP,SP
time = 1

[State 1000, Width]
type = Width
trigger1 = AnimElemtime(1)>=0 
value = 10,0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
;x = ifelse((p2dist x= [0,100]), 30, 50)
x = 20
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4 
x = 0

;[State 0, VelSet]
;type = ChangeAnim;VelSet
;trigger1 = AnimElemTime(2)>=4 && P2BodyDist x <= 20
;trigger1 = AnimElemTime(3)<=0
;value = 1030
;elem = 3


[State 1000, Position]
type = PosAdd
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 15 || AnimElem = 22 || AnimElem = 23 || AnimElem = 25
x = Ifelse((AnimElem=2),25,Ifelse((AnimElem=4),9,Ifelse((AnimElem=15)||(Anim=1020&&AnimElem=16),15,Ifelse((AnimElem=22)||(Anim=1020&&AnimElem=23),0,Ifelse((AnimElem=23)||(Anim=1020&&AnimElem=26),0,1)))))

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8||animelem = 9||animelem = 10||animelem = 11||animelem = 12
value = S100,2
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1||animelem = 17|| animelem = 24
value = s1000,4
channel = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11 || animelem = 18 || animelem = 25
value = S1,ifelse((animelem=18 || animelem = 25),3,1)
volume = ifelse((animelem=18 || animelem=25),255,100)
[State 10001, 2] ;Opponent near
type = HitDef
trigger1 = (!var(16) && var(15) < 1)||var(36)
trigger1 = AnimElem = 8||animelem = 9||animelem = 10||animelem = 11
attr = S, SA
animtype  = Hard
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getpower = 0,0
givePower = 30, 30
priority=4,Hit
guardflag = HA
hitflag = MAF
pauseTime = 6,2
guard.pauseTime = 6,6 
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=(77)), var(13):=ifelse((animelem=9),-83,ifelse((animelem=10),-89,ifelse((animelem=11),-61,ifelse((animelem=12),-72,-77))))
hitsound   = s2,3+var(52)*10
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=high;Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=12
ground.velocity=-1
air.velocity=0.5,-2 
guard.velocity=-10
airguard.velocity=-8, -3
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
trigger1 = (!var(16) && var(15) < 1)||var(36)
trigger1 = animelem= 12
attr = S, SA
animtype  = Hard
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getpower = 0,0
givePower = 30, 30
priority=4,Hit
guardflag = HA
hitflag = MAF
pauseTime = 6,12
guard.pauseTime = 6,6 
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=(77)), var(13):=ifelse((animelem=9),-83,ifelse((animelem=10),-89,ifelse((animelem=11),-61,ifelse((animelem=12),-72,-77))))
hitsound   = s2,3+var(52)*10
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=high;Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=12
ground.velocity=-2
air.velocity=0.5,-2 
guard.velocity=-10
airguard.velocity=-8, -3
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
trigger1 = (!var(16) && var(15) < 1)||var(36)
trigger1 = AnimElem = 18
attr = S, SA
animtype  = Hard
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 07
getpower = 0,0
givePower = 30, 30
priority=4,Hit
guardflag = M
hitflag = MAF
pauseTime = 0,12
guard.pauseTime = 12,12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=71), var(13):=-92
hitsound   = s2,3+var(52)*10
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=High;Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=12
ground.velocity=-2
air.velocity=-2,-5
guard.velocity=-10
airguard.velocity=-8, -3
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
trigger1 = (!var(16)&& var(15) < (1 + HitCount))||var(36) 
trigger1 = AnimElem = 25
attr = S, SA
animtype  = Up
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 07
getpower = 0,0
givePower = 30, 30
priority=4,Hit
guardflag = H
hitflag = MAF
pauseTime = 12,12
guard.pauseTime = 12,12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=71), var(13):=-92
hitsound   = s2,3+var(52)*10
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=12
ground.velocity=-1,-11
air.velocity=-1,-7
guard.velocity=-10
airguard.velocity=-8, -3
airguard.ctrlTime=16
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.53725
;yaccel=.512
fall=1
fall.recover=0
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
envShake.freq=120
ID=1030
[State 1130, Juggle Reset];Thanks Karma
type = VarSet
trigger1 = MoveHit && !var(27) && NumTarget(1030)
var(15) = 0

[State 1130,Juggle Flag] ;Thanks Karma
type = VarAdd
trigger1 = MoveHit && NumTarget(1030)
var(27) = 1
persistent = 0

[State 1130, Juggle Flag];Thanks Karma
type = VarSet
trigger1 = var(27) = 2
var(16) = 1

[State AttackDone]
type=statetypeset
trigger1= animelemtime(27)>=0
movetype=I

[State 1006, 7]
type = ChangeState
trigger1 = !AnimTime; = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; EX Jet Upper
[Statedef 1080]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1080
ctrl = 0
facep2 = 1
sprpriority = 2
poweradd = ifelse(var(53) > 0, 0, -500)

[State 1030, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -335

[State 1260, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1260, ExFX]
type = playsnd
trigger1 = !time
value = 6, 2
[State 1260, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 22,-38
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 810, Swing Snd]
type = PlaySnd
trigger1 = Anim = 1080 &&AnimElem = 7
value = 1, 3
[State 220, Jump Snd]
type = PlaySnd
trigger1 = Anim = 1080 &&AnimElem = 7
value = 41, 0
 
[State 1302, Dust Helper]
type = Helper
trigger1 = Anim = 1080 &&AnimElem = 7
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 0, PosAdd]
type = PosAdd
triggerall = anim = 1080
trigger1 = animelem=2||animelem=3||animelem=7
trigger1 = anim != 1081
x = 10

[State 1051, VelSet]
type = StatetypeSet
trigger1 = time >=7
statetype=A
physics = N

[State 0, Traditional F, D, DF Uppercut invincibile startup]
type = NotHitBy
trigger1 = time<3
value = ,NA,SA,NP,SP,HP,NT
time = 1

[State 1051, VelSet]
type = VelSet
trigger1 = time =7
x = 4.25
;x = 2.5
y = -8.5 

[State 1051, VelAdd]
type = VelAdd
trigger1 = time >=7
y = .5325

 
[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 1080
trigger1 = animelem = 4
value = S1050,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 1080
trigger1 = animelem = 5
value = S1,5
;
;[State 1051, Hit Ground]
;type = HitDef
;triggerall = !var(16) && var(15) < 1
;triggerall = numtarget(1081)=0
;trigger1 = Animelem = 5  
;attr = S, SA
;damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 07
;getpower = 0,0
;givePower = 30, 30
;priority=4,Hit
;animtype  = Medium
;hitflag = MAF
;guardflag = H
;ID = 1080
;pausetime =8,8
;guard.pausetime = 8,8
;sparkno = -1 + 0 * (var(33) := 8013)
;guard.sparkno= -1 + 0 * (var(34) := 8001)
;sparkxy = -10 + 0*(var(12):=77), var(13):=-69
;hitsound   = s2,3
;guardsound = s130,0
;air.animtype=Back
;fall.animtype=Back
;ground.type=Low
;air.type=Low
;ground.slidetime=18
;ground.hittime=18
;guard.hittime=18
;air.hittime=120
;ground.velocity=-2.8,-10
;air.velocity=-2.8,-10
;;ground.velocity=-1,-11.5
;;air.velocity=-1,-11.5
;guard.velocity=-10.52
;airguard.velocity=-8, -3
;airguard.ctrlTime=16
;ground.cornerPush.velOff=0
;guard.cornerPush.velOff=0
;air.cornerPush.velOff=0
;yaccel=.5125
;;yaccel = 0.4
;fall=1
;air.fall=1
;fall.recover=0
;fall.recoverTime=120
;palFX.time=12 * var(29)
;palFX.add=255,255,255
;palFX.sinAdd=-255,-255,-255,48
;envshake.time=14
;envshake.ampl=4
;envShake.freq=120
;
;[State 1051, Hit Air]
;type = HitDef
;triggerall = !var(16) && var(15) < 2
;triggerall = numtarget(1081)=0
;trigger1 = AnimElem >= 7
;attr = S, SA
;animtype  = Up
;damage = ceil(ifElse(fvar(11) * ifelse(numtarget(1080),63,91) < 7, 7, fvar(11) * ifelse(numtarget(1080),63,91))), 07
;getpower = 0,0
;givePower = 30, 30
;priority=4,Hit
;guardflag = H
;hitflag = MAF
;ID = 1081
;pausetime =12,12
;guard.pausetime = 12,12
;sparkno = -1 + 0 * (var(33) := 8013)
;guard.sparkno= -1 + 0 * (var(34) := 8001)
;sparkxy = -10 + 0*(var(12):=77), var(13):=-110
;hitsound   = s2,3
;guardsound = s130,0
;air.animtype=Back
;fall.animtype=Back
;ground.type=Low
;air.type=Low
;ground.slidetime=18
;ground.hittime=18
;guard.hittime=18
;air.hittime=120
;ground.velocity=-3.8,-10
;air.velocity=-3.8,-10*ifelse(vel y>=0,0,1) 
;;ground.velocity=-1,-11.5
;;air.velocity=-1,-11.5
;guard.velocity=-10.52
;airguard.velocity=-8, -3
;airguard.ctrlTime=16
;ground.cornerPush.velOff=0
;guard.cornerPush.velOff=0
;air.cornerPush.velOff=0
;yaccel=.5125
;;yaccel = 0.4
;fall=1
;air.fall=1
;fall.recover=0
;fall.recoverTime=120
;palFX.time=12 * var(29)
;palFX.add=255,255,255
;palFX.sinAdd=-255,-255,-255,48
;envshake.time=14
;envshake.ampl=4
;envShake.freq=120
;
;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = vel Y > 0
;trigger1 = Anim != 1081
;value = 1081
;
;[State AttackDone]
;type=statetypeset
;trigger1= anim = 1081
;movetype=I
;
;[State 1051, 3] ;Change state when KFM is close to ground
;type = ChangeState
;trigger1 = Vel Y > 0 && Pos Y >= -10
;value = 1052

[State 1051, Hit Ground]
type = HitDef
triggerall = (!var(16) && var(15) < 1)||var(36)
triggerall = numtarget(1081)=0
trigger1 = Animelem = 4  
attr = S, SA
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 07
getpower = 0,0
givePower = 30, 30
priority=4,Hit
animtype  = Medium
hitflag = MAF
guardflag = H
ID = 1080
pausetime =12,12
guard.pausetime = 12,12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-69
hitsound   = s2,3+var(52)*10
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=12
ground.velocity=-2.8,-10
air.velocity=-2.8,-10
;ground.velocity=-1,-11.5
;air.velocity=-1,-11.5
guard.velocity=-10.52
airguard.velocity=-8, -3
airguard.ctrlTime=16
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.5125
;yaccel = 0.4
fall=1
air.fall=1
fall.recover=0
fall.recoverTime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
envShake.freq=120

[State 1051, Hit Air]
type = HitDef
triggerall = (!var(16) && var(15) < 2)||var(36)
triggerall = numtarget(1081)=0
trigger1 = AnimElem >= 6
attr = S, SA
animtype  = Up
damage = ceil(ifElse(fvar(11) * ifelse(numtarget(1080),63,91) < 7, 7, fvar(11) * ifelse(numtarget(1080),63,91))), 07
getpower = 0,0
givePower = 30, 30
priority=4,Hit
guardflag = H
hitflag = MAF
ID = 1081
pausetime =12,12
guard.pausetime = 12,12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-110
hitsound   = s2,3+var(52)*10
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=12
ground.velocity=-5,-10
air.velocity=-5,-10;*ifelse(vel y>=0,0,1) 
;ground.velocity=-1,-11.5
;air.velocity=-1,-11.5
guard.velocity=-10.52
airguard.velocity=-8, -3
airguard.ctrlTime=16
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.5125
;yaccel = 0.4
fall=1
air.fall=1
fall.recover=0
fall.recoverTime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
envShake.freq=120

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = vel Y > 0
trigger1 = Anim != 1081
value = 1081

[State AttackDone]
type=statetypeset
trigger1= anim = 1081
movetype=I

[State 1051, 3] ;Change state when KFM is close to ground
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -10
value = 1052

;------------------------------------------------------------------------------------------
;EX Cross-Counter - Start
[Statedef 1110]
type = S
movetype = I
physics = S
anim = 1110
sprpriority = 2
velset = 0,0
ctrl = 0
facep2 = 1
poweradd = ifelse(var(53) > 0, 0, -500)
[State 1030, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -335

[State 1260, ExFX]
type = varset
trigger1 = !time
var(25) = 50
[State 1260, ExFX]
type = playsnd
trigger1 = !time
value = 6, 2
[State 1260, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 13,-88
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 1100, Reversal]
type = ReversalDef
trigger1 = 1
reversal.attr = SA, AA
pausetime = 0, 24
hitsound = s130,0

numhits = 0
p1stateno = 1115


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NP
time = 1
 
[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;EX Cross-Counter - Strike
[Statedef 1115]
type = S
movetype = A
physics = S
Anim = 1107
sprpriority = 0
velset = 0,0
ctrl = 0
facep2 = 1

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

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 1107 && !animtime
value = 1108
ignorehitpause = 1
persistent = 1
[State 0, Turn]
type = Turn
trigger1 = anim = 1108 && animelemtime(1) = 0
ignorehitpause = 1
persistent = 1

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

;[State 1105, Damage]
;type = LifeAdd
;trigger1 = Time = 0
;value = Ifelse ((P2StateNo = [200, 999]), -40, Ifelse ((P2StateNo = [1000, 2999]), -80, -140))

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
x = 40

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 9
x = 0
[State 0, PlayerPush]
type = PlayerPush
trigger1 = anim = 1107
value = 0
ignorehitpause = 1
persistent = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 1108 && animelem = 7
value = S1100,0
channel = 0
;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = anim = 1107 && animelem = 7
;value = S100,0
;channel = 0
[State 0, *Wink*]
type = PlaySnd
trigger1 = anim = 1107 && animelem = 1
value = S1100,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S1,3

[State 1105, Hit]
type = HitDef
;triggerall = prevstateno = 1100
trigger1 = !var(16) && var(15) < 1
trigger1 = anim = 1107 && AnimElem = 8
attr = S, SA
guardflag = MA
hitflag = MAF
animtype  = Hard
air.animtype = Diagup
priority = 7
getpower = 0
givePower = 30, 30
;givepower = 175
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 07
pausetime = 1, 1
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-80
hitsound = S2,3
guardsound = S6, 0
ground.type = High
guard.slidetime = 15
ground.hittime  = 15
guard.hittime = 15
air.hittime=120
ground.velocity = -2, -10
air.velocity = -2, -9
p2facing = 1
envshake.time=16
envshake.freq=30
envshake.ampl=4
fall = 1
fall.recover = 0
yaccel = .6
[State 1105, Hit]
type = HitDef
;triggerall = prevstateno = 1100
trigger1 = !var(16) && var(15) < 2
trigger1 = anim = 1108 && AnimElem = 8
attr = S, SA
guardflag = MA
hitflag = MAF
animtype  = Hard
air.animtype = Diagup
priority = 8
getpower = 0
givePower = 30, 30
;givepower = 175
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 07
pausetime = 1, 11
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-80
hitsound = S2,3
guardsound = S6, 0
ground.type = High
guard.slidetime = 15
ground.hittime  = 15
guard.hittime = 15
air.hittime=120
ground.velocity = -2, -10
air.velocity = -2, -9
p2facing = 1
envshake.time=16
envshake.freq=30
envshake.ampl=4
fall = 1
fall.recover = 0
yaccel = .6
[State AttackDone]
type=statetypeset
trigger1= anim = 1108 && animelemtime(9)>=0
movetype=I

[State 1100, StateChange]
type = ChangeState
trigger1 = anim = 1108 && AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; EX Ducking
[Statedef 1180]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1180
ctrl = 0
facep2 = 1
sprpriority = 2
poweradd = ifelse(var(53) > 0, 0, -500)
[State 105, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = 1
pausemovetime = 255
supermovetime = 255
ownpal = 1
[State 1030, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -335

[State 1260, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1260, ExFX]
type = playsnd
trigger1 = !time
value = 6, 2
[State 1260, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 22, -76
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1


[State 105, Dust]
type = helper
trigger1 = animelem = 2
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
trigger1 =  AnimelemTime(2) = 1
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
x = (p2dist x/8)

[State 0, Velset]
type = Velset
trigger1 = animelem= 6
x = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = [0,24]
value = ,NA,SA,AP,NT

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
triggerall = time = [12,26]
trigger1 = command = "hold_x"||command = "hold_y"||command = "hold_z"
value = 1181
ctrl = 0

[State 1000, 8]
type = ChangeState
triggerall = !AIlevel
triggerall = time = [12,26]
trigger1 = command = "hold_a"||command = "hold_b"||command = "hold_c"
value = 1182
ctrl = 0

[State 1100, Uppercut]
type=changestate
trigger1= AIlevel && time>=12 && anim=1180 && p2dist x>=0;var(30)=1
trigger1= p2bodydist x<75
value=1182
;---------------------------------------------------------------------------
; EX Ducking Straight
[Statedef 1181]
type    = S
movetype= A
physics = S
poweradd= 0
velset = 0,0
anim = 1181
ctrl = 0
sprpriority = 2
[State 105, Dust]
type = helper
trigger1 = animelem = 2
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
trigger1 = animelem = 6
value = S1000,4;2
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
trigger1 = AnimElem = 7
attr = S, SA
animtype  = Hard
damage = ceil(ifElse(fvar(11) * 112 < 7, 7, fvar(11) * 112)), 07
getpower = 0,0
givePower = 40, 40
getpower = 0,0
guardflag = HA
hitflag = MAF
pausetime =14,14
guard.pausetime = 14,14
priority=4,Hit
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-73
hitsound   = s2,3+var(52)*10
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=High;Low
air.type=Low;
ground.slidetime=20
ground.hittime=20
guard.hittime=12
ground.velocity=-9
air.velocity=-6,-6
guard.velocity=-10
airguard.velocity=-8, -3
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
; EX Ducking Upper
[Statedef 1182]
type    = S
movetype= A
physics = S
poweradd= 0
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

[State 0, HitBy]
type = HitBy
trigger1 = time = [0,10]
value = ,AA,AT

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = [0,10]
value = ,AP

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S1,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S1050,0
channel = 0

[State 420, 2]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = animelem = 4
attr = S, SA
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 07
getpower = 0,0
givePower = 30, 30
guardflag = HA
hitflag = MAF
pausetime =8,8
guard.pausetime = 8,8
animtype  = Hard
hitflag = MAF
guardflag = M
priority=4,Hit
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-55
hitsound   = s2,3+var(52)*10
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=12
ground.velocity=-1
air.velocity=-1,-2
guard.velocity=-10
airguard.velocity=8, -3
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

[State 420, 2]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = animelem = 7
attr = S, SA
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 07
getpower = 0,0
givePower = 30, 30
animtype  = Hard
hitflag = MAF
guardflag = H
pausetime =14,14
guard.pausetime = 14,14
priority=4,Hit
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-93
hitsound   = s2,3+var(52)*10
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=23
guard.hittime=12
ground.velocity=-1.75,-10
air.velocity=-1.75,-10
guard.velocity=-10
airguard.velocity=-8, -3
airguard.ctrlTime=16
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
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

[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

; EX Short Swing Blow
[Statedef 1230]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1230
ctrl = 0
facep2 = 1
sprpriority = 2
poweradd = ifelse(var(53) > 0, 0, -500)
[State 105, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1
[State 1030, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -333

[State 1260, ExFX]
type = varset
trigger1 = !time
var(25) = 50
[State 1260, ExFX]
type = playsnd
trigger1 = !time
value = 6, 2
[State 1260, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 22, -76
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(7)<0
value = ,NA,NP,SP
time = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(7)>=0 && animelemtime(9)<0
value = ,NA,NP
time = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = -38

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = -37

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 27

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 20
x = 8
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 27
x = 11

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 31 || animelem = 23 || animelem = 12
x = 0

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000, 4
channel = 0
[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 16
value = 1000, 3
channel = 0
[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 28
value = 1000, 6
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S102,0

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 11 || animelem = 21 || animelem = 31
value = 1, 3;ifelse((animelem=21),2,3)

[State 1200, Width 1]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(17) < 0
value = 20,0

[State 240, 2]
type = HitDef
trigger1 = (!var(16) && var(15) < 1)||var(36)
trigger1 = time = 0
attr = S, SA
animtype  = Medium
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 07
getpower = 0,0
givePower = 40, 30
guardflag = M
hitflag = MAF
pauseTime = 6,12
guard.pauseTime = 2,4
priority=4,Hit
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-64
hitsound   = s2,3+var(52)*10
guardsound = s130,0

air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=12
ground.velocity=0
air.velocity=0,-3
guard.velocity=-10
airguard.velocity=-8, -3
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

[State 420, 2]
type = HitDef
trigger1 = (!var(16) && var(15) < 1)||var(36)
trigger1 = Animelem = 22
attr = S, SA
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 07
getpower = 0,0
givePower = 30, 30
getpower = 0,0
animtype  = Hard
hitflag = MAF
guardflag = H
pausetime = 9,12
priority=4,Hit
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-93
hitsound   = s2,3+var(52)*10
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=12
ground.velocity=0
air.velocity=0,-3
guard.velocity=-10
airguard.velocity=-8, -3
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

[State 220, 2]
type = HitDef
trigger1 = (!var(16) && var(15) < 1)||var(36)
trigger1 = Animelem = 31
attr = S, SA
animtype  = Hard
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 07
getpower = 0,0
givePower = 30, 30
getpower = 0,0
guardflag = HA
hitflag = MAF
pausetime = 11,12
priority=4,Hit
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-73
hitsound   = s2,3+var(52)*10
guardsound = s130,0
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.slidetime=18
ground.hittime=18
guard.hittime=12
ground.velocity = -6, -7
air.velocity = -6, -7
guard.velocity=-10
airguard.velocity=-8, -3
airguard.ctrlTime=16
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.5325
fall=1
fall.recover=0
fall.yvelocity=-4;;; constant bounce test
;fall.xvelocity=-3.375;;;(backedgedist/backedgedist)
forcestand=1
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd=-255,-255,-255,48
envshake.time=16
envshake.freq=30
envshake.ampl=4

[State AttackDone]
type=statetypeset
trigger1= animelemtime(33)>=0
movetype=I

[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
