;=================================== PARRY =====================================
[Statedef 4000]
type = S
movetype = I
physics = S
anim = 4000
velset=0,0
ctrl=0
sprpriority=3
facep2 = 1
poweradd=75

[State 4000, hb]
type=hitby
trigger1= 1
value=SCA,AT
time=1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = 20

[State 700, Snd]
type = playsnd
trigger1 = !time
value = s4090,0
channel = 5
volumescale = 60

[State 700, Snd]
type = playsnd
trigger1 = !time
value = s7000,10
channel = 6

[State 4000, pause]
type=pause
trigger1= !time
time=7
movetime=3
endcmdbuftime=7
pausebg=0

[State 760, Stop]
type=posfreeze
trigger1= 1
value=1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8107
ID = 8107
pos = 19,-85
postype = p1
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8107
ID = 8107
pos = 19,-85
postype = p1
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 4000, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 12
ampl = 4
freq = 90
persistent = 0
ignorehitpause = 1

[State 700, blueflash]
type=palfx
trigger1=!time
add=0,50,255
sinadd=0,-50,-255,60
time=15

[State 4000, asserts]
type = assertspecial
trigger1 = 1
flag = nowalk
;flag2 = nostandguard
;flag3 = nocrouchguard

;[State 4000, CtrlSet]
;type = CtrlSet
;trigger1 = time = 23
;value = 1

[State 4000, sprpriority]
type = sprpriority
trigger1 = animelemtime(4) >= 0
value = 0

[State 760, End]
type = changestate
trigger1 = !animtime
value = 150
ctrl = 0


;--- CROUCHING --------------------------------------------------
[Statedef 4001]
type = C
movetype = I
physics = C
anim = 4001
velset=0,0
ctrl=0
sprpriority=3
facep2 = 1
poweradd=75

[State 4000, hb]
type=hitby
trigger1= 1
value=SCA,AT
time=1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = 20

[State 700, Snd]
type = playsnd
trigger1 = !time
value = s4090,0
channel = 5
volumescale = 60

[State 700, Snd]
type = playsnd
trigger1 = !time
value = s7000,10
channel = 6

[State 4000, pause]
type=pause
trigger1= !time
time=7
movetime=3
endcmdbuftime=7
pausebg=0

[State 760, Stop]
type=posfreeze
trigger1= 1
value=1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8107
ID = 8107
pos = 25,-50
postype = p1
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8107
ID = 8107
pos = 25,-50
postype = p1
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 4000, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 12
ampl = 4
freq = 90
persistent = 0
ignorehitpause = 1

[State 700, blueflash]
type=palfx
trigger1=!time
add=0,50,255
sinadd=0,-50,-255,60
time=15

[State 4000, asserts]
type = assertspecial
trigger1 = 1
flag = nowalk
;flag2 = nostandguard
;flag3 = nocrouchguard

;[State 4000, CtrlSet]
;type = CtrlSet
;trigger1 = time = 23
;value = 1

[State 4000, sprpriority]
type = sprpriority
trigger1 = animelemtime(4) >= 0
value = 0

