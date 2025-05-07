; _______________________________________
;| Dudley by Dick Buckus & Mr.Ansatsuken |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================< HYPER STATES >=========================================
;============================================================================================

; Corkscrew Blow
[Statedef 3000]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3000
ctrl = 0
facep2 = 1
sprpriority = 2
poweradd = ifelse(var(53) > 0, 0, -1000)

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [1000, 2999]) && var(6) || var(53)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(23) = (PrevStateNo = [3000,4999]) && var(11)

[State 3000, No Corner Push]
type=VarSet
trigger1=AnimElem = 1
fvar(5)=0
[State 3000, Unguardable]
type = VarSet
trigger1 = AnimElem = 1 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(18) = 50

[State 0, Explod]
type = Explod
trigger1 = animelemtime(13) = 0 || animelemtime(13) = 5 || animelemtime(13) = 10
anim = 6028
ID = 6028
pos = 20,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 0.125,0.125
sprpriority = 5
 
[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = [0,46]
value = SCA 

[State 3000, Super A]
type = SuperPause
trigger1 = time=3
time=43
movetime=43
pos = 25, -57
anim = -1
darken = 0
unhittable = 1
sound=s8500,0
[State 3000, SuperPause FX]
type = Helper
trigger1 = time=3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos =-18,-58
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1
 
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S3000,0
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 13
value = S3000,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 12
value = S1,3

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 13
x = 8.8

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 17
x = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 13
anim = 3001
ID = 3001
pos = -20*const(size.xscale),1*const(size.yscale)
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 0.5*const(size.xscale),0.5*const(size.yscale)
sprpriority = 5
ownpal = 1
ignorehitpause = 0
removeongethit = 0

;[State 0, Explod]
;type = Explod
;trigger1 = animelem = 13
;anim = 3002
;ID = 3002
;pos = -20,1
;postype = p1  ;p2,front,back,left,right
;bindtime = -1
;removetime = -2
;scale = 0.5*const(size.xscale),0.5*const(size.yscale)
;sprpriority = 4
;ownpal = 1
;removeongethit = 0

[State 3000, 5]
type = HitDef
trigger1 = animelem=13||animelem=14||animelem=15||animelem=16
attr = S, HA
animtype  = Hard
;;;damage    = 35,7
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 07
getpower = 0,0
givepower = 25, 25
priority  = 6
guardflag = MA
hitflag = MAF
pausetime = 3,3
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-60
hitsound   = s2,2
guardsound = s130,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1, -3
air.velocity = -0.5,-1
yaccel = .5;325
p2facing = 1
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall = 1
fall.recover = 0

[State 3000, 5]
type = HitDef
trigger1 = animelem=17
attr = S, HA
animtype  = diagup
;;;damage    = 42,7
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 07
getpower = 0,0
givepower = 25, 25
priority  = 6
guardflag = MA
hitflag = MAF
pausetime = 12,12
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-60
hitsound   = s2,2
guardsound = s130,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -6, -4
air.velocity = -6, -4
yaccel = .5325
p2facing = 1
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall = 1
fall.recover = 0

[State AttackDone]
type=statetypeset
trigger1= animelemtime(18)>=0
movetype=I

[State 3000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Corkscrew Blow
[Statedef 3005]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3005
ctrl = 0
facep2 = 1
sprpriority = 2
poweradd = ifelse(var(53) > 0, -1000, -2000)

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [1000, 2999]) && var(6) || var(53)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(23) = (PrevStateNo = [3000,4999]) && var(11)

[State 3000, No Corner Push]
type=VarSet
trigger1=AnimElem = 1
fvar(5)=0
[State 3000, Unguardable]
type = VarSet
trigger1 = AnimElem = 1 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(18) = 50

[State 0, Explod]
type = Explod
trigger1 = animelemtime(13) = 0 || animelemtime(13) = 5 || animelemtime(13) = 10
anim = 6028
ID = 6028
pos = 20,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 0.125,0.125
sprpriority = 5
 
[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = [0,46]
value = SCA 

[State 3000, Super A]
type = SuperPause
trigger1 = time=3
time=43
movetime=43
pos = 25, -57
anim = -1
darken = 0
unhittable = 1
sound=s8500,0
[State 3000, SuperPause FX]
type = Helper
trigger1 = time=3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos =-18,-58
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1
 
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S3000,0
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 13
value = S3000,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 12
value = S1,3

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 13
x = 12.8

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 19
x = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 13
anim = 3001
ID = 3001
pos = -20*const(size.xscale),1*const(size.yscale)
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 0.5*const(size.xscale),0.5*const(size.yscale)
sprpriority = 5
ownpal = 1
ignorehitpause = 0
removeongethit = 0

;[State 0, Explod]
;type = Explod
;trigger1 = animelem = 13
;anim = 3002
;ID = 3002
;pos = -20,1
;postype = p1  ;p2,front,back,left,right
;bindtime = -1
;removetime = -2
;scale = 0.5*const(size.xscale),0.5*const(size.yscale)
;sprpriority = 4
;ownpal = 1
;removeongethit = 0

[State 3000, 5]
type = HitDef
trigger1 = animelem=13||animelem=14||animelem=15||animelem=16||animelem=17||animelem=18
attr = S, HA
animtype  = Hard
;;;damage    = 35,7
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 07
getpower = 0,0
givepower = 25, 25
priority  = 6
guardflag = MA
hitflag = MAF
pausetime = 3,3
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-60
hitsound   = s2,2
guardsound = s130,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1, -3
air.velocity = -0.5,-1
yaccel = .5;325
p2facing = 1
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall = 1
fall.recover = 0

[State 3000, 5]
type = HitDef
trigger1 = animelem=19
attr = S, HA
animtype  = diagup
;;;damage    = 42,7
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 07
getpower = 0,0
givepower = 25, 25
priority  = 6
guardflag = MA
hitflag = MAF
pausetime = 12,12
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-60
hitsound   = s2,2
guardsound = s130,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -6, -4
air.velocity = -6, -4
yaccel = .5325
p2facing = 1
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall = 1
fall.recover = 0

[State AttackDone]
type=statetypeset
trigger1= animelemtime(20)>=0
movetype=I

[State 3000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------------------------
; Rocket Uppercut
[Statedef 3050]
type    = S
movetype= A
physics = N
velset = 0, 0
anim = 3050
ctrl = 0
facep2 = 1
poweradd = ifelse(var(53) > 0, 0, -1000)
 
[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [1000, 2999]) && var(6) || var(53)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(23) = (PrevStateNo = [3000,4999]) && var(11)

[State 3000, No Corner Push]
type = VarSet
trigger1 = Anim = 3050 && AnimElemtime(4) = 0
trigger2=pos y < 0
fvar(5)=0

[State 3000, Unguardable]
type = VarSet
trigger1 = anim = 3050 && AnimElemtime(4) = 0 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(18) = 50
 
[State 0, NotHitBy]
type = NotHitBy
triggerall = anim = 3050
trigger1 = time = [0,46]
value = SCA 
[State 3000, Super A]
type = SuperPause
trigger1 = time=3
time=43
movetime=43
pos = 25, -57
anim = -1
darken = 0
unhittable = 1
sound=s8500,0
[State 3000, SuperPause FX]
type = Helper
trigger1 = time=3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 32,-35
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 0, Width]
type = Width
trigger1 = 1
edge = 20,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S1,3
channel = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem=2||animelem=3||animelem=7
x = 10

[State 3011, StateTypeSet]
type = StatetypeSet
trigger1 = AnimElemtime(7)>=0 && animelemtime(14)<0
trigger2 = AnimElemtime(20)>=0
statetype=A
physics = N

[State 0, StateTypeSet]
type = StateTypeSet
trigger1= animelemtime(14)>=0 && animelemtime(20)<0
statetype=S
physics = N

[State 3011, VelSet]
type = VelSet
triggerall = anim = 3050
trigger1 = AnimElem = 7
x = 2
y = -5 

[State 810, Swing Snd]
type = PlaySnd
trigger1 = anim =3050
trigger1 = AnimElem = 7
value = S1, 3

[State 220, Jump Snd]
type = PlaySnd
trigger1 = anim =3050
trigger1 = AnimElem = 7
value = S41, 0


[State 3000, Dust Helper]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3011, VelAdd]
type = VelAdd
triggerall = Anim = 3050; && pos y < -15
trigger1 = AnimElemtime(7)>=0 && animelemtime(14)<0
y = .57

[State 0, Explod]
type = helper
triggerall = Anim = 3050
trigger1 = Animelem = 20
helpertype = normal
ID = 30155
stateno = 30155
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1

[State 1051, 1]
type = HitDef
triggerall = Anim = 3050
trigger1 = Animelem = 6
attr = S, HA
animtype  = Up
;;;damage    = 42,7
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
givepower = 25,25
priority=4,Hit
guardflag = MA
hitflag = MAF
pausetime = 12,12
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-69
hitsound   = s2,3
guardsound = s130,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1.5,-10
guard.velocity = -6
air.velocity = -1.5,-11
airguard.velocity = -4,-4.5
p2facing = 1
envshake.time=16
envshake.freq=30
envshake.ampl=4
fall = 1                   ;Make p2 fall down
fall.recover = 0
yaccel = .5325

[State 1051, 2]
type = HitDef
triggerall = anim = 3050
trigger1 = AnimElem >= 7; && vel y < 0
attr = A, HA
animtype  = Up
;;;damage    = 35,7
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getpower = 0
priority=4,Hit
guardflag = MA
hitflag = MAF
pausetime = 12,12
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-110
hitsound   = s2,3
guardsound = s130,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1.5,-11
guard.velocity = -6
air.velocity = -1.5,-9
airguard.velocity = -4,-4.5
air.fall = 1
p2facing = 1
envshake.time=16
envshake.freq=30
envshake.ampl=4
fall = 1                   ;Make p2 fall down
fall.recover = 0
yaccel = .5325


[State 3100, Anim]
type=changeanim
triggerall= vel y>0 && pos y>=0;=-10;ceil(vel y)
trigger1= animelemtime(13)>=0 && animelemtime(14)<0
value=3050
elem=animelemno(0)+1

[State 0, PosSet]
type = PosSet
trigger1= animelem=14;animelemtime(14)>=0 && animelemtime(20)<0
trigger2= pos y >= 0
;trigger3= animelemtime(13)>=10 && animelemtime(14)<0 && pos y < -15
y = 0

[State 0, VelSet]
type = VelSet
trigger1= animelem=14;animelemtime(14)>=0 && animelemtime(20)<0
x = 0
y = 0

[State 52, Landing Sound]
type = PlaySnd
trigger1= animelem=14;animelemtime(14)>=0 && animelemtime(20)<0
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1= animelem=14;animelemtime(14)>=0 && animelemtime(20)<0
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 0, Width]
type = Width
trigger1= animelemtime(14)>=0 ;&& animelemtime(16)<0
edge = 20,0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem=15||animelem=16||animelem=20
x = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 18
value = S3012,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=18
value = S1,3
channel = 1

