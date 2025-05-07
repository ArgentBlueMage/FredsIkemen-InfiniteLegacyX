;============================ TRINITY GEYSER ============================
[Statedef 3000]
type    = S
movetype = A
physics = S
juggle  = 0
ctrl = 0
velset = 0,0
anim = 3000
sprpriority = 1
facep2 = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 1
fvar(5) = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S3000,0
channel = 0
volumescale = 200

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = s3090,0
channel = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 10
value = s3090,1
channel = 6
volumescale = 130

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 160
flag = noFG
flag2 = nobardisplay

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
time = 90

[State 2100, Wolf]
type = superpause
trigger1 = time = 0
time = 80
movetime = 80
p2defmul = 1
unhittable = 1
anim = -1
sound = -1
darken = 0
poweradd = -3000

[State 2100, Wolf]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8600
ID = 8600
name = "Carga"
postype = p1
pos = 0,-85
ownpal = 1
persistent = 0
supermovetime = 255
ignorehitpause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time < 21
time = 1
add = 0-(time*13),0-(time*13),0-(time*13)

[State 0, Explod]
type = Explod
trigger1 = time = 21
anim = 9990
ID = 9991
pos = 0,0
postype = p1
bindtime = 1
removetime = 125
supermovetime = 999
pausemovetime = 999
scale = 15,15
sprpriority = -10
ownpal = 1
removeongethit = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time = [146,165]
time = 1
add = -256+((time-145)*12),-256+((time-145)*12),-256+((time-145)*12)

[State 0, Explod]
type = Explod
trigger1 = AnimElemtime(8) = 0
anim = 3080
ID = 3080
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 210,256

[State 0, Explod]
type = Explod
trigger1 = AnimElemtime(8) = 0
anim = 3080
ID = 3080
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .5,.5
sprpriority = -3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 46,256

[State 0, Explod]
type = Explod
trigger1 = AnimElemtime(7) = 7
anim = 3082
ID = 3082
pos = -35,-100
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .5,.5
sprpriority = -3
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElemtime(7) = 7
anim = 3082
ID = 3082
pos = -25,-120
postype = p1
bindtime = -1
facing = -1
vfacing = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .425,.425
sprpriority = -3
ownpal = 1
removeongethit = 1

[State 0, Helper]
type = Helper
trigger1 = time = 84
helpertype = normal
name = "pilar1"
ID = 3090
stateno = 3090
pos = 30,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, Helper]
type = Helper
trigger1 = time = 94
helpertype = normal
name = "pilar1"
ID = 3090
stateno = 3090
pos = 140,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, Helper]
type = Helper
trigger1 = time = 104
helpertype = normal
name = "pilar1"
ID = 3090
stateno = 3090
pos = 250,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

;[State 0, Helper]
;type = Helper
;trigger1 = time = 114
;helpertype = normal
;name = "pilar1"
;ID = 3090
;stateno = 3090
;pos = 345,0
;postype = p1
;facing = 1
;keyctrl = 0
;ownpal = 1
;supermovetime = 999
;pausemovetime = 999

[State Idle]
type = statetypeset
trigger1 = animelemtime(36) >= 0
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;============================ TRINITY GEYSER ===================================
[StateDef 3090]
type = S
physics = N
movetype = A
anim = 3081
sprpriority = 4
juggle = 0

[State 0, VarSet]; damage dampener
type = VarSet
trigger1 = time = 0
fv = 12
value = root,fvar(12)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = s3090,2
channel = -1
volumescale = 100

[State 3000, Corner Push]
type = varset
trigger1 = time = 1
fvar(5) = 0

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2100, Wolf]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 30

[State 2100, Wolf]
type = Projectile
triggerall = Pos x <= 200
trigger1 = time = 1
projanim = 3090
Projhitanim = -1
projremanim = -1
projcancelanim = -1
projremovetime = 7
offset = 0,0
projpriority = 7
projsprpriority = 4
velocity = 0
attr = S, HP
damage = ceil(150*fvar(12)),ceil(15*fvar(12))
animtype = heavy
guardflag = MA
hitflag = MAF
pausetime = 0,2
hitsound = -1;s1,15
guardsound = s2,1
velocity = 0,0
pausetime = 0,5
sparkno = s-1
guard.sparkno = s-1
sparkxy = 20,-45
ground.type = Low
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -7,-11
air.velocity = -7,-10
air.juggle = 1
guard.velocity = -10
fall = 1
fall.recover = 0
fall.envshake.time = 12
fall.envshake.ampl = -8
projpriority = 10
ProjID = 3090
getpower = 0,0
givepower = 100,50
forcestand = 1
yaccel = .65
persistent = 0
id = 3090

