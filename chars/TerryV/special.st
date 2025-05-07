;=============================== POWER WAVE =====================================
[Statedef 1000]
type = S
physics = S
movetype = A
anim = 1000
ctrl = 0
velset = 0, 0
poweradd = 60
sprpriority = 1
facep2 = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

;----------------------- EX Cancel ---------------------------------
[State 0, PowerAdd]
type = PowerAdd
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = -1000
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = S7000,4
channel = -1
volumescale = 70
persistent = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 12
time = 1
add = 200-(time*16),200-(time*16),200-(time*16)
invertall = 0
color = 256
ignorehitpause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 10
time = 1
color = 0+(time*25)
;----------------------- EX Cancel ---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1000,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,2
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S1090,0
channel = 5

[State 1000, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = !time
var(10) = ifelse(command = "QCF_z", 3, ifelse(command = "QCF_y", 2, 1))

[State 1000, Strength]
type = varset
trigger1 = AIlevel
trigger1 = !time
var(10) = 3

[State 1000, Reppuken]
type = helper
trigger1 = animelem = 9
helpertype = normal
stateno = 1080
ID = 1080
name = "PowerWave"
postype = p1
pos = 80, 0
size.xscale = 0.5
size.yscale = 0.45
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(9) = 0
anim = 7106
ID = 7106
pos = 40,10
postype = p1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;=========================== AIR POWER WAVE ==============================
[Statedef 1050]
type    = A
movetype = A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1050
poweradd=60
sprpriority = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

;----------------------- EX Cancel ---------------------------------
[State 0, PowerAdd]
type = PowerAdd
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = -1000
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = S7000,4
channel = -1
volumescale = 70
persistent = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 12
time = 1
add = 200-(time*16),200-(time*16),200-(time*16)
invertall = 0
color = 256
ignorehitpause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 10
time = 1
color = 0+(time*25)
;----------------------- EX Cancel ---------------------------------
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1000,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,2
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S1090,0
channel = 5

[State 0, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = -1.5
y = -4.5

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
y = .55

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 1083
ID = 1083
pos = 45,-80
postype = p1
bindtime = 1
removetime = -2
scale = .6,.45
sprpriority = 3
ownpal = 1
removeongethit = 1
angle = -35
trans = addalpha
alpha = 200,256

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 1083
ID = 1083
pos = 50,-85
postype = p1
facing = 1
vfacing = -1
bindtime = 1
removetime = -2
scale = .6,.45
sprpriority = 3
ownpal = 1
removeongethit = 1
angle = 35
trans = addalpha
alpha = 200,256

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 1083
ID = 1083
pos = 45,-80
postype = p1
bindtime = 1
removetime = -2
scale = .6,.45
sprpriority = 0
ownpal = 1
removeongethit = 1
angle = -35
trans = addalpha
alpha = 56,256

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 1083
ID = 1083
pos = 50,-85
postype = p1
facing = 1
vfacing = -1
bindtime = 1
removetime = -2
scale = .6,.45
sprpriority = 0
ownpal = 1
removeongethit = 1
angle = 35
trans = addalpha
alpha = 56,256

[State 210, Hit]
type = hitdef
trigger1 = !time
attr = S, SP
damage = 85,8
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
sparkno = -1+0*(var(33):=8043)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=140), var(36):=-120
hitsound = s1,16
guardsound = s2,1
ground.type = high
pausetime = 14,14
guard.pausetime = 14,14
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -6.5,-4.5
guard.velocity = -8
air.velocity = -6.5,-4.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 0
getpower = 150,70
givepower = 70,35
yaccel = .5
fall.recover = 1
envshake.time=12
envshake.ampl=4
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(6) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52
;=========================== LIGHT BURN KNUCKLE ==============================
[Statedef 1100]
type    = S
movetype = A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1100
poweradd=40
sprpriority = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

;----------------------- EX Cancel ---------------------------------
[State 0, PowerAdd]
type = PowerAdd
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = -1000
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = S7000,4
channel = -1
volumescale = 70
persistent = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 12
time = 1
add = 200-(time*16),200-(time*16),200-(time*16)
invertall = 0
color = 256
ignorehitpause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 10
time = 1
color = 0+(time*25)
;----------------------- EX Cancel ---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1000,1
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S1090,1
channel = 5

[State 0, Explod]
type = Explod
trigger1 = animelemtime(6) >= 0
trigger1 = !(time%4)
anim = 7106
ID = 7106
pos = 5,ceil(7 - pos y)
postype = p1
facing = 1
bindtime = 1
scale = .35,.25
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 0
persistent = 1
removetime = -2

[State 1000, 1]
type = posadd
trigger1 = AnimElemtime(4) = 0
x = 15

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 6
x = 8.5
y = -1.5

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(6) > 0
y = .28

[State 210, Hit]
type = hitdef
trigger1 = !time
attr = S, SA
damage = 80,8
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=163), var(36):=-169
hitsound = s1,13
guardsound = s2,1
ground.type = high
pausetime = 14,14
guard.pausetime = 14,14
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -5,-6.5;-6.5,-4.5
guard.velocity = -8
air.velocity = -5,-5.5;-6.5,-4.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .55
persistent = 0
getpower = 200,100
givepower = 100,50
yaccel = .5
fall.recover = 1
envshake.time=12
envshake.ampl=4
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 0, Explod]
type = Explod
trigger1 = animelemtime(5) = 0
anim = 1180
ID = 1180
pos = 71,-84
postype = p1
bindtime = -1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(6) = 0
anim = 1183
ID = 1181
pos = 83,-84
postype = p1
bindtime = -1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 = Pos Y >= 0 && Vel Y > 0
anim = 1182
ID = 1182
pos = 83,-84
postype = p1
bindtime = -1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(6) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1150
;=========================== HEAVY BURN KNUCKLE ==============================
[Statedef 1120]
type    = S
movetype = A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1120
poweradd=40
sprpriority = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