;[State 0, ChangeAnim]
;type = ChangeAnim
;triggerall = AnimElem =16,>=1
;trigger1 = p2bodydist y>=-90
;value = 3050
;elem = 17
;persistent = 0

[State 3011, VelSet]
type = VelSet
trigger1 = AnimElem = 20
x = 2
y = -12;

[State 220, Jump Snd]
type = PlaySnd
triggerall = anim =3050
trigger1 = AnimElem = 22
trigger2 = AnimElem = 25
trigger3 = AnimElem = 28
trigger4 = AnimElem = 31
trigger5 = AnimElem = 33
value = S1, 3

[State 1302, Dust Helper]
type = Helper
trigger1 = AnimElem = 20
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1
[State 3011, VelAdd]
type = VelAdd
trigger1 = AnimElem =20,>=0
y = .5

[State 1051, 2]
type = HitDef
trigger1 = animelem = 19
attr = S, HA
animtype  = Up
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
;;;damage = ceil(ifElse(fvar(11) * %% < 7, 7, fvar(11) * %%)), 07
getpower = 0
priority=4,Hit
guardflag = MA
hitflag = MAF
pausetime = 4,4
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-69
hitsound   = s2,3
guardsound = s130,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1,-11
guard.velocity = -6
air.velocity = 0,-5;.25;0,-7.3
airguard.velocity = -4,-4.5
p2facing = 1
envshake.time=16
envshake.freq=30
envshake.ampl=4
fall = 1                   ;Make p2 fall down
fall.recover = 0
yaccel = .5325

[State 1051, 3]
type = HitDef
trigger1 = AnimElem=20||animelem=22||animelem=25||animelem=28||animelem=32
attr = A, HA
animtype  = Up
damage    = 7, 7
;;;damage = ceil(ifElse(fvar(11) * %% < 7, 7, fvar(11) * %%)), 07
getpower = 0
priority=4,Hit
guardflag = MA
hitflag = MAF
pausetime = 4,3
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-110
hitsound   = s2,3
guardsound = s130,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1,-12
ground.cornerpush.veloff=0
guard.velocity = -6
air.velocity = 0,-5.3;.25
;air.velocity = 0,-7.3
airguard.velocity = -4,-4.5
p2facing = 1
envshake.time=16
envshake.freq=30
envshake.ampl=4
fall = 1                   ;Make p2 fall down
fall.recover = 0
yaccel = .5325

[State 1051, 3]
type = HitDef
trigger1 = animelem=33
attr = A, HA
animtype  = Up
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
;;;damage = ceil(ifElse(fvar(11) * %% < 7, 7, fvar(11) * %%)), 07
getpower = 0,0
priority=4,Hit
guardflag = MA
hitflag = MAF
pausetime = 8,8
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-110
hitsound   = s2,3
guardsound = s130,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -4,-12
guard.hittime = 18
;ground.cornerpush.veloff = -30
guard.velocity = -6
air.velocity = -4.5,-6;.5
;air.velocity = -4,-7.3
airguard.velocity = -4,-4.5
p2facing = 1
envshake.time=16
envshake.freq=30
envshake.ampl=4
fall = 1                   ;Make p2 fall down
fall.recover = 0
yaccel = .5325

[State AttackDone]
type=statetypeset
trigger1= animelemtime(34)>=0
movetype=I

[State 3011, 3] ;Change state when KFM is close to ground
type = ChangeState
triggerall = animelemtime(39)>0
trigger1 = Vel Y > 0 && Pos Y >= -10
value = 1052
ctrl = 0
;--------------------------------------------------------------------------------
; MAX Rocket Uppercut
[Statedef 3055]
type    = S
movetype= A
physics = N
velset = 0, 0
anim = 3055
ctrl = 0
facep2 = 1
poweradd = ifelse(var(53) > 0, -1000, -2000)
 
[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [1000, 2999]) && var(6) || var(53)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(23) = (PrevStateNo = [3000,4999]) && var(11)

[State 3000, No Corner Push]
type = VarSet
trigger1 = Anim = 3055 && AnimElemtime(4) = 0
trigger2=pos y < 0
fvar(5)=0

[State 3000, Unguardable]
type = VarSet
trigger1 = anim = 3055 && AnimElemtime(4) = 0 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(18) = 50
 
