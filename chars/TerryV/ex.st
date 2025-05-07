;============================= POWER GEYSER ====================================
[StateDef 2000]
type = S
physics = S
movetype = A
anim = 2000
ctrl = 0
velset = 0, 0
poweradd = 0
sprpriority = 1
facep2 = 1
juggle = 0

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 0, VarAdd];super cancel tracking
type = VarAdd
trigger1 = time = 0
var(12) = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 1
fvar(5) = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S2000,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S2000,1
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(9) = 0
value = S1,14
channel = 1

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0

[State 2100, Wolf]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 40

[State 2100, Wolf]
type = superpause
trigger1 = time = 0
time = 45
movetime = 45
p2defmul = 1
unhittable = 1
anim = -1
sound = -1
darken = 0
poweradd = -1000
persistent = 0

[State 2100, Wolf]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8500
ID = 8500
name = "Carga"
postype = p1
pos = 2,-79
ownpal = 1
persistent = 0
supermovetime = 255
pausemovetime = 255
ignorehitpause = 0

[State 2000, Explod 1]
type = Explod
trigger1 = animelemtime(7) =1
anim = 2081
sprpriority = 3
postype = p1
ignorehitpause = 1
scale = 0.5,0.5
pos = 0,0
under = 0
ownpal = 1
supermovetime = 255
pausemovetime = 255

[State 2100, Wolf]
type = Explod
trigger1 = animelemtime(9) = 0
anim = 2080
ID = 2080
pos = 80,0
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 220,256
supermovetime = 255
pausemovetime = 255

[State 2100, Wolf]
type = Explod
trigger1 = animelemtime(9) = 0
anim = 2080
ID = 2080
pos = 80,0
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = -3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 36,256
supermovetime = 255
pausemovetime = 255

[State 2100, Wolf]
type = EnvShake
trigger1 = animelemtime(9) = 0
time = 16
ampl = -6
freq = 75
ignorehitpause = 1

[State 2100, Wolf]
type = Projectile
triggerall = Pos x <= 200
trigger1 = animelemtime(9) =2
projanim = 2090
Projhitanim = -1
projremanim = -1
projcancelanim = -1
projremovetime = 7
offset = 80,0
projpriority = 7
projsprpriority = 4
velocity = 0
attr = S, HP
damage = 180,18
animtype = back
guardflag = MA
hitflag = MAF
pausetime = 0,5
hitsound = -1;s1,15
guardsound = s2,1
velocity = 0, 0
pausetime = 0,5
sparkno = s-1
guard.sparkno = s-1
sparkxy = 20,-45
ground.type = Low
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -4,-14
air.velocity = -4,-13
air.juggle = 1
guard.velocity = -10
fall = 1
fall.recover = 0
offset = 85,0
envshake.time = 12
envshake.ampl = -6
fall.envshake.time = 8
fall.envshake.ampl = -6
projpriority = 10
ProjID = 2090
getpower = 0,0
givepower = 300,150
forcestand = 1
yaccel = .7

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;============================ BUSTER WOLF ============================
[Statedef 2100]
type     = S
movetype = A
physics  = S
juggle   = 0
velset   = 0,0
anim     = 2100
ctrl     = 0
sprpriority = 3
facep2 = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 0, VarAdd];super cancel tracking
type = VarAdd
trigger1 = time = 0
var(12) = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 1
fvar(5) = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S2000,2
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S1090,0
channel = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S1090,1
channel = 6

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0

[State 2100, Wolf]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 40

[State 3000, Superpause]
type = superpause
trigger1 = time = 0
time = 45
movetime = 45
p2defmul = 1
unhittable = 1
anim = -1
sound = -1
darken = 0
poweradd = -1000

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8500
ID = 8500
name = "Carga"
postype = p1
pos = 2,-79
ownpal = 1
persistent = 0
supermovetime = 255
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(10) = 0
anim = 2185
ID = 2181
pos = 80,-78
postype = p1
bindtime = -1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 0
trans = addalpha
alpha = 170,256
supermovetime = 255
pausemovetime = 255

[State 0, Explod]
type = Explod
trigger1 = animelemtime(10) = 0
anim = 2185
ID = 2181
pos = 80,-78
postype = p1
bindtime = -1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 0
trans = addalpha
alpha = 86,256
supermovetime = 255
pausemovetime = 255