;----------------------- EX Cancel ---------------------------------
[State 0, PowerAdd]
type = PowerAdd
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = -1000
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = S7000,4
channel = -1
volumescale = 70
persistent = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 12
time = 1
add = 200-(time*16),200-(time*16),200-(time*16)
invertall = 0
color = 256
ignorehitpause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 10
time = 1
color = 0+(time*25)
;----------------------- EX Cancel ---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1000,1
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = S1090,1
channel = 5

[State 0, Explod]
type = Explod
trigger1 = animelemtime(9) >= 0
trigger1 = !(time%4)
anim = 7106
ID = 7106
pos = 5,ceil(7 - pos y)
postype = p1
facing = 1
bindtime = 1
scale = .35,.25
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 0
persistent = 1
removetime = -2

[State 1000, 1]
type = posadd
trigger1 = AnimElem = 6
x = 8

[State 1000, 1]
type = posadd
trigger1 = AnimElem = 7
x = 7


[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 9
x = 12
y = -1.8

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(9) > 0
y = .28

[State 210, Hit]
type = hitdef
trigger1 = !time
attr = S, SA
damage = 90,9
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=163), var(36):=-169
hitsound = s1,13
guardsound = s2,1
ground.type = high
pausetime = 14,14
guard.pausetime = 14,14
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -6.5,-4.5
guard.velocity = -8
air.velocity = -6.5,-4.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 0
getpower = 220,110
givepower = 110,55
yaccel = .5
fall.recover = 1
envshake.time=12
envshake.ampl=4
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 0, Explod]
type = Explod
trigger1 = animelemtime(8) = 0
anim = 1180
ID = 1180
pos = 71,-84
postype = p1
bindtime = -1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(9) = 0
anim = 1181
ID = 1181
pos = 83,-84
postype = p1
bindtime = -1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 = Pos Y >= 0 && Vel Y > 0
anim = 1182
ID = 1182
pos = 83,-84
postype = p1
bindtime = -1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(8) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1150
;=========================== AIR BURN KNUCKLE ==============================
[Statedef 1130]
type    = A
movetype = A
physics = N
juggle  = 1
;velset = 0,0
ctrl = 0
anim = 1130
poweradd=40
sprpriority = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

;----------------------- EX Cancel ---------------------------------
[State 0, PowerAdd]
type = PowerAdd
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = -1000
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
helpertype = normal
name = "ex fx"
ID = 8400
stateno = 8400
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 10
time = 1
color = 0+(time*25)
;----------------------- EX Cancel ---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1000,1
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S1090,1
channel = 5

[State 1020, 1]
type = veladd
trigger1 = AnimElemtime(2) <= 0
y = -1.5

[State 1000, 1]
type = posadd
trigger1 = AnimElemtime(1) = 0
y = 5

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 6
x = 8.5
y = -2

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 11
x = 1

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(6) > 0
y = .25

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(11) > 0
y = .55