[State 0, NotHitBy]
type = NotHitBy
triggerall = anim = 3055
trigger1 = time = [0,46]
value = SCA 
[State 3000, Super A]
type = SuperPause
trigger1 = anim = 3055 && AnimElemtime(4) = 0
time=43
movetime=43
pos = 0, 0
anim = -1
darken = 0
unhittable = 1
p2DefMul = 1
poweradd = 0
sound=s8500,0
 
[State 3000, SuperPause FX]
type = Helper
trigger1 = Anim = 3055 && AnimElemtime(4) = 0
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 32,-35
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 0, Width]
type = Width
trigger1 = 1
edge = 20,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S3010,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S1,3
channel = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem=2||animelem=3||animelem=7
x = 10

[State 3011, StateTypeSet]
type = StatetypeSet
trigger1 = AnimElemtime(7)>=0 && animelemtime(14)<0
trigger2 = AnimElemtime(20)>=0 && animelemtime(29)<0
trigger3 = AnimElemtime(35)>=0
statetype=A
physics = N

[State 0, StateTypeSet]
type = StateTypeSet
trigger1= animelemtime(14)>=0 && animelemtime(20)<0
trigger2= animelemtime(29)>=0 && animelemtime(35)<0
statetype=S
physics = N

[State 3011, VelSet]
type = VelSet
triggerall = anim = 3055
trigger1 = AnimElem = 7
x = 2
y = -5 

[State 810, Swing Snd]
type = PlaySnd
trigger1 = anim =3055
trigger1 = AnimElem = 7
value = S1, 3

[State 220, Jump Snd]
type = PlaySnd
trigger1 = anim =3055
trigger1 = AnimElem = 7
value = S41, 0


[State 3000, Dust Helper]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3011, VelAdd]
type = VelAdd
triggerall = Anim = 3055; && pos y < -15
trigger1 = AnimElemtime(7)>=0 && animelemtime(14)<0
y = .5

[State 0, Explod]
type = helper
triggerall = Anim = 3055
trigger1 = Animelem = 35
helpertype = normal
ID = 30155
stateno = 30155
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1

[State 1051, 1]
type = HitDef
triggerall = Anim = 3055
trigger1 = Animelem = 6
attr = S, HA
animtype  = Up
;;;damage    = 42,7
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 07
givepower = 25,25
priority=4,Hit
guardflag = MA
hitflag = MAF
pausetime = 12,12
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-69
hitsound   = s2,3
guardsound = s130,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1.5,-11
guard.velocity = -6
air.velocity = -1.5,-9
airguard.velocity = -4,-4.5
p2facing = 1
envshake.time=16
envshake.freq=30
envshake.ampl=4
fall = 1                   ;Make p2 fall down
fall.recover = 0
yaccel = .5325

[State 1051, 2]
type = HitDef
triggerall = anim = 3055
trigger1 = AnimElem >= 7; && vel y < 0
attr = A, HA
animtype  = Up
;;;damage    = 35,7
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 07
getpower = 0
priority=4,Hit
guardflag = MA
hitflag = MAF
pausetime = 12,12
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-110
hitsound   = s2,3
guardsound = s130,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1.5,-11
guard.velocity = -6
air.velocity = -1.5,-9
airguard.velocity = -4,-4.5
air.fall = 1
p2facing = 1
envshake.time=16
envshake.freq=30
envshake.ampl=4
fall = 1                   ;Make p2 fall down
fall.recover = 0
yaccel = .5325

[State 3010, 3]
type = HitDef
trigger1 = AnimElem = 20
attr = A, HA
animtype  = Hard
air.animtype  = Up
;;;damage    = 42, 7
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 07
getpower = 0,0
priority  = 7, Hit
hitflag = MAF
guardflag = M
pausetime = 6,6
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-78
hitsound = S2,3
guardsound = s130,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1.5,-14
guard.velocity = -8
air.velocity = -1.5,-14
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -12.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
forcestand = 1
envshake.time=16
envshake.freq=30
envshake.ampl=4
yaccel = .5325


[State 3100, Anim]
type=changeanim
triggerall= vel y>0 && pos y>=0;=-10;ceil(vel y)
trigger1= animelemtime(13)>=0 && animelemtime(14)<0
trigger2= animelemtime(28)>=0 && animelemtime(29)<0
value=3055
elem=animelemno(0)+1

[State 0, PosSet]
type = PosSet
trigger1= animelem=14;animelemtime(14)>=0 && animelemtime(20)<0
trigger2= animelem=29;animelemtime(29)>=0 && animelemtime(35)<0
trigger3= pos y >= 0
;trigger3= animelemtime(13)>=10 && animelemtime(14)<0 && pos y < -15
y = 0

[State 0, VelSet]
type = VelSet
trigger1= animelem=14;animelemtime(14)>=0 && animelemtime(20)<0
trigger2= animelem=29;animelemtime(29)>=0 && animelemtime(35)<0
x = 0
y = 0

[State 52, Landing Sound]
type = PlaySnd
trigger1= animelem=14;animelemtime(14)>=0 && animelemtime(20)<0
trigger2= animelem=29;animelemtime(29)>=0 && animelemtime(35)<0
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1= animelem=14;animelemtime(14)>=0 && animelemtime(20)<0
trigger2= animelem=29;animelemtime(29)>=0 && animelemtime(35)<0
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 0, Width]
type = Width
trigger1= animelemtime(14)>=0 ;&& animelemtime(16)<0
edge = 20,0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem=15||animelem=16||animelem=20
x = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 17
value = S3011,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 18
value = S1,3
channel = 1

[State 3011, VelSet]
type = VelSet
trigger1 = AnimElem = 20
x = 1
y = -8.5

[State 810, Swing Snd]
type = PlaySnd
trigger1 = anim =3055
trigger1 = AnimElem = 20
value = S1, 3

[State 220, Jump Snd]
type = PlaySnd
trigger1 = anim =3055
trigger1 = AnimElem = 20
value = S41, 0

[State 1302, Dust Helper]
type = Helper
trigger1 = AnimElem = 20
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3011, VelAdd]
type = VelAdd
trigger1 = AnimElemtime(20)>0 && animelemtime(29)<0
y = .5

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem=30||animelem=31||animelem=35
x = 13

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 33
value = S3012,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=33||animelem=35||animelem=36||animelem=37||animelem=38||animelem=39||animelem=40||animelem=42||animelem=43||animelem=44||animelem=45
value = S1,3
channel = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = AnimElem =31,>=1
trigger1 = p2bodydist y>=-90
value = 3055
elem = 32
persistent = 0

[State 3011, VelSet]
type = VelSet
trigger1 = AnimElem = 35
x = 2
y = -12;

[State 810, Swing Snd]
type = PlaySnd
trigger1 = anim =3055
trigger1 = AnimElem = 35
value = S1, 3

[State 220, Jump Snd]
type = PlaySnd
triggerall = anim =3055
trigger1 = AnimElem = 37
trigger2 = AnimElem = 40
trigger3 = AnimElem = 43
trigger4 = AnimElem = 46
trigger5 = AnimElem = 49
value = S1, 3

[State 1302, Dust Helper]
type = Helper
trigger1 = AnimElem = 35
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1
[State 3011, VelAdd]
type = VelAdd
trigger1 = AnimElem =35,>=0
y = .5

[State 1051, 2]
type = HitDef
trigger1 = animelem = 34
attr = S, HA
animtype  = Up
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
;;;damage = ceil(ifElse(fvar(11) * %% < 7, 7, fvar(11) * %%)), 07
getpower = 0
priority=4,Hit
guardflag = MA
hitflag = MAF
pausetime = 4,4
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-69
hitsound   = s2,3
guardsound = s130,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1,-11
guard.velocity = -6
air.velocity = 0,-5;.25;0,-7.3
airguard.velocity = -4,-4.5
p2facing = 1
envshake.time=16
envshake.freq=30
envshake.ampl=4
fall = 1                   ;Make p2 fall down
fall.recover = 0
yaccel = .5325