[State 4010, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 152
ctrl = 0

;--- JUMPING --------------------------------------------------------
[Statedef 4002]
type = A
movetype = I
physics = N
anim = 4002
velset=0,0
ctrl=0
sprpriority=3
facep2 = 1
poweradd=75

[State 4000, hb]
type=hitby
trigger1= 1
value=SCA,AT
time=1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = 20

[State 700, Snd]
type = playsnd
trigger1 = !time
value = s4090,0
channel = -1
volumescale = 60

[State 700, Snd]
type = playsnd
trigger1 = !time
value = s7000,10
channel = -1

[State 4000, pause]
type=pause
trigger1= !time
time=7
movetime=3
endcmdbuftime=7
pausebg=0

[State 0, VelAdd]
type = VelAdd
trigger1 = animelemtime(2) > 12
y = .55

;[State 760, Stop]
;type=posfreeze
;trigger1= 1
;value=1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8107
ID = 8107
pos = 35,-110
postype = p1
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8107
ID = 8107
pos = 35,-110
postype = p1
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 4000, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 12
ampl = 4
freq = 90
persistent = 0
ignorehitpause = 1

[State 700, blueflash]
type=palfx
trigger1=!time
add=0,50,255
sinadd=0,-50,-255,60
time=15

[State 4000, asserts]
type = assertspecial
trigger1 = 1
flag = nowalk
;flag2 = nostandguard
;flag3 = nocrouchguard

;[State 4000, CtrlSet]
;type = CtrlSet
;trigger1 = time = 23
;value = 1

[State 4000, sprpriority]
type = sprpriority
trigger1 = animelemtime(4) >= 0
value = 0

[State 4020, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 4003
;--------------------------------------------------------
[Statedef 4003]
type = A
physics = N
movetype = I
anim = 4003
ctrl = 1

;[State 763, Vel]
;type = velset
;trigger1 = !time
;x = ifelse(vel x > 2, 2, ifelse(vel x < -2, -2, vel x))
;y = ifelse(vel y < -2, vel y, -2)

[State 763, Accel]
type = gravity
trigger1 = 1

[State 763, Land]
type = changestate
trigger1 = pos y > -vel y
value = 52


;--- HELPER ---------------------------------------------------------
[Statedef 4005]
type=A
physics=N
movetype=I
anim=ifelse(root,statetype=C,4006,ifelse(root,statetype=A,4007,4005))
velset=0,0
ctrl=0

[State 765, NHB]
type=nothitby
trigger1= 1
value=SCA

[State 765, Bind]
type=bindtoroot
trigger1= 1
time=-1

[State 765, Anim]
type=changeanim
triggerall= !time
trigger1= root,command="Down"
value=4006

[State 765, Anim]
type=changeanim
triggerall= !time
trigger1= root,command="Back"
value=ifelse((root,statetype=A),4007,4005)

[State 765, Anim]
type=changeanim
trigger1= anim=4005 || anim=4007
value=ifelse((root,statetype=A),4007,4005)

[State 765, disable]
type=varset
trigger1= time>=ifelse((root,statetype=A),7,8)
trigger2= facing!=(root,facing)
trigger3= (root,stateno!=[4060,4062]) && !(root,ctrl)
var(0)=1

[State 765, disable]
type=varset
trigger1= (root,command="holdfwd")
trigger2= time<4 && (root,command="holdback"+root,command="holddown")>1
trigger3= time>=4 && (root,command="holdback" || root,command="holddown")
trigger4= time>=1 && (((anim=4065 || anim=4067) && root,command="Back") || (anim=4066 && root,command="Down"))
var(0)=1

[State 765, disable]
type=changeanim
trigger1= var(0)=1
value=9741

[State 765, standing/air]
type=reversaldef
trigger1= !var(0) && (anim=4005 || anim=4007)
reversal.attr=SCA,AA
p1stateno=4006
pausetime=0,0
sparkno=-1
numhits=0

[State 765, crouching]
type=reversaldef
trigger1= !var(0) && anim=4006
reversal.attr=SC,AA
p1stateno=4006
pausetime=0,0
sparkno=-1
numhits=0

[State 765, disable]
type=reversaldef
trigger1= var(0)=1
reversal.attr=
pausetime=0,0
sparkno=-1
numhits=0

[State 765, End]
type=destroyself
trigger1= time>=18
trigger2= (root,movetype!=I)
trigger3= !(root,ctrl) && (root,stateno!=[4000,4002])
trigger4= (root,stateno=[4000,4002]) && (root,time<=1)


;--- Success -------------------------------------------------------------------
[Statedef 4006]
movetype=I
ctrl=0

[State 766, disable]
type=varset
trigger1=1
var(0)=1

[State 766, End]
type=destroyself
trigger1= root,stateno=[4000,4002]
trigger2= time>=2
;============================ ZERO COUNTER =====================================
[Statedef 4100]
type    = S
movetype= A
physics = S
anim = 4100
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 700, Snd]
type = playsnd
trigger1 = !time
value = s4090,0
channel = 3

[State 750, Super Pause]
type = superpause
trigger1 = !time
time = 20
movetime = 20
p2defmul = 1
anim = -1
sound = -1
darken = 0
poweradd = -1000

[State 4000, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 12
ampl = 4
freq = 90
persistent = 0
ignorehitpause = 1

[State 700, blueflash]
type=palfx
trigger1=!time
add=10,50,255
sinadd=0,-50,-255,60
time=15

[State 750, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 750, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8105
ID = 8107
pos = 20,-80
postype = p1
facing = 1
bindtime = 1
scale = .5,.5
removetime = -2
supermovetime = 255
pausemovetime = 255
sprpriority = -3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = add
angle = 90

[State 2900, Hit]
type = hitdef
;trigger1 = !var(16) && var(15) < 1
trigger1 = animelem = 4
attr = S, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 50,0
pausetime = 18, 18
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=120), var(36):=-170
hitsound = s1,13
guardsound = s2,1
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -7, -6
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -7, -5
air.cornerpush.veloff = 0
yaccel = 0.58
fall = 1
fall.recover = 1
fall.recovertime = 120;24
forcestand = 1
getpower = 150,70
givepower = 70,35
envshake.time = 16
envshake.ampl = 8
envshake.freq = 120
kill = 0

[State 750, End]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;============================ EX - SKILL =====================================
[Statedef 4150]
type    = S
movetype= A
physics = S
anim = 4150
velset = 0, 0
ctrl = 0
sprpriority = 1
poweradd = 0
facep2 = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(4) <= 1
value = SCA
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S1000,4
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S4090,5
channel = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S1090,5
channel = 6
volumescale = 200

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(1) = 0
x = -9

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(2) = 0
x = -25

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(4) = 0
x = 10

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(6) = 0
x = 16

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(8) = 0
x = 12

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(11) = 0
x = -8

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(13) = 0
x = -3

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(14) = 0
x = -2

[State 0, PosAdd]
type = PosAdd
trigger1 = animtime = 0
x = -4

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(7) = 0
x = 14

[State 0, Explod]
type = Explod
trigger1 = animelemtime(7) = 0
anim = 4151
ID = 4151
pos = 50,-60
postype = p1
bindtime = 7
removetime = -2
scale = .25,.75
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(6) >= 0
trigger1 = animelemtime(9) <= 1
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

[State 2900, Hit]
type = hitdef
;trigger1 = !var(16) && var(15) < 1
trigger1 = animelem = 4
attr = S, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 60,0
pausetime = 18, 18
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10+0*(var(35):=100),var(36):=-105
hitsound = s1,13
guardsound = s2,1
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -7, -6
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -7, -5
air.cornerpush.veloff = 0
yaccel = 0.58
fall = 1
fall.recover = 1
fall.recovertime = 120;24
forcestand = 1
getpower = 150,70
givepower = 70,35
envshake.time = 16
envshake.ampl = 8
envshake.freq = 120
kill = 0

[State 750, End]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;============================ EX - TRIGGER =====================================
[Statedef 4200]
type = S
movetype = I
physics = N
velset = 0, 0
anim = 4200
ctrl = 0
sprpriority = -1

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8200
ID = 8200
name = "Carga"
postype = p1
pos = -20,-85
ownpal = 1
persistent = 0
supermovetime = 255
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = time <= 12
time = 1
add = 220-(time*18),150-(time*12),100-(time*8)
invertall = 0
color = 256
ignorehitpause = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, PowerAdd]
type = PowerAdd
trigger1 = animelemtime(15) = 1
value = -1000

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(16) < 3
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 111, Dash End Sound]
type = PlaySnd
trigger1 = animelemtime(4) = 0
value = s52,0
channel = 1

