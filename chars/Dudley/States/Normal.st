; _______________________________________
;| Dudley by Dick Buckus & Mr.Ansatsuken |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================< NORMAL STATES >========================================
;============================================================================================

;------------------------------------------------------------------
; Standing Light Punch
[Statedef 200]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
anim=200
poweradd=10 * !var(20)
sprpriority=2
facep2=1
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 333
value = s1000, 5
channel = 0
 
[State 200, Woosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1
channel = 1
[State 200, Width]
type = Width
trigger1 = AnimElemTime(4) < 0
player = 5,0

[State 200, Hit]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=S, NA
damage   = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
guardflag=M
ID=200*!var(20)
getpower=10 * !var(20), 0
givepower=30, 30
hitflag=MAF
priority=4, Hit
pausetime=8,8
guard.pausetime=8,8
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-84
hitsound   = s2,1
guardsound = s130,0
animType=Light
air.animType=Back
fall.animType=Back
ground.type=High
air.type=Low
ground.slidetime=12+2 * var(29)
ground.hittime=12+2 * var(29)
guard.hittime=12 
air.hittime = 120
ground.velocity=-4.49;*(ifelse(!var(20),1,.5)) disabled
guard.velocity=-4.49;*(ifelse(!var(20),1,.5)) disabled
air.velocity=-4.21,-7.36
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recoverTime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 205, Time Offset]
type = VarSet
trigger1 = moveContact = 1
var(43) = Time
ignorehitpause = 1
persistent = 0
[State 205, Play Anim]
type = ChangeAnim
triggerall = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = hitPauseTime = [1,9 - (2 - Var(43))]
value = anim
elem = 3
ignorehitpause = 1 
 