[State 2100, Wolf]
type = EnvShake
trigger1 = time = 0
time = 15
ampl = -9
ignorehitpause = 1

[State 1000, End]
type = destroyself
trigger1 = !animtime
value = 0
ctrl = 1
;============================ LEGENDARY HUNGRY WOLF ============================
[Statedef 3100]
type    = S
movetype = A
physics = S
juggle  = 0
ctrl = 0
velset = 0,0
anim = 3100
sprpriority = 1
facep2 = 1

[State 730, Snd]
type = playsnd
trigger1 = !time
value = s4000,0
channel = 0

[State 730, Snd]
type = playsnd
trigger1 = time = 0
value = s7000,8
channel = 5

[State 730, Snd]
type = playsnd
trigger1 = time = 68
value = s3090,4
channel = 5

[State 730, Snd]
type = playsnd
trigger1 = time = 80
value = s3090,5
channel = 6
volumescale = 200

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(10) = 0
value = S3000,1
channel = 0
volumescale = 200

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 1
fvar(5) = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 170
flag = noFG
flag2 = nobardisplay

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
time = 90

[State 2100, Wolf]
type = superpause
trigger1 = time = 0
time = 80
movetime = 80
p2defmul = 1
unhittable = 1
anim = -1
sound = -1
darken = 0
poweradd = -5000

[State 2100, Wolf]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8600
ID = 8600
name = "Carga"
postype = p1
pos = 0,-85
ownpal = 1
persistent = 0
supermovetime = 255
ignorehitpause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time < 21
time = 1
add = 0-(time*13),0-(time*13),0-(time*13)

[State 0, Explod]
type = Explod
trigger1 = time = 21
anim = 9990
ID = 9991
pos = 0,0
postype = p1
bindtime = 1
removetime = 125
supermovetime = 999
pausemovetime = 999
scale = 15,15
sprpriority = -10
ownpal = 1
removeongethit = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time = [146,165]
time = 1
add = -256+((time-145)*12),-256+((time-145)*12),-256+((time-145)*12)

[State 0, Explod]
type = Explod
trigger1 = time = 5
anim = 3180
ID = 3180
pos = 15,-70
postype = p1
bindtime = -1
removetime = 75
supermovetime = 999
pausemovetime = 999
scale = .425,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 100,256

[State 0, Explod]
type = Explod
trigger1 = time = 5
anim = 3180
ID = 3181
pos = 15,-70
postype = p1
bindtime = -1
removetime = 75
supermovetime = 999
pausemovetime = 999
scale = .425,.5
sprpriority = -3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 150,256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 3181
scale = .425,.1+((time-5)*.009)
trans = addalpha
alpha = 150,256

[State 2100, Wolf]
type = EnvShake
trigger1 = time < 76
trigger1 = (gametime%4) = 1
time = 4
ampl = -2
freq = 120
phase = 90
ignorehitpause = 1

[State 2100, Wolf]
type = EnvShake
trigger1 = time = 85
time = 30
ampl = -6
freq = 80
phase = 90
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall = time < 76
trigger1 = (gametime%10)=1
trigger2 = time = 0
anim = 7106
ID = 7099
pos = 25,10
postype = p1
bindtime = 1
facing = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .45,.35
sprpriority = -1
ownpal = 1
removeongethit = 1
trans = add

[State 0, Explod]
type = Explod
triggerall = time < 76
trigger1 = (gametime%10)=1
trigger2 = time = 0
anim = 7106
ID = 7099
pos = -25,10
postype = p1
bindtime = 1
facing = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .45,.35
sprpriority = 3
ownpal = 1
removeongethit = 1
trans = add

[State -2, Custom Combo PalFX]
type = palfx
trigger1 = time < 80
trigger1 = (gametime%5)=1
time = 2
add = 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32)