[State 0, Explod]
type = Explod
trigger1 = animelemtime(9) = 0
anim = 2190
ID = 2190
pos = 190,-110
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .75,.75
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
supermovetime = 255
pausemovetime = 255

[State 0, Explod]
type = Explod
trigger1 = animelemtime(9) = 0
anim = 2191
ID = 2191
pos = 45,-86
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
supermovetime = 255
pausemovetime = 255

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(7) = 0
x = 16

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(8) = 0
x = 18

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(9) = 0
x = 12

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 10
x = 13
y = -1.25

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(10) > 0
y = .25

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 10
physics = N
;StateType = A

[State 2100, Wolf]
type = HitDef
trigger1 = time= 0
attr = A, HA
damage = 40,4
pausetime = 20,35
animtype = Medium
guardflag = MA
hitflag = MAF
getpower = 0,0
givepower = 100,50
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=140), var(36):=-152
hitsound = S1,13
guardsound = S2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
P1stateno = 2101
ground.velocity = 0
air.velocity = 0,-2
yaccel = .55
kill = 0
envshake.time = 20
envshake.ampl = 6
forcestand = 1

[State 2100, Wolf]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 2102
;========================== CONNECT ====================================
[Statedef 2101]
type = S
movetype = A
physics = S
anim = 2101
velset = 1,0

[State 3000, Corner Push]
type = varset
trigger1 = time = 1
fvar(5) = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S2000,3
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S1090,0
volumescale = 50
channel = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S3090,3
channel = 6

[State 2100, Wolf]
type = PosSet
trigger1 = Time = 0
y = 0

p[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1;animelemtime(10) <= 0
value = 0
ignorehitpause = 1

[State 2100, Wolf]
type = EnvShake
trigger1 = var(57) = 1
time = 12
ampl = -6
freq = 75

[State 2100, Wolf]
type = Helper
trigger1 = AnimElem = 5
ID = 2180
stateno = 2180
postype = p1
pos = 25,-2
name = "buster"
ownpal = 1
size.xscale = .75
size.yscale = .75

;[State 2100, Wolf]
;type = Projectile
;trigger1 = AnimElem = 5
;projID = 2180
;projanim = 2180
;projremove = 0
;projremovetime = 32
;projpriority = 1
;projsprpriority = 5
;projshadow = 0,0,0
;projscale = 0.5,0.5
;attr = S, HA
;damage = 90,15
;animtype = Up
;guardflag = M
;hitflag = MAF
;getpower = 0
;ownpal = 1
;offset = 0,0
;velocity = 0, 0
;hitsound = s1,9
;guardsound = s2,1
;pausetime = 0,12
;sparkno = s-1
;guard.sparkno = s-1
;sparkxy = 20,-45
;ground.type = Low
;ground.slidetime = 10
;ground.hittime  = 16
;ground.velocity = -6,-6
;air.velocity = -6,-6
;ground.cornerpush.veloff = 0
;yaccel = .43
;fall = 1
;fall.recover = 0

[State 2100, Wolf]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;============================= MISS ========================================
[Statedef 2102]
type    = S
physics = S
poweradd = 0
anim     = 2102
ctrl     = 0
sprpriority = 2
velset = 0,0

[State 3000, Corner Push]
type = varset
trigger1 = time = 1
fvar(5) = 0

[State 2100, Wolf]
type = Posset
trigger1 = time = 0
y = 0

[State 2100, Wolf]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;=========================== BUSTER HELPER ==================================
[Statedef 2180]
type    = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 2180
sprpriority = 3

[State 0, VarSet]; damage dampener
type = VarSet
trigger1 = time = 0
fv = 12
value = root,fvar(12)

[State 3000, Corner Push]
type = varset
trigger1 = time = 1
fvar(5) = 0

;hit detection ----------------------
[State 1005, Comboflag]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
;------------------------------------

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 240,256

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2180
ID = 2180
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = -3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = addalpha
alpha = 36,256

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2180
ID = 2180
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = -4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = sub

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1000, Proj]
type = Projectile
trigger1 = animelem = 6
projanim = 2181
Projhitanim = -1
projremanim = -1
projcancelanim = -1
projremovetime = 10
projhits = 1
offset = 0, 0
projpriority = 7
projsprpriority = 4
velocity = 0
attr = S, HP
damage = ceil(110*fvar(12)),ceil(11*fvar(12))
animtype = heavy
hitflag = MAF
guardflag = MA
pausetime = 2,10
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=163), var(36):=-152
hitsound = S1,13
guardsound = S2,1
ground.type = Low
ground.slidetime = 14
ground.hittime = 14
air.hittime = 14
guard.ctrltime = 14
ground.velocity = -4, -11
guard.velocity = -8
air.velocity = -4, -10
airguard.velocity = -6.67,-1
yaccel = .6
air.juggle = 0
fall = 1
fall.recover = 0
air.fall = 1
envshake.time = 16
envshake.ampl = 6
ProjID = 2180;3105+(var(5)=2)
getpower = 0,0
givepower = 200,100
forcestand = 1
fall.envshake.time = 10
fall.envshake.ampl = -6

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;============================ POWER DUNK =====================================
[StateDef 2200]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 2200
poweradd = 0
sprpriority = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = animelemtime(9) >= 0
flag = invisible
ignorehitpause = 1