[State 1051, 3]
type = HitDef
trigger1 = AnimElem=35||animelem=37||animelem=40||animelem=41||animelem=43||animelem=44||animelem=47
attr = A, HA
animtype  = Up
damage    = 7, 7
;;;damage = ceil(ifElse(fvar(11) * %% < 7, 7, fvar(11) * %%)), 07
getpower = 0
priority=4,Hit
guardflag = MA
hitflag = MAF
pausetime = 4,3
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-110
hitsound   = s2,3
guardsound = s130,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1,-12
ground.cornerpush.veloff=0
guard.velocity = -6
air.velocity = 0,-6;.25
;air.velocity = 0,-7.3
airguard.velocity = -4,-4.5
p2facing = 1
envshake.time=16
envshake.freq=30
envshake.ampl=4
fall = 1                   ;Make p2 fall down
fall.recover = 0
yaccel = .5325

[State 1051, 3]
type = HitDef
trigger1 = animelem=48
attr = A, HA
animtype  = Up
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
;;;damage = ceil(ifElse(fvar(11) * %% < 7, 7, fvar(11) * %%)), 07
getpower = 0,0
priority=4,Hit
guardflag = MA
hitflag = MAF
pausetime = 8,8
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-110
hitsound   = s2,3
guardsound = s130,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -4,-12
guard.hittime = 18
;ground.cornerpush.veloff = -30
guard.velocity = -6
air.velocity = -4.5,-6;.5
;air.velocity = -4,-7.3
airguard.velocity = -4,-4.5
p2facing = 1
envshake.time=16
envshake.freq=30
envshake.ampl=4
fall = 1                   ;Make p2 fall down
fall.recover = 0
yaccel = .5325

[State AttackDone]
type=statetypeset
trigger1= animelemtime(49)>=0
movetype=I

[State 3011, 3] ;Change state when KFM is close to ground
type = ChangeState
triggerall = animelemtime(54)>0
trigger1 = Vel Y > 0 && Pos Y >= -10
value = 1052
ctrl = 0

;---------------------------------------------------------------------------
;Rolling Thunder
[Statedef 3010]
type = S
movetype = A
physics = S
anim = 3010
sprpriority = 2
velset = 0,0
ctrl = 0
facep2 = 1
poweradd = ifelse(var(53) > 0, 0, -1000)

;[State 0, AttackMulSet]
;type = AttackMulSet
;trigger1 = 1;(prevstateno=[200,699])
;value = ifelse(hitcount<=4,0.8,0.3)
;[State 0, AttackMulSet]
;type = AttackMulSet
;trigger1 = (prevstateno=[200,699])
;value = ifelse(hitcount<=4,0.85,0.15);0.9
;[State 0, AttackMulSet]
;type = AttackMulSet
;trigger1 = (prevstateno=[1000,2999])
;value = ifelse(hitcount<=4,0.8,0.125);0.85


[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [1000, 2999]) && var(6) || var(53)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(23) = (PrevStateNo = [3000,4999]) && var(11)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, No Corner Push]
type = VarSet
trigger1=AnimElemtime(1) = 0
fvar(5)=0
[State 3000, Unguardable]
type = VarSet
trigger1 = AnimElem = 1 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(18) = 50

[State 105, Dust]
type = helper
trigger1 = Time = 43
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
trigger1 = Time = 43
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1
;
;[State 0, VarSet]
;type = VarSet
;trigger1 = movehit = 1 && numtarget(3010)
;trigger2 = !time
;fvar(8) = ifelse(!time,0,p2dist x)
;ignorehitpause = 1
;persistent = 1
;[State 0, VarSet]
;type = VarSet
;trigger1 = Movehit = 1 && Numtarget(3010)
;trigger2 = !time
;fvar(9) = ifelse(!time,0,p2dist y)
;ignorehitpause = 1
;persistent = 1
;[State 0, PlayerPush]
;type = PlayerPush
;trigger1 = Movehit && numtarget
;value = 0
;ignorehitpause = 1
;persistent = 1
;
[State 0, TargetBind]
type = TargetBind
trigger1 = Movehit && numtarget && P2Bodydist x<0
trigger1 = anim != 3014 && anim != 3015
time = 1
id = 3010
pos = 25,0;fvar(9)
ignorehitpause = 1
persistent = 1
[State 0, TargetBind]
type = TargetBind
trigger1 = Movehit && numtarget && P2Bodydist x<0
trigger1 = anim != 3014 && anim != 3015
time = 1
id = 3011
pos = 25,0;fvar(9)
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = posadd
trigger1 = anim = 3010 && movehit
x = 32

[State 0, PosAdd]
type = PosAdd
trigger1 = movehit 
trigger1 = fvar(8) || fvar(9)
trigger1 = anim != 3014 && anim != 3015
x = p2dist x - fvar(8)
 
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 43
value = s40,8

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = [0,49]
value = SCA;,NA,SA,HA,NP,SP,HP,NT,ST,HT

[State 3000, Super A]
type = SuperPause
trigger1 = Anim = 3010 && time=3
time=43
movetime=43
unhittable = 1
anim = -1
darken = 0
poweradd = 0
sound=s8500,0
[State 3055, SuperPause FX]
type = Helper
trigger1 = Anim = 3010 && time=3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 5,-81
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1
[State 3055, Width]
type = Width
triggerall = anim = 3010
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(23) < 0
value = 24, 24

[State 0, VelSet]
type = VelSet
triggerall = anim = 3010
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(6) < 0
x = 18

[State 0, VelSet]
type = VelSet
triggerall = anim = 3010
trigger1 = animelem = 7
trigger2 = animelem = 15
x = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3010
trigger1 = animelem = 1
value = S3012,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3010
trigger1 = animelem = 2
value = S100,0
channel = 0

[State 3055, Hit]
type = HitDef
trigger1 = Anim = 3010 && (AnimElem = 5 || AnimElem = 13)
attr = S, HA
guardflag = M
hitflag = MAF
animtype  = Hard
air.animtype = Hard
priority = 6
;;;damage    = 49, 7
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 07
getpower = 0,0
givepower = 25, 25
pausetime = 8, 8
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-47
hitsound = S2,3
guardsound = S130, 0
air.type = High
forcestand = 1
ground.type = low;High
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
p2facing = 1
ground.velocity = -2
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
air.velocity = -2,0
ID = 3010;ifelse(fvar(8) && fvar(9),3016,3015)
fall.recover = 1
kill = 0
forcenofall = 1
p2stateno = 587433
forcestand = 1
envshake.time=12
envshake.freq=100
envshake.ampl=4
yaccel = .6

;getpower = 0,0
;givepower = 25, 25
;pausetime = 8, 8
;sparkno = -1 + 0 * (var(33) := 8014)
;guard.sparkno= -1 + 0 * (var(34) := 8001)
;sparkxy = -10 + 0*(var(12):=77), var(13):=-47
;hitsound = S2,3
;guardsound = S6, 0
;air.type = Low
;forcestand = 1
;ground.type = Low
;ground.slidetime = 12
;ground.hittime  = 14
;ground.velocity = -2
;ground.cornerpush.veloff = -2
;air.velocity = -2, 2
;fall=0
;air.fall = 0
;ID = 3010
;p2stateno = 587433
;forcenofall = 1
;p2facing = 1
;fall.recover = 0
;envshake.time=16
;envshake.freq=60
;envshake.ampl=4
;yaccel = .6

[State 3112, Combo]
type=changeanim
triggerall = anim = 3010
trigger1= animelem = 6
value=3011
persistent = 0