[State 210, Hit]
type = hitdef
trigger1 = !time
attr = S, SA
damage = 80,8
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=163), var(36):=-169
hitsound = s1,13
guardsound = s2,1
ground.type = high
pausetime = 14,14
guard.pausetime = 14,14
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -6.5,-4.5
guard.velocity = -8
air.velocity = -6.5,-4.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 0
getpower = 200,100
givepower = 100,50
yaccel = .5
fall.recover = 1
envshake.time=12
envshake.ampl=4
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 0, Explod]
type = Explod
trigger1 = animelemtime(5) = 0
anim = 1180
ID = 1180
pos = 71,-96
postype = p1
bindtime = -1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(6) = 0
anim = 1183
ID = 1181
pos = 83,-96
postype = p1
bindtime = -1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 = animelemtime(10) = 0
anim = 1182
ID = 1182
pos = 83,-96
postype = p1
bindtime = 1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 1100, ChangeState]
type = ChangeState
;triggerall = animelemtime(6) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52
;---------------------------------------------------------------------------
;land
[Statedef 1150]
type    = S
physics = S
ctrl = 0
anim = 1150
velset = 0,0
sprpriority = 1

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

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(1) = 0
x = 10

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(1) = 0
x = 4

[State 52, 2]
type = PosSet
trigger1 = 1;= Time = 0
y = 0

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===================== RISING TACKLE ============================
[Statedef 1200]
type = S
physics = S
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
poweradd = 40
juggle = 1
sprpriority = 1
facep2 = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 7105
ID = 7105
pos = 5,0
postype = p1
facing = 1
bindtime = 1
scale = .25,.25
sprpriority = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 0
removetime = -2

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

;----------------------- EX Cancel ---------------------------------
[State 0, PowerAdd]
type = PowerAdd
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = -1000
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
helpertype = normal
name = "ex fx"
ID = 8400
stateno = 8400
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 10
time = 1
color = 0+(time*25)
;----------------------- EX Cancel ---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1000,2
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = s0,5
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
value = s0,3
channel = -1

[State 810, HitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
value = SCA

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 1
x = 8

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(6) = 0
x = 5

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 6
x = 4
y = -8.5

[State 1100, Velocity]
type = VelAdd
trigger1 = animelemtime(6) > 0
y = .5
ignorehitpause = 0

[State 1100, Velocity]
type = VelMul
trigger1 = animelemtime(6) > 0
x = .9

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 2
trigger2 = AnimElem = 18
x = 0

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 4
StateType = A
physics = N

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage=45,5
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=90), var(36):=-85
hitsound = s1,13
guardsound = s2,1
ground.type = low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = 1,-5
guard.velocity = -8
air.velocity = 1,-4
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 12
envshake.ampl = 4
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .5
persistent = 0
getpower = 40,20
givepower = 20,10
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
triggerall = movehit <=0
trigger1 = AnimElem = 6
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage=30,1
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=2,2
sparkno = -1 * (var(33):=8032)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=90), var(36):=-175
hitsound = s1,12
guardsound = s2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -1,-8
guard.velocity = -8
air.velocity = -1,-74
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .5
persistent = 0
getpower = 40,20
givepower = 20,10
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage=15,0
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=2,2
sparkno = -1 * (var(33):=8032)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=90), var(36):=-175
hitsound = s1,12
guardsound = s2,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
air.velocity = -1,((vel y)-1)
guard.velocity = -8
air.velocity = -1,((vel y)-1)
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .5
persistent = 1
getpower = 40,20
givepower = 20,10
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 16
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage = 20,2
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=2,2
sparkno = -1 * (var(33):=8032)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=90), var(36):=-175
hitsound = s1,12
guardsound = s2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
air.velocity = -1,-8.5
guard.velocity = -8
air.velocity = -1,-7.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .7
persistent = 1
getpower = 40,20
givepower = 20,10
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 105, 1]
type = statetypeset
trigger1 = AnimElem = 18
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1250
;ctrl = 1
;===================== HEAVY RISING TACKLE ============================
[Statedef 1220]
type = S
physics = S
movetype = A
anim = 1220
ctrl = 0
velset = 0, 0
poweradd = 40
juggle = 1
sprpriority = 1
facep2 = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 7105
ID = 7105
pos = 5,0
postype = p1
facing = 1
bindtime = 1
scale = .3,.3
sprpriority = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 0
removetime = -2

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