[State 200, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(4)=0
moveType=I
 
[State 200, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1

;------------------------------------------------------------------
; Slipping Jab
[Statedef 201]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
anim=201
poweradd=10*!var(20)
sprpriority=2
facep2=1
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 300
value = s1000, 5
channel = 0
[State 200, Whoosh]
type = PlaySnd
trigger1 = animelem = 2
value = 1, 1

[State 205, Position]
type=PosAdd
trigger1=prevstateno!=[200,499]
trigger1=(Time=0)||(AnimElemTime(6)=0)||(AnimElemTime(7)=0)
x=Ifelse(Time=0,11,Ifelse(AnimElemTime(6)=0,-6,-5))

[State 205, Hit]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=S, NA
;;;damage = 21, 0
damage   = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
guardflag=M
hitflag=MAF
ID=205*!var(20)
getpower=10 * !var(20), 0
givepower=30, 30
priority=4, Hit
pausetime=8-ifelse((prevstateno=[200,499]),2,0),8-ifelse((prevstateno=[200,499]),2,0)
guard.pausetime=8-ifelse((prevstateno=[200,499]),2,0),8-ifelse((prevstateno=[200,499]),2,0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-71  
hitsound   = s2,1
 guardsound = s130,0
animType=Light
air.animType=Back
fall.animType=Back
ground.type=High
air.type=Low
ground.slidetime=12+2 * var(29)
ground.hittime=12+2 * var(29)
guard.hittime=12
ground.velocity=-5;*(ifelse(!var(20),1,.5)) disabled
guard.velocity=-5;*(ifelse(!var(20),1,.5)) disabled
air.velocity=-4.21,-7.36
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
air.hittime=120
yaccel=.58
fall=0
fall.recover=1
fall.recoverTime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 205, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(4)=0
moveType=I
 
[State 205, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1

;---------------------------------------------------------------------------
; Standing Medium Punch
[Statedef 210]
type=S
movetype=A
physics=S
poweradd=20*!var(20)
ctrl=0
velset=0,0
anim=210
sprpriority=2
facep2=1
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 300
value = s1000, 4
channel = 0
[State 210, Width]
type = Width
trigger1 = AnimElemTime(5) < 0
value = 5,0

[State 210, 1]
type = PlaySnd
triggerall = anim = 210
trigger1 = animelem = 2
value = 1, 2

[State 210, Hit]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=S,NA        
hitflag=MAF       
guardflag=M         
priority=4 ,Hit   
;;;damage = 63, 0
damage   = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
ID=200*!var(20)
getpower=20 * !var(20), 0
givepower=30, 30
pausetime=10,10
guard.pausetime=10,10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-82
hitsound   = s2,2
 guardsound = s130,0
animType=Medium
air.animType=Back
fall.animType=Back
ground.type=High
air.type=Low
ground.slidetime=15+3*var(9)
ground.hittime=15+3*var(9)
guard.hittime=15
air.hittime=120
ground.velocity=-5*ifelse((prevstateno=[240,450]),.5,1)
guard.velocity=-5*ifelse((prevstateno=[240,450]),.5,1)
air.velocity=-3.24, -7.73
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recoverTime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 
[State 210, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(5)=0
moveType=I

 

[State 210, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1

;---------------------------------------------------------------------------
; Stomach Blow
[Statedef 211]
type=S
movetype=A
physics=S
poweradd=20*!var(20)
ctrl=0
velset=0,0
anim=211
sprpriority=2
facep2=1
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 300
value = s1000, 4
channel = 0
[State 210, 1]
type = PlaySnd
triggerall = anim = 210
trigger1 = animelem = 4
value = 1, 2
 
[State 211, 1]
type = PlaySnd
triggerall = anim = 211
trigger1 = animelem = 3
value = 1, 2

[State 215, Position]
type=PosAdd
trigger1=(Time=0)||(AnimElemTime(7)=0)||(AnimElemTime(8)=0)||(AnimElemTime(10)=0)
x=Ifelse(Time=0,16,Ifelse(AnimElemTime(7)=0,5,Ifelse(AnimElemTime(8)=0,11,-4)))

[State 210, Width]
type = Width
trigger1 = AnimElemTime(7) < 0
value = 5,0

[State 215, Hit]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = animelem = 3
attr=S,NA        
hitflag=MAF       
guardflag=M         
priority=4 ,Hit   
;;;damage = 63, 0
damage   = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
ID=200*!var(20)
getpower=20 * !var(20), 0
givepower=30, 30
pausetime=10,10
guard.pausetime=10,10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-61
hitsound   = s2,2
 guardsound = s130,0
animType=Medium
air.animType=Back
fall.animType=Back
ground.type=Low;;;High
air.type=Low
ground.slidetime=15+3*var(9)
ground.hittime=15+3*var(9)
guard.hittime=15
air.hittime=120
ground.velocity=-5.51;*(ifelse(!var(20),1,.5)) disabled
guard.velocity=-7.51;*(ifelse(!var(20),1,.5)) disabled
air.velocity=-3.24, -7.73
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recoverTime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time=10
envshake.ampl=Ifelse(random<=500,-2,2)

[State 215, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(7)=0
moveType=I

[State 215, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1

;------------------------------------------
; Standing Strong Punch
[Statedef 220]
type=S
movetype=A
physics=S
poweradd=30*!var(20)
ctrl=0
velset=0,0
anim=220
sprpriority=2
facep2=1
[State 200, Voice]
type = PlaySnd
trigger1 = Anim=220 && AnimElem = 3 && Random < 300
value = s1000, 3
channel = 0
[State 220, 1]
type = PlaySnd
triggerall = anim = 220
trigger1 = animelem = 3
value = 1, 3
 
[State 220, Position]
type=PosAdd
trigger1=(AnimElemTime(2)=0) || (AnimElemTime(10)=0) || (AnimElemTime(11)=0)
x=Ifelse((AnimElemTime(2)=0) || (AnimElemTime(10)=0), 5, 9)

[State 220, Width]
type = Width
trigger1 = AnimElemTime(9) < 0
player = 10,0

[State 220, HitDef]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=S,NA        
hitflag=MAF       
guardflag=M         
animtype=Hard         
priority=4, Hit   
;;;damage = 84, 0
damage   = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
ID=200*!var(20)
getpower=30 * !var(20), 0
givepower=30, 30
pausetime=12,12
guard.pausetime=12,12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-73
hitsound   = s2,3
 guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=High     
air.type=Low
ground.slidetime=18+4*var(9)
ground.hittime=18+4*var(9)
guard.hittime=18
air.hittime=120
ground.velocity=-10.51;*(ifelse(!var(20),1,.5)) disabled
guard.velocity=-10.51;*(ifelse(!var(20),1,.5)) disabled
air.velocity=-5.39, -5.65
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 

[State 205, Time Offset]
type = VarSet
trigger1 = moveContact = 1
var(43) = Time
ignorehitpause = 1
persistent = 0
[State 205, Play Anim]
type = ChangeAnim
triggerall = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = hitPauseTime = [1,9 - (2 - Var(43))]
value = anim
elem = 3
ignorehitpause = 1 

[State 220, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(9)=0
moveType=I

[State 220, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1

;------------------------------------------
; Step Straight
[Statedef 221]
type=S
movetype=A
physics=S
poweradd=30*!var(20)
ctrl=0
velset=0,0
anim=221
sprpriority=2
facep2=1
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 300
value = s1000, 3
channel = 0
[State 220, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 1, 3
 

[State 225, Position]
type=PosAdd
trigger1=(AnimElemTime(2)=0) || (AnimElemTime(10)=0) || (AnimElemTime(11)=0)
x=Ifelse((AnimElemTime(2)=0) || (AnimElemTime(10)=0), 5, 9)

[State 225, Width]
type=Width
trigger1=(AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value=15,0

[State 225, VelSet]
type=VelSet
trigger1=animelem=4
x=8

[State 225, VelSet]
type=VelSet
trigger1=animelem=7
x=0

[State 225, HitDef]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=S,NA        
hitflag=MAF       
guardflag=M         
animtype=Hard         
priority=4, Hit   
;;;damage = 91, 0
damage   = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 0
ID=200*!var(20)
getpower=30 * !var(20), 0
givepower=30, 30
pausetime=12,12
guard.pausetime=12,12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-73
hitsound   = s2,3
 guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=High     
air.type=Low
ground.slidetime=18+4*var(9)
ground.hittime=18+4*var(9)
guard.hittime=18
air.hittime=120
ground.velocity=-10.51;*(ifelse(!var(20),1,.5)) disabled
guard.velocity=-10.51;*(ifelse(!var(20),1,.5)) disabled
air.velocity=-5.39, -5.65
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 
[State 225, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(9)=0
moveType=I

[State 225, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1
;---------------------------------------------------------------------------
; Standing Light Kick
[Statedef 230]
type=S
movetype=A
physics=S
poweradd= 10 * !var(20)
ctrl=0
velset=0,0
anim=230
sprpriority=2
facep2=1
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 300
value = s1000, 5
channel = 0
[State 230, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 1, 1

[State 230, HitDef]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=S,NA        
hitflag=MAF       
guardflag=M         
animtype=Light         
priority=4,Hit   
;damage=21,0;ceil(ifelse((32*fvar(33))<7,7,(32*fvar(33))))
damage   = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
ID=200*!var(20)
getpower=10 * !var(20), 0
givepower=30, 30
pausetime=8,8
guard.pausetime=8,8
sparkNo=-1 + 0 * (var(33) := 8010)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-84
hitsound   = s2,1
 guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=Low      
air.type=Low
ground.slidetime=12+2*var(9)
ground.hittime=12+2*var(9)
guard.hittime=12
air.hittime=120
ground.velocity=-4.49
guard.velocity=-4.49
air.velocity=-6.46,-5.25
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 230, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(6)=0
moveType=I


[State 230, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1
;------------------------------------------------------
; Standing Medium Kick
[Statedef 240]
type=S
movetype=A
physics=S
poweradd=20*!var(20)
ctrl=0
velset=0,0
anim=240
sprpriority=2
facep2=1
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 300
value = s1000, 6
channel = 0
[State 240, 1]
type = PlaySnd
triggerall = anim = 240
trigger1 = animelem = 4
value = 1, 2

[State 240, Position]
type=Posadd
trigger1=(Time=0)||(AnimElemTime(2)=0) || (AnimElemTime(12)=0) || (AnimElemTime(15)=0)
x=Ifelse (Time=0,7,ifelse (AnimElemTime(2)=0, -1, ifelse (AnimElemTime(12)=0, -3, -3)))

[State 240, Width]
type=Width
trigger1=(AnimElemTime(2)>=0)&&(AnimElemTime(7)<0)
value=10,0

[State 240, HitDef]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = animelem = 5
attr=S,NA        
hitflag=MAF       
guardflag=M         
animtype=Medium         
priority=4,Hit   
;;;damage = 63, 0
damage   = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
ID=200*!var(20)
getpower=20 * !var(20), 0
givepower=30, 30
pausetime=10,10
guard.pausetime=10,10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-85
hitsound   = s2,2
 guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=High
air.type=Low
ground.slidetime=15+3*var(9)
ground.hittime=15+3*var(9)
guard.hittime=15
air.hittime=120
ground.velocity=-5;
guard.velocity=-5;
air.velocity=-6.46,-5.25
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 

[State 205, Time Offset]
type = VarSet
trigger1 = moveContact = 1
var(43) = Time
ignorehitpause = 1
persistent = 0
[State 205, Play Anim]
type = ChangeAnim
triggerall = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = hitPauseTime = [1,9 - (2 - Var(43))]
value = anim
elem = 7
ignorehitpause = 1 

[State 240, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(9)=0
moveType=I
 
[State 240, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1

;------------------------------------------------------
; Lever Blow
[Statedef 241]
type=S
movetype=A
physics=S
poweradd=20*!var(20)
ctrl=0
velset=0,0
anim=241
sprpriority=2
facep2=1
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 300
value = s1000, 6
channel = 0
[State 240, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 1, 2

[State 245, Position]
type=PosAdd
trigger1=(AnimElemTime(9)=0) || (AnimElemTime(10)=0) || (AnimElemTime(11)=0)
x=Ifelse (AnimElemTime(9)=0, 6, Ifelse(AnimElemTime(10)=0, 5, 1))

[State 245, Width]
type=Width
trigger1=(AnimElemTime(2)>=0)&&(AnimElemTime(7)<0)
value=15,0

[State 245, HitDef]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=S,NA        
hitflag=MAF       
guardflag=M         
animtype=Medium         
priority=4,Hit   
;;;damage = 63, 0
damage   = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
ID=200*!var(20)
getpower=20 * !var(20), 0
givepower=30, 30
pausetime=10-ifelse((prevstateno=[200,499]),2,0),10-ifelse((prevstateno=[200,499]),2,0)
guard.pausetime=10-ifelse((prevstateno=[200,499]),2,0),10-ifelse((prevstateno=[200,499]),2,0)
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-64
hitsound   = s2,2
 guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=low;High
air.type=Low
ground.slidetime=15+3*var(9)
ground.hittime=15+3*var(9)
guard.hittime=15
air.hittime=120
ground.velocity=-5;
guard.velocity=-5;
air.velocity=-6.46,-5.25
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 
[State 245, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(8)=0
moveType=I

[State 240, ChangeState]
type=ChangeState
trigger1=command="b" && movehit
value=240
ctrl=0

[State 240, ChangeState]
type=ChangeState
triggerall=AILevel&&roundstate=2
triggerall=(p2bodydist x=[0,68]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1=movehit && random<500
value=240
ctrl=0

[State 245, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1

;------------------------------------------------------
; Standing Medium Kick
[Statedef 242]
type=S
movetype=A
physics=S
poweradd=20*!var(20)
ctrl=0
velset=0,0
anim=240
sprpriority=2
facep2=1
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 300
value = s1000, 6
channel = 0
[State 240, 1]
type = PlaySnd
triggerall = anim = 240
trigger1 = animelem = 4
value = 1, 2

[State 240, Position]
type=Posadd
trigger1=(Time=0)||(AnimElemTime(2)=0) || (AnimElemTime(12)=0) || (AnimElemTime(15)=0)
x=Ifelse (Time=0,7,ifelse (AnimElemTime(2)=0, -1, ifelse (AnimElemTime(12)=0, -3, -3)))

[State 240, Width]
type=Width
trigger1=(AnimElemTime(2)>=0)&&(AnimElemTime(7)<0)
value=10,0

[State 240, HitDef]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = animelem = 5
attr=S,NA        
hitflag=MAF       
guardflag=M         
animtype=Medium         
priority=4,Hit   
;;;damage = 63, 0
damage   = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
ID=200*!var(20)
getpower=20 * !var(20), 0
givepower=30, 30
pausetime=10,10
guard.pausetime=10,10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-85
hitsound   = s2,2
 guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=High
air.type=Low
ground.slidetime=15+3*var(9)
ground.hittime=15+3*var(9)
guard.hittime=15
air.hittime=120
ground.velocity=-5;
guard.velocity=-5;
air.velocity=-6.46,-5.25
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 

[State 205, Time Offset]
type = VarSet
trigger1 = moveContact = 1
var(43) = Time
ignorehitpause = 1
persistent = 0
[State 205, Play Anim]
type = ChangeAnim
triggerall = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = hitPauseTime = [1,9 - (2 - Var(43))]
value = anim
elem = 7
ignorehitpause = 1 

[State 240, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(9)=0
moveType=I
 
[State 240, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1

;---------------------------------------------------------------------------
; Standing Strong Kick
[Statedef 250]
type=S
movetype=A
physics=N
poweradd=30*!var(20)
ctrl=0
velset=0,0
anim=250
sprpriority=2
facep2=1

[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 300
value = s1000, 6
channel = 0
[State 250, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 1, 3

[State 250, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 100, 4
channel = 0

[State 250, Width]
type=Width
trigger1=(AnimElemTime (2)>=0)&&(AnimElemTime(7)<0)
value=15,0

[State 250, HitDef]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=S,NA        
hitflag=MAF       
guardflag=M         
animtype=Hard         
priority=4,Hit   
;;;damage = 91, 0
damage   = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
ID=200*!var(20)
getpower=30 * !var(20), 0
givepower=30, 30
pausetime=12,12;12-ifelse((prevstateno=[200,499]),2,0),14-ifelse((prevstateno=[200,499]),2,0)
guard.pausetime=12,12;12-ifelse((prevstateno=[200,499]),2,0),14-ifelse((prevstateno=[200,499]),2,0)
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-66
hitsound   = s2,3
 guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=Low      
air.type=Low
ground.slidetime=14+4*var(9)
ground.hittime=14+4*var(9)
guard.hittime=14
air.hittime=120
ground.velocity=-10.51*ifelse((prevstateno=[200,450]),.25,1);;;target combo;*(ifelse(!var(20),1,.5)) disabled
guard.velocity=-10.51*ifelse((prevstateno=[200,450]),.25,1);;;target combo;*(ifelse(!var(20),1,.5)) disabled
air.velocity=-6.46,-5.25
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 

[State 250, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(9)=0
moveType=I
 

[State 250, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1

;---------------------------------------------------------------------------
; Dart Shot
[Statedef 251]
type=S
movetype=A
physics=N
poweradd=30*!var(20)
ctrl=0
velset=0,0
anim=251
sprpriority=2
facep2=1

[State 251, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 1, 3

[State 251, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 1000, 6
channel = 0

[State 255, Position]
type=PosAdd
trigger1=(AnimElemTime(2)=0) || (AnimElemTime(15)=0)
x=Ifelse((AnimElemTime(2)=0), 22, 1)

[State 255, Width]
type=Width
trigger1=(AnimElemTime (2)>=0)&&(AnimElemTime(7)<0)
value=15,0

[State 255, HitDef]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=S,NA        
hitflag=MAF       
guardflag=H        
animtype=Hard         
priority=4,Hit   
;damage=91,7
damage   = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 0
ID=200*!var(20)
getpower=30 * !var(20), 0
givepower=30, 30
pausetime=12,12
guard.pausetime=12,12
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-29
hitsound   = s2,3
 guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=Low      
air.type=Low
ground.slidetime=18+4*var(9)
ground.hittime=18+4*var(9)
guard.hittime=18
air.hittime=120
ground.velocity=-9;
guard.velocity=-9;
air.velocity=-6.46,-5.25
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 

[State 255, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(9)=0
moveType=I

[State 255, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1
;---------------------------------------------------------------------------
; Crouching Light Punch
[Statedef 400]
type=C
movetype= A
physics=C
poweradd= 10 * !var(20)
ctrl=0
anim=400
sprpriority=2
facep2=1
velset=0,0
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 300
value = s1000, 5
channel = 0
[State 400, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 1, 1

[State 400, HitDef]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!time
attr=C,NA        
hitflag=MAF       
guardflag=M         
ID=200*!var(20)
getpower=10 * !var(20), 0
givepower=30,30
animtype=Light         
priority=4,Hit   
;;;damage = 14, 0
damage   = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
pausetime=8,8
guard.pausetime=8,8
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-49
hitsound   = s2,1
 guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=Low      
air.type=Low
ground.slidetime=12+2*var(9)
ground.hittime=12+2*var(9)
guard.hittime=12
air.hittime=120
ground.velocity=-4.49;*(ifelse(!var(20),1,.5)) disabled
guard.velocity=-4.49;*(ifelse(!var(20),1,.5)) disabled
air.velocity=-4.21,-7.36
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 205, Time Offset]
type = VarSet
trigger1 = moveContact = 1
var(43) = Time
ignorehitpause = 1
persistent = 0
[State 205, Play Anim]
type = ChangeAnim
triggerall = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = hitPauseTime = [1,9 - (2 - Var(43))]
value = anim
elem = 3
ignorehitpause = 1 

[State 400, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(3)=0
moveType=I

[State 400, End]
type=ChangeState
trigger1=!AnimTime
value=11
ctrl=1

;---------------------------------------------------------------------------
; Crouching Medium Punch
[Statedef 410]
type  =C
movetype= A
physics=C
poweradd=20*!var(20)
ctrl=0
anim=410
sprpriority=2
facep2=1
velset=0,0
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 300
value = s1000, 4
channel = 0
[State 410, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 1, 2
;
[State 410, Width]
type=Width
trigger1=(AnimElemTime(2)>=0)&&(AnimElemTime(7)<0)
value=15,0

[State 410, PosAdd]
type=PosAdd
trigger1=animelem=2
x=6

[State 410, PosAdd]
type=PosAdd
trigger1=animelem=8
x=-3.5

[State 410, PosAdd]
type=PosAdd
trigger1=animelem=9
x=-2

[State 410, Hit 1]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr=C,NA        
hitflag=MAF       
guardflag=M         
animtype=Medium         
priority=4 ,Hit   
;;;damage = 63, 0
damage   = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
ID=200*!var(20)
getpower=20 * !var(20), 0
givepower=30, 30
pausetime=10,10;10-ifelse((prevstateno=[200,499]),2,0),10-ifelse((prevstateno=[200,499]),2,0)
guard.pausetime=10,10;10-ifelse((prevstateno=[200,499]),2,0),10-ifelse((prevstateno=[200,499]),2,0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-55
hitsound   = s2,2
guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=Low      
air.type=Low
ground.slidetime=15+3*var(9)
ground.hittime=15+3*var(9)
guard.hittime=15
air.hittime=120
ground.velocity=-5*ifelse((prevstateno=[200,450]),.5,1)
guard.velocity=-5*ifelse((prevstateno=[200,450]),.5,1)
air.velocity=-3.24, -7.73
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 
[State 410, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(5)=0
moveType=I

[State 410, End]
type=ChangeState
trigger1=!AnimTime
value=11
ctrl=1

;--------------------------------------------------------------------------
; Crouching Strong Punch
[Statedef 420]
type=C
movetype=A
physics=C
poweradd=30*!var(20)
ctrl=0
anim=420
sprpriority=2
facep2=1
velset=0,0
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 300
value = s1000, 6
channel = 0
[State 420, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 1, 3

[State 420, PosAdd]
type=PosAdd
triggerall=prevstateno=210||prevstateno=250
trigger1=!time
x=15

[State 420, HitDef]
type=HitDef
trigger1= !var(16) && (var(15)<1 || var(20))&& !Time
trigger1=!Time
attr=C,NA        
hitflag=MAF       
guardflag=MA         
animtype=Hard         
priority=4, Hit   
;;;damage = 91, 0
damage   = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
ID=200*!var(20)
getpower=30 * !var(20), 0
givepower=30, 30
pausetime=12-ifelse((prevstateno=[200,499]),2,0),12-ifelse((prevstateno=[200,499]),2,0)
guard.pausetime=12-ifelse((prevstateno=[200,499]),2,0),12-ifelse((prevstateno=[200,499]),2,0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-65
hitsound   = s2,3
 guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=Low;High
air.type=Low
ground.slidetime=18+4*var(9)
ground.hittime=18+4*var(9)
guard.hittime=18
air.hittime=120
ground.velocity=-10.52;*(ifelse(!var(20),1,.5)) disabled
guard.velocity=-8
air.velocity=-5,-3
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 

[State 420, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(9)=0
moveType=I

[State 420, End]
type=ChangeState
trigger1=!AnimTime
value=11
ctrl=1


;--------------------------------------------------------------------------
; Strong Punch Target Combo
[Statedef 425]
type=C
movetype=A
physics=C
poweradd=30*!var(20)
ctrl=0
anim=425
sprpriority=2
facep2=1
velset=0,0
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 300
value = s1000, 6
channel = 0
[State 420, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 1, 3

[State 420, PosAdd]
type=PosAdd
triggerall=prevstateno=210||prevstateno=250
trigger1=!time
x=15

[State 420, HitDef 1]
type=HitDef
triggerall= !var(16) && (var(15)<2 || var(20)); && !Time
trigger1=AnimElem=6
attr=C,NA        
hitflag=MAF       
guardflag=MA         
animtype=Hard         
priority=4, Hit   
;;;damage = 91, 0
damage   = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
ID=200*!var(20)
getpower=30 * !var(20), 0
givepower=30, 30
pausetime=10,10
guard.pausetime=10,10
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-65
hitsound   = s2,3
guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=Low;High
air.type=Low
ground.slidetime=18+4*var(9)
ground.hittime=18+4*var(9)
guard.hittime=18
air.hittime=120
ground.velocity=-2.25
guard.velocity=-2.25
air.velocity=-5,-3
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 
[State 420, HitDef 2]
type=HitDef
triggerall= !var(16) && (var(15)<2 || var(20)); && !Time
trigger1=AnimElem=7
attr=C,NA        
hitflag=MAF       
guardflag=MA         
animtype=Hard         
priority=4, Hit   
;;;damage = 91, 0
damage   = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
ID=200*!var(20)
getpower=30 * !var(20), 0
givepower=30, 30
pausetime=10,10
guard.pausetime=10,10
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-65
hitsound   = s2,3
guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=High
air.type=Low
ground.slidetime=18+4*var(9)
ground.hittime=18+4*var(9)
guard.hittime=18
air.hittime=120
ground.velocity=-10.52;*(ifelse(!var(20),1,.5)) disabled
guard.velocity=-10.52;
air.velocity=-5,-3
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48


[State 420, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(9)=0
moveType=I

[State 420, End]
type=ChangeState
trigger1=!AnimTime
value=11
ctrl=1


;---------------------------------------------------------------------------
; Crouching Light Kick
[Statedef 430]
type  =C
movetype= A
physics=C
poweradd= 10 * !var(20)
ctrl=0
anim=430
sprpriority=2
facep2=1
velset=0,0
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 300
value = s1000, 5
channel = 0
[State 430, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 1, 1

[State 430, HitDef]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=C,NA        
hitflag=MAF       
guardflag=L         
animtype=Light         
priority=4,Hit   
;;;damage = 14, 0
damage   = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
ID=200*!var(20)
getpower=10 * !var(20), 0
givepower=30, 30
pausetime=8,8
guard.pausetime=8,8
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-30
hitsound   = s2,1
 guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=Low      
air.type=Low
ground.slidetime=12+2*var(9)
ground.hittime=12+2*var(9)
guard.hittime=12
air.hittime=120
ground.velocity=-4.49;*(ifelse(!var(20),1,.5)) disabled
guard.velocity=-4.49;*(ifelse(!var(20),1,.5)) disabled
air.velocity=-6.46,-5.25
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 430, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(3)=0
moveType=I
 
[State 430, End]
type=ChangeState
trigger1=!AnimTime
value=11
ctrl=1
;---------------------------------------------------------------------------
;Crouch Medium Kick
[Statedef 440]
type  =C
movetype= A
physics=C
poweradd= 10 * !var(20)
ctrl=0
anim=440
sprpriority=2
facep2=1
velset=0,0
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 300
value = s1000, 4
channel = 0
[State 440, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 1, 2

[State 440, Position]
type=PosAdd
trigger1=Time=0 || AnimElem=2 || AnimElem=3 || AnimElem=6 || AnimElem=7 || AnimElem=13
x=Ifelse (Time=0, 2, Ifelse ((AnimElem=2), 12, Ifelse((AnimElem=3), 11, Ifelse ((AnimElem=6), -12, Ifelse ((AnimElem=7), -13, 0)))))

[State 440, HitDef]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=C,NA        
hitflag=MAF       
guardflag=L         
animtype=Medium         
priority=4,Hit   
;;;damage = 70, 0
damage   = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
ID=200*!var(20)
getpower=10 * !var(20), 0
givepower=30, 30
pausetime=10,10
guard.pausetime=10,10
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-11
hitsound   = s2,2
 guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=Trip    
air.type=Low
ground.slidetime=15+2*var(9)
ground.hittime=15+2*var(9)
guard.hittime=15
air.hittime=120
ground.velocity=-1.5,-5
guard.velocity=-6.51;
air.velocity=-1.5,-5
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=1
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 
[State 440, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(5)=0
moveType=I

[State 440, End]
type=ChangeState
trigger1=!AnimTime
value=11
ctrl=1
;--------------------------------------------------------------------------
; Crouch Strong Kick
[Statedef 450]
type  =C
movetype= A
physics=C
poweradd=ifElse(PrevStateNo=750, 0,30*!var(20));no power gain for z-counter
ctrl=0
anim=450
sprpriority=2
facep2=1
velset=0,0
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 300
value = s1000, 6
channel = 0
[State 450, 2]
type = PlaySnd
trigger1 = animelem = 2
value = 1, 3
 

[State 450, Muteki: Z-Counter]
type=Nothitby
trigger1=PrevStateNo=750 && AnimElemTime(10)<0
time=1
value=SCA

[State 450, Position]
type=PosAdd
trigger1=AnimElem=3 || AnimElem=6 || AnimElem=7 || AnimElem=8 || AnimElem=11 || AnimElem=12  || AnimElem=13 || AnimElem=14  || AnimElem=19 || AnimTime=0
x=Ifelse ((AnimElem=3), 9, Ifelse ((AnimElem=6) || (AnimElem=8), 6, Ifelse((AnimElem=7), 12, Ifelse ((AnimElem=11), -19, Ifelse ((AnimElem=12) || (AnimElem=13), -6, Ifelse (AnimTime=0, 0, -1))))))

[State 450, HitDef]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!time && PrevStateNo != 750
attr=C,NA        
hitflag=MAF       
guardflag=L         
animtype=Hard         
priority=4,Hit   
damage   = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 0
getpower=30 * !var(20), 0
givepower=30, 30
pausetime=12,12
guard.pausetime=12,12
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-10
hitsound   = s2,3
 guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=Trip     
air.type=Trip
ground.slidetime=18+4*var(9)
ground.hittime=18+4*var(9)
guard.hittime=18
air.hittime=120
fall=1
fall.recover=1
fall.recovertime=120
yaccel=.5
ground.velocity=-1,-8.5
guard.velocity=-6
air.velocity=-1,-12.5
;ground.cornerPush.velOff=0
;guard.cornerPush.velOff=0
;air.cornerPush.velOff=0
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 
[State 450, HitDef: Z-Counter]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time && PrevStateNo=750
attr=C,NA        
hitflag=MAF       
guardflag=L         
animtype=Diagup         
priority=6,Hit   ;Higher value due to it being a counter
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getpower=0, 0
givepower=30, 30
pausetime=12,12
guard.pausetime=12,12
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-10
hitsound   = s2,3
 guardsound = s130,0
air.animType=Diagup
fall.animType=Diagup
ground.type=Low     
air.type=Low
ground.slidetime=18+4*var(9)
ground.hittime=18+4*var(9)
guard.hittime=18
air.hittime=120
fall=1
fall.recover=0
yaccel=.58
ground.velocity=-6, -5.5
guard.velocity=-6
air.velocity=-6, -5.5
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 
[State 450, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(10)= 0
moveType=I

[State 450, End]
type=ChangeState
trigger1=!AnimTime
value=12
ctrl=1

;---------------------------------------------------------------------------
; Jump Light Punch
[Statedef 600]
type=A
movetype=A
physics=N
poweradd= 10 * !var(20)
ctrl=0
anim=600
sprpriority=2
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 300
value = s1000, 5
channel = 0
[State 600, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 1, 1

[State 600, Hit]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=A, NA
;;;damage = 35, 0
damage   = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
animtype=Light
guardflag=HA
hitflag=MAF
ID=200*!var(20)
getpower=10 * !var(20), 0
givepower=30, 30
priority=4, Hit
pausetime=8,8
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-89
hitsound   = s2,1
 guardsound = s130,0
ground.type=High
ground.slidetime=12+2*var(9)
ground.hittime=12+2*var(9)
guard.hittime=12
air.hittime=120
ground.velocity=-4.49
guard.velocity=-4.49
airguard.ctrlTime=16
air.animType=Back
fall.animType=Back
air.type=High
air.velocity=-4,-7
airguard.velocity=-4.75, -0.5
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 
[State 205, Time Offset]
type = VarSet
trigger1 = moveContact = 1
var(43) = Time
ignorehitpause = 1
persistent = 0
[State 205, Play Anim]
type = ChangeAnim
triggerall = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = hitPauseTime = [1,9 - (2 - Var(43))]
value = anim
elem = 3
ignorehitpause = 1 

[State 600, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(4)=0
moveType=I

[State 600, Gravity]
type=Gravity
trigger1=1

[State 600, End]
type=ChangeState
trigger1=pos y > -vel y
value=52

;---------------------------------------------------------------------------
; Jump Medium Punch
[Statedef 610]
type=A
movetype=A
physics=N
poweradd=20*!var(20)
ctrl=0
anim=610
sprpriority=2
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 300
value = s1000, 4
channel = 0
[State 610, 2]
type = PlaySnd
trigger1 = animelem = 3
value = 1, 2

[State 610, Hit]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=A, NA
;;;damage = 63, 0
damage   = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
animtype=Medium
guardflag=HA
hitflag=MAF
ID=200*!var(20)
getpower=20 * !var(20), 0
givepower=30, 30
priority=4, Hit
pausetime=10,10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-89
hitsound   = s2,2
 guardsound = s130,0
ground.type=High
ground.slidetime=12+3*var(9)
ground.hittime=12+3*var(9)
guard.hittime=12
ground.velocity=-7.51
guard.velocity=-7.51
air.animType=Back
fall.animType=Back
air.type=High
air.velocity=-4,-7
airguard.velocity=-5.5, -1
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
air.hittime=120
airguard.ctrlTime=16
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 
[State 610, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(5)= 0
moveType=I

[State 610, Gravity]
type=Gravity
trigger1=1

[State 610, End]
type=ChangeState
trigger1=pos y > -vel y
value=52

;---------------------------------------------------------------------------
; Jump Strong Punch
[Statedef 620]
type=A
movetype=A
physics=N
poweradd=30*!var(20)
ctrl=0
anim=620
sprpriority=2
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 300
value = s1000, 6
channel = 0
[State 620, 2]
type = PlaySnd
trigger1 = animelem = 3
value = 1, 3

[State 620, Hit]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=A, NA
;;;damage = 91, 0
damage   = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
animtype=Hard
guardflag=HA
hitflag=MAF
getpower=30 * !var(20), 0
givepower=30, 30
priority=4, Hit
pausetime=10,10
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-83
hitsound   = s2,3
 guardsound = s130,0
ground.type=High
ground.slidetime=18+4*var(9)
ground.hittime=18+4*var(9)
guard.hittime=18
ground.velocity=-5
guard.velocity=-5
air.animType=Back
fall.animType=Back
air.type=High
air.velocity=-5,-5
airguard.velocity=-5.5, -1
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
air.hittime=120
airguard.ctrlTime=16
yaccel=.58
fall=0
air.fall=0
fall.recover=0
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 
[State 620, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(7)= 0
moveType=I

[State 620, Gravity]
type=Gravity
trigger1=1

[State 620, End]
type=ChangeState
trigger1=pos y > -vel y
value=52

;---------------------------------------------------------------------------
; Jump Light Kick
[Statedef 630]
type=A
movetype=A
physics=N
poweradd= 10 * !var(20)
ctrl=0
anim=630
sprpriority=2

[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 300
value = s1000, 5
channel = 0
[State 630, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 1, 1

[State 630, Hit]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=A, NA
;;;damage = 42, 0
damage   = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
animtype=Light
guardflag=HA
hitflag=MAF
ID=200*!var(20)
getpower=10 * !var(20), 0
givepower=30, 30
priority=4, Hit
pausetime=8,8
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-74
hitsound   = s2,1
 guardsound = s130,0
air.animType=Back
fall.animType=Back
ground.type=High
ground.slidetime=12+2*var(9)
ground.hittime=12+2*var(9)
guard.hittime=12
ground.velocity=-4.49
guard.velocity=-4.49
air.type=High
airguard.ctrlTime=16
air.velocity=-4,-7
airguard.velocity=-5, -1
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
air.hittime=120
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 
[State 630, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(13)=0
moveType=I

[State 630, Gravity]
type=Gravity
trigger1=1

[State 630, End]
type=ChangeState
trigger1=pos y > -vel y
value=52

;---------------------------------------------------------------------------
; Jump Medium Kick
[Statedef 640]
type=A
movetype=A
physics=N
poweradd=20*!var(20)
ctrl=0
anim=640
sprpriority=2
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 300
value = s1000, 4
channel = 0
[State 640, 2]
type = PlaySnd
trigger1 = animelem = 3
value = 1, 2

[State 640, Hit]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=A, NA
;;;damage = 63, 0
damage   = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
animtype=Medium
guardflag=HA
hitflag=MAF
ID=200*!var(20)
getpower=20 * !var(20), 0
givepower=30, 30
priority=4, Hit
pausetime=10,10
sparkno = -1 + 0 * (var(33) := 8011)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-74
hitsound   = s2,2
 guardsound = s130,0
ground.type=High
ground.slidetime=15+3*var(9)
ground.hittime=15+3*var(9)
guard.hittime=15
ground.velocity=-5
guard.velocity=-5
air.animType=Back
fall.animType=Back
air.type=High
airguard.ctrlTime=16
air.velocity=-4,-7
airguard.velocity=-6,-1
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
air.hittime=120
yaccel=.58
fall=0
fall.recover=1
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 
[State 640, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(12)=0
moveType=I

[State 640, Gravity]
type=Gravity
trigger1=1

[State 640, End]
type=ChangeState
trigger1=pos y > -vel y
value=52

;---------------------------------------------------------------------------
; Jump Strong Kick
[Statedef 650]
type=A
movetype=A
physics=N
poweradd=30*!var(20)
ctrl=0
anim=650
sprpriority=2
[State 200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 300
value = s1000, 6
channel = 0
[State 650, 2]
type = PlaySnd
trigger1 = animelem = 3
value = 1, 3

[State 650, Hit]
type=HitDef
trigger1 = !var(16) && var(15) < 1
trigger1=!Time
attr=A, NA
damage   = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
animtype=Hard
guardflag=HA
hitflag=MAF
getpower=30 * !var(20), 0
givepower=30, 30
priority=4, Hit
pausetime=10,10
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0*(var(12):=77), var(13):=-46
hitsound   = s2,3
 guardsound = s130,0
ground.type=High
ground.slidetime=18+4*var(9)
ground.hittime=18+4*var(9)
guard.hittime=18
ground.velocity=-5
guard.velocity=-5
air.type=High
airguard.ctrlTime=16
air.velocity=-5,-6
airguard.velocity=-5.5, -1
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
air.hittime=120
airguard.ctrlTime=16
yaccel=.58
fall=0
air.fall=0
fall.recover=0
fall.recovertime=120
palFX.time=12 * var(29)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
 
[State 650, StateTypeSet: Idle]
type=StateTypeSet
trigger1=AnimElemTime(9)=0
moveType=I

[State 650, Gravity]
type=Gravity
trigger1=1

[State 650, End]
type=ChangeState
trigger1=pos y > -vel y
value=52
;---------------------------------------------------------------------------
;Kung Fu Throw - Attempt
; CNS difficulty: medium-advanced
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, Tech Hit Reset]
type = VarSet
trigger1 = 1
var(19) = 0

[State 800, Tech Hit]
type = VarSet
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType != A
trigger1 = (EnemyNear, StateNo = [0,999]) && (EnemyNear, StateNo != [100,119]) && (EnemyNear, StateNo != [200,799])
var(19) = 7

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1facing = ifelse (command = "holdback", -1, 1)
p2facing = 1
guard.dist = 0         
p1stateno = 810        
;p2stateno = 820        
guard.dist = 0         
fall = 1

[State 800, Swing Snd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,3
channel = 1
 
[State AttackDone]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Kung Fu Throw - Throwing the opponent
[Statedef 810]
type    = S
movetype =  A
physics = S
anim = 810
sprpriority = -2
velset = 0, 0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 820

[State 810, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 810, Effect]
type = PlaySnd
trigger1 = Time = 0
value = 800, 0
channel = 1

[State 810, Effect]
type = PlaySnd
trigger1 = animelem = 6
value = 1, 3

[State 810, Effect]
type = PlaySnd
trigger1 = animelem = 5
value = 100, 6
channel = 0

[State 810, 1]
type = Playerpush
trigger1 = 1
value = 0

;[State 0, Explod]
;type = Explod
;trigger1 = AnimElemTime(2)>=0
;anim = 811
;ID = 811
;postype = p1
;pos = 0,0
;scale = const(size.xscale), const(size.yscale)
;sprpriority = 5
;persistent = 0

;[State 1310, Bind 6]
;type = TargetBind
;trigger1 = AnimElemTime(1)>=0 && AnimElemTime(2)<0
;pos = 53, 0

[State 1310, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(2)>=0 && AnimElemTime(3)<0
pos = -41, -64

[State 1310, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(3)>=0 && AnimElemTime(4)<0
pos = -37, -68;-63

[State 1310, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(4)>=0 && AnimElemTime(5)<0
pos = -32, -69;-64

[State 1310, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(5)>=0 && AnimElemTime(6)<0
pos = -22, -64

[State 1310, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(6)>=0 && AnimElemTime(7)<0
pos = -8, -81;-76

[State 0, Width]
type = Width
trigger1 = time = 0
edge = 60,0 

[State 1310, Bind 6]
type = TargetBind
trigger1 = AnimElem = 7
pos = 54, -77

[State 810, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
; (a custom gethit state)
[Statedef 820]
type    = A
movetype =  H
physics = N
velset = 0,0
sprpriority = -1

[State 820, screenbound]
type = screenbound
trigger1 = AnimElemTime(6) < 0
movecamera = 0
value = 1

[State 820, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

[State 820, 2]
type = ChangeAnim
trigger1 = animtime = 0
value = 5160

[State 820, 2]
type = PosAdd
trigger1 = Anim = 5160
trigger1 = AnimElemTime(1) = 0
y = 55;45


[State 820, 3]
type = SprPriority
trigger1 = animelem = 4
value = 2

[State 820, 4]
type = SprPriority
trigger1 = animelem = 5
value = -1

[State 820, 6]
type = VelSet
triggerall = anim = 820
trigger1 = AnimElemTime(7) = 0
x = -5;6.5
y = -5

[State 820, 7]
type = veladd
trigger1 = AnimElemTime(7) >= 0
y = 0.525

[State 820, 8]
type = EnvShake
triggerall = anim = 5160
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 15

[State 820, 9]
type = LifeAdd
triggerall = anim = 5160
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = ceil((-147)*(const(data.attack)*0.01))

[State 820, 10]
type = SelfState
triggerall = anim = 5160
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
;---------------------------------------------------------------------------
;Kung Fu Throw - Attempt
; CNS difficulty: medium-advanced
[Statedef 901]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, Tech Hit Reset]
type = VarSet
trigger1 = 1
var(19) = 0

[State 800, Tech Hit]
type = VarSet
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType != A
trigger1 = (EnemyNear, StateNo = [0,999]) && (EnemyNear, StateNo != [100,119]) && (EnemyNear, StateNo != [200,799])
var(19) = 7

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1facing = ifelse (command = "holdback", -1, 1)
p2facing = 1
guard.dist = 0          
p1stateno = 911        
;p2stateno = 920        
guard.dist = 0         
fall = 1           

[State 800, Swing Snd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,3
channel = 1

[State AttackDone]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Kung Fu Throw - Throwing the opponent
[Statedef 911]
type    = S
movetype =  A
physics = S
anim = 910
sprpriority = 1
velset = 0, 0

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 921

[State 810, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 810, Effect]
type = PlaySnd
trigger1 = Time = 0
value = 800, 0
channel = 1

[State 810, Swing Snd]
type = PlaySnd
trigger1 = animelem=5||animelem=12||animelem=19||animelem=27||animelem=33||animelem=40
value = 1, 3
channel = 1

;[State 810, Effect]
;type = PlaySnd
;trigger1 = animelem=5||animelem=12||animelem=19||animelem=26||animelem=33||animelem=40
;value = 100, 2
;channel = 0

[State 810, Effect]
type = PlaySnd
trigger1 = animelem=6||animelem=13||animelem=20||animelem=27||animelem=34||animelem=41
value = 2, 3
channel = 3

[State 3000, Charge]
type = helper
helpertype = normal
trigger1 = animelem=6||animelem=13||animelem=20||animelem=27||animelem=34||animelem=41
pos = 53, -66
stateno = 8012
sprpriority = 5

;[State 0, Explod]
;type = Explod
;trigger1 = AnimElemTime(2)>=0
;anim = 911
;ID = 911
;pos = 0,0
;postype = p1
;facing = 1;ifelse (command = "holdback", -1, 1)
;sprpriority = 4
;persistent = 0

[State 0, Width]
type = Width
trigger1 = time = 0
edge = 60,0

[State 1310, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(45)<0
pos = 53, -66

[State 1310, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(45)=0
pos = 53, -15

[State 1310, Bind 6]
type = TargetState
trigger1 = AnimElemTime(45)=0
value = 922

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem=6||animelem=13||animelem=20||animelem=27||animelem=34||animelem=41
value = ceil((-24)*(const(data.attack)*0.01))

[State 810, Impact Shake]
type = EnvShake
trigger1 = animelem=6||animelem=13||animelem=20||animelem=27||animelem=34||animelem=41
time = 10
freq = 100
ampl = 3

[State 810, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 105
ctrl = 0
;---------------------------------------------------------------------------
;Opponent Pounded
[Statedef 921]
type = A
movetype = H
physics = N
sprpriority = 0
velset = 0,0

[State 811, Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 920

[State 811, Screen]
type = ScreenBound
trigger1 = 1
Value = 1
movecamera = 1,0

;---------------------------------------------------------------------------
;Opponenet Thrown
[Statedef 922]
type = A
movetype = H
physics = N
anim = 5030
sprpriority = 1
poweradd = 40
velset = -4,-8

[State 812, Gravity]
type = Gravity
Trigger1 = 1

[State 812, Screen]
type = ScreenBound
trigger1 = 1
Value = 1
movecamera = 1,0

[State 812, StateChange]
type = SelfState
trigger1 = AnimTime = 0
value = 5035

;===========<THROW ESCAPED>==========
[StateDef 890]
type = S
physics = N
movetype = I
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 890, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget
pos = 0,0

[State 890, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 895

[State 890, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 890, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 890, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 890, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(6) >= 0
value = 1

[State 890, SprPriority -1]
type = SprPriority
trigger1 = AnimElemTime(2) <= 0
value = -1

[State 890, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 890, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 890, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5000,0
channel = 0

[State 890, Escape Sound]
type = PlaySnd
trigger1 = !Time
value = 6,1

[State 890, Throw Escape FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8000
ID = 8000
name = "Spark"
PosType = P1
pos = 0, -68
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

[State 890, End]
type = ChangeState
trigger1 = Time >= 27
value = 0
ctrl = 1


;Target Escape
[StateDef 895]
type = S
physics = N
moveType = I
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5945), 5945, 130)

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5945) && SelfAnimExist(5940)
value = 5940

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5945) && !SelfAnimExist(5940) && SelfAnimExist(5910)
value = 5910

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = Time >= 20 && Anim = 130
value = 140

[State 895, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 895, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 895, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 895, End]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1