;[State 3050, StateChange]
;type = Changeanim
;triggerall = anim = 3050
;triggerall = !movecontact
;trigger1 = AnimTime = 0
;value = 3051
;persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 3011
trigger1 = animelem = 5||animelem = 15
trigger2 = anim = 3012
trigger2 = animelem = 5||animelem = 15
trigger3 = anim = 3013
trigger3 = animelem = 5||animelem = 15
value = S3050,0
channel = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = anim = 3011
trigger1 = animelem = 5||animelem = 15
trigger2 = anim = 3012
trigger2 = animelem = 5||animelem = 15
trigger3 = anim = 3013
trigger3 = animelem = 5||animelem = 15
x = 5

[State 0, VelSet]
type = VelSet
trigger1 = anim = 3011
trigger2 = anim = 3012
trigger2 = anim = 3013
x = 0

[State 3050, Hit Anim Elem 7]
type = HitDef
triggerAll = AnimElem=7;
trigger1 = (Anim = [3011,3013]) 
;trigger1 = (Anim = 3011 && (AnimElem = 7 || AnimElem = 17))
;trigger2 = (Anim = 3012 && (AnimElem = 7 || AnimElem = 17))
;trigger3 = (Anim = 3013 && (AnimElem = 7 || AnimElem = 17))
attr = S, HA
guardflag = M
hitflag = MAF
animtype  = medium;Hard
air.animtype = Hard
priority = 6
;;;damage    = 21, 7
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 07
getpower = 0,0
givepower = 25, 25
pausetime = 4, 4
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-47
hitsound = S2,3
guardsound = S130, 0
air.type = High
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
guard.hittime = 16
air.hittime = 120
ground.velocity = 0,0
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
air.velocity =-2,0
ID = 3010
p2stateno = 587433
fall = 0
forcenofall = 1
p2facing = 1
air.fall = 0
fall.recover = 0
envshake.time=16
envshake.freq=60
envshake.ampl=4
yaccel = .6

[State 3050, Hit Anim Elem 17]
type = HitDef
triggerAll = AnimElem=17;
trigger1 = (Anim = [3011,3013]) 
;trigger1 = (Anim = 3011 && (AnimElem = 7 || AnimElem = 17))
;trigger2 = (Anim = 3012 && (AnimElem = 7 || AnimElem = 17))
;trigger3 = (Anim = 3013 && (AnimElem = 7 || AnimElem = 17))
attr = S, HA
guardflag = M
hitflag = MAF
animtype  = Hard
air.animtype = Hard
priority = 6
;;;damage    = 21, 7
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 07
getpower = 0,0
givepower = 25, 25
pausetime = 4, 4
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-47
hitsound = S2,3
guardsound = S130, 0
air.type = High
ground.type = low;High
ground.slidetime = 16
ground.hittime  = 16
guard.hittime = 16
air.hittime = 120
ground.velocity = 0,0
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
air.velocity =-2,0
ID = 3010
p2stateno = 587433
fall = 0
forcenofall = 1
p2facing = 1
air.fall = 0
fall.recover = 0
envshake.time=16
envshake.freq=60
envshake.ampl=4
yaccel = .6


[State 0, PlaySnd]
type = PlaySnd
triggerall = animelem = 6  || animelem = 16
trigger1 = anim = 3011
trigger2 = anim = 3012
trigger3 = anim = 3013
trigger4 = anim = 3014 || anim = 3015
value = S1,3
;[State 0, PlaySnd]
;type = PlaySnd
;triggerall = animelem = 13
;trigger1 = anim = 3050
;value = S1,3
[State 105, Dust]
type = helper
triggerall = animelem = 6  || animelem = 16
trigger1 = anim = 3011
trigger2 = anim = 3012
trigger3 = anim = 3013
helpertype = normal
stateno = 8103
ID = 8100
pos = 25, 0
name = "Dash Dust"
postype = p1
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 3050, Combo]
type=changeanim
triggerall = anim = 3011
trigger1= movecontact || movereversed
trigger1= command="a"||command="b"||command="c" || command = "x" || command = "y" || command = "z"
trigger1= AnimElemTime(18)>=0&& movecontact
value=3012
persistent = 0

[State 3050, StateChange]
type = Changeanim
triggerall = anim = 3011
trigger1 = AnimTime = 0
value = ifelse(movehit && numtarget, 3015, 3014)
persistent = 0

[State 3050, StateChange]
type = Changeanim
triggerall = anim = 3012
trigger1 = AnimTime = 0
value = ifelse(movehit && numtarget, 3015, 3014)
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3014 || anim = 3015
trigger1 = animelem = 5
value = S1050,0
channel = 0

[State 3050, Hit]
type = HitDef
triggerall = anim = 3014 || anim = 3015
trigger1 = AnimElem = 7
attr = S, HA
hitflag = MAF
guardflag = M
getpower  = 0
animtype  = Hard
air.animtype = Up
priority = 6
;;;damage    = 56, 7
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 07
getpower = 0,0
givepower = 25, 25
pausetime = 7, 7
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-110
hitsound = S2,3
guardsound = S130, 0
air.type = High
;forcestand = 1
ground.slidetime = 16
ground.hittime  = 16
guard.hittime = 16
air.hittime = 120
ground.velocity = -8, -10
air.velocity = -5, -5
fall = 1
p2facing = 1
air.fall = 1
fall.recover = 0
ID = 3010
envshake.time=16
envshake.freq=60
envshake.ampl=4
yaccel = .6
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0

[State AttackDone]
type=null;statetypeset
triggerall = anim = 3014 || anim = 3015
trigger1= animelemtime(8)>=0
movetype=I

[State 3050, StateChange]
type = ChangeState
triggerall = anim = 3014 || anim = 3015
trigger1 = !AnimTime; = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;MAX Rolling Thunder
[Statedef 3015]
type = S
movetype = A
physics = S
anim = 3010
sprpriority = 2
velset = 0,0
ctrl = 0
facep2 = 1
poweradd = ifelse(var(53) > 0, -1000, -2000)
  
[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [1000, 2999]) && var(6) || var(53)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(23) = (PrevStateNo = [3000,4999]) && var(11)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, No Corner Push]
type = VarSet
trigger1=AnimElemtime(1) = 0
fvar(5)=0
[State 3000, Unguardable]
type = VarSet
trigger1 = AnimElem = 1 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(18) = 50

[State 105, Dust]
type = helper
trigger1 = Time = 43
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
trigger1 = Time = 43
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1
;
;[State 0, VarSet]
;type = VarSet
;trigger1 = movehit = 1 && numtarget(3010)
;trigger2 = !time
;fvar(8) = ifelse(!time,0,p2dist x)
;ignorehitpause = 1
;persistent = 1
;[State 0, VarSet]
;type = VarSet
;trigger1 = Movehit = 1 && Numtarget(3010)
;trigger2 = !time
;fvar(9) = ifelse(!time,0,p2dist y)
;ignorehitpause = 1
;persistent = 1
;[State 0, PlayerPush]
;type = PlayerPush
;trigger1 = Movehit && numtarget
;value = 0
;ignorehitpause = 1
;persistent = 1
;
[State 0, TargetBind]
type = TargetBind
trigger1 = Movehit && numtarget && P2Bodydist x<0
trigger1 = anim != 3014 && anim != 3015
time = 1
id = 3010
pos = 25,0;fvar(9)
ignorehitpause = 1
persistent = 1
[State 0, TargetBind]
type = TargetBind
trigger1 = Movehit && numtarget && P2Bodydist x<0
trigger1 = anim != 3014 && anim != 3015
time = 1
id = 3011
pos = 25,0;fvar(9)
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = posadd
trigger1 = anim = 3010 && movehit
x = 32

[State 0, PosAdd]
type = PosAdd
trigger1 = movehit 
trigger1 = fvar(8) || fvar(9)
trigger1 = anim != 3014 && anim != 3015
x = p2dist x; - fvar(8)
 
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 43
value = s40,8

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = [0,49]
value = SCA;,NA,SA,HA,NP,SP,HP,NT,ST,HT