[State 102, Snd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = s40,0
channel = 5

[State 102, Snd]
type = playsnd
trigger1 = animelem = 14
value = s100,2
channel = 1

[State 100, steps]
type = playsnd
trigger1 = (animelem = 9 || animelem = 13)
value = s100,0
channel = 1
volumescale = 40

[State 102, Snd]
type = playsnd
trigger1 = animelem = 1
value = s10,8
channel = 0

[State 102, Snd]
type = playsnd
trigger1 = animelem = 14
value = s2000,5
channel = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = time = [3,12]
x = -3
y = -1

[State 0, PosAdd]
type = PosAdd
trigger1 = time = [43,52]
x = 5
y = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(7) >= 0
trigger1 = animelemtime(15) <= 0
x = 5

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(15) = 0
physics = S
movetype= A

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(17) = 0
movetype= I

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4280
ID = 4280
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = (Const(size.xscale)),(Const(size.yscale))
sprpriority = -1
ownpal = 0
removeongethit = 1
ignorehitpause = 0
;supermovetime = 12

[State 0, PosSet]
type = PosSet
trigger1 = time > 52
y = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [2,10]
ID = 4280
scale = (Const(size.xscale))-((time-2)*.009),(Const(size.yscale))-((time-2)*.009)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [11,69]

ID = 4280
scale = (Const(size.xscale))*.85,(Const(size.yscale))*.85

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = [43,51]
ID = 4280
scale = ((Const(size.xscale))*.85)+((time-43)*.009),((Const(size.yscale))*.85)+((time-43)*.009)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 51
ID = 4280
scale = (Const(size.xscale)),(Const(size.yscale))

[State 210, Hit]
type = hitdef
trigger1 = animelemtime(16) >= 2
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
sparkxy = -10+0*(var(35):=100),var(36):=-105
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
getpower = 0,0
givepower = 100,50
yaccel = .5
fall.recover = 1
envshake.time=12
envshake.ampl=4
fall.envshake.time = 12
fall.envshake.ampl = -2

[State 105, End]
type = changestate
trigger1 = animelemtime(21) >= 0
value = 0
ctrl = 1
;============================== POWER CHARGE ================================
[Statedef 4300]
type = S
physics = S
movetype = I
anim = 4300
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 730, Power]
type = poweradd
triggerall = power < const(data.power) && power < powermax
trigger1 = (command = "holdx" || command = "holdy" || command = "holdz" || command = "holda" || command = "holdb" || command = "holdc")
;trigger2 = (command = "holda" || command = "holdb" || command = "holdc")
value = (2 + ifelse(time < 60, 0, (time -60) / 12))*3

[State 730, Snd]
type = playsnd
trigger1 = !time
value = s4000,0
channel = 0