[State 0, VarAdd];super cancel tracking
type = VarAdd
trigger1 = time = 0
var(12) = 1

[State 3000, Corner Push]
type = varset
trigger1 = 1;time = 1
fvar(5) = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = S1090,4
channel = 6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S2000,4
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 10
value = S1000,5
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 16
value = S1090,1
channel = 5

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 20,0

[State 2100, Wolf]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 50

[State 2100, Wolf]
type = superpause
trigger1 = time = 0
time = 45
movetime = 45
p2defmul = 1
unhittable = 1
anim = -1
sound = -1
darken = 0
poweradd = -2000

[State 2100, Wolf]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8550
ID = 8550
name = "Carga"
postype = p1
pos = 8,-75
ownpal = 1
persistent = 0
supermovetime = 255
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(8) = 0
anim = 7106
ID = 7106
pos = -60,10
facing = -1
postype = p1
bindtime = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .5,.75
sprpriority = -3
ownpal = 1
removeongethit = 1
trans = add
angle = -10

;[State 0, Explod]
;type = Explod
;trigger1 = time = 0
;anim = 8570
;ID = 8570
;pos = 0,-5
;postype = p1
;bindtime = -1
;removetime = -2
;supermovetime = 999
;pausemovetime = 999
;scale = .5,.5
;sprpriority = 3
;ownpal = 1
;removeongethit = 1
;trans = add

;[State 0, Explod]
;type = Explod
;trigger1 = time = 0
;anim = 8580
;ID = 8580
;pos = 10,-10
;postype = p1
;bindtime = -1
;removetime = -2
;supermovetime = 999
;pausemovetime = 999
;scale = .5,.5
;sprpriority = -1
;ownpal = 1
;removeongethit = 1
;trans = add

[State 0, Explod]
type = Explod
trigger1 = animelemtime(9) = 0
anim = 2201
ID = 2201
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
scale = Const(size.xscale),Const(size.yscale)
sprpriority = 1
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2201) = 1
ID = 2201
angle = -10

[State 0, Explod]
type = Explod
trigger1 = animelemtime(16) = 0
anim = 2202
ID = 2202
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
scale = Const(size.xscale),Const(size.yscale)
sprpriority = 1
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2202) = 1
ID = 2202
angle = -40

[State 0, Explod]
type = Explod
trigger1 = animelemtime(16) = 0
anim = 2280
ID = 2280
pos = 95,-30
postype = p1
bindtime = -1
removetime = -2
scale = Const(size.xscale),Const(size.yscale)
sprpriority = 3
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2280) = 1
ID = 2280
angle = -46
trans = addalpha
alpha = 200,256

[State 0, Explod]
type = Explod
trigger1 = animelemtime(16) = 0
anim = 2280
ID = 2281
pos = 95,-30
postype = p1
bindtime = -1
removetime = -2
scale = Const(size.xscale),Const(size.yscale)
sprpriority = -2
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2281) = 1
ID = 2281
angle = -46
trans = addalpha
alpha = 56,256