;----------------------- EX Cancel ---------------------------------
[State 0, PowerAdd]
type = PowerAdd
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = -1000
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
helpertype = normal
name = "ex fx"
ID = 8400
stateno = 8400
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = Const(size.xscale)
size.yscale = Const(size.yscale)
ignorehitpause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 10
time = 1
color = 0+(time*25)
;----------------------- EX Cancel ---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1000,2
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = s0,5
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
value = s0,3
channel = -1

[State 810, HitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 1
x = 9

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(6) = 0
x = 5

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 6
x = 5
y = -11.5

[State 1100, Velocity]
type = VelAdd
trigger1 = animelemtime(6) > 0
y = .5
ignorehitpause = 0

[State 1100, Velocity]
type = VelMul
trigger1 = animelemtime(6) > 0
x = .9

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 2
trigger2 = AnimElem = 18
x = 0

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 4
StateType = A
physics = N

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage=40,4
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=90), var(36):=-85
hitsound = s1,13
guardsound = s2,1
ground.type = low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = 1,-6
guard.velocity = -8
air.velocity = 1,-5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 12
envshake.ampl = 4
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .5
persistent = 0
getpower = 40,20
givepower = 20,10
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
triggerall = movehit <=0
trigger1 = AnimElem = 6
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage=10,1
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=2,2
sparkno = -1 * (var(33):=8032)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=90), var(36):=-175
hitsound = s1,12
guardsound = s2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -1,-8
guard.velocity = -8
air.velocity = -1,-74
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .5
persistent = 0
getpower = 40,20
givepower = 20,10
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage=10,1
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=2,2
sparkno = -1 * (var(33):=8032)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=90), var(36):=-175
hitsound = s1,12
guardsound = s2,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
air.velocity = -1,((vel y)-1)
guard.velocity = -8
air.velocity = -1,((vel y)-1)
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .5
persistent = 1
getpower = 40,20
givepower = 20,10
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 16
attr = S, SA
animtype  = Heavy
air.animtype = back
fall.animtype = back
damage=20,2
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=2,2
sparkno = -1 * (var(33):=8032)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=90), var(36):=-175
hitsound = s1,12
guardsound = s2,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
air.velocity = -1,-8.5
guard.velocity = -8
air.velocity = -1,-7.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .7
persistent = 1
getpower = 42,20
givepower = 20,10
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 105, 1]
type = statetypeset
trigger1 = AnimElem = 18
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1250
;ctrl = 1
;---------------------------------------------------------------------------
;Land
[Statedef 1250]
type    = S
physics = N
movetype = I
sprpriority = 1
ctrl = 0
anim=1250

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

[State 0, Width]
type = Width
trigger1 = 1
value = 10,0

[State 0, PlaySnd]
type = PlaySnd
trigger1=time=0
value = S52,0
channel = -1

[State 52, stop]
type=velset
trigger1=time=0
x=0
y=0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, ctrl]
type=ctrlset
trigger1 = animelemtime(3) = 2
value=1