[State 730, Snd]
type = playsnd
trigger1 = time = 0
;trigger2 = time = 150
value = s7000,8
channel = 5

[State 730, Flash]
type = palfx
trigger1 = 1
time = 1
add = 40 + ceil(sin(time / 6.0 * pi) * 75), 15 + ceil(sin(time / 6.0 * pi) * 25), 0

[State 0, Explod]
type = Explod
trigger1 = (gametime%6)=1
anim = 4381
ID = 4381
pos = 10,-50
random = 100,80
postype = p1
bindtime = 1
facing = -1
removetime = 12
supermovetime = 999
pausemovetime = 999
scale = .0075,.2125
vel = 0,-7
sprpriority = 4
ownpal = 1
removeongethit = 1
trans = sub

[State 0, Explod]
type = Explod
trigger1 = (gametime%6)=1
anim = 4381
ID = 4381
pos = 10,-50
random = 100,80
postype = p1
bindtime = 1
facing = -1
removetime = 22
supermovetime = 999
pausemovetime = 999
scale = .0065,.175
vel = 0,-2
sprpriority = 2
ownpal = 1
removeongethit = 1
trans = sub

[State 0, Explod]
type = Explod
trigger1 = (gametime%12)=1
trigger2 = time = 0
anim = 4380
ID = 4380
pos = 55,-4
postype = p1
bindtime = 1
facing = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .42575,.5
sprpriority = -1
ownpal = 1
removeongethit = 1
trans = add

[State 730, End]
type = changestate
triggerall = time > 20
trigger1 = power >= const(data.power) || power >= powermax || roundstate != 2
trigger2 = command != "holdbutton"
value = 4305
ctrl = 0
;================================= END ====================================
[Statedef 4305]
type = S
physics = S
movetype = I
anim = 4305
velset = 0, 0
ctrl = 0

[State 731, Snd]
type = stopsnd
trigger1 = !time
channel = 0

[State 731, Snd]
type = stopsnd
trigger1 = !time
channel = 5

[State 730, Snd]
type = playsnd
trigger1 = !time && power >= const(data.power)
value = s6,7
channel = 0
persistent = 0