[State 0, Explod]
type = Explod
trigger1 = animelemtime(16) = 0
anim = 2282
ID = 2282
pos = 95,-30
postype = p1
bindtime = 1
removetime = -2
scale = Const(size.xscale),Const(size.yscale)
sprpriority = 3
ownpal = 0
removeongethit = 1
ignorehitpause = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(2282) = 1
ID = 2282
angle = -60
trans = add

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(8) = 1
x = 10

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(9) = 1
x = 3
y = -10

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(16) = 1
x = 8
y = 6

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(9) > 1
y = .7

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(9) = 0
StateType = A
physics = N

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 8
attr = S, HA
animtype  = Heavy
air.animtype  = Back
damage=20,4
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=5,5
sparkno = -1 + 0*(var(33):=8042)
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=120), var(36):=-115
hitsound = S1,13
guardsound = S2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -3,-9
guard.velocity = -8
air.velocity = -2,-7
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = -4
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 0
getpower = 0,0
givepower = 100,50
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -8

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 10
attr = S, HA
animtype  = Heavy
air.animtype  = Back
damage=20,4
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=15,15
sparkno = -1 + 0*(var(33):=8042)
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=100), var(36):=-170
hitsound = S1,13
guardsound = S2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -4,-8
guard.velocity = -8
air.velocity = (vel x)*-1,(vel y)+2;-4,-72
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = -4
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 0
getpower = 0,0
givepower = 100,50
forcestand = 1
air.juggle = 1
fall.envshake.time = 12
fall.envshake.ampl = -8

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 15
attr = A, HA
animtype  = Heavy
air.animtype  = Back
damage=100,20
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime=15,15
sparkno = -1 + 0*(var(33):=8043)
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=170), var(36):=-80
hitsound = S1,13
guardsound = S2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -5.5,10
guard.velocity = -8
air.velocity = -5.5,11
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = -4
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 0
getpower = 0,0
givepower = 100,50
forcestand = 1
air.juggle = 1
fall.envshake.time = 12
fall.envshake.ampl = -8
down.bounce = 1
fall.xvelocity = -3
fall.yvelocity = -7.5

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(9) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = ifelse(movehit,2205,2206)
;============================ LAND =====================================
[Statedef 2205]
type = S
movetype= A
physics = S
ctrl = 0
anim = 2205
velset = 0,0
sprpriority = 1

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2100, Wolf]
type = superpause
trigger1 = animelemtime(7) = 0
time = 25
movetime = 25
p2defmul = 1
unhittable = 1
anim = -1
sound = -1
darken = 0
poweradd = 0
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = animelemtime(11) = 0
anim = 2281
ID = 22810
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(7) = 0
anim = 8565
ID = 8565
pos = 40,-80
postype = p1
bindtime = 1
removetime = -2
scale = .75,.75
sprpriority = 3
removeongethit = 1
ownpal = 1
supermovetime = 999
pausemovetime = 999
trans = add

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time <= 10
time = 1
color = 0
add = 0-(time*4),0-(time*4),0-(time*4)

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time = [11,28]
time = 1
color = 0
add = -40,-40,-40

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time = [29,34]
time = 1
color = 0+((time-29)*51)
add = -40+((time-29)*8),-40+((time-29)*8),-40+((time-29)*8)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S2000,6
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S2090,1
channel = -1

[State 0, Explod]
type = Explod
trigger1 = numexplod(7102) = 0
trigger1 = time = 0
anim = 7102
ID = 7102
pos = 0,3
postype = p1
bindtime = 1
removetime = -2
scale = .75,.5
sprpriority = 3
removeongethit = 1
ownpal = 1
supermovetime = 999

[State 0, PlaySnd]
type = PlaySnd
trigger1=time=0
value = S52,0
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
value = S2000,7
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(14) = 0
trigger2 = animelemtime(14) = 5
trigger3 = animelemtime(14) = 10
value = S1,14
channel = -1

[State 3000, Corner Push]
type = varset
trigger1 = time = 1
fvar(5) = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 2201

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 2280

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 2202

[State 2100, Wolf]
type = Explod
trigger1 = animelemtime(14) = 0
anim = 2080
ID = 2280
pos = 80,0
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .4,.4
sprpriority = 3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 220,256

[State 2100, Wolf]
type = Explod
trigger1 = animelemtime(14) = 0
anim = 2080
ID = 2280
pos = 80,0
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .4,.4
sprpriority = -3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 36,256

[State 2100, Wolf]
type = Explod
trigger1 = animelemtime(14) = 5
anim = 2080
ID = 2280
pos = 120,0
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 220,256