[State 52, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;============================ CRACK SHOOT ==========================
[Statedef 1300]
type    = S
movetype = A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
poweradd = 60
sprpriority = 1
anim = 1300

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 7100
ID = 7100
pos = 0,0
postype = p1
facing = 1
bindtime = 1
scale = .25,.35
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
removetime = -2

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

;----------------------- EX Cancel ---------------------------------
[State 0, PowerAdd]
type = PowerAdd
trigger1 = prevstateno != [1300,1399]
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = -1000
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = prevstateno != [1300,1399]
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = S7000,4
channel = -1
volumescale = 70
persistent = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = prevstateno != [1300,1399]
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 12
time = 1
add = 200-(time*16),200-(time*16),200-(time*16)
invertall = 0
color = 256
ignorehitpause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = prevstateno != [1300,1399]
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 10
time = 1
color = 0+(time*25)
;----------------------- EX Cancel ---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1000,3
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = s0,5
channel = 1

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 10,0

[State 1020, 1]
type = StateTypeSet
trigger1 = AnimElem = 6,= 2
StateType = A

[State 1020, 1]
type = velset
trigger1 = AnimElem = 1,> 2
x = 4.4

[State 1020, 1]
type = velset
trigger1 = AnimElem = 6,= 2
y = -4

[State 1020, 1]
type = veladd
trigger1 = AnimElem = 6,> 2
y = .5

[State 2000, Explod 1]
type = explod
trigger1 = animelem = 7
anim = 1310
id = 1310
sprpriority = 2
postype = p1
scale = 1*const(size.xscale),1*const(size.yscale)
pos = 0,0
bindtime = -1
ignorehitpause = 0
removeongethit = 1
under = 0
ownpal = 1

;[State 220, Position]
;type = PosSet
;trigger1 = AnimElem = 1
;y = 0

;[State 1100, Velocity]
;type = VelSet
;trigger1 = AnimElem = 6
;x = 8
;y = -10.5

;[State 105, 1]
;type = VelAdd
;trigger1 = AnimElemTime(6) > 0
;y = 1.7

;[State 1100, StateType]
;type = StateTypeSet
;trigger1 = AnimElem = 6
;StateType = A
;physics = N

[State 1100, HitDef]
type = HitDef
triggerall = movehit <1
trigger1 = AnimElem = 8
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage=70,7
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=120), var(36):=-190
hitsound = s1,15
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -8,0
guard.velocity = -8
air.velocity = -4,-5.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -11.2
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 1
getpower =140,70
givepower = 70,45
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
triggerall = movehit <1
trigger1 = AnimElem = 9
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage=70,7
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=120), var(36):=-190
hitsound = s1,15
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -8,0
guard.velocity = -8
air.velocity = -4,-5.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -11.2
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 1
getpower =140,70
givepower = 70,45
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
triggerall = movehit <1
trigger1 = AnimElem = 10
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage=70,7
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=120), var(36):=-120
hitsound = s1,15
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -8,0
guard.velocity = -8
air.velocity = -4,-5.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -11.2
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 1
getpower =140,70
givepower = 70,45
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
triggerall = movehit <1
trigger1 = AnimElem = 8
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage=70,7
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=100), var(36):=-210
hitsound = s1,15
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -6,-5.5
guard.velocity = -8
air.velocity = -6,-5.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -11.2
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 1
getpower =140,70
givepower = 70,45
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(7) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1350
;============================ MEDIUM CRACK SHOOT ==========================
[Statedef 1310]
type    = S
movetype = A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
poweradd = 60
sprpriority = 1
anim = 1305

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 7100
ID = 7100
pos = 0,0
postype = p1
facing = 1
bindtime = 1
scale = .25,.35
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
removetime = -2

;----------------------- EX Cancel ---------------------------------
[State 0, PowerAdd]
type = PowerAdd
trigger1 = prevstateno != [1300,1399]
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = -1000
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = prevstateno != [1300,1399]
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = S7000,4
channel = -1
volumescale = 70
persistent = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = prevstateno != [1300,1399]
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 12
time = 1
add = 200-(time*16),200-(time*16),200-(time*16)
invertall = 0
color = 256
ignorehitpause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = prevstateno != [1300,1399]
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 10
time = 1
color = 0+(time*25)
;----------------------- EX Cancel ---------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1000,3
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = s0,5
channel = 1

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 10,0

[State 1020, 1]
type = StateTypeSet
trigger1 = AnimElem = 6,= 2
StateType = A

[State 1020, 1]
type = velset
trigger1 = AnimElem = 1,> 2
x = 4.8

[State 1020, 1]
type = velset
trigger1 = AnimElem = 6,= 2
y = -4.2

[State 1020, 1]
type = veladd
trigger1 = AnimElem = 6,> 2
y = .48

[State 2000, Explod 1]
type = explod
trigger1 = animelem = 7
anim = 1310
id = 1310
sprpriority = 2
postype = p1
scale = 1*const(size.xscale),1*const(size.yscale)
pos = 0,0
bindtime = -1
ignorehitpause = 0
removeongethit = 1
under = 0
ownpal = 1

;[State 220, Position]
;type = PosSet
;trigger1 = AnimElem = 1
;y = 0

;[State 1100, Velocity]
;type = VelSet
;trigger1 = AnimElem = 6
;x = 8
;y = -10.5

;[State 105, 1]
;type = VelAdd
;trigger1 = AnimElemTime(6) > 0
;y = 1.7

;[State 1100, StateType]
;type = StateTypeSet
;trigger1 = AnimElem = 6
;StateType = A
;physics = N