[State 730, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;============================= PURSUIT LAUNCHER ===========================
[Statedef 4400]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 4400;ifelse(p2bodydist x<=15,245,240)
sprpriority = 1
facep2 = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(3) = 0
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
ignorehitpause = 1
persistent = 1
removetime = -2

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

;[State 0, PalFXWiz]
;type = PalFX
;trigger1 = time < 15;time = 0;!(gametime%5)
;time = 1
;add = 0,100-(time*6),230-(time*15)
;invertall = 0
;color = 256
;ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(3) = 0
statetype = A
movetype = A
physics = N

[State 3000, Corner Push]
type = varset
trigger1 = time = 1
fvar(5) = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(3) = 0
x = 16
y = 0;-3.5

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(4) = 0
x = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = animelemtime(4) >= 0
y = .65

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S10,6
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1000,6
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1090,5
channel = 5
volumescale = 200

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(4) <= 12
value = ,NP,SP
time = 1

[State 220, Hit]
type = hitdef
trigger1 = animelem = 3 ;&& anim = 240
attr = A, NA
damage = 50,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
priority = 4, Hit
sparkno = -1+0*(var(33):=8042)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10+0*(var(35):=120),var(36):=-165
hitsound = s1,13
guardsound = s2,0
pausetime = 10,10
ground.velocity = -(Const(velocity.jump.fwd.x))*.9,-9.5
ground.cornerpush.veloff = -8
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
air.velocity = -(Const(velocity.jump.fwd.x))*.9,-7
air.cornerpush.veloff = -8
getpower = 180,90
givepower = 90,45
yaccel = .5
fall.recover = 1
envshake.time=10
envshake.ampl=2
id = 4401
p1stateno = 4401
forcenofall = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 4401
ignorehitpause = 1

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= -20 && Vel Y > 0
trigger1 = AnimElemTime(4) >=0
value = 52
;GROUND CHASE JUMP ==============================================================
[Statedef 4401]
type    = A
movetype= I
physics = N
juggle  = 1
ctrl = 0
velset = 0,0
anim = 4401
sprpriority = 1
facep2 = 1

[State 4100, Pos]
type = posadd
triggerall = p2bodydist y = [-50,10]
trigger1 = numtarget(4401) = 1
trigger1 = animelemtime(1) = 0
y = p2dist y +15

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time > 0
value = 1

;[State 0, BindToTarget]
;type = BindToTarget
;trigger1 = numtarget(240) = 1
;trigger1 = time = 0
;time = 1
;ID = -1
;pos = 100,-100

;[State 0, VelSet]
;type = VelSet
;triggerall = frontedgedist > 55
;trigger1 = time = 0
;x = (Const(velocity.jump.fwd.x))
;y = ifelse(prevstateno=240,-8,-4)

[State 0, VelSet]
type = VelSet
triggerall = pos y < -20
trigger1 = time = 0
x = (Const(velocity.jump.fwd.x))
y = ifelse(prevstateno=4400,-8,-4)

[State 0, VelSet]
type = VelSet
;triggerall = frontedgedist <=55
triggerall = pos y >= -20
trigger1 = time = 0
x = (Const(velocity.jump.fwd.x))
y = ifelse(prevstateno=4400,-10,-4)

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 10 && Vel Y > 0
trigger1 = AnimElemTime(6) >= 0
value = 52

;GROUND DODGE =============================================================
[Statedef 4500]
type = S
physics = S
movetype = I
anim = 4500
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S10,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S0,0
channel = 1

;[State 0, PalFXWiz]
;type = PalFX
;trigger1 = time < 20;time = 0;!(gametime%5)
;time = 1
;add = 200-(time*10),200-(time*10),200-(time*10)
;invertall = 0
;color = 256
;ignorehitpause = 1

[State 710, Push]
type = playerpush
trigger1 = 1
value = 1

[State 710, HB]
type = hitby
trigger1 = time = [3,22]

value = SCA, AT
time = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time > 12
value = 1

[State 710, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;GROUND DODGE FWD ===========================================================
[Statedef 4501]
type = C
physics = C
movetype = I
anim = 4501
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S10,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S100,3
channel = 6
volumescale = 200

;[State 0, PalFXWiz]
;type = PalFX
;trigger1 = time < 20;time = 0;!(gametime%5)
;time = 1
;add = 200-(time*10),200-(time*10),200-(time*10)
;invertall = 0
;color = 256
;ignorehitpause = 1

[State 720, Vel]
type = velset
trigger1 = animelemtime(2) >= 0 && animelemtime(7) < 0
x = 6.5

[State 720, Push]
type = playerpush
trigger1 = 1
value = 0

[State 720, HB]
type = hitby
trigger1 = animelemtime(8) < 0
value = SCA, AT
time = 1

[State 720, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;GROUND DODGE BACK ===========================================================
[Statedef 4502]
type = C
physics = C
movetype = I
anim = 4501
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S10,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S100,3
channel = 6
volumescale = 200

[State 0, Turn]
type = Turn
trigger1 = time = 0

;[State 0, PalFXWiz]
;type = PalFX
;trigger1 = time < 20;time = 0;!(gametime%5)
;time = 1
;add = 200-(time*10),200-(time*10),200-(time*10)
;invertall = 0
;color = 256
;ignorehitpause = 1

[State 720, Vel]
type = velset
trigger1 = animelemtime(2) >= 0 && animelemtime(7) < 0
x = 6.5

[State 720, Push]
type = playerpush
trigger1 = 1
value = 0

[State 720, HB]
type = hitby
trigger1 = animelemtime(8) < 0
value = SCA, AT
time = 1

[State 720, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;-2 STATES =====================================================================
[Statedef -2]
;=========================== SND ===============================================
[State -2, KO snd]
type = varset
trigger1 = alive && var(18) > 0
trigger2 = !alive && var(18) < 2
var(18) = ifelse(alive, 0, var(18) + 1)
ignorehitpause = 1

[State -2, KO snd]
type = playsnd
trigger1 = !alive && var(18) = 1
trigger1 = var(18) := 2
value = 5500,0;11, ifelse((var(1) = 2), 2, 1) + 2 * (stateno = 5130)
;============================== DEBUG ====================================
[State -2, Debug]
type=displaytoclipboard
trigger1= 1
text="Damage=%f Hitstun=%f Power=%f"
params= fvar(12),fvar(13),power;,var(15);,fvar(9),var(42);V-Gauge=%f"
ignorehitpause=1
;=============================== HITSPARKS =====================================
[State -2, Hit Detection]
type = VarSet
trigger1 = movecontact = 1 && var(30) < 0
var(30) = hitpausetime
ignorehitpause = 1

[State -2, Hit Sparks]
type = Helper
triggerall = movecontact = 1 && var(30) = hitpausetime
trigger1 = movehit = 1 && numenemy
trigger1= var(33) = [8020,8050]
trigger2 = moveguarded = 1 && numenemy
trigger2 = var(34) = 8100 || var(34) = 8105
helpertype = normal
stateno = ifelse(moveguarded, var(34), var(33))
ID = 8000
name = "HitSpark"
postype = p1
pos = ifelse(frontedgedist < (var(35)/2),(frontedgedist+3),ceil(var(35)*const(size.xscale))),ceil(var(36)*const(size.yscale));ceil(ifelse(P2Dist x <0,0,ifelse(p2dist x < var(35),ceil(p2dist x), var(35)))*const(size.xscale)),ceil(var(36)*const(size.yscale))
;pos = ifelse(p2dist x < var(35),ceil((p2dist x)*1.1),((ceil(var(35)*const(size.xscale))))),ceil(var(36)*const(size.yscale));ceil(ifelse(P2Dist x <0,0,ifelse(p2dist x < var(35),ceil(p2dist x), var(35)))*const(size.xscale)),ceil(var(36)*const(size.yscale))
facing = -1
ownpal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State -2, Hit Detection]
type = VarSet
trigger1 = 1
var(30) = -1

[State -2, Hit Detection]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
first = 30
last = 36
value = -1
ignoreHitPause = 1
;=============================== HITSPARKS END =================================
[State -2, P2 Facing]
type = targetfacing
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover) && !(target, hitfall) && (target, time <= 1)
value = ifelse(p2dist x >= 0, -1, 1)
ignorehitpause = 1
;-3 STATES =====================================================================
;================================== PARRY ======================================
[Statedef -3]
[State -3, Parry Detection]
type=helper
triggerall= roundstate=2 && !numhelper(4005)
triggerall= (movetype=I && ctrl) || (stateno=[4000,4002])
triggerall= (command!="rlsback" && command!="rlsfwd" && command!="rlsup" && command!="rlsdown") ;|| var(59)>=1
trigger1= (statetype=S || statetype=C) && (command="Back" || command="Down")
trigger2= statetype=A && command="Back"
helpertype=normal
stateno=4005
ID=4005
name="Parry Detection"
postype=p1
pausemovetime=65535
supermovetime=65535

[State -3, Parry Attacks]
type=changestate
trigger1= (stateno!=[4000,4002]) && numhelper(4005)
trigger1= helper(4005),stateno=4006
value= ifelse((helper(4005),anim=4007), 4002, ifelse((helper(4005),anim=4006), 4001, 4000))
ignorehitpause=1

[State -3, Parry Projectiles]
type=hitoverride
trigger1= (stateno!=[4000,4002]) && numhelper(4005)
trigger1= !(helper(4005),var(0)) && (helper(4005),anim=4005)
attr=SA,AP
stateno=4000
slot=0
time=1
ignorehitpause=1

[State -3, Parry Projectiles]
type=hitoverride
trigger1= (stateno!=[4000,4002]) && numhelper(4005)
trigger1= !(helper(4005),var(0)) && (helper(4005),anim=4006)
attr=C,AP
stateno=4001
slot=0
time=1
ignorehitpause=1

[State -3, Parry Projectiles]
type=hitoverride
trigger1= (stateno!=[4000,4002]) && numhelper(4005)
trigger1= !(helper(4005),var(0)) && (helper(4005),anim=4007)
attr=SCA,AP
stateno=4002
slot=0
time=1
ignorehitpause=1
;============================ DAMAGE DAMPENER ==================================
[state -3];NORMAL ATTACKS
type = varset
triggerall = (fvar(12)) > .10
triggerall = movehit = 1 ;&& hitcount <= 1
trigger1 = stateno = 200 && hitcount <= 1
trigger2 = stateno = 210 && hitcount <= 1
trigger3 = stateno = 220 && hitcount <= 1
trigger4 = stateno = 230 && hitcount <= 1
trigger5 = stateno = 240 && hitcount <= 1
trigger6 = stateno = 250 && hitcount <= 1
trigger7 = stateno = 400 && hitcount <= 1
trigger8 = stateno = 410 && hitcount <= 1
trigger9 = stateno = 420 && hitcount <= 1
trigger10 = stateno = 430 && hitcount <= 1
trigger11 = stateno = 440 && hitcount <= 1
trigger12 = stateno = 450 && hitcount <= 1
trigger13 = stateno = 600 && hitcount <= 1
trigger14 = stateno = 610 && hitcount <= 1
trigger15 = stateno = 620 && hitcount <= 1
trigger16 = stateno = 630 && hitcount <= 1
trigger17 = stateno = 640 && hitcount <= 1
trigger18 = stateno = 650 && hitcount <= 1
trigger19 = stateno = 300 && hitcount <= 1
trigger20 = stateno = 4200 && hitcount <= 1
trigger21 = stateno = 4400 && hitcount <= 1
trigger22 = stateno = 4150 && hitcount <= 1
fvar(12) = fvar(12) -.10
ignorehitpause = 0
persistent = 0

[state -3];SPECIAL PROJECTILES
type = varset
triggerall = (fvar(12)) > .10
trigger1 = (stateno = 1000) && (numhelper(1080))
trigger1 = helper(1080),var(4)
fvar(12) = fvar(12) -.10
ignorehitpause = 0
persistent = 10

[state -3];SPECIAL
type = varset
triggerall = (fvar(12)) > .10
triggerall = movehit = 1
trigger1 = stateno = 1050 && hitcount <= 1
trigger2 = stateno = 1100 && hitcount <= 1
trigger3 = stateno = 1120 && hitcount <= 1
trigger4 = stateno = 1130 && hitcount <= 1
trigger5 = stateno = 1200 && hitcount <= 1
trigger6 = stateno = 1220 && hitcount <= 1
trigger7 = stateno = 1300 && hitcount <= 1
trigger8 = stateno = 1310 && hitcount <= 1
trigger9 = stateno = 1320 && hitcount <= 1
trigger10 = stateno = 1330 && hitcount <= 1
fvar(12) = fvar(12) -.10
ignorehitpause = 0

[state -3];EX PROJECTILES
type = varset
triggerall = (fvar(12)) > .10
trigger1 = (stateno = 2000) && (ProjContact(2090) = 1)
trigger2 = (stateno = 2101) && (ProjContact(2180) = 1)
trigger3 = (stateno = 2205) && (ProjContact(2290) = 1) && animelemtime(14) < 5
fvar(12) = fvar(12) -.15
ignorehitpause = 0

;[state -3];EX
;type = varset
;triggerall = (fvar(12)) > .10
;triggerall = movehit = 1
;trigger1 = stateno = 2200 && hitcount <= 1
;fvar(12) = fvar(12) -.15
;ignorehitpause = 0

;[state -3];ULTRA PROJECTILES
;type = varset
;triggerall = (fvar(12)) > .10
;trigger1 = (stateno = 3000) && (ProjContact(3090) = 1)
;fvar(12) = fvar(12) -.20
;ignorehitpause = 0

;[state -3];ULTRA
;type = varset
;triggerall = (fvar(12)) > .10
;triggerall = movehit = 1
;trigger1 = stateno = 3100 && hitcount <= 1
;fvar(12) = fvar(12) -.20
;ignorehitpause = 0

[state -3];STAY AT .10
type = varset
triggerall = (fvar(12)) < .10
trigger1 = 1
fvar(12) = .10
ignorehitpause = 1

[State -3, Reset var when the opponent recovers]
type=varset
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
fvar(12) = 1
;============================== HITSTUN DECAY ==================================
[state -3];NORMAL ATTACKS
type = varset
triggerall = (fvar(13)) > .10
triggerall = movehit = 1 ;&& hitcount <= 1
trigger1 = stateno = 200 && hitcount <= 1
trigger2 = stateno = 210 && hitcount <= 1
trigger3 = stateno = 220 && hitcount <= 1
trigger4 = stateno = 230 && hitcount <= 1
trigger5 = stateno = 240 && hitcount <= 1
trigger6 = stateno = 250 && hitcount <= 1
trigger7 = stateno = 400 && hitcount <= 1
trigger8 = stateno = 410 && hitcount <= 1
trigger9 = stateno = 420 && hitcount <= 1
trigger10 = stateno = 430 && hitcount <= 1
trigger11 = stateno = 440 && hitcount <= 1
trigger12 = stateno = 450 && hitcount <= 1
trigger13 = stateno = 600 && hitcount <= 1
trigger14 = stateno = 610 && hitcount <= 1
trigger15 = stateno = 620 && hitcount <= 1
trigger16 = stateno = 630 && hitcount <= 1
trigger17 = stateno = 640 && hitcount <= 1
trigger18 = stateno = 650 && hitcount <= 1
trigger19 = stateno = 300 && hitcount <= 1
fvar(13) = fvar(13) -.0175
ignorehitpause = 0
persistent = 0

;[state -3];SPECIAL
;type = varset
;triggerall = (fvar(13)) > .10
;triggerall = movehit = 1 ;&& hitcount <= 1
;trigger1 = stateno = 1000 && hitcount <= 1
;trigger2 = stateno = 1010 && hitcount <= 1
;trigger3 = stateno = 1100 && hitcount <= 1
;trigger4 = stateno = 1101 && hitcount <= 1
;trigger5 = stateno = 1102 && hitcount <= 1
;trigger6 = stateno = 1200 && hitcount <= 1
;trigger7 = stateno = 1210 && hitcount <= 1
;trigger8 = stateno = 1220 && hitcount <= 1
;trigger9 = stateno = 1260 && hitcount <= 1
;fvar(13) = fvar(13) -.015
;ignorehitpause = 0

;[state -3];EX, SUPER, ULTRA IGNOREHITPAUSE
;type = varset
;triggerall = (fvar(13)) > .10
;triggerall = movehit = 1
;trigger1 = stateno = 1000 && hitcount <= 1
;fvar(13) = fvar(13) -.05
;ignorehitpause = 1

;[state -3];EX
;type = varset
;triggerall = (fvar(13)) > .10
;triggerall = movehit = 1
;trigger1 = stateno = 2000 && hitcount <= 1
;trigger2 = stateno = 2100 && hitcount <= 1
;trigger3 = stateno = 2200 && hitcount <= 1
;trigger4 = stateno = 2210 && hitcount <= 1
;trigger5 = stateno = 2300 && hitcount <= 1
;fvar(13) = fvar(13) -.020
;ignorehitpause = 0

;[state -3];SUPER
;type = varset
;triggerall = (fvar(13)) > .10
;triggerall = movehit = 1
;trigger1 = stateno = 3100 && hitcount <= 1
;fvar(13) = fvar(13) -.025
;ignorehitpause = 0

[state -3];STAY AT .10
type = varset
triggerall = (fvar(13)) < .10
trigger1 = 1
fvar(13) = .10
ignorehitpause = 1

[State -3, Reset var when the opponent recovers]
type=varset
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
fvar(13) = 1
;======================= DAMPENER HITSTUN END ==================================

;============================== -3 STATES ======================================
[State -3, GetHit Snd];usar canal cero para voz
type = playsnd
triggerall = alive && time = 1
triggerall = stateno = 5000 || stateno = 5010
trigger1 = gethitvar(animtype) >= 2 && random < 700
trigger2 = gethitvar(animtype) = 1 && random < 700
trigger3 = gethitvar(animtype) = 0 && random < 700
value= 5000,(0+(random%6))
channel = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
trigger1 = (stateno = 5000 || stateno = 5010) && numenemy
trigger1 = gethitvar(fall) || (enemynear, hitdefattr = SCA, SA, HA)
trigger2 = (stateno = 5020 || stateno = 5070 || stateno = 5080)
trigger3 = (stateno = 5050 || stateno = 5100) && (prevstateno != [5000, 5199])
value= 5000,(0+(random%6))
channel = 0
ignorehitpause = 1

[State 0, StopSnd]; usar canales 5 y 6 para efectos
type = StopSnd
trigger1 = movetype = h
channel = 5
ignorehitpause = 1
persistent = 1

;============================ CORNER PUSH ======================================
[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = numtarget
trigger1 = target, hitover || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5) = 0

[State -3, Corner Push]
type = varset
trigger1 = movecontact = 1 && numtarget
fvar(5) = target, gethitvar(xvel)
ignorehitpause = 1

[State -3, Corner Push]
type = posadd
triggerall = fvar(5)
triggerall = (statetype = S || statetype = C) && numtarget
triggerall = !hitpausetime && target, gethitvar(hitshaketime) <= 0
triggerall = (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall)
trigger1 = target, frontedgebodydist <= abs(target, vel x)
trigger1 = (target, gethitvar(xvel) * target, facing) > 0
trigger2 = target, backedgebodydist <= abs(target, vel x)
trigger2 = (target, gethitvar(xvel) * target, facing) < 0
x = ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)

[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = abs(fvar(5)) < 1.0
fvar(5) = 0

[State -3, Corner Push]
type = varset
trigger1 = numtarget
trigger1 = target, gethitvar(hitshaketime) <= 0
fvar(5) = fvar(5) * 0.85
;============================ PATCHES ==========================================
[State -3, Prevent Crossup]
type = width
trigger1 = movetype != H
edge = 8, 0
ignorehitpause = 1

[State -3, Underground Juggle Prevention]
type = targetbind
trigger1 = movecontact = 1
trigger1 = numtarget && numenemy
trigger1 = (target, time = 0) && (target, ID = enemynear, ID)
trigger1 = !(target, hitshakeover) && (target, pos y > 0)
pos = ceil(p2dist x), ceil(-pos y)
ignorehitpause = 1

[State -3, Rmvsnd]
type = StopSnd
trigger1 = movetype = h
channel = 5
ignorehitpause = 1

[State -3, Rmvsnd]
type = StopSnd
trigger1 = movetype = h
channel = 6
ignorehitpause = 1

[State -3, Rmvsnd]
type = StopSnd
trigger1 = stateno != 100
channel = 15
ignorehitpause = 1

[State -3, RmvExp]
type = RemoveExplod
trigger1 = stateno !=[1100,1150]
id = 1180
ignorehitpause = 1

[State -3, RmvExp]
type = RemoveExplod
trigger1 = stateno !=[1100,1150]
id = 1181
ignorehitpause = 1

[State -3, RmvExp]
type = RemoveExplod
trigger1 = stateno !=[1100,1150]
id = 1182
ignorehitpause = 1

[State -3, RmvExp]
type = RemoveExplod
trigger1 = stateno !=[1100,1150]
id = 1183
ignorehitpause = 1

[State -3, RmvExp]
type = RemoveExplod
trigger1 = stateno !=[1300,1330]
id = 1310
ignorehitpause = 1

[State -3, RmvExp]
type = RemoveExplod
trigger1 = stateno !=[1300,1330]
id = 1315
ignorehitpause = 1

[State -3, RmvExp]
type = RemoveExplod
trigger1 = stateno !=4200
id = 4280
ignorehitpause = 1