[State 2100, Wolf]
type = Explod
trigger1 = animelemtime(14) = 5
anim = 2080
ID = 2280
pos = 120,0
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = -3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 36,256

[State 2100, Wolf]
type = Explod
trigger1 = animelemtime(14) = 10
anim = 2080
ID = 2280
pos = 160,0
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .65,.65
sprpriority = 3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 220,256

[State 2100, Wolf]
type = Explod
trigger1 = animelemtime(14) = 10
anim = 2080
ID = 2280
pos = 160,0
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .65,.65
sprpriority = -3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 36,256

[State 2100, Wolf]
type = Projectile
triggerall = Pos x <= 200
trigger1 = animelemtime(14) = 2
projanim = 2090
Projhitanim = -1
projremanim = -1
projcancelanim = -1
projremovetime = 7
offset = 80,0
projpriority = 7
projsprpriority = 4
velocity = 0
attr = S, HP
damage = 100,10
animtype = back
guardflag = MA
hitflag = MAFD
pausetime = 0,3
hitsound = -1;s1,15
guardsound = s2,1
velocity = 0, 0
sparkno = s-1
guard.sparkno = s-1
sparkxy = 20,-45
ground.type = Low
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -8,-9
air.velocity = -8,-8
air.juggle = 1
guard.velocity = -10
fall = 1
fall.recover = 0
offset = 85,0
envshake.time = 12
envshake.ampl = -6
fall.envshake.time = 8
fall.envshake.ampl = -6
projpriority = 10
ProjID = 2290
getpower = 0,0
givepower = 300,150
forcestand = 1
yaccel = .7

[State 2100, Wolf]
type = Projectile
triggerall = Pos x <= 200
trigger1 = animelemtime(14) = 10
projanim = 2090
Projhitanim = -1
projremanim = -1
projcancelanim = -1
projremovetime = 7
offset = 120,0
projpriority = 7
projsprpriority = 4
velocity = 0
attr = S, HP
damage = 100,10
animtype = back
guardflag = MA
hitflag = MAFD
pausetime = 0,3
hitsound = -1;s1,15
guardsound = s2,1
velocity = 0, 0
sparkno = s-1
guard.sparkno = s-1
sparkxy = 20,-45
ground.type = Low
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -8,-9
air.velocity = -8,-8
air.juggle = 1
guard.velocity = -10
fall = 1
fall.recover = 0
offset = 85,0
envshake.time = 12
envshake.ampl = -6
fall.envshake.time = 8
fall.envshake.ampl = -6
projpriority = 10
ProjID = 2290
getpower = 0,0
givepower = 300,150
forcestand = 1
yaccel = .7

[State 2100, Wolf]
type = Projectile
triggerall = Pos x <= 200
trigger1 = animelemtime(14) = 18
projanim = 2090
Projhitanim = -1
projremanim = -1
projcancelanim = -1
projremovetime = 7
offset = 160,0
projpriority = 7
projsprpriority = 4
velocity = 0
attr = S, HP
damage = 100,10
animtype = back
guardflag = MA
hitflag = MAFD
pausetime = 0,5
hitsound = -1;s1,15
guardsound = s2,1
velocity = 0, 0
pausetime = 0,5
sparkno = s-1
guard.sparkno = s-1
sparkxy = 20,-45
ground.type = Low
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -4,-9
air.velocity = -4,-8
air.juggle = 1
guard.velocity = -10
fall = 1
fall.recover = 0
offset = 85,0
envshake.time = 12
envshake.ampl = -6
fall.envshake.time = 8
fall.envshake.ampl = -6
projpriority = 10
ProjID = 2295
getpower = 0,0
givepower = 300,150
forcestand = 1
yaccel = .7

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;============================ LAND =====================================
[Statedef 2206]
type = S
movetype= A
physics = S
ctrl = 0
anim = 2206
velset = 0,0
sprpriority = 1

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, Explod]
type = Explod
trigger1 = numexplod(7102) = 0
trigger1 = time = 0
anim = 7102
ID = 7102
pos = 0,3
postype = p1
bindtime = 1
removetime = -2
scale = .75,.5
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1=time=0
value = S52,0
channel = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 1
fvar(5) = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 2201

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 2280

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 1
id = 2202

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