[State 1100, HitDef]
type = HitDef
triggerall = movehit <1
trigger1 = AnimElem = 8
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage=70,7
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=120), var(36):=-190
hitsound = s1,15
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -8,0
guard.velocity = -8
air.velocity = -4,-5.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -11.2
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 1
getpower =140,70
givepower = 70,45
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
triggerall = movehit <1
trigger1 = AnimElem = 9
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage=70,7
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=120), var(36):=-190
hitsound = s1,15
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -8,0
guard.velocity = -8
air.velocity = -4,-5.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -11.2
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 1
getpower =140,70
givepower = 70,45
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
triggerall = movehit <1
trigger1 = AnimElem = 10
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage=70,7
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=120), var(36):=-120
hitsound = s1,15
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -8,0
guard.velocity = -8
air.velocity = -4,-5.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -11.2
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 1
getpower =140,70
givepower = 70,45
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
triggerall = movehit <1
trigger1 = AnimElem = 8
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage=70,7
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=100), var(36):=-210
hitsound = s1,15
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -6,-5.5
guard.velocity = -8
air.velocity = -6,-5.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -11.2
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 1
getpower =140,70
givepower = 70,45
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(7) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1350
;============================ HEAVY CRACK SHOOT ==========================
[Statedef 1320]
type    = S
movetype = A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
poweradd = 60
sprpriority = 1
anim = 1320

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4) = 0
anim = 7100
ID = 7100
pos = 0,0
postype = p1
facing = 1
bindtime = 1
scale = .25,.35
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
removetime = -2

;----------------------- EX Cancel ---------------------------------
[State 0, PowerAdd]
type = PowerAdd
trigger1 = prevstateno != [1300,1399]
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = -1000
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = prevstateno != [1300,1399]
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = S7000,4
channel = -1
volumescale = 70
persistent = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = prevstateno != [1300,1399]
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 12
time = 1
add = 200-(time*16),200-(time*16),200-(time*16)
invertall = 0
color = 256
ignorehitpause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = prevstateno != [1300,1399]
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 10
time = 1
color = 0+(time*25)
;----------------------- EX Cancel ---------------------------------
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1000,3
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = s0,5
channel = 1

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 10,0

[State 1020, 1]
type = StateTypeSet
trigger1 = AnimElem = 6,= 2
StateType = A

[State 1020, 1]
type = velset
trigger1 = AnimElem = 2,> 2
x = 6

[State 1020, 1]
type = velset
trigger1 = AnimElem = 6,= 2
y = -4.5

[State 1020, 1]
type = veladd
trigger1 = AnimElem = 6,> 2
y = .55

[State 2000, Explod 1]
type = explod
trigger1 = animelem = 7
anim = 1310
id = 1310
sprpriority = 2
postype = p1
scale = 1*const(size.xscale),1*const(size.yscale)
pos = 0,0
bindtime = -1
ignorehitpause = 0
removeongethit = 1
under = 0
ownpal = 1

;[State 220, Position]
;type = PosSet
;trigger1 = AnimElem = 1
;y = 0

;[State 1100, Velocity]
;type = VelSet
;trigger1 = AnimElem = 6
;x = 8
;y = -10.5

;[State 105, 1]
;type = VelAdd
;trigger1 = AnimElemTime(6) > 0
;y = 1.7

;[State 1100, StateType]
;type = StateTypeSet
;trigger1 = AnimElem = 6
;StateType = A
;physics = N

[State 1100, HitDef]
type = HitDef
triggerall = movehit <1
trigger1 = AnimElem = 8
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage=90,9
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=120), var(36):=-190
hitsound = s1,15
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -8,0
guard.velocity = -8
air.velocity = -4,-5.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -11.2
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 1
getpower =140,70
givepower = 70,45
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
triggerall = movehit <1
trigger1 = AnimElem = 9
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage=90,9
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=120), var(36):=-190
hitsound = s1,15
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -8,0
guard.velocity = -8
air.velocity = -4,-5.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -11.2
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 1
getpower =140,70
givepower = 70,45
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
triggerall = movehit <1
trigger1 = AnimElem = 10
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage=90,9
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=100), var(36):=-120
hitsound = s1,15
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -8,0
guard.velocity = -8
air.velocity = -4,-5.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -11.2
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 1
getpower =140,70
givepower = 70,45
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
triggerall = movehit <1
trigger1 = AnimElem = 8
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage=90,9
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=100), var(36):=-210
hitsound = s1,15
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -6,-5.5
guard.velocity = -8
air.velocity = -6,-5.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -11.2
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 1
getpower =140,70
givepower = 70,45
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, ChangeState]
type = ChangeState
triggerall = animelemtime(7) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1350
;============================  AIR CRACK SHOOT ==========================
[Statedef 1330]
type    = A
movetype = A
physics = N
juggle = 0
ctrl = 0
poweradd = 60
sprpriority = 1
anim = 1330

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