[State 3000, Super A]
type = SuperPause
trigger1 = Anim = 3010 && AnimElemTime(1) = 0
time=43
movetime=43
unhittable = 1
anim = -1
darken = 0
poweradd = 0
sound=s8500,0
[State 3055, SuperPause FX]
type = Helper
trigger1 = Anim = 3010 && AnimElemTime(1) = 0
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 5,-81
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1
[State 3055, Width]
type = Width
triggerall = anim = 3010
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(23) < 0
value = 24, 24

[State 0, VelSet]
type = VelSet
triggerall = anim = 3010
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(6) < 0
x = 25

[State 0, VelSet]
type = VelSet
triggerall = anim = 3010
trigger1 = animelem = 7
trigger2 = animelem = 15
x = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3010
trigger1 = animelem = 1
value = S3012,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3010
trigger1 = animelem = 2
value = S100,0
channel = 0

[State 3055, Hit]
type = HitDef
trigger1 = Anim = 3010 && (AnimElem = 5 || AnimElem = 13)
attr = S, HA
guardflag = M
hitflag = MAF
animtype  = Hard
air.animtype = Hard
priority = 6
;;;damage    = 49, 7
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 07
getpower = 0,0
givepower = 25, 25
pausetime = 8, 8
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-47
hitsound = S2,3
guardsound = S130, 0
air.type = High
forcestand = 1
ground.type = low;High
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
air.hittime = 120
p2facing = 1
ground.velocity = -2
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
air.velocity = -2,0
ID = 3010;ifelse(fvar(8) && fvar(9),3016,3015)
fall.recover = 1
kill = 0
forcenofall = 1
p2stateno = 587433
forcestand = 1
envshake.time=12
envshake.freq=100
envshake.ampl=4
yaccel = .6

;getpower = 0,0
;givepower = 25, 25
;pausetime = 8, 8
;sparkno = -1 + 0 * (var(33) := 8014)
;guard.sparkno= -1 + 0 * (var(34) := 8001)
;sparkxy = -10 + 0*(var(12):=77), var(13):=-47
;hitsound = S2,3
;guardsound = S6, 0
;air.type = Low
;forcestand = 1
;ground.type = Low
;ground.slidetime = 12
;ground.hittime  = 14
;ground.velocity = -2
;ground.cornerpush.veloff = -2
;air.velocity = -2, 2
;fall=0
;air.fall = 0
;ID = 3010
;p2stateno = 587433
;forcenofall = 1
;p2facing = 1
;fall.recover = 0
;envshake.time=16
;envshake.freq=60
;envshake.ampl=4
;yaccel = .6

[State 3112, Combo]
type=changeanim
triggerall = anim = 3010
trigger1= animelem = 6
value=3011
persistent = 0

;[State 3050, StateChange]
;type = Changeanim
;triggerall = anim = 3050
;triggerall = !movecontact
;trigger1 = AnimTime = 0
;value = 3051
;persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 3011
trigger1 = animelem = 5||animelem = 15
trigger2 = anim = 3012
trigger2 = animelem = 5||animelem = 15
trigger3 = anim = 3013
trigger3 = animelem = 5||animelem = 15
value = S3050,0
channel = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = anim = 3011
trigger1 = animelem = 5||animelem = 15
trigger2 = anim = 3012
trigger2 = animelem = 5||animelem = 15
trigger3 = anim = 3013
trigger3 = animelem = 5||animelem = 15
x = 5

[State 0, VelSet]
type = VelSet
trigger1 = anim = 3011
trigger2 = anim = 3012
trigger2 = anim = 3013
x = 0

[State 3050, Hit Anim Elem 7]
type = HitDef
triggerAll = AnimElem=7;
trigger1 = (Anim = [3011,3013]) 
;trigger1 = (Anim = 3011 && (AnimElem = 7 || AnimElem = 17))
;trigger2 = (Anim = 3012 && (AnimElem = 7 || AnimElem = 17))
;trigger3 = (Anim = 3013 && (AnimElem = 7 || AnimElem = 17))
attr = S, HA
guardflag = M
hitflag = MAF
animtype  = medium;Hard
air.animtype = Hard
priority = 6
;;;damage    = 21, 7
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 07
getpower = 0,0
givepower = 25, 25
pausetime = 4, 4
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-47
hitsound = S2,3
guardsound = S130, 0
air.type = High
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
guard.hittime = 16
air.hittime = 120
ground.velocity = 0,0
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
air.velocity =-2,0
ID = 3010
p2stateno = 587433
fall = 0
forcenofall = 1
p2facing = 1
air.fall = 0
fall.recover = 0
envshake.time=16
envshake.freq=60
envshake.ampl=4
yaccel = .6

[State 3050, Hit Anim Elem 17]
type = HitDef
triggerAll = AnimElem=17;
trigger1 = (Anim = [3011,3013]) 
;trigger1 = (Anim = 3011 && (AnimElem = 7 || AnimElem = 17))
;trigger2 = (Anim = 3012 && (AnimElem = 7 || AnimElem = 17))
;trigger3 = (Anim = 3013 && (AnimElem = 7 || AnimElem = 17))
attr = S, HA
guardflag = M
hitflag = MAF
animtype  = Hard
air.animtype = Hard
priority = 6
;;;damage    = 21, 7
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 07
getpower = 0,0
givepower = 25, 25
pausetime = 4, 4
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-47
hitsound = S2,3
guardsound = S130, 0
air.type = High
ground.type = low;High
ground.slidetime = 16
ground.hittime  = 16
guard.hittime = 16
air.hittime = 120
ground.velocity = 0,0
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
air.velocity =-2,0
ID = 3010
p2stateno = 587433
fall = 0
forcenofall = 1
p2facing = 1
air.fall = 0
fall.recover = 0
envshake.time=16
envshake.freq=60
envshake.ampl=4
yaccel = .6


[State 0, PlaySnd]
type = PlaySnd
triggerall = animelem = 6  || animelem = 16
trigger1 = anim = 3011
trigger2 = anim = 3012
trigger3 = anim = 3013
trigger4 = anim = 3014 || anim = 3015
value = S1,3
;[State 0, PlaySnd]
;type = PlaySnd
;triggerall = animelem = 13
;trigger1 = anim = 3050
;value = S1,3
[State 105, Dust]
type = helper
triggerall = animelem = 6  || animelem = 16
trigger1 = anim = 3011
trigger2 = anim = 3012
trigger3 = anim = 3013
helpertype = normal
stateno = 8103
ID = 8100
pos = 25, 0
name = "Dash Dust"
postype = p1
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 3050, Combo]
type=changeanim
triggerall = anim = 3011
trigger1= movecontact || movereversed
trigger1= command="a"||command="b"||command="c" || command = "x" || command = "y" || command = "z"
trigger1= AnimElemTime(18)>=0&& movecontact
value=3012
persistent = 0

[State 3050, StateChange]
type = Changeanim
triggerall = anim = 3011
trigger1 = AnimTime = 0
value = ifelse(movehit && numtarget, 3015, 3014)
persistent = 0

[State 3050, Combo]
type=changeanim
triggerall = anim = 3012
trigger1= movecontact || movereversed
trigger1 = command="a"||command="b"||command="c" || command = "x" || command = "y" || command = "z"
trigger1= AnimElemTime(18)>=0&& movecontact
value=3013
persistent = 0

[State 3050, StateChange]
type = Changeanim
triggerall = anim = 3012
trigger1 = AnimTime = 0
value = ifelse(movehit && numtarget, 3015, 3014)
persistent = 0

