;=============================== POWER WAVE ====================================
[Statedef 1080]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1080
sprpriority = 3

[State 0, VarSet]; damage dampener
type = VarSet
trigger1 = time = 0
fv = 12
value = root,fvar(12)

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1082
ignorehitpause = 1

[State 1005, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1005, Anim]
type = changeanim
trigger1 = anim != 1080
value = 1080

[State 1005, Button]
type = varset
trigger1 = !time && !prevstateno
var(10) = root, var(10)

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 3, 10, ifelse(var(10) = 2, 7, 4))
y = 0

[State 1005, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1005, Miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag =
sparkxy = -10, 0

[State 1005, Hit]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(70*fvar(12)),ceil(7*fvar(12))
getpower = 150,70
givepower = 70,45
pausetime = 0,12
guard.pausetime = 0,12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
hitsound = s1,16
guardsound = s2,1
sparkno = -1
guard.sparkno = -1
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 60
airguard.ctrltime = 16
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.36
air.cornerpush.veloff = 0
airguard.velocity = -5, 0
airguard.cornerpush.veloff = 0
yaccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 22
forcestand = 1
sparkxy = -10, -32
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
sprpriority = 3

;hit detection ----------------------
[State 1005, Comboflag]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
;------------------------------------

;hit detection 2----------------------
[State 1005, Comboflag]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(4) = 1
ignorehitpause = 1

;------------------------------------

[State 1005, End]
type = changestate
trigger1 = movecontact
value = 1081
ignorehitpause = 1

[State 1005, End]
type = destroyself
trigger1 = pos x != [ -250, 250]


;--- Hitpause ---
[Statedef 1081]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 1006, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 1006, Spark]
type = helper
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = ifelse(moveguarded, 8105, 8041)
ID = 8000
name = "Spark"
postype = p1
pos = 10, 0
facing = -1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1006, End]
type = changestate
trigger1 = time >= 0
value = 1082


;--- Disappear ---
[Statedef 1082]
type = A
physics = N
movetype = A
anim = 9741
ctrl = 0
velset = 0, 0
sprpriority = 3
movehitpersist = 1

;hit detection 2----------------------
[State 1005, Comboflag]
type = varset
trigger1 = time = 1
var(4) = 0
ignorehitpause = 1

;------------------------------------

[State 0, Explod]
type = Explod
trigger1 = animelemtime(1) = 0
anim = 1081
ID = 1081
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
scale = .6,.6
sprpriority = 3
ownpal = 1
removeongethit = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = -5
y = 10
ignorehitpause = 1

[State 1007, Sound]
type = playsnd
trigger1 = !time
value = 2, 6
channel = 2
volue = -128
lowpriority = 1

[State 1007, End]
;type = changestate
type = destroyself
trigger1 = time = 6
;value = 1083


;--- Wait ---
[Statedef 1083]
type = A
physics = N
movetype = I
anim = 9741
ctrl = 0
velset = 0, 0

[State 1008, End]
type = destroyself
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = target, time <= 1 && !(target, hitshakeover)