;----------------------- EX Cancel ---------------------------------
[State 0, PowerAdd]
type = PowerAdd
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = -1000
persistent = 0

[State 0, PlaySnd]
type = PlaySnd

trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = S7000,4
channel = -1
volumescale = 70
persistent = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 12
time = 1
add = 200-(time*16),200-(time*16),200-(time*16)
invertall = 0
color = 256
ignorehitpause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 10
time = 1
color = 0+(time*25)
;----------------------- EX Cancel ---------------------------------

[State 0, PowerAdd]
type = PowerAdd
trigger1 = prevstateno = [1000,1999]
trigger1 = time = 0
value = -1000
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1000,3
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = s0,5
channel = 1

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 10,0

[State 1020, 1]
type = velset
trigger1 = AnimElemtime(4) <= 0
x = 0
y = 0

[State 1020, 1]
type = velset
trigger1 = AnimElemtime(4) = 0
x = 3
y = -2.5

[State 1020, 1]
type = velset
trigger1 = AnimElemtime(6) = 0
y = 4

[State 1020, 1]
type = veladd
trigger1 = AnimElemtime(5) >= 0
y = .6

[State 2000, Explod 1]
type = explod
trigger1 = animelem = 7
anim = 1315
id = 1315
sprpriority = 2
postype = p1
scale = 1*const(size.xscale),1*const(size.yscale)
pos = 0,0
bindtime = -1
ignorehitpause = 0
removeongethit = 1
under = 0
ownpal = 1

;[State 220, Position]
;type = PosSet
;trigger1 = AnimElem = 1
;y = 0

;[State 1100, Velocity]
;type = VelSet
;trigger1 = AnimElem = 6
;x = 8
;y = -10.5

;[State 105, 1]
;type = VelAdd
;trigger1 = AnimElemTime(6) > 0
;y = 1.7

;[State 1100, StateType]
;type = StateTypeSet
;trigger1 = AnimElem = 6
;StateType = A
;physics = N

[State 1100, HitDef]
type = HitDef
triggerall = movehit <1
trigger1 = AnimElem = 8
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage=70,7
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime=12,12
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=150), var(36):=-160
hitsound = s1,15
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -8,0
guard.velocity = -8
air.velocity = -4,1
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -11.2
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 1
getpower =140,70
givepower = 70,45
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
triggerall = movehit <1
trigger1 = AnimElem = 9
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage=70,7
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime=12,12
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=150), var(36):=-160
hitsound = s1,15
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -8,0
guard.velocity = -8
air.velocity = -4,1
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -11.2
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 1
getpower =140,70
givepower = 70,45
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
triggerall = movehit <1
trigger1 = AnimElem = 10
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage=70,7
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime=12,12
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=120), var(36):=-120
hitsound = s1,15
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -8,0
guard.velocity = -8
air.velocity = -4,1
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -11.2
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 1
getpower =140,70
givepower = 70,45
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, HitDef]
type = HitDef
triggerall = movehit <1
trigger1 = AnimElem = 8
attr = A, SA
animtype  = Heavy
air.animtype  = Back
damage=70,7
priority  = 6, Hit
hitflag = MAF
guardflag = HA
pausetime=12,12
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=150), var(36):=-160
hitsound = s1,15
guardsound = s2,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -6,-5.5
guard.velocity = -8
air.velocity = -4,1
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -11.2
guard.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
persistent = 1
getpower =140,70
givepower = 70,45
forcestand = 1
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 1100, ChangeState]
type = ChangeState
;triggerall = animelemtime(7) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1350

;========================== CRACK SHOOT LAND ==============================
[Statedef 1350]
type = S
physics = S
ctrl = 0
anim = 1350
velset = 0,0
sprpriority = 1

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

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, CtrlSet]
type = CtrlSet
trigger1 = animelemtime(4) = 3
value = 1

[State 52, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1