[State 0, Explod]
type = Explod
trigger1 = animelemtime(7) = 0
anim = 3181
ID = 3182
pos = 10,0
postype = p1
bindtime = 1
facing = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .85,.75
sprpriority = 3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 100,256

[State 0, Explod]
type = Explod
trigger1 = animelemtime(7) = 0
anim = 3181
ID = 3182
pos = 10,0
postype = p1
bindtime = 1
facing = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .85,.75
sprpriority = -3
ownpal = 1
removeongethit = 1
trans = addalpha
alpha = 150,256

[State 0, Explod]
type = Explod
trigger1 = time = 74
anim = 3183
ID = 3184
pos = 10,-10
postype = p1
bindtime = 1
facing = 1
removetime = 11
supermovetime = 999
pausemovetime = 999
scale = .5,.5
sprpriority = -3
ownpal = 1
removeongethit = 1
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 3184
trans = add
scale = .5-((time-74)*.05),.1+((time-74)*.75)

[State 0, Explod]
type = Explod
trigger1 = animelemtime(7) = 0
anim = 7101
ID = 7101
pos = -10,0
postype = p1
bindtime = 1
facing = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .75,.75
sprpriority = -3
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(8) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(12) = 0
trigger4 = animelemtime(14) = 0
trigger5 = animelemtime(16) = 0
trigger6 = animelemtime(18) = 0
trigger7 = animelemtime(20) = 0
trigger8 = animelemtime(22) = 0
anim = 3182
ID = 3183
pos = 0,0
postype = p1
bindtime = 1
facing = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 10,10
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 1100, HitDef]
type = HitDef
trigger1 = animelemtime(6) = 0
trigger2 = animelemtime(7) = 0
trigger3 = animelemtime(8) = 0
trigger4 = animelemtime(9) = 0
trigger5 = animelemtime(10) = 0
trigger6 = animelemtime(11) = 0
trigger7 = animelemtime(12) = 0
trigger8 = animelemtime(13) = 0
trigger9 = animelemtime(14) = 0
trigger10 = animelemtime(15) = 0
attr = S, HP
getpower = 0,0
givepower = 22,11
animtype  = back
air.animtype  = back
damage = 70,7
priority = 7,Hit
hitflag = MAF
guardflag = M
pausetime = 0,7
guard.pausetime = 0,7
sparkno = -1 + 0*(var(33):=80420)
guard.sparkno =  -1 + 0*(var(34):=81050)
sparkxy = -10 + 0*(var(35):=120), var(36):=-115
hitsound = S1,13
guardsound = S2,1
ground.type = high
ground.slidetime = 22
ground.hittime = 24
guard.hittime = 24
guard.slidetime = 22
guard.ctrltime = 24
air.hittime = 24
ground.velocity = -6,-8.5
guard.velocity = -16
air.type = Low
air.velocity = -6,-7.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
fall.envshake.time = 15
fall.envshake.freq = 80
fall.envshake.ampl = -4
air.fall = 1
yaccel = .50
envshake.time = 20
envshake.freq = 100
envshake.ampl = -10
kill = 0
P2facing = 1
id = 3100

[State 1100, HitDef]
type = HitDef
trigger1 = animelemtime(16) = 0
attr = S, HP
getpower = 0,0
givepower = 22,11
animtype  = back
air.animtype  = back
damage = 70,7
priority = 7,Hit
hitflag = MAF
guardflag = M
pausetime = 0,7
guard.pausetime = 0,7
sparkno = -1 ;+ 0*(var(33):=8042)
guard.sparkno =  -1 ;+ 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=120), var(36):=-115
hitsound = S1,13
guardsound = S2,1
ground.type = high
ground.slidetime = 22
ground.hittime = 24
guard.hittime = 24
guard.slidetime = 22
guard.ctrltime = 24
air.hittime = 24
ground.velocity = -6,-8.5
guard.velocity = -16
air.type = Low
air.velocity = -6,-7.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
fall.envshake.time = 15
fall.envshake.freq = 80
fall.envshake.ampl = -4
air.fall = 1
yaccel = .50
envshake.time = 20
envshake.freq = 100
envshake.ampl = -10
;persistent = 0
P2facing = 1
id = 3100

[State Idle]
type = statetypeset
trigger1 = animelemtime(34) >= 0
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