[State 3050, StateChange]
type = Changeanim
triggerall = anim = 3013
trigger1 = AnimTime = 0
value = ifelse(movehit && numtarget, 3015, 3014)
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3014 || anim = 3015
trigger1 = animelem = 5
value = S1050,0
channel = 0

[State 3050, Hit]
type = HitDef
triggerall = anim = 3014 || anim = 3015
trigger1 = AnimElem = 6
attr = S, HA
hitflag = MAF
guardflag = M
getpower  = 0
animtype  = Hard
air.animtype = Up
priority = 6
;;;damage    = 56, 7
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 07
getpower = 0,0
givepower = 25, 25
pausetime = 8, 8
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-47
hitsound = S2,3
guardsound = S130, 0
air.type = High
ground.type = low;High
ground.slidetime = 16
ground.hittime  = 16
guard.hittime = 16
air.hittime = 120
ground.velocity = 0,0
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
air.velocity =-2,0
ID = 3010
p2stateno = 587433
fall = 0
forcenofall = 1
p2facing = 1
air.fall = 0
fall.recover = 0
envshake.time=16
envshake.freq=60
envshake.ampl=4
yaccel = .6

[State 3050, Hit]
type = HitDef
triggerall = anim = 3014 || anim = 3015
trigger1 = AnimElem = 7
attr = S, HA
hitflag = MAF
guardflag = M
getpower  = 0
animtype  = Hard
air.animtype = Up
priority = 6
;;;damage    = 56, 7
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 07
getpower = 0,0
givepower = 25, 25
pausetime = 7, 7
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-110
hitsound = S2,3
guardsound = S130, 0
air.type = High
;forcestand = 1
ground.slidetime = 16
ground.hittime  = 16
guard.hittime = 16
air.hittime = 120
ground.velocity = -8, -10
air.velocity = -5, -5
fall = 1
p2facing = 1
air.fall = 1
fall.recover = 0
ID = 3010
envshake.time=16
envshake.freq=60
envshake.ampl=4
yaccel = .6
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0

[State AttackDone]
type=null;statetypeset
triggerall = anim = 3014 || anim = 3015
trigger1= animelemtime(8)>=0
movetype=I

[State 3050, StateChange]
type = ChangeState
triggerall = anim = 3014 || anim = 3015
trigger1 = !AnimTime; = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Rolling Thunder Target
[Statedef 587433]
type    = S
movetype= H
physics = S;N
velset = -2,0
 
[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0
ignorehitpause = 1
persistent = 1

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

;[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
;type = ChangeAnim
;trigger1 = Time = 0
;trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim
[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = Anim = 5000
trigger2 = Anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = Anim = 5001
trigger2 = Anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = Anim =  5012
trigger2 = Anim = 5002
trigger3 = Anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[State 5000, 6]
type = selfstate
trigger1 = HitShakeOver=4
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5001 ;Stand get-hit (knocked back)

[State 5000, 7]
type = selfstate
trigger1 = HitShakeOver>=4
trigger2 = !alive
value = 5030

 


; Corkscrew Cross
[Statedef 4100]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 4100
facep2 = 1
sprpriority = 2
poweradd = ifelse(var(53) > 0, -1000, -3000)

[State 3000, Super Cancel Flag]
type = VarSet
triggerall = !Time
trigger1 = (PrevStateNo = [1000, 2999]) && var(6) || var(53)
trigger2 = EnemyNear,StateType=A && EnemyNear,MoveType=H && var(17)
var(22) = 1

[State 3000, Hyper Cancel Flag]
type = VarSet
triggerall = !Time
trigger1 = (PrevStateNo = [3000,4999]) && var(11)
var(23) = 1

[State 3000, No Corner Push]
type = VarSet
trigger1 = Anim = 4100 && AnimElemTime(8) = 0
trigger2 = Anim = 4101 && AnimElemTime(58) < 0
fvar(5)=0

[State 3000, Unguardable]
type = VarSet
trigger1 = Anim = 4100 && AnimElemTime(8) = 0&& NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(18) = 50

[State 0, Explod]
type = Explod
triggerall = anim = 4100
trigger1 = animelemtime(13) = 0 || animelemtime(13) = 5 || animelemtime(13) = 10
anim = 6028
ID = 6028
pos = 20,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 0.125,0.125
sprpriority = 5

 
[State 0, NotHitBy]
type = NotHitBy
triggerall = anim = 4100
trigger1 = time = [0,53]
value = SCA 

[State 3000, Super A]
type = SuperPause
trigger1 = Anim = 4100 && AnimElemTime(8) = 0
time=43
movetime=43
unhittable = 1
anim = -1
darken = 0
poweradd = 0
unhittable = 1


[State 3050, SuperPause FX]
type = Helper
trigger1 = Anim = 4100 && AnimElemTime(8) = 0
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos =-18,-58
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1


[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 4100
trigger1 = animelem = 1
value = S3012,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 4100
trigger1 = animelem = 13
value = S3000,1
channel = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 4100
trigger1 = animelem = 12
value = S1,3

[State 0, VelSet]
type = VelSet
triggerall = anim = 4100
trigger1 = animelem = 13
x = 9.4

[State 0, VelSet]
type = VelSet
triggerall = anim = 4100
trigger1 = animelem = 17
x = 0

[State 0, Explod]
type = Explod
triggerall = anim = 4100
trigger1 = animelem = 13
anim = 3001
ID = 3001
pos = -20*const(size.xscale),1*const(size.yscale)
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 0.5*const(size.xscale),0.5*const(size.yscale)
sprpriority = 5
ownpal = 1
ignorehitpause = 0
removeongethit = 0

[State 4100, Hits]
type = HitDef
triggerall = anim = 4100
;trigger1 = !var(16) && var(15) < 1
trigger1 = animelem=13||animelem=14||animelem=15||animelem=16||animelem=17
attr = S, HA
animtype  = Hard
p2facing = 1
;ID = ifelse(numtarget,4101,4100)
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
kill = 0
getpower = 0,0
givepower = 25, 25
priority  = 6
guardflag = H;MA
hitflag = MAF
pausetime = 3,3;12
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-60
hitsound   = s2,3
guardsound = s130,0
ground.type = Low
ground.slidetime = 12;30
ground.hittime  = 12;30
guard.hittime = 12
air.hittime = 120
p2stateno = 587433
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
air.velocity = 0,0
fall = 0
air.fall = 0
fall.recover = 0
fall.recoverTime = 120
forcestand=1
forcenofall=1
envshake.time=10
envshake.freq=80
envshake.ampl=4

; [State 4100, TargetLifeAdd]
; type = TargetLifeAdd
; triggerall = movehit
; trigger1 = animelemtime(13)=1
; trigger2 = animelemtime(14)=1
; trigger3 = animelemtime(15)=1
; trigger4 = animelemtime(16)=1
; trigger5 = animelemtime(17)=1
; value = -1; * ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35);*const(data.attack))
; ;ignorehitpause = 1


;[State AttackDone]
;type=statetypeset
;triggerall = anim = 4100
;trigger1= animelemtime(18)>=0
;movetype=I

[State 4100, 7]
type = ChangeState
triggerall = anim = 4100 && !Movehit
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[State 4100, Part2 Start]
type = Changeanim
triggerall = anim = 4100
trigger1 = movehit && numtarget
trigger1 = !animtime && !winko
value = 4101

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4101
trigger1 = animelem = 48
value = S1,1
[State 105, Dust]
type = helper
trigger1 = anim = 4101
trigger1 = animelem = 48
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
trigger1 = Anim = 4101 && AnimelemTime(48) = 1
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 0, Explod]
type = Explod
trigger1 = anim = 4100
trigger1 = animelemtime(13) = 0 || animelemtime(13) = 5 || animelemtime(13) = 10
anim = 6028
ID = 6028
pos = 20,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 0.125,0.125
sprpriority = 5

[State 0, VelSet]
type = VelSet
trigger1 = anim = 4100 && animelem = 17
x = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim = 4101
value = SCA;,NA,SA,HA,NP,SP,HP,NT,ST,HT

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4101 && animelemtime(1)=0
value = S4100,5


[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 4101
trigger1 = animelem= 3
trigger2 = animelem= 14
trigger3 = animelem= 25
trigger4 = animelem= 33
trigger5 = animelem= 59
value = S1,3
[State 0, PlayerPush]
type = PlayerPush
trigger1 = anim = 4101
trigger1 = animelemtime(57)>=0 && animelemtime(61)<0
value = 0
ignorehitpause = 1
persistent = 1



[State 0, VelSet]
type = VelSet
triggerall = anim = 4101
trigger1 = animelem= 1
trigger2 = animelem= 11
trigger3 = animelem= 22
trigger4 = animelem= 31
trigger5 = animelem= 48
trigger6 = animelem= 58
x = ifelse((animelem=1),(p2dist x *0.25), ifelse((animelem=58),30,ifelse((animelem=48), 30, 4)))
[State 0, VelSet]
type = VelSet
triggerall = anim = 4101
trigger1 = animelem= 4
trigger2 = animelem= 15
trigger3 = animelem= 26
trigger4 = animelem= 34
trigger5 = animelem= 62
x = 0


[State -2, Spark Level]
type=helper
triggerall= movecontact=1
triggerall= anim = 4101
;triggerall=!hitdefattr=SCA,AT
trigger1 = animelemtime(59)>=0
trigger1 = movehit = 1 && numenemy
helpertype=normal
stateno=4050
ID=8000
name="Spark"
postype=p1
pos= ifelse(p2dist x<0, 0, ifelse(p2dist x<var(12), ceil((p2dist x)+2), var(12))), var(13)
facing= -1
size.xscale = 1
size.yscale = 1
persistent = 0
ownpal=1
pausemovetime=65535
supermovetime=65535
ignorehitpause=1

[State 230, 2]
type = HitDef
triggerall = anim = 4101
;trigger1 = !var(16) && var(15) < 1
trigger1 = animelem = 4
attr = S, NA
animtype  = Medium
;damage    = 21,7
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 07
getpower = 0,0
givepower = 25, 25
guardflag = H;MA
hitflag = MAF
pausetime = 8,18
;pausetime = 0,10
kill = 0
priority=4,Hit
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-76
hitsound   = s2,3;;;s4000,0
guardsound = s130,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
guard.hittime = 12
air.hittime = 120
ground.velocity = -5

ground.cornerPush.velOff = 0
air.velocity = -2.5,-3.5
air.cornerPush.velOff = 0
fall = 0
air.fall = 0
fall.recover = 0
fall.recoverTime = 120

envshake.time=10
envshake.freq=80
envshake.ampl=4
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0

[State 211, 2]
type = HitDef
triggerall = anim = 4101
;trigger1 = !var(16) && var(15) < 1
trigger1 = animelem = 15
attr = S, NA
animtype  = Medium
;damage = 28,7
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 07
getpower = 0,0
givepower = 25, 25
guardflag = H;MA
hitflag = MAF
pausetime = 8,18
;pausetime = 0,10
priority=4,Hit
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-61
hitsound   = s2,3;;;s4000,0
guardsound = s130,0
ground.type = High
ground.slidetime = 12
kill = 0
ground.hittime  = 12
guard.hittime = 12
air.hittime = 120
ground.velocity = -5.5
air.velocity = -2.5,-4

ground.cornerPush.velOff = 0
air.cornerPush.velOff = 0
fall = 0
air.fall = 0
fall.recover = 0
fall.recoverTime = 120

envshake.time=10
envshake.freq=80
envshake.ampl=4
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0

[State 240, 2]
type = HitDef
triggerall = anim = 4101
;trigger1 = !var(16) && var(15) < 1
trigger1 = animelem = 26
attr = S, NA
animtype  = Medium
;damage    = 35,7
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 07
getpower = 0,0
givepower = 25, 25
guardflag = H;MA
hitflag = MAF
pausetime = 8,14
;pausetime = 0,6
priority=4,Hit
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-64
hitsound   = s2,3;;;s4000,0
guardsound = s130,0
ground.type = High
kill = 0
ground.slidetime = 15
ground.hittime  = 15
guard.hittime = 15
air.hittime = 120
ground.velocity = -6
air.velocity = -2.2,-3.2

ground.cornerPush.velOff = 0
air.cornerPush.velOff = 0
fall = 0
air.fall = 0
fall.recover = 0
fall.recoverTime = 120

envshake.time=10
envshake.freq=80
envshake.ampl=4
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0

[State 220, 2]
type = HitDef
triggerall = anim = 4101
;trigger1 = !var(16) && var(15) < 1
trigger1 = animelem = 34
attr = S, NA
animtype  = Hard
;damage    = 42,7
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 07
getpower = 0,0
givepower = 25, 25
guardflag = H;MA
hitflag = MAF
pausetime = 12,12
;pausetime = 0,4
priority=4,Hit
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-73
p2stateno = 4105
hitsound   = s2,3;;;s4000,0
kill = 0
guardsound = s130,0
ground.type = High
ground.slidetime = 13
ground.hittime  = 13
guard.hittime = 13
air.hittime = 120
ground.velocity = -15
air.velocity = -2.5,-4

ground.cornerPush.velOff = 0
air.cornerPush.velOff = 0
fall = 0
air.fall = 0
fall.recover = 0
fall.recoverTime = 120

envshake.time=10
envshake.freq=80
envshake.ampl=4
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0

[State 1105, Final Hit]
type = HitDef
triggerall = anim = 4101
;trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 59
attr = S, HA
guardflag = H;MA
hitflag = MAF
animtype  = Hard
air.animtype = Diagup
priority = 7
;damage    = 63,7
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 07
getpower = 0,0
givepower = 25, 25
pausetime = 24,24
;pausetime = 1,11
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno= -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0*(var(12):=77), var(13):=-80
hitsound = s4000,0
guardsound = s6, 0
ground.type = High
guard.slidetime = 15
ground.hittime  = 15
guard.hittime = 15
air.hittime = 120
ground.velocity = 1.75, -13
air.velocity = 1.75, -13
;p2facing = -1
fall = 1
fall.recover = 0
yaccel = .5125
envshake.time=18
envshake.freq=80
envshake.ampl=8
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0

[State 0, Explod]
type = Explod
trigger1 = animelem = 57
anim = 4150
ID = 4150
pos = 80*const(size.xscale),-72*const(size.yscale)
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 0.375*const(size.xscale),0.5*const(size.yscale)
sprpriority = 5
ownpal = 1
removeongethit = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = animelemtime(57)>= 0 && animelemtime(60) <0
ID = 4150
scale = (0.1875+(animelemtime(57)*0.03125))*const(size.xscale), (0.25+(animelemtime(57)*0.0416666666666667))*const(size.yscale)

[State AttackDone]
type=statetypeset
trigger1 = anim = 4101
trigger1= animelemtime(60)>=0
movetype=I

[State 4100, 7]
type = ChangeState
trigger1 = anim = 4101 && AnimTime = 0
value = 195
ctrl = 0

;--------------------------------------------------------------------------
;C.S.C. Opponent
[Statedef 4105]
type = S
movetype = H
physics = N;S
velset = 0,0

[State 0, PosSet]
type = velset
trigger1 = !time
x = -10
[State 0, PosSet]
type = velmul
trigger1 = 1;time
x = 0.85

[State 3063, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 4105

[State 0, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 0

[State 3063, SelfState]
type = SelfState
trigger1 = time = 100
value = 5150
ctrl = 0