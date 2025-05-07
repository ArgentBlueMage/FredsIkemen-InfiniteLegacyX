; _______________________________________
;| Dudley by  Buckus & BurningSoul and that Mr.A guy |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< COMMON STATES >========================================
;==============================================================================================

;Dodge
[Statedef 710]
type = S
physics = S
movetype = I
anim = 710
velset = 0, 0
ctrl = 0
sprpriority = -1
[State 700, Dodge Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 1
channel = 1

[State 710, Push]
type = playerpush
trigger1 = 1
value = 0
[State 710, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1
[State 710, Attack]
type = changestate
trigger1 = !AIlevel && (time = [15, 25])
trigger1 = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
value = ifelse((command = "x" || command = "y" || command = "z"),1151, 1152)
[State 710, Attack]
type = changestate
trigger1 = AIlevel && (time = [15, 25]) && (p2dist x = [0, 60]) && p2movetype != A
value = ifelse(random < 500, 1151, 1152)
[State 710, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Roll Forward
[Statedef 720]
type = C
physics = C
movetype = I
anim = 720
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 710, Roll Sound]
type = PlaySnd
trigger1 = !Time
value = 110,0
channel = 1
[State 720, Vel]
type = velset
trigger1 = animelemtime(2) >= 0 && animelemtime(7) < 0
x = 6
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

;Roll Backward 
[Statedef 721]
type = S
physics = N
movetype = I
anim = 721
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 721, Push]
type = playerpush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 721, HB]
type = hitby
trigger1 = animelemtime(6) < 0
value = SCA, AT
time = 1

[State 710, Roll Sound]
type = PlaySnd
trigger1 = !Time
value = 110,0
channel = 1
[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = -5

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 721, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Power Charge
[Statedef 740]
type = S
physics = S
movetype = I
anim = 740
ctrl = 0
velset = 0, 0

[State 740, Power]
type = poweradd
triggerall = anim = 740 && power < powermax
trigger1 = !AIlevel && (command = "hold_b" && command = "hold_y")
trigger2 = AIlevel
value = 2 + ifelse(time < 60, 0, (time -60) / 10)

;[State 740, Snd]
;type = playsnd
;trigger1 = anim = 740 && time = 8
;value = 100, 2
;channel = 0

[State 740, Character Flash]
type = PalFX
trigger1 = Anim=740;1
time = 1
add = 75 + ceil(sin(Time / 6.0 * pi) * 75),25 + ceil(sin(Time / 6.0 * pi) * 25),0

[State 740, FX]
type = helper
trigger1 = anim = 740 && Animelemtime(2) >= 0
trigger1 = !Numhelper(8330)
helpertype = normal
stateno = 8330
ID = 8330
name = "Power Charge"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 740, FX]
type = helper
trigger1 = anim = 740 && Animelemtime(2) >= 0
trigger1 = !Numhelper(8331)
helpertype = normal
stateno = 8331
ID = 8331
name = "Particles"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 740, Anim]
type = changeanim
triggerall = anim != 741
trigger1 = !AIlevel && (command != "hold_b" || command != "hold_y")
trigger2 = power >= const(data.power) || power >= powermax || roundstate != 2
trigger3 = AIlevel && (inguarddist || p2movetype = A || p2dist x < 160)
value = 741

[State 740, Ctrl]
type = ctrlset
trigger1 = anim = 741
value = 1

[State 740, Snd]
type = stopsnd
trigger1 = anim = 741
channel = 0
persistent = 0

[State 740, End]
type = changestate
trigger1 = anim = 741 && !animtime
value = 0
ctrl = 1


;Zero Counter
[Statedef 750]
type = S
physics = S
movetype = I
anim = ifelse(AIlevel, ifelse((p2statetype = A), 750, ifelse((p2statetype = C), 751, ifelse(random < 500, 750, 751))), ifelse(command = "Counter_P", 750, 751))
ctrl = 0
velset = 0, 0
poweradd = -750
sprpriority = 2
facep2 = 1

[State 750, Super Pause FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8350
ID = 8350
postype = p1
pos=40,-66
ownpal = 1
persistent = 0
supermovetime = 999
[State 750, Super Pause]
type = superpause
trigger1 = !time
time = 16
movetime = 16
anim = -1
sound = s700, 0
p2defmul = 1
darken = 0
[State 750, End]
type = changestate
trigger1 = time >= 16
value = ifelse(anim=750, 1070, 450)

;Max Mode
[Statedef 770]
type = S
movetype = I
physics = S
anim = 770
ctrl = 0
velset = 0,0

;[State 770, Voice]
;type = PlaySnd
;trigger1 = AnimElem = 1
;value = 1000, 1
;channel = 0
[State 900, Voice]
type = PlaySnd
trigger1 = Time = 4
value = 191,0
channel = 0
[State 770, MAX Snd]
type = PlaySnd
trigger1 = !Time
value = 770, 0

[State 770, Power Up! Text]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8291
ID = 8291
name = "Power Up FX"
posType = P1
pos = ceil(0 * const(size.xScale)), ceil(-50 * const(size.yScale))
facing = -1
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State 770, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 1
value = -1000

[State 770, PowerSet Var]
type = Varset
trigger1 = Animelem = 1
var(24) = Power

[State 770, MAX Mode Timer]
type = VarSet
trigger1 = AnimElem = 1
var(53) = 1000

[State 770, Max Meter V2]
type = Helper
helpertype = Normal
trigger1 = Animelem = 1 && !NumHelper(780)
id = 780
pos = 0,0
postype = left
name = "Max Meter"
stateno = 780
ignorehitpause = 1
pauseMoveTime = 255
superMoveTime = 255
ownpal = 1

[State 770, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Max Mode Bar Helper
[Statedef 780]
type = S
movetype = I
physics = N
anim = 9741
sprpriority = 0

[State 780, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
pos = 0,-15

[State 780, Meter BG]
type = Explod
trigger1 = !Time
anim = 780
id = 780
pos = 2,0
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = -1
ontop = 1
ownpal = 1
removeongethit = 0

[State 780, Meter Fill]
type = Explod
trigger1 = Time = 2
anim = 781
id = 781
pos = 24,0
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 2
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 780, Meter Container]
type = Explod
trigger1 = Time = 2
anim = 782
id = 782
pos = 0,0
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 780, ModifyExplod]
type = ModifyExplod
trigger1 = root, Var(53) > 0
id = 781
scale = (5 + root, Var(53)) / 2000.0,.5
ignorehitpause = 1

[State 780, RemoveExplod]
type = RemoveExplod
trigger1 = root, Var(53) <= 0
id = 780
ignorehitpause = 1

[State 780, RemoveExplod]
type = RemoveExplod
trigger1 = root, Var(53) <= 0
id = 781
ignorehitpause = 1

[State 780, RemoveExplod]
type = RemoveExplod
trigger1 = root, Var(53) <= 0
id = 782
ignorehitpause = 1

[State 780, DestroySelf]
type = DestroySelf
trigger1 = root, Var(53) <= 0
ignorehitpause = 1

;Custom Combo
;[Statedef 900]
;type = S
;physics = S
;movetype = A
;anim = 900
;velset = 0, 0
;ctrl = 0
;sprpriority = 2
;poweradd = -1000
;
;[State 900, Corner Push]
;type = varset
;trigger1 = time = 4
;fvar(5) = 0
;
;[State 900, Unguardable]
;type = varset
;trigger1 = time = 4 && numenemy
;trigger1 = (enemynear, stateno != [120, 155])
;var(17) = 30
;
;[State 900, NHB]
;type = nothitby
;trigger1 = !time
;value = SCA
;time = 38
;
;[State 900, Stop]
;type = posfreeze
;trigger1 = 1
;value = 1
;
;[State 900, Var]
;type = varset
;trigger1 = time >= 4
;var(20) = 180
;
;[State 900, Snd]
;type = playsnd
;trigger1 = time = 4
;value = 181,0
;channel = 0
;
;[State 900, SuperPause FX]
;type = helper
;trigger1 = time = 4
;helpertype = normal
;stateno = 8400
;ID = 8400
;name = "Custom Combo Startup"
;postype = p1
;pos = 5,-65
;supermovetime = 255
;size.xscale = 1
;size.yscale = 1
;ownpal = 1
;[State 900, Super Pause]
;type = superpause
;trigger1 = time = 4
;time = 30
;movetime = 30
;anim = -1
;sound = s900,0
;p2defmul = 1
;darken = 0
;
;[State 900, AfterImage]
;type = afterimage
;trigger1 = !animtime
;time = 2
;timegap = 1
;framegap = 4
;length = 13
;palbright = 0, 0, 0
;palcontrast = 64, 128, 192
;palpostbright = 0, 0, 0
;paladd = 0, 0, 0
;palmul = 0.75, 0.75, 0.75
;trans = add1
;
;[State 900, End]
;type = changestate
;trigger1 = !animtime
;value = 0
;ctrl = 1
;
;
;;Custom Combo Air
;[Statedef 905]
;type = A
;physics = N
;movetype = A
;anim = 905
;ctrl = 0
;sprpriority = 2
;poweradd = -1000
;
;[State 905, Corner Push]
;type = varset
;trigger1 = time = 4
;fvar(5) = 0
;
;[State 905, Unguardable]
;type = varset
;trigger1 = time = 4 && numenemy
;trigger1 = (enemynear, stateno != [120, 155])
;var(17) = 30
;
;[State 905, NHB]
;type = nothitby
;trigger1 = !time
;value = SCA
;time = 38
;
;[State 905, Stop]
;type = posfreeze
;trigger1 = 1
;value = 1
;
;[State 905, Var]
;type = varset
;trigger1 = time >= 4
;var(20) = 180
;
;[State 905, Snd]
;type = playsnd
;trigger1 = time = 4
;value = 181,0
;channel = 0
;
;[State 905, SuperPause FX]
;type = helper
;trigger1 = time = 4
;helpertype = normal
;stateno = 8400
;ID = 8400
;name = "Custom Combo Startup"
;postype = p1
;pos = 5,-91
;supermovetime = 255
;size.xscale = 1
;size.yscale = 1
;ownpal = 1
;
;[State 905, Super Pause]
;type = superpause
;trigger1 = time = 4
;time = 30
;movetime = 30
;anim = -1
;sound = s900,0
;p2defmul = 1
;darken = 0
;
;[State 905, AfterImage]
;type = afterimage
;trigger1 = !animtime
;time = 2
;timegap = 1
;framegap = 4
;length = 13
;palbright = 0, 0, 0
;palcontrast = 64, 128, 192
;palpostbright = 0, 0, 0
;paladd = 0, 0, 0
;palmul = 0.75, 0.75, 0.75
;trans = add1
;
;[State 905, End]
;type = changestate
;trigger1 = !animtime
;value = 906
;ctrl = 1
;
;;Custom Combo Landing
;[Statedef 906]
;type = A
;physics = N
;movetype = I
;anim = 906
;ctrl = 1
;
;[State 906, Accel]
;type = gravity
;trigger1 = 1
;
;[State 906, Land]
;type = changestate
;trigger1 = pos y > -vel y
;value = 52
;==================================
;Standing Parry
;==================================
[Statedef 760]
type = S
physics = S
moveType = I
anim = 760
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78 * !var(20)
faceP2 = 1
 
[State 761, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 761, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0
 
[State 761, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1
 
[State 760, No walking]
type = varset
trigger1 = 1
var(26) = 7

;[State 99, pause]
;type=pause
;trigger1= !time && numenemy
;trigger1= (enemynear,movehit=1)
;time= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
;movetime= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
;endcmdbuftime= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
;pausebg=0

[State 761, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinAdd = 0,-64,-255,60
time = 15

[State 99, PlayerSnd]
type=playsnd
trigger1= !time
value=100,2
channel=0

[State 99, ParrySnd]
type=playsnd
trigger1= !time
value=6,1
 
[State 761, Parry FX]
type = Explod
trigger1 = Animelem=2
anim = 8360
sprpriority = 5
postype = P1
pos = ceil(31 * const(size.xScale)), ceil(-69 * const(size.yScale))
pauseMovetime = -1
superMovetime = -1
scale = 0.5,0.5
ownpal = 1

[State 99, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;==================================
;Crouch Parry
;==================================
[Statedef 761]
type = C
physics = C
moveType = I
anim = 761
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78 * !var(20)
faceP2 = 1

[State 761, hb]
type=HitBy
trigger1=1
value=SCA,AT
time=1

[State 98, stop]
type=PosFreeze
trigger1=1
value=1

[State 98, Pause]
type=Pause
trigger1=!time
time=15
movetime=15
endcmdbuftime=15
pausebg=0

;[State 98, pause]
;type=pause
;trigger1= !time && numenemy
;trigger1= (enemynear,movehit=1)
;time= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
;movetime= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
;endcmdbuftime= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
;pausebg=0

[State 761, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinAdd = 0,-64,-255,60
time = 15

[State 98, PlayerSnd]
type=playsnd
trigger1= !time
value=100,2
channel=0

[State 701, ParrySnd]
type=playsnd
trigger1= !time
value=6,1
 
[State 761, Parry FX]
type = Explod
trigger1 = Animelem=2
anim = 8360
sprpriority = 5
postype = P1
pos = ceil(25 * const(size.xScale)), ceil(-22 * const(size.yScale))
pauseMovetime = -1
superMovetime = -1
scale = 0.5,0.5
ownpal = 1

[State 760, No walking]
type = varset
trigger1 = 1
var(26) = 7
[State 98, End]
type=changestate
trigger1= !animtime
value=11
ctrl=1

;Jumping Parry
[Statedef 762]
type = A
physics = N
moveType = I
anim = 762
ctrl = 0
sprPriority = 2
powerAdd = 78 * !var(20)
faceP2 = 1

[State 762, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 762, Pause]
type=Pause
trigger1=!time
time=15
movetime=15
endcmdbuftime=15
pausebg=0

;[State 97, pause]
;type=pause
;trigger1= !time && numenemy
;trigger1= (enemynear,movehit=1)
;time= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
;movetime= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
;endcmdbuftime= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
;pausebg=0

[State 762, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1
 
[State 762, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinadd = 0,-64,-255,60
time = 15
 
[State 97, PlayerSnd]
type=playsnd
trigger1= !time
value=100,2
channel=0

[State 97, ParrySnd]
type=playsnd
trigger1= !time
value=6,1

[State 762, Parry FX]
type = Explod
trigger1 = Animelem = 2
anim = 8360
sprPriority = 5
posType = P1
pos = ceil(40 * const(size.xScale)), ceil(-66 * const(size.yScale))
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5,0.5
ownpal = 1
 
[State 762, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 762, End]
type = ChangeState
trigger1 = !AnimTime
value = 763
ctrl = 1

;Falling
[StateDef 763]
type = A
physics = N
movetype = I
anim = 763
ctrl = 1

[State 763, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(vel x > 2, 2, ifElse(vel x < -2, -2, vel x))
y = ifElse(vel y < -2, vel y, -2)

[State 763, Gravity]
type = Gravity
trigger1 = 1

[State 763, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value=52


[StateDef 0]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 0, Remove Explods]
type = RemoveExplod
trigger1 = IsHelper

[State 0, Destroy Helpers]
type = DestroySelf
trigger1 = IsHelper

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = 0

[State 0, Skywalker]
type = ChangeState
triggerall = pos y < 0
trigger1 = !NumEnemy
trigger2 = NumEnemy = 1
trigger2 = (Enemy, Name = "M -NES Game 1" + Enemy, Name = "M -NES Game 2" + Enemy, Name = "M -GB Game 1" + Enemy, AuthorName = "Bane84") < 2
trigger3 = Numenemy >= 2
trigger3 = (Enemy(0), Name = "M -NES Game 1" + Enemy(0), Name = "M -NES Game 2" + Enemy(0), Name = "M -GB Game 1" + Enemy(0), AuthorName = "Bane84") < 2
trigger3 = (Enemy(1), Name = "M -NES Game 1" + Enemy(1), Name = "M -NES Game 2" + Enemy(1), Name = "M -GB Game 1" + Enemy(1), AuthorName = "Bane84") < 2
value = 50

[State 0, Dead]
type = ChangeState
trigger1 = !Alive
value = 5050


;---------------------------------------------------------------------------
;====================<CROUCHING>====================
;Stand to Crouch
[StateDef 10]
type = C
physics = C
moveType = I
velSet = 0,0
sprPriority = 0

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 12
value = 10
elem = 3 - AnimElemNo(0)

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 10
value = 10

[State 10, End]
type = ChangeState
trigger1 = !AnimTime
value = 11


;Crouching
[StateDef 11]
type = C
physics = C
moveType = I
anim = 11
velSet = 0,0
sprPriority = 0

[State 11, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 6 && !AnimTime
value = 11

;---------------------------------------------------------------------------
;Crouch to Stand
[StateDef 12]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 10
value = 12
elem = 3 - AnimElemNo(0)

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 12
value = 12

[State 12, End]
type = ChangeState
trigger1 = command = "holddown" && command != "holdup"
value = 10

[State 12, End]
type = ChangeState
trigger1 = !AnimTime
value = 0


;---------------------------------------------------------------------------
; Walk
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
;trigger1 = time >= 2
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
;trigger1 = time >= 2
trigger1 = command =  "holdback"
x = const(velocity.walk.back.x)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21


;---------------------------------------------------------------------------
; Jump Start

;====================<Jumping>====================
[StateDef 40]
type = S
physics = S
moveType = I
anim = 40
ctrl = 0
VelSet = 0,0
sprPriority = 1
faceP2 = 1

[State 40, Direction]
type = VarSet
trigger1 = 1
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdfwd", 1, ifElse(command =  "holdback", -1, sysvar(1))))

[State 40, Direction (AI)]
type = VarSet
trigger1 = AILevel
sysvar(1) = ifElse((EnemyNear, MoveType != A || BackEdgeBodyDist <= 10), 1, ifElse((EnemyNear, MoveType = A), -1, 0))

[State 40, High Jump]
type = VarSet
trigger1 = !Time
var(3) = ifElse(command = "HighJump", 3, 0)
[State 40, High Jump]
type = VarSet
trigger1 = !Time && !AILevel
var(3) = ifElse(command = "HighJump", 3, 0)

[State 40, High Jump]
type = VarSet
trigger1 = !Time && PrevStateNo = 100
var(3) = 3

[State 40, Low Jump]
type = VarSet
trigger1 = command != "holdup" && (var(3) != [1,2])
var(3) = ifElse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Low Jump (AI)]
type = VarSet
trigger1 = AILevel && (var(3) != [1,2])
trigger1 = (EnemyNear, StateType = C) && Random < 500
var(3) = ifElse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Jump Sound]
type = PlaySnd
trigger1 = !AnimTime
value = ifElse((var(3) = [2,3]), 41, 40), 0

[State 40, Dust Helper]
type = Helper
trigger1 = !AnimTime
HelperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
PosType = P1
ownPal = 1

[State 40, Velocity: Normal Jump]
type = VelSet
trigger1 = !AnimTime
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, Velocity: Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 1
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = 0.75 * const(velocity.jump.y)

[State 40, Velocity: Long Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 2
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = 0.75 * const(velocity.jump.y)

[State 40, Velocity: Long Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 3
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifElse(!sysvar(1), const(velocity.runjump.y), const(velocity.jump.y))

[State 40, End]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1


;In Air
[StateDef 50]
type = A
physics = N
moveType = I
sprPriority = 1

[State 50, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(!vel x , 41, ifElse(vel x > 0, 42, 43)) + 10 * (var(3) = [1,2])
persistent = 0

[State 50, Assert: No Guard]
type = AssertSpecial
trigger1 = var(3) = [1,2]
flag = NoAirGuard


[State 50, Grounded Frame]
type = PosFreeze
trigger1 = Time < 1 && PrevStateNo = 40
value = 1

[State 50, Gravity]
type = Gravity
trigger1 = Time >= 1 || PrevStateNo != 40

[State 50, Landing]
type = ChangeState
trigger1 = Pos y > -vel y
value = 52


[StateDef 51]
type = A
physics = N
moveType = I
sprPriority = 1

[State 51, Accel]
type = gravity
trigger1 = 1
[State 51, Land]
type = changestate
trigger1 = pos y > -vel y
value = 52


;Landing
[StateDef 52]
type = S
physics = S
moveType = I
anim = 47
ctrl = 0
VelSet = 0,0
sprPriority = 1

[State 52, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && (var(3) = 1 || var(3) = 2)
trigger1 = (PrevStateNo = [600,699])
value = 57

[State 52, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 52, CtrlSet]
type = CtrlSet
trigger1 = !Time && (PrevStateNo != [600,699])
trigger2 = Time = 1 && Anim != 57
value = 1

[State 52, ChangeState to Guarding]
type = ChangeState
trigger1 = ctrl && command =  "holdback"
trigger1 = InGuardDist && (PrevStateNo != [600,699])
value = 120

[State 52, Assert: NoWalk]
type = AssertSpecial
trigger1 = anim != 5
flag = NoWalk

[State 52, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
PosType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 52, Turn]
type = changeanim
trigger1 = ctrl && p2dist x < 0
trigger1 = anim != 5
value = 5

[State 52, Turn]
type = turn
trigger1 = anim = 5 && animelem = 1

[State 52, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

 
;;---------------------------------------------------------------------------
;; Jump Start
;[Statedef 40]
;type    = S
;physics = S
;anim = 40
;ctrl = 0
;sprpriority = 1
;facep2 = 1
;
;[State 40, 1]
;type = VarSet
;trigger1 = Time = 0
;sysvar(1) = 0
;
;[State 40, 2]
;type = VarSet
;trigger1 = command = "holdfwd"
;sysvar(1) = 1
;
;[State 40, 3]
;type = VarSet
;trigger1 = command =  "holdback"
;sysvar(1) = -1
;
;[State 40, 4]
;type = VelSet
;trigger1 = AnimTime = 0
;x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
;y = const(velocity.jump.y)
;
;[State 40, 5]
;type = VelSet
;trigger1 = AnimTime = 0
;trigger1 = prevstateno = 100 ;RUN_FWD
;trigger1 = sysvar(1) = 1
;x = const(velocity.runjump.fwd.x)
;
;[State 40, 6]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 50
;ctrl = 1
;
;;---------------------------------------------------------------------------
;; AirJump Start
;[Statedef 45]
;type    = A
;physics = N
;ctrl = 0
;velset = 0,0
;[State -3, Jumping Dust]
;type = Helper
;helpertype = normal
;trigger1 = !time
;stateno = 8100
;pos = 0, 0
;sprpriority = -1
;[State 45, 1]
;type = ChangeAnim
;trigger1 = SelfAnimExist(44)
;value = 44
;
;[State 45, 2]
;type = ChangeAnim
;trigger1 = !SelfAnimExist(44)
;value = 41
;
;[State 45, 3]
;type = VarSet
;trigger1 = Time = 0
;sysvar(1) = 0
;
;[State 45, 4]
;type = VarSet
;trigger1 = command = "holdfwd"
;sysvar(1) = 1
;
;[State 45, 5]
;type = VarSet
;trigger1 = command =  "holdback"
;sysvar(1) = -1
;
;[State 45, 6]
;type = VelSet
;trigger1 = Time = 2
;x = ifelse(sysvar(1)=0, const(velocity.airjump.neu.x), ifelse(sysvar(1)=1, const(velocity.airjump.fwd.x), const(velocity.airjump.back.x)))
;y = const(velocity.airjump.y)
;
;[State 45, 7]
;type = ChangeState
;trigger1 = Time = 2
;value = 50
;ctrl = 1
;
;;---------------------------------------------------------------------------
;; Jump Up
;[Statedef 50]
;type    = A
;physics = A
;[State -3, Jumping Dust]
;type = Helper
;helpertype = normal
;trigger1 = !time
;stateno = 8100
;pos = 0, 0
;sprpriority = -1
;[State 50, 1]
;type = VarSet
;trigger1 = Time = 0
;sysvar(1) = 0
;
;[State 50, 2]
;type = ChangeAnim
;trigger1 = Time = 0
;value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))
;
;[State 50, 3]
;type = ChangeAnim
;trigger1 = Vel y > -2
;trigger1 = SelfAnimExist(anim + 3)
;persistent = 0
;value = Anim + 3
;
;;---------------------------------------------------------------------------
;; Jump Down (empty state for compatibility)
;[Statedef 51]
;type    = A
;physics = A
;
;[State 51, 1]
;type = Null
;trigger1 = 1
;
;;---------------------------------------------------------------------------
;; Jump Land
;[Statedef 52]
;type    = S
;physics = S
;ctrl = 1
;anim = 47
;
;[State 52, 1]
;type = VelSet
;trigger1 = Time = 0
;y = 0
;
;[State 52, 2]
;type = PosSet
;trigger1 = Time = 0
;y = 0
;
;[State 52, 3]
;type = CtrlSet
;trigger1 = Time = 3
;value = 1
;
;[State 52, 4]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 0
;ctrl = 1
;;---------------------------------------------------------------------------
;;-----------------------[Super-Jump]----------------------------------------
;[Statedef 55]
;type    = S
;physics = S
;anim = 40
;ctrl = 0
;sprpriority = 1
;
;[State 55, 1]
;type = VarSet
;trigger1 = 1
;sysvar(1) = 0
;
;[State 55, 2]
;type = VarSet
;trigger1 = command = "holdfwd"
;sysvar(1) = 1
;
;[State 55, 3]
;type = VarSet
;trigger1 = command =  "holdback"
;sysvar(1) = -1
;
;[State 55, 4]
;type = VelSet
;trigger1 = AnimTime = 0
;x = 0
;y = -.0040;-.0001
;
;[State 55, 5]
;type=ChangeState
;trigger1=!AnimTime
;value=56
;ctrl =1
;
;;--------------------------------------------------------------------------------
;; Super Jump
;[Statedef 56]
;type = A
;physics = A
;Anim = 41
;velset = 0,-10;-17
;ctrl = 1
;
;[State -3, Jumping Dust]
;type = Helper
;helpertype = normal
;trigger1 = !time
;stateno = 8100
;pos = 0, 0
;sprpriority = -1
;
;
;
;
;[State 56, PlaySnd]
;type = PlaySnd
;trigger1 = time = 0
;value = S4000, 5
;volume = 255
;channel = 1
;
;
;[State 56, PlaySnd]
;type = PlaySnd
;trigger1 = time = 1
;value = S40,7
;volume = 255
;;channel = 1
;
;[State 56, 1]
;type = VelAdd
;triggerall = Vel X>= - 2
;trigger1 = command =  "holdback"
;trigger1=Anim!= 43
;x = -0.2
;
;[State 56, 2]
;type = VelAdd
;triggerall = Vel X<= 2.5
;trigger1 = command = "holdfwd"
;trigger1 =Anim!= 42
;x = 0.35
;
;[State 56, 3]
;type = VelSet
;trigger1 = Anim = 42
;trigger1 = Time = [0,5]
;x = 5
;
;[State 56, 4]
;type = VelSet
;trigger1 = Anim = 43
;trigger1 = Time = [0,5]
;x = -3.88
;
;[State 56, 5]
;type = ChangeAnim
;trigger1 = sysvar(1) = 1
;trigger1 = Time = [0,4]
;value=42
;
;[State 56, 6]
;type = ChangeAnim
;trigger1 = sysvar(1) = -1
;trigger1 = Time = [0,4]
;value = 43
;
;[State 56, 7]
;type = ChangeAnim
;trigger1 = sysvar(1) = 1 || sysvar(1) = -1
;trigger1 = animtime = 0
;value = 41
;elem = 9
;
;[state 56, VelAdd]
;type = VelAdd
;trigger1 = Time > 30
;x = 0
;y = -.20
;
;[State 56, 10]
;type = turn
;trigger1 = p2dist x < -4
;
;[state 9000, End]
;type = ChangeState
;trigger1 = Pos Y >= 1
;value = 52
;ctrl

;======================<RUN>===========================
[Statedef 100]
type=S
movetype=I
physics=S
velset=0,0
anim=102
ctrl=1
sprpriority=1
facep2 = 1
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

[State 100, assert]
type=assertspecial
trigger1= 1
flag=nowalk
flag2=noautoturn

[State 100, vel]
type=velset
trigger1= anim=102
x= const(velocity.run.fwd.x)

[State 105, Starting Step snd]
type = PlaySnd
trigger1 = !Time
value = 102, 0
channel = 5

[State 105, Step1 snd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 100, 0
channel = 5

[State 105, Step2 snd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 100, 1
channel = 5

[State 100, jump]
type = changestate
trigger1 = AIlevel && random < 25
value = 40

[State 100, End]
type = changestate
trigger1 = !AIlevel && command != "holdfwd" && Time >7
trigger2 = AIlevel && p2bodydist x <= 90
value = 101
 
;Run Stop
[Statedef 101]
type = S
movetype = I
physics = S
ctrl = 0

[State 101, Skid Snd]
type = PlaySnd
trigger1 = !Time
value = 101,0

[State 101, Skid Dust]
type = Explod
trigger1 = !Time
anim = 8104
sprPriority=3
posType = P1
pos = -15,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 101, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 101

[State 101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;========================<FORWARD DASH>==========================
[Statedef 102]
type=S
movetype=I
physics=S
velset=0,0
anim=100
ctrl=0
facep2 = 1
sprpriority=1

[State 102, vel]
type=velset
trigger1= animelem=2
x= const(velocity.run.fwd.x)
y= const(velocity.run.fwd.y)

[State 102, snd]
type=playsnd
triggerall = anim = 101
trigger1= time=1
value=40,0

[State 102, end]
type=posset
triggerall = time>2
trigger1 = Vel Y > 0 && Pos Y >= 0
trigger2 = anim = 101
y=0

[State 0, StateTypeSet]
type = StateTypeSet
triggerall = time>2
trigger1 = Vel Y > 0 && Pos Y >= 0
statetype = S
movetype = I
physics = N

[State 102, end]
type=changeanim
trigger1 = time = 12
value=101
persistent = 0

[State -3, Landing Dust]
type = Explod
triggerall = anim = 101
trigger1 = Vel Y > 0 && Pos Y >= 0
persistent = 0
scale = .5, .5
anim = 7102
pos = 0, 0
sprpriority = -1

[State 102, end]
type=playsnd
triggerall = time>6
trigger1 = Vel Y > 0 && Pos Y >= 0
value=40,0
persistent = 0

[State 0, VelSet]
type = VelSet
triggerall = time>6
trigger1 = Vel Y > 0 && Pos Y >= 0
trigger2 = anim = 101
y=0
x=0

[State 0, VelSet]
type = Veladd
triggerall = time>6
trigger1 = Vel Y > 0 && Pos Y >= 0
y=0
x=0

[State 102, end]
type=changeanim
triggerall = time>6
trigger1 = Vel Y > 0 && Pos Y >= 0
value=101

[State 100, Ctrl]
type = CtrlSet
trigger1 = Anim = 101 && Animelem = 3
value = 1

[State 100, end]
type=changestate
trigger1= anim=101 && !animtime
value=0
ctrl=1

;---------------------------------------------------------------------------
; RUN_BACK
[Statedef 105]
type    = S
physics = S
anim = 105
ctrl = 0
sprpriority = 1
facep2 = 1
[State 105, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 102, vel]
type=velset
trigger1= animelem=2
x= const(velocity.run.back.x)
y= const(velocity.run.back.y)

[State 0, VelAdd]
type = VelAdd
trigger1 = time>=2
y = .4

[State 105, Dash Back Snd]
type = PlaySnd
trigger1 = anim = 105
trigger1 = AnimElem = 2
value = 105, 0

;[State 102, snd]
;type=playsnd
;triggerall = anim = 105
;trigger1= animelem=2
;value=40,6
;
;[State 102, snd]
;type=playsnd
;triggerall = anim = 106
;trigger1= time=1
;value=40,0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time>2
statetype = A
movetype = I
physics = N

[State 102, end]
type=posset
triggerall = time>6
trigger1 = Vel Y > 0 && Pos Y >= 0
trigger2 = anim = 106
y=0

[State 0, StateTypeSet]
type = StateTypeSet
triggerall = time>6
trigger1 = Vel Y > 0 && Pos Y >= 0
statetype = S
movetype = I
physics = N

[State 102, end]
type=changeanim
triggerall = time>6
trigger1 = Vel Y > 0 && Pos Y >= 0
value=106
persistent = 0

[State -3, Landing Dust]
type = Explod
triggerall = anim = 106
trigger1 = Vel Y > 0 && Pos Y >= 0
persistent = 0
scale = .5, .5
anim = 7102
postype = p1
pos = 0, 0
sprpriority = -1

[State 102, Landing Snd]
type=playsnd
triggerall = anim = 106 && animelem=1
trigger1 = Vel Y > 0 && Pos Y >= 0
value=52,0
persistent = 0

[State 0, VelSet]
type = VelSet
triggerall = time>6
trigger1 = Vel Y > 0 && Pos Y >= 0
trigger2 = anim = 106
y=0
x=0

[State 0, VelSet]
type = Veladd
triggerall = time>6
trigger1 = Vel Y > 0 && Pos Y >= 0
y=0
x=0


[State 102, end]
type=changeanim
triggerall = time>6
trigger1 = Vel Y > 0 && Pos Y >= 0
value=106

[State 100, Ctrl]
type = CtrlSet
trigger1 = Anim = 106 && Animelem = 3
value = 1

[State 100, end]
type=changestate
trigger1= anim=106 && !animtime
value=0
ctrl=1
;
;;---------------------------------------------------------------------------
;; RUN_UP
;[Statedef 110]
;type    = S
;physics = N
;
;[State 110, 0]
;type = CtrlSet
;trigger1 = Time = 0
;value = 0
;
;[State 110, 1]
;type = ChangeAnim
;trigger1 = Time = 0
;value = 110
;
;[State 110, 2]
;type = HitBy
;trigger1 = Time = 0
;value = SCA, NT, ST, HT
;time = 30
;
;[State 110, 3]
;type = VelSet
;trigger1 = Time = 0
;x = 0
;z = -7
;
;[State 110, 4]
;type = VelMul
;trigger1 = 1
;z = 0.8
;
;[State 110, 5]
;type = VelSet
;trigger1 = AnimTime = -8
;z = 0
;
;[State 110, 7]
;type = CtrlSet
;trigger1 = AnimTime = 0
;value = 1
;
;[State 110, 8]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 0
;
;;---------------------------------------------------------------------------
;; RUN_DOWN
;[Statedef 115]
;type    = S
;physics = N
;
;[State 115, 0]
;type = CtrlSet
;trigger1 = Time = 0
;value = 0
;
;[State 115, 1]
;type = ChangeAnim
;trigger1 = Time = 0
;value = 110
;
;[State 115, 2]
;type = HitBy
;trigger1 = Time = 0
;value = SCA, NT, ST, HT
;time = 30
;
;[State 115, 3]
;type = VelSet
;trigger1 = Time = 0
;x = 0
;z = 7
;
;[State 115, 4]
;type = VelMul
;trigger1 = 1
;z = 0.8
;
;[State 115, 5]
;type = VelSet
;trigger1 = AnimTime = -8
;z = 0
;
;[State 115, 7]
;type = CtrlSet
;trigger1 = AnimTime = 0
;value = 1
;
;[State 115, 8]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 0
;---------------------------------------------------------------------------
; GUARD (start)
[Statedef 120]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged

[State 120, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 120 + (statetype = C) + (statetype = A)*2

[State 120, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 120, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 120, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 120, Hi to Lo]
type = StateTypeSet
trigger1 = !AILevel
trigger1 = statetype = S && command = "holddown"
trigger2 = AILevel
trigger2 = statetype = S && P2statetype = C
trigger3 = AILevel
trigger3 = statetype = S
trigger3 = P2bodydist x > 100
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
trigger1 = !AILevel
trigger1 = statetype = C && command != "holddown"
trigger2 = AILevel
trigger2 = statetype = C && P2statetype = S
trigger2 = P2bodydist x <= 100
trigger2 = random < 200
trigger3 = AILevel
trigger3 = statetype = C && P2statetype = A
trigger3 = P2bodydist x <= 100
statetype = S
physics = S

[State 120, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 130 + (statetype = C) + (statetype = A)*2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = !AILevel
trigger1 = command !=  "holdback"
trigger2 = AILevel
trigger2 = random < 100
trigger3 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; STAND GUARD (guarding)
[Statedef 130]
type    = S
physics = S

[State 130, 1]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

[State 130, Hi to Lo]
type = ChangeState
trigger1 = !AILevel
trigger1 = command = "holddown"
trigger2 = AILevel
trigger2 = P2statetype = C
trigger3 = AILevel
trigger3 = statetype = S
trigger3 = P2bodydist x > 100
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = !AILevel
trigger1 = command !=  "holdback"
trigger2 = AILevel
trigger2 = random < 100
trigger3 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; CROUCH GUARD (guarding)
[Statedef 131]
type    = C
physics = C

[State 131, 1]
type = ChangeAnim
trigger1 = Anim != 131
value = 131

[State 131, Lo to Hi]
type = ChangeState
trigger1 = !AILevel
trigger1 = command != "holddown"
trigger2 = AILevel
trigger2 = P2statetype = S
trigger2 = P2bodydist x <= 100
trigger2 = random < 200
trigger3 = AILevel
trigger3 = P2statetype = A
trigger3 = P2bodydist x <= 100
value = 130

[State 131, Stop Guarding]
type = ChangeState
trigger1 = !AILevel
trigger1 = command !=  "holdback"
trigger2 = AILevel
trigger2 = random < 100
trigger3 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; AIR GUARD (guarding)
[Statedef 132]
type    = A
physics = N

[State 132, 1]
type = ChangeAnim
trigger1 = Anim != 132
value = 132

[State 132, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 132, 3]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 132, 4]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, 5]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, 6]
type = ChangeState
triggerall = sysvar(0)
triggerall = inguarddist
trigger1 = !AILevel
trigger1 = command =  "holdback"
trigger2 = AILevel
value = 130

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = !AILevel
trigger1 = command !=  "holdback"
trigger2 = AILevel
trigger2 = random < 100
trigger3 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; GUARD (end)
[Statedef 140]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged
ctrl = 1

[State 140, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 140 + (statetype = C) + (statetype = A)*2

[State 140, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 140, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 140, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 140, Hi to Lo]
type = StateTypeSet
trigger1 = !AILevel
trigger1 = statetype = S && command = "holddown"
trigger2 = AILevel
trigger2 = statetype = S && P2statetype = C
trigger3 = AILevel
trigger3 = statetype = S
trigger3 = P2bodydist x > 100
statetype = C
physics = C

[State 140, Lo to Hi]
type = StateTypeSet
trigger1 = !AILevel
trigger1 = statetype = C && command != "holddown"
trigger2 = AILevel
trigger2 = statetype = C && P2statetype = S
trigger2 = P2bodydist x <= 100
trigger2 = random < 200
trigger3 = AILevel
trigger3 = statetype = C && P2statetype = A
trigger3 = P2bodydist x <= 100
statetype = S
physics = S

;---------------------------------------------------------------------------
; SGUARDHIT (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 150, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 150, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3

;---------------------------------------------------------------------------
; SGUARDHIT2 (knocked back)
[Statedef 151]
type    = S
movetype= H
physics = S
anim = 150

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 151, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 151, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 151, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1

;---------------------------------------------------------------------------
; CGUARDHIT (shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 152, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 152, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; CGUARDHIT2 (knocked back)
[Statedef 153]
type    = C
movetype= H
physics = C
anim = 151

[State 153, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 153, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 153, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 153, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 153, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1

;---------------------------------------------------------------------------
; AGUARDHIT (shaking)
[Statedef 154]
type    = A
movetype= H
physics = N
velset = 0,0

[State 154, 1]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 155 ;AGUARDHIT2

[State 154, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; AGUARDHIT2 (knocked away)
[Statedef 155]
type    = A
movetype= H
physics = N
anim = 152

[State 155, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 155, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 155, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 155, 4]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 155, 5]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command =  "holdback"
trigger1 = inguarddist
value = 130

[State 155, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

;---------------------------------------------------------------------------
; LOSE (Time over)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; DRAWGAME (Time over)
[Statedef 175]
type = S
ctrl = 0
velset = 0,0

[State 175, 1] ; If no anim, use go to lose state.
type = ChangeState
trigger1 = Time = 0
trigger1 = !SelfAnimExist(175)
value = 170

[State 175, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 175

[State 175, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
; CNS difficulty: basic
[Statedef 180]
type = S
[State 0, VictoryQuote]
type = VictoryQuote
trigger1 = 1
value = ceil(0+random%30)
[State 0, Win by Corkscrew Blow / Corkscrew Cross]
type = VictoryQuote
trigger1 = (helper(8600), var(0) = 1) || (helper(8600), var(0) = 5)
value = ceil(30+random%2)
[State 0, Win by Rocket Uppercut]
type = VictoryQuote
trigger1 = (helper(8600), var(0) = 2)
value = ceil(32+random%2)
[State 0, Win by Rolling Thunder]
type = VictoryQuote
trigger1 = (helper(8600), var(0) = 3)
value = ceil(34+random%2)
[State 0, Vs. Abel]
type = VictoryQuote
trigger1 = enemy, name = "Abel" || enemy, name = "AbelTAG"
value = 36
[State 0, Vs. Adon]
type = VictoryQuote
trigger1 = enemy, name = "Adon" || enemy, name = "AdonTAG" || enemy, name = "Adon_mx"
value = 37
[State 0, Vs. Akuma]
type = VictoryQuote
trigger1 = (enemy, name = "Akuma" || enemy, name = "MvC-EoH Gouki" || enemy, name = "CvSGouki" || enemy, name = "svcgouki" || enemy, name = "ZXAkuma" || enemy, name = "Gouki" || enemy, name = "cvsgouki_normal" || enemy, name = "ZXAkuma") && enemy, authorname != "Mr. Ansatsuken" && enemy, authorname !="Phantom.of.the.server"
trigger2 = (enemy, name = "Akuma" && enemy, authorname = "Mr.Ansatsuken") && enemy, var(1) != 2 && enemy, var(1) !=4
trigger3 = (enemy, name = "Gouki" && enemy, authorname = "Phantom.of.the.Server") && enemy, var(1) = 0
trigger4 = enemy, name = "AkumaTAG" || enemy, name = "CvSGoukiTAG" || enemy, name = "Gouki" && enemy, authorname != "Mr. Ansatsuken"
trigger5 = (enemy, name = "GoukiTAG" && enemy, authorname = "Phantom.of.the.Server") && enemy, var(1) = 0
trigger6 = enemy, name = "Shin Akuma" || enemy, name = "Shin Gouki" || enemy, name = "cvsgouki_ex"
trigger7 = (enemy, name = "Gouki"  && enemy, authorname = "Phantom.of.the.Server") && enemy, var(1) = 1
trigger8 = enemy, name = "Shin AkumaTAG" || enemy, name = "Shin GoukiTAG"
trigger9 = (enemy, name = "GoukiTAG" && enemy, authorname = "Phantom.of.the.Server") && enemy, var(1) = 1
value = ceil(38+random%2)
[State 0, Vs. Alex]
type = VictoryQuote
trigger1 = enemy, name = "Alex" || enemy, name = "DR_Alex" || enemy, name = "Alex_mx"
value = ceil(40+random%2)
[State 0, Vs. Alisa]
type = VictoryQuote
trigger1 = enemy, name = "Alisa" || enemy, name = "Alisa Bosconovitch" || enemy, name = "CvS_Alisa" || enemy, name = "CFJ_Alisa"
trigger2 = enemy, name = "AlisaTAG" || enemy, name = "Alisa BosconovitchTAG" || enemy, name = "CvS_AlisaTAG" || enemy, name = "CFJ_AlisaTAG"
value = 42
[State 0, Vs. Balrog]
type = VictoryQuote
trigger1 = enemy, name = "Balrog" || enemy, name = "Boxer" || enemy, name = "Balrog (Boxer)" || enemy, name = "Balrog(Boxer)"
trigger2 = enemy, name = "BalrogTAG" || enemy, name = "Bison (Boxer)" || enemy, name = "M. Bison (Boxer)"
value = ceil(43+random%3)
[State 0, Vs. M. Bison]
type = VictoryQuote
trigger1 = enemy, name = "M. Bison" || enemy, name = "M.Bison" || enemy, name = "Bison" || enemy, name = "Dictator" || enemy, name = "cvsvega" || enemy, name = "cvsvega_normal" || enemy, name = "cvsvega_ex"
trigger2 = enemy, name = "Vega" 
trigger2 = enemy, authorname = "Phantom.of.the.Server" || enemy, authorname = "Froz"
trigger3 = enemy, name = "True Bison" || enemy, name = "Shin Bison" || enemy, name = "Final Bison" || enemy, name = "MBison"
trigger4 = enemy, name = "M. BisonTAG" || enemy, name = "M.BisonTAG" || enemy, name = "BisonTAG" || enemy, name = "DictatorTAG"
trigger5 = enemy, name = "VegaTAG" 
trigger5 = enemy, authorname = "Phantom.of.the.Server" || enemy, authorname = "Froz"
trigger6 = enemy, name = "True BisonTAG" || enemy, name = "Shin BisonTAG" || enemy, name = "Final BisonTAG" || enemy, name = "MBisonTAG"
trigger7 = enemy, name = "True Vega" || enemy, name = "Shin Vega" || enemy, name = "Final Vega"
trigger8 = enemy, name = "[Necromancer's] M. Bison" || enemy, name = "cvsvega" || enemy, name = "svcvega"
value = 46
[State 0, Vs. M. Bison]
type = VictoryQuote
trigger1 = enemy, name = "Final Bison" || enemy, name = "Final Vega" || enemy, name = "Shin Bison" || enemy, name = "Bison 2"
trigger2 = enemy, name = "Vega II" || enemy, name = "Bison2" || enemy, name = "VegaII" || enemy, name = "ShinBison"
trigger3 = enemy, name = "Final M.Bison" || enemy, name = "Final M. Bison" || enemy, name = "ShinM.Bison"
trigger4 = enemy, name = "FinalVega" || enemy, name = "FinalBison" ||  enemy, name = "cvsvega_ex"
trigger5 = enemy, name = "ShinVega" || enemy, name = "Shin Vega" ||  enemy, name = "Shin M.Bison"
trigger6 = enemy, name = "Vega" && enemy, authorname = "Froz"
trigger6 = enemy, var(40)=1
trigger7 = enemy, name = "Shin M. Bison" || enemy, name = "Final M. Bison" || enemy, name = "M. Bison 2" || enemy, name = "M. Bison II"
trigger8 = enemy, name = "M.Bison 2" || enemy, name = "M.Bison2" || enemy, name = "M.Bison II" || enemy, name = "M.BisonII"
trigger9 = enemy, name = "Final M.Bison" || enemy, name = "Final M. Bison" || enemy, name = "Shin M.Bison"
trigger10 = enemy, name = "Vega2" || enemy, name = "Vega 2" || enemy, name = "Bison Bison"
trigger11 = enemy, name = "True M.Bison" || enemy, name = "True M. Bison" || enemy, name = "TrueM.Bison"
trigger12 = enemy, name = "True Bison" || enemy, name = "True Bison" || enemy, name = "True Vega" || enemy, name = "TrueVega"
trigger13 = enemy, name = "Shin Dictator" || enemy, name = "ShinDictator" || enemy, name = "True Dictator" || enemy, name = "TrueDictator"
trigger14 = enemy, name = "Dictator2" || enemy, name = "Dictator 2" || enemy, name = "DictatorII" || enemy, name = "Dictator II"
trigger15 = enemy, name = "FinalDictator" || enemy, name = "Final Dictator" || enemy, name = "MBison2" || enemy, name = "MBison 2"
trigger16 = enemy, name = "MBisonII" || enemy, name = "MBison II" || enemy, name = "ShinMBison" || enemy, name = "Shin MBison"
trigger17 = enemy, name = "Final MBison" || enemy, name = "FinalMBison" || enemy, name = "TrueMBison" || enemy, name = "True MBison"
trigger18 = enemy, name = "M BisonII" || enemy, name = "M Bison II" || enemy, name = "ShinM Bison" || enemy, name = "Shin M Bison" || enemy, name = "M Bison2"
trigger19 = enemy, name = "Final M Bison" || enemy, name = "FinalM Bison" || enemy, name = "TrueM Bison" || enemy, name = "True M Bison" || enemy, name = "M Bison 2"
value = 46
[State 0, Vs. Cammy]
type = VictoryQuote
trigger1 = enemy, name = "Cammy" || enemy, name = "cvscammy" || enemy, name = "CammyTAG" || enemy, name = "Cammy_mx" || enemy, name = "Cammy White"
value = 48
[State 0, Vs. Chun-Li]
type = VictoryQuote
trigger1 = enemy, name = "Chun-Li" || enemy, name = "Chun-LiTAG" || enemy, name = "cvschunli" || enemy, name = "SF3 Chun Li" || enemy, name = "ChunLi_mx"
value = 49
[State 0, Vs. Cody]
type = VictoryQuote
trigger1 = enemy, name = "Cody" || enemy, name = "Cody Travers" || enemy, name = "Cody_mx"
trigger2 = enemy, name = "CodyTAG" || enemy, name = "Cody TraversTAG"
value = 50
[State 0, Vs. C. Viper]
type = VictoryQuote
trigger1 = enemy, name = "Crimson Viper" || enemy, name = "C. Viper" || enemy, name = "C.Viper" || enemy, name = "CFJ_C.Viper"
trigger2 = enemy, name = "Crimson ViperTAG" || enemy, name = "C. ViperTAG" || enemy, name = "C.ViperTAG" || enemy, name = "CFJ_C.ViperTAG"
value = 51
[State 0, Vs. Dan]
type = VictoryQuote
trigger1 = enemy, name = "Dan" || enemy, name = "Dan Hibiki" || enemy, name = "cvsdan" || enemy, name = "Marvel vs Capcom - Eternity of Heroes: Dan"
trigger2 = enemy, name = "DanTAG" || enemy, name = "Dan HibikiTAG" || enemy, name = "Marvel vs Capcom - Eternity of Heroes: Dan" || enemy, name = "Dan_mx"
value = 52
[State 0, Vs. Decapre]
type = VictoryQuote
trigger1 = enemy, name = "Decapre" || enemy, name = "Juni" || enemy, name = "Juli" || enemy, name = "CvS_Decapre" || enemy, name = "cvsjuni"
trigger2 = enemy, name = "DecapreTAG" || enemy, name = "JuniTAG" || enemy, name = "JuliTAG" || enemy, name = "CvS_DecapreTAG"
value = 53
[State 0, Vs. Dee Jay]
type = VictoryQuote
trigger1 = enemy, name = "Dee Jay" || enemy, name = "DeeJay_mx"
trigger2 = enemy, name = "Dee JayTAG"
value = 54
[State 0, Vs. Blanka]
type = VictoryQuote
trigger1 = enemy, name = "Dhalsim" || enemy, name = "DhalsimTAG" || enemy, name = "cvsdhalsim"
trigger2 = enemy, name = "RajaaDhalsim"
value = 55
[State 0, Vs. Dudley]
type = VictoryQuote
trigger1 = enemy, name = "Dudley" || enemy, name = "Dudley_mx"
value = ceil(56+random%3)
[State 0, Vs. El Fuerte]
type = VictoryQuote
trigger1 = enemy, name = "El Fuerte" || enemy, name = "ElFuerte" || enemy, name = "CFJ_ElFuerte"
trigger2 = enemy, name = "El FuerteTAG" || enemy, name = "ElFuerteTAG" || enemy, name = "CFJ_ElFuerteTAG"
value = 59 ;
[State 0, Vs. Elena]
type = VictoryQuote
trigger1 = enemy, name = "Elena" || enemy, name = "Elena_mx"
trigger2 = enemy, name = "ElenaTAG"
value = ceil(60+random%2)
[State 0, Vs. Fei Long]
type = VictoryQuote
trigger1 = enemy, name = "Fei Long" || enemy, name = "FeiLong_mx"
trigger2 = enemy, name = "Fei LongTAG"
value = 62 ;ceil(60+random%2)
[State 0, Vs. Gen]
type = VictoryQuote
trigger1 = enemy, name = "Gen" || enemy, name = "Master Gen" || enemy, name = "Gen_mx"
trigger2 = enemy, name = "GenTAG" || enemy, name = "Master GenTAG"
value = 63 ;ceil(60+random%2)
[State 0, Vs. Gill]
type = VictoryQuote
trigger1 = enemy, name = "Gill" || enemy, name = "Gill_mx"
value = 64 ;ceil(60+random%2)
[State 0, Vs. El Fuerte]
type = VictoryQuote
trigger1 = enemy, name = "Gouken SSF4" || enemy, name = "Gouken" || enemy, name = "Shin Gouken" 
trigger2 = enemy, name = "Shen Long" || enemy, name = "Master Gouken"
trigger3 = enemy, name = "Gouken SSF4" || enemy, name = "GoukenTAG" || enemy, name = "Shin GoukenTAG" 
trigger4 = enemy, name = "Shen LongTAG" || enemy, name = "Master GoukenTAG"
value = 65 ;ceil(60+random%2)
[State 0, Vs. Guile]
type = VictoryQuote
trigger1 = enemy, name = "El Fuerte" || enemy, name = "ElFuerte" || enemy, name = "CFJ_ElFuerte"
trigger2 = enemy, name = "El FuerteTAG" || enemy, name = "ElFuerteTAG" || enemy, name = "CFJ_ElFuerteTAG"
value = 66 ;ceil(60+random%2)
[State 0, Vs. Hakan]
type = VictoryQuote
trigger1 = enemy, name = "Hakan" || enemy, name = "CFJ_Hakan" 
trigger2 = enemy, name = "HakanTAG" || enemy, name = "CFJ_HakanTAG"
value = 68 ;ceil(60+random%2)
[State 0, Vs. Heihachi]
type = VictoryQuote
trigger1 = enemy, name = "CvS_Heihachi" || enemy, name = "CvS_HeihachiTAG" || enemy, name = "Heihachi" || enemy, name = "Heihachi Mishima"
value = 69 ;ceil(60+random%2)
[State 0, Vs. E. Honda]
type = VictoryQuote
trigger1 = enemy, name = "Edmond Honda" || enemy, name = "E. Honda" || enemy, name = "cvshonda" || enemy, name = "Honda_mx"
trigger2 = enemy, name = "Edmond HondaTAG" || enemy, name = "E. HondaTAG" || enemy, name = "cvshondaTAG"
value = 70 ;ceil(60+random%2)
[State 0, Vs. Hugo]
type = VictoryQuote
trigger1 = enemy, name = "Hugo" || enemy, name = "HugoTAG" || enemy, name = "Hugo_mx"
value = 71 ;ceil(60+random%2)
[State 0, Vs. Ibuki]
type = VictoryQuote
trigger1 = enemy, name = "Ibuki" || enemy, name = "IbukiTAG" || enemy, name = "Ibuki_mx" || enemy, name = "DR_Ibuki"
value = ceil(72+random%2)
[State 0, Vs. Jin]
type = VictoryQuote
trigger1 = enemy, name = "Jin Kazama" || enemy, name = "Jin" || enemy, name = "CvS_Jin" || enemy, name = "CvS_JinTAG"
value = 74 ;ceil(60+random%2)
[State 0, Vs. Juri]
type = VictoryQuote
trigger1 = enemy, name = "Juri" || enemy, name = "Juri Han" || enemy, name = "JuriHan" || enemy, name ="CFJ_JuriHan"
trigger2 = enemy, name = "JuriTAG" || enemy, name = "Juri HanTAG" || enemy, name = "JuriHanTAG" || enemy, name ="CFJ_JuriHanTAG"
value = ceil(75+random%2)
[State 0, Vs. Ken]
type = VictoryQuote
trigger1 = enemy, name = "Ken" || enemy, name = "cvsken" || enemy, name = "cvsken_normal" || enemy, name = "Ken Masters" || enemy, name = "Ken SF3trd" || enemy, name = "Street Fighter 3 Ken" || enemy, name = "Master Ken" && enemy, authorname != "Phantom.of.the.Server&Jmorphman" && enemy, authorname != "vyn"
trigger2 = enemy, name = "Ken Masters" && enemy, authorname = "Phantom.of.the.Server&Jmorphman"
value = ceil(77+random%3)
[State 0, Vs. Lili]
type = VictoryQuote
trigger1 = enemy, name = "Lili" || enemy, name = "CvS_Lili" || enemy, name = "CvS_LiliTAG" || enemy, name = "CFJ_Lili" || enemy, name = "CFJ_LiliTAG"
value = 80
[State 0, Vs. Makoto]
type = VictoryQuote
trigger1 = enemy, name = "Makoto" || enemy, name = "Makoto_mx" || enemy, name = "DR_Makoto"
trigger2 = enemy, name = "MakotoTAG"
value = 81
[State 0, Vs. Necro]
type = VictoryQuote
trigger1 = enemy, name = "Necro" || enemy, name = "Necro_mx" || enemy, name = "DR_Necro"
value = 82
[State 0, Vs. Oni]
type = VictoryQuote
trigger1 = enemy, name = "Oni" || enemy, name = "Oni Akuma" || enemy, name = "Oni Gouki" || enemy, name = "Ogre Akuma" || enemy, name = "Ogre Gouki" || enemy, name = "Kuroshiki Oni" || enemy, name = "CvS_Oni"
trigger2 = (enemy, name = "Akuma" && enemy, authorname = "Mr.Ansatsuken") && (enemy, var(1) = 2 || enemy, var(1) = 4)
trigger3 = enemy, name = "Ogre" && enemy, authorname = "JUN"
trigger4 = enemy, name = "OniTAG" || enemy, name = "Oni AkumaTAG" || enemy, name = "Oni GoukiTAG" || enemy, name = "Ogre AkumaTAG" || enemy, name = "Ogre GoukiTAG"
value = 83
[State 0, Vs. Poison]
type = VictoryQuote
trigger1 = enemy, name = "Poison" || enemy, name = "PoisonTAG" || enemy, name = "CvS_Poison" || enemy, name = "CFJ_Poison"
value = 84
[State 0, Vs. Rolento]
type = VictoryQuote
trigger1 = enemy, name = "Rolento" || enemy, name = "RolentoTAG" || enemy, name = "cvsrolento" || enemy, name = "Rolento_mx"
value = 85
[State 0, Vs. Rose]
type = VictoryQuote
trigger1 = enemy, name = "Rose" || enemy, name = "RoseTAG" || enemy, name = "Rose_mx"
value = 86
[State 0, Vs. Ryu]
type = VictoryQuote
trigger1 = enemy, name = "Ryu" || enemy, name = "Ryu Hoshi" || enemy, name = "Master Ryu" && enemy, authorname != "Phantom.of.the.Server"
trigger2 = enemy, name = "Ryu" && enemy, authorname = "Phantom.of.the.Server" && enemy, var(1) !=2
trigger3 = enemy, name = "MvC-EoH Ryu" || enemy, name = "cvsryu" || enemy, name = "cvsryu_normal" || enemy, name = "svcryu"
trigger4 = enemy, name = "RyuTAG" || enemy, name = "Ryu HoshiTAG" || enemy, name = "Master RyuTAG" && enemy, authorname != "Phantom.of.the.Server"
trigger5 = enemy, name = "RyuTAG" && enemy, authorname = "Phantom.of.the.Server" && enemy, var(1) !=2
trigger6 = enemy, name = "MvC-EoH RyuTAG"
value = ceil(87+random%2)
[State 0, Vs. Oro]
type = VictoryQuote
trigger1 = enemy, name = "Oro" || enemy, name = "SFIII_Oro" || enemy, name = "DR_Oro" || enemy, name = "Oro_mx"
value = 89 ;ceil(60+random%2)
[State 0, Vs. Sagat]
type = VictoryQuote
trigger1 = enemy, name = "Sagat" || enemy, name = "SagatTAG" || enemy, name = "cvssagat" || enemy, name = "Sagat_mx"
value = 90
[State 0, Vs. Sakura]
type = VictoryQuote
trigger1 = enemy, name = "Sakura" || enemy, name = "Sakura Kasugano" || enemy, name = "SakuraKasugano" || enemy, name = "cvssakura" || enemy, name = "cvssakura_normal" || enemy, name = "cvssakura_ex"
trigger2 = enemy, name = "SakuraTAG" || enemy, name = "Sakura KasuganoTAG" || enemy, name = "SakuraKasuganoTAG" || enemy, name = "Sakura_mx"
value = 91 ;ceil(60+random%2)
[State 0, Vs. Sean]
type = VictoryQuote
trigger1 = enemy, name = "Sean" || enemy, name = "Sean Matsuda" || enemy, name = "Sean_mx"
value = 92 ;ceil(60+random%2)
[State 0, Vs. Seth]
type = VictoryQuote
trigger1 = enemy, name = "Seth" || enemy, name = "SethTAG" || enemy, name = "SF4Seth"
value = 93 ;ceil(60+random%2)
[State 0, Vs. T. Hawk]
type = VictoryQuote
trigger1 = enemy, name = "T. Hawk" || enemy, name = "T.Hawk" || enemy, name = "Thunder Hawk"
trigger2 = enemy, name = "T Hawk" || enemy, name = "ThunderHawk" || enemy, name = "THawk" || enemy, name = "T.Hawk_mx"
value = 94 ;ceil(60+random%2)
[State 0, Vs. Urien]
type = VictoryQuote
trigger1 = enemy, name = "Urien" || enemy, name = "Urien_mx" || enemy, name = "SFIII_Urien"
value = 95 ;ceil(60+random%2)
[State 0, Vs. Vega]
type = VictoryQuote
trigger1 = enemy, name = "Vega" || enemy, name = "Claw" || enemy, name = "Balrog_mx" || enemy, name = "Vega(Claw)" || enemy, name = "Vega (Claw)" || enemy, name = "Balrog(Claw)" || enemy, name = "Balrog (Claw)"
trigger1 = enemy, authorname != "Phantom.of.the.Server" && enemy, authorname != "Froz"
trigger2 = enemy, name = "VegaTAG" || enemy, name = "ClawTAG"
trigger2 = enemy, authorname != "Phantom.of.the.Server" && enemy, authorname != "Froz"
value = 96 ;ceil(60+random%2)
[State 0, Vs. Yang]
type = VictoryQuote
trigger1 = enemy, name = "Yang" || enemy, name = "Yang_mx"
value = 97 ;ceil(60+random%2)
[State 0, Vs. Yun]
type = VictoryQuote
trigger1 = enemy, name = "Yun" || enemy, name = "cvsyun"
trigger2 = enemy, name = "YunTAG" || enemy, name = "Yun_mx"
value = 98 ;ceil(60+random%2)
[State 0, Vs. Zangief]
type = VictoryQuote
trigger1 = enemy, name = "Zangief" || enemy, name = "cvszangief" || enemy, name = "cvszangief_normal" || enemy, name = "cvszangief_ex"
trigger2 = enemy, name = "ZangiefTAG"
value = 99 ;ceil(60+random%2)

[State 180, 1]
type = ChangeState
trigger1 = roundno = 1 && matchover
;value = ifelse(matchover,182,ifelse(!roundsexisted, 181, ifelse(random<500,182,181)))
value = ifelse(!AIlevel && (command = "hold_x" || command = "hold_y" || command = "hold_z"), 182, ifelse(!AIlevel && (command = "hold_b" || command = "hold_c" || command = "hold_a")&&var(55)!=2,183,ifelse(!AIlevel && (command = "hold_start"),181,ifelse(var(55)!=2,ifelse(random<333,184,ifelse(random<500,182,181)),ifelse(random<500,182,181)))))

[State 180, 1]
type = ChangeState
trigger1 = 1
;value = ifelse(matchover,182,ifelse(!roundsexisted, 181, ifelse(random<500,182,181)))
value = ifelse(matchover,ifelse(!AIlevel && (command = "hold_x" || command = "hold_y" || command = "hold_z"), 182, ifelse(!AIlevel && (command = "hold_b" || command = "hold_c" || command = "hold_a")&&var(55)!=2,183,ifelse(random<500&&var(55)!=2,184,182))),181)

;---------------------------------------------------------------------------
; Win pose 1
; CNS difficulty: basic
; CNS ƒŒƒxƒ‹: Šî–{
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 182, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S180, 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = matchover
trigger1 =  time = [0,350]
flag = RoundNotOver
persistent = 1

[State 3000, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "Rose"
ID = 196
stateno = 196
pos = 13,-118
postype = p1
size.xscale = 1
size.yscale = 1
sprpriority = 3
facing = 1
;ownpal = 1
;supermovetime=300

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
;---------------------------------------------------------------------------
; Win pose 2
; CNS difficulty: basic
; CNS ƒŒƒxƒ‹: Šî–{
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  time = [0,350]
flag = RoundNotOver
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 183
pos = -400,-100
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 9,-2
accel = 0,.2
random = 0,0
removetime = 42
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=2||animelem=7||animelem=11
value = S100,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=28
value = S180,2

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

; Win pose 3
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 182, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S180, 1

[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name ="Mr. Gotch"
ID = 185
stateno =185
pos = 8,-220
size.xscale = 0.9
size.yscale = 0.9
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  time = [0,350]
flag = RoundNotOver
persistent = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; PREINTRO
[Statedef 190] ;state taken from common1.cns, this is everything b4 the intro
type = S
ctrl = 0
velset = 0,0

[State 190, 2]
type = ChangeState
trigger1 = Time = 0
value = ifelse(teammode = turns && roundno != 1, ifelse(var(55)!=2,192,0), ifelse(random<400 && var(55)!=2,192,191));+(random%3)

;---------------------------------------------------------------------------
; Introduction
; CNS difficulty: basic
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 191, Velocity]
type = VelSet
trigger1 = (AnimElemTime(10) = 0) || (AnimElemTime(12) = 0) || (AnimElemTime(14) = 0) || (AnimElemTime(16) = 0)
y = Ifelse ((AnimElemTime(12) = 0) || (AnimElemTime(16) = 0), 0, -2)

[State 191, Gravity]
type = Veladd
trigger1 = Vel Y
y = .16

[State 191, Position]
type = PosSet
trigger1 = (AnimElemTime(12) = 0) || (AnimElemTime(16) = 0)
y = 0

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay
[State 200, Swing Snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0
channel = 1
[State 191, Cloth]
type = Explod
trigger1 = RoundState = 0
anim = 191
pos = 0, 0
sprpriority = 2
postype = p1
bindtime = -1
ID = 191
persistent = 0

[State 191, Cloth]
type = RemoveExplod
trigger1 = RoundState = 1
ID = 191

[State 191, Cloth]
type = Explod
trigger1 = RoundState = 1
anim = 192
pos = 0, 0
sprpriority = 2
postype = p1
bindtime = -1
ID = 192
persistent = 0

[State 191, Cloth]
type = Explod
trigger1 = AnimElemTime(6) = 0
Anim = 193
sprpriority = 2
pos = -28, -131
postype = p1
vel = -3, -1
accel = 0, .45
bindtime = 1

[State 191, Cloth]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 193
[State 6901, Landing Dust]
type = Explod
trigger1 = Animelem = 12
anim = 8102
sprpriority = -3
postype = p1
scale = .5,.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
pos=-8,0
[State 6901, Landing Dust]
type = Explod
trigger1 = Animelem = 16
anim = 8102
sprpriority = -3
postype = p1
scale = .5,.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
pos=-8,0
[State 1405, Land Snd]
type = PlaySnd
trigger1 = Animelem = 12 || Animelem = 16
value = 52,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S190,0
channel = 0

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0


; Car Intro
[Statedef 192]
type =A
physics =N
ctrl = 0
anim = 199
velset = 0,0
 
[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 199, Anim]
type = ChangeAnim
trigger1 = RoundState = 0
value = 199
 
[State 199, Cloth]
type = Explod
trigger1 = RoundState = 0
anim = ifelse(teamside=1,8071,8076)
pos = 0, 0
sprpriority = 0
facing = facing
bindtime = 1
ID = 8072
persistent = 0
 
[State 199, Cloth]
type = RemoveExplod
trigger1 = RoundState = 1
ID = 8072

[State 199, Cloth]
type = Explod
triggerall = anim=199
trigger1 = animelemtime(1)=1
anim = ifelse(teamside=1,8070,8075)
pos = 0, 0
sprpriority = 0
scale=const(size.xscale),const(size.yscale)
bindtime = 1
ID = 8070
persistent = 0

[State 199, Cloth]
type = Explod
triggerall = anim=199
trigger1 = animelemtime(1)=1
Anim = ifelse(teamside=1,8072,8077)
id=8070
sprpriority = 1
pos = 0, 0
vel = 0, 0
accel = 0, 0
persistent = 0
scale=const(size.xscale),const(size.yscale)
bindtime = 1

[State 199, Cloth]
type = Explod
triggerall = anim=199
trigger1 = animelemtime(1)=1
Anim = ifelse(teamside=1,8073,8078)
id=8070
sprpriority = 2
pos = 0, 0
vel = 0, 0
persistent = 0
accel = 0, 0
bindtime = 1
scale=const(size.xscale),const(size.yscale)

[State 199, Assert]
type = AssertSpecial
trigger1 = 1
flag = Intro
 
[State 199, Velocity]
type = VelSet
triggerall = anim=199
trigger1 = animelemtime(2)=0
y = -6
x = 3.5

[State 0, PosSet]
type = Posadd
triggerall = anim=199
trigger1 = animelemtime(1)=2
x = -105
y = -40 ;-60
 
[State 0, ScreenBound]
type = ScreenBound
trigger1 =animelemtime(1)>=2
value = 0
movecamera=0,0
 
[State 199, Gravity]
type = Veladd
triggerall = anim=199
trigger1 = animelemtime(2)>0
y = .5
 
[State 199, Position]
type = PosSet
triggerall = animelemtime(2) > 0
trigger1 = pos Y + vel Y >= 0
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = pos Y + vel Y >= 0
x = 0
y = 0
 
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = animelemtime(2) > 0
trigger1 = pos Y + vel Y >= 0
value = 47
persistent = 0
 
 
[State 52, Snd]
type = playsnd
trigger1 = anim = 47 && animelemtime(1) = 0
value = 52, 0
[State 52, Dust]
type = explod
trigger1 = anim = 47 && animelemtime(1) = 0
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 199, Voice]
type = PlaySnd
trigger1 = AnimElemtime(1) = 1
value = S191, 0
channel = 3

[State 199, Voice]
type = PlaySnd
trigger1 = AnimElemtime(1) = 18 && anim=199
value = S191, 1
channel = 3

[State 199, Voice]
type = PlaySnd
trigger1 = AnimElemtime(1) = 30
value = S191, 2
channel = 4
 
[State 199, Voice]
type = PlaySnd
trigger1 = AnimElemtime(1) = 128
value = S191, 0
channel = 3

[State 191, StateChange]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Taunt
; CNS difficulty: easy
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
facep2 = 1
sprpriority = 2

[State 3000, Helper]
type = Helper
triggerall = !numhelper(196)
trigger1 = animelem = 4
helpertype = normal ;player
name = "Rose"
ID = 196
stateno = 196
pos = 13,-118
postype = p1
size.xscale = 1
size.yscale = 1
sprpriority = 3
facing = 1
;ownpal = 1
;supermovetime=300
[State 195, 1]
type = playsnd
trigger1 = animelem = 4
value = 1,1

[State 195, 1]
type = CtrlSet
trigger1 = Time = 40
value = 1

[State 195, 1]
type = CtrlSet
trigger1 = Time = 40
value = 1

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITG_SHAKE
[Statedef 5000]
type    = S
movetype= H
physics = N
velset = 0,0

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

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
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

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5001 ;HITG_SLIDE

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITG_SLIDE
[Statedef 5001]
type    = S
movetype= H
physics = S

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 5001, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITC_SHAKE
[Statedef 5010]
type    = C
movetype= H
physics = N
velset = 0,0

[State 5010, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = 5020 + GetHitVar(animtype)

[State 5010, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5010, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5010, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5010, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
triggerall = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5010, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5011 ;HITC_SLIDE

[State 5010, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5010, FFB Light]
type = ForceFeedback
trigger1 = anim = 5020
persistent = 0
time = 6
waveform = square

[State 5010, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5021
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5010, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5022
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITC_SLIDE
[Statedef 5011]
type    = C
movetype= H
physics = C

[State 5011, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5011, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5025 + GetHitVar(animtype)

[State 5011, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5011, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5011, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5011, 6]
type = ChangeState
trigger1 = HitOver
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; HITA_SHAKE
[Statedef 5020]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 5030]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5040 ;HITA_RECOV

[State 5030, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5050 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 5035 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 5035]
type    = A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5040 ;HITA_RECOV

[State 5035, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5050 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_RECOV (recovering in air, not falling)
[Statedef 5040]
type    = A
movetype= H
physics = N

[State 5040, 1]
type = ChangeState
trigger1 = !Alive
value = 5050

[State 5040, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim != 5040
trigger2 = Time = 0
trigger2 = Anim != 5035
value = 5040

[State 5040, 3]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5040, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMPLAND

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HIT_TRIP (shaking)
[Statedef 5070]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5070, 1]
type = ChangeAnim 
trigger1 = 1
value = 5070

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5071

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)
[Statedef 5071]
type    = A
movetype= H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HITL_SHAKE
[Statedef 5080]
type    = L
movetype= H
physics = N
velset = 0,0

[State 5080, 1] ;Set default anim
type = VarSet
trigger1 = time = 0
sysvar(2) = ifelse (GetHitVar(yvel) = 0, 5080, 5090)

[State 5080, 2]
type = VarAdd
trigger1 = time = 0
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 3] ;If 5090 doesn't exist, default to 5030
type = VarSet
trigger1 = time = 0
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 5080, 3] ;Freeze
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 5080, 4]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5081 ;HITL_SLIDE

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) != 0
value = 5030 ;HITA_UP

;---------------------------------------------------------------------------
; HITL_SLIDE
[Statedef 5081]
type    = L
movetype= H
physics = C

[State 5081, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5081, 2]
type = VelSet
trigger1 = HitOver
x = 0

[State 5081, 3] ;Don't show hit ground frame
type = VarSet
trigger1 = Time = 0
sysvar(0) = 1

[State 5081, 4]
type = ChangeState
trigger1 = HitOver
value = 5110 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 5100]
type    = L
movetype= H
physics = N

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 5101]
type    = L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5110]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 5120]
type    = L
movetype= I
physics = N

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_LIEDEAD
;[Statedef 5150]
;type    = L
;movetype= H
;physics = N
;sprpriority = -3
;
;[State 5150, 1] ;Normal anim
;type = ChangeAnim
;triggerall = Time = 0
;triggerall = SelfAnimExist(5140)
;trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
;trigger2 = !SelfAnimExist(5140 + (anim % 10))
;value = 5140
;
;[State 5150, 3] ;Hit up type anim
;type = ChangeAnim
;trigger1 = Time = 0
;trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
;trigger1 = SelfAnimExist(5140 + (anim % 10))
;value = 5140 + (anim % 10)
;
;[State 5150, 4] ;Match over anim
;type = ChangeAnim
;persistent = 0
;;trigger1 = Time = 0
;trigger1 = MatchOver = 1
;trigger1 = Anim = [5140,5149]
;trigger1 = SelfAnimExist(anim+10)
;value = anim+10
;
;[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
;type = ChangeAnim
;trigger1 = Time = 0
;trigger1 = Anim != [5140,5159]
;trigger1 = Anim != [5110,5119]
;value = 5110
;
;[State 5150, 6] ;Friction
;type = VelMul
;trigger1 = 1
;x = 0.85
;
;[State 5150, 7] ;Friction
;type = VelSet
;trigger1 = Vel x < .05
;persistent = 0
;x = 0
;
;[State 5150, 8]
;type = NotHitBy
;trigger1 = 1
;value = SCA
;time = 1
;

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (still falling)
[Statedef 5200]
type    = A
movetype= H
physics = N

[State 5200, 1] ;Change anim if done with transition
type = ChangeAnim
trigger1 = Anim = 5035
trigger1 = AnimTime = 0
value = 5050

[State 5200, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5200, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5201

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (on the ground)
[Statedef 5201]
type    = A
movetype= H
physics = A
anim = 5200

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5
[State 5201, Snd]
type = playsnd
trigger1 = !time
value = 6, 3
[State 5201, Snd]
type = playsnd
trigger1 = !time
value = 100, 4
channel = 0

[State 5201, Flash]
type = palfx
trigger1 = !time
add = 255, 255, 255
sinadd = -255, -255, -255, 40
time = 10
[State 5201, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8200
ID = 8200
name = "Recover FX"
postype = p1
pos = 0, ceil(-18 * const(size.yscale))
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 5201, 2]
type = VelSet
trigger1 = Time = 0
x = -.15
y = -3.5

[State 5201, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
 

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER
[Statedef 5210]
type    = A
movetype= I
physics = N
anim = 5210
ctrl = 0

[State 5210, 1] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5210, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 5210, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -20

[State 5210, 1] 
type = VelMul
trigger1 = Time = 4
x = .8
y = .8

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
y = -4.5

[State 5210, 1] 
type = VelMul
trigger1 = Time = 4
trigger1 = Vel Y > 0
y = .5

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -3
y = -2

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -2
y = -1
[State 5201, Snd]
type = playsnd
trigger1 = !time
value = 6, 3
[State 5201, Snd]
type = playsnd
trigger1 = !time
value = 100, 1
channel = 0

[State 5201, Flash]
type = palfx
trigger1 = !time
add = 255, 255, 255
sinadd = -255, -255, -255, 40
time = 10
[State 5201, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8200
ID = 8200
name = "Recover FX"
postype = p1
pos = 0, ceil(-18 * const(size.yscale))
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 5210, 2] ;Go up
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdup"
y = -2

[State 5210, 2] ;Go down
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holddown"
y = 1.5

[State 5210, 2] ;Go fwd
type = VelMul
trigger1 = Time = 4
trigger1 = Command = "holdfwd"
x = 1

[State 5210, 2] ;Go back
type = VelAdd
trigger1 = Time = 4
trigger1 = Command =  "holdback"
x = -1

[State 5210, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 5210, 4]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 5210, 5]
type = VelAdd;Gravity
trigger1 = Time >= 4
y = .35

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMP_LAND
ctrl = 1 

;---------------------------------------------------------------------------
; Continue?
[Statedef 5500]
type = S
ctrl = 0
anim = 5300
velset = 0,0

[State 5500, 1] ;Use continue animation if available
type = ChangeAnim
trigger1 = time = 0
trigger1 = SelfAnimExist(5500)
value = 5500

;==========================================================================================
[Statedef -2]

[State -2, Variable Height]
type = PlayerPush
triggerall = StateType = A && NumEnemy
triggerall = P2Dist Y - Vel Y >= (EnemyNear(0), Const(Size.Height) - 41)
trigger1 = StateNo = [40,50]
trigger2 = StateNo = [600,650]
;triggerx = StateNo = [other air states...]
value = 0

[State -2, Variable Height]
type = PlayerPush
triggerall = StateType = A && NumEnemy
triggerall = P2Dist Y - Vel Y >= (EnemyNear(0), Const(Size.Height) - 41)
triggerall = (StateNo = [40,50]) || (StateNo = [600,650]) ;|| (StateNo = [other air states...] ...)
trigger1 = P2StateType = S
trigger1 = P2Dist Y - Vel Y >= (EnemyNear(0), Const(Size.Height) - 41)
trigger2 = P2StateType = C
trigger2 = P2Dist Y - Vel Y >= (floor(EnemyNear(0), Const(Size.Height)*0.825) - 41) ; 0.825 is chosen because it is a nice float (bitwise) and comes from Sagat's standing pushbox height to his crouching pushbox height.
trigger3 = P2StateType = C
trigger3 = P2Dist Y - Vel Y >= (12 - 41) ; This isn't really necessary since the chance of it triggering is low, but I pulled 12 from Sagat's CvS2 liedown hurt box height
value = 0

;[State -2, Damage Proration]
;type = AttackMulSet
;triggerall = Prevstateno=[200,499]  
;triggerall = Var(5)=1
;trigger1 = Stateno=[1000,1999]
;value = 1000.05
;[State -2, Damage Proration]
;type = AttackMulSet
;triggerall = Prevstateno=[200,499]
;triggerall = Var(6)=1
;trigger1 = Stateno=[3000,4999]
;value = 1000.05
;[State -2, Damage Proration]
;type = AttackMulSet
;triggerall = Prevstateno=[1000,1999] 
;triggerall = Var(6)=1
;trigger1 = Stateno=[3000,4999]
;value = 1000.05

[State -2, EX Machine Gun Hit Count Reset]
type = VarSet
trigger1 = !var(17)
var(27) = 0
ignoreHitPause = 1

[State -2, Assert: UnGuardable]
type = AssertSpecial
trigger1 = var(18) > 0
trigger1 = var(18) := (var(18) - 1)
flag = UnGuardable
ignoreHitPause = 1

;=======================================
; Max Mode

[State -2, Max Mode End]
type = VarSet
trigger1 = var(53) < 0
trigger2 = RoundState != 2
trigger3 = !Alive
trigger4 = (StateNo = [3000,4999])
var(53) = 0
ignoreHitPause=1

[State -2, Max Mode Time]
type = VarAdd
trigger1 = var(53) > 0
ignorehitpause = 1
var(53) = -1

[State -2, Max Mode PowerSet]
type = PowerSet
trigger1 = var(53) > 0
ignorehitpause = 1
value = var(24)

[State -2, Max Mode PalFX]
type = PalFX
triggerall = var(53) > 0
trigger1 = !(GameTime % 2)
time = 1
add = 60,60,60
ignorehitpause = 1

[State -2, Max Mode Atk Up]
type = AttackMulSet
trigger1 = var(53) > 0
value = 1.10

[State -2, Max Mode Atk Reset]
type = AttackMulSet
trigger1 = var(53) <= 0
value = 1

[State -2, Max Mode Def Up (New)] ;Special thanks to Jesuszilla
type = LifeAdd
triggerall = Alive && MoveType = H
triggerall = var(53) ;Max Mode 
trigger1 = (FVar(14)-life)>0
value = ifElse((FVar(14)-life)<life,floor((FVar(14)-life)*0.125),0)

[State -2, Life Holder];special thanks to Jesuszilla
type = VarSet
trigger1 = 1
fvar(14) = Life
ignorehitpause = 1

;==============================================

[State -2, AssertSpecial: No MUGEN Juggle System]
type = AssertSpecial
trigger1 = 1 
flag = NoJuggleCheck
ignorehitpause = 1 
;===========================================================================
;----------------------HITSPARKS---------------------
[State -2, Hit Detection]
type = varset
trigger1 = Movecontact = 1 && var(30) < 0
var(30) = Hitpausetime
ignorehitpause = 1
[State -2, Spark Level]
type=helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = Movehit = 1 && Numenemy
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014
trigger2 = Moveguarded = 1 && Numenemy
trigger2 = var(34) = 8000 || var(34) = 8001
helpertype=normal
stateno=ifelse(moveguarded, var(34), var(33))
ID=8000
name="Spark"
postype=p1
;pos= ifelse(p2dist x<0, 0, ifelse(p2dist x<var(12), ceil((p2dist x)+2), var(12))), var(13)
pos = ceil(ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(12), ceil((P2Dist x+2)),var(12))) * const(size.xScale)), ceil(var(13) * const(size.yScale))
facing= -1
ownpal=1
pausemovetime=65535
supermovetime=65535
ignorehitpause=1

[State -2, Hit Detection]
type = VarSet
trigger1 = 1
var(30) = -1

[State -2, Hit Detection]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
first = 33
last = 34
value = -1
ignoreHitPause = 1

[State -2, Hit Count]
type = VarAdd
trigger1 = !IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(17) = 1

[State -2, Hit Count Reset]
type = VarSet
triggerall = NumEnemy && var(17)
trigger1 = (EnemyNear, MoveType != H) && (EnemyNear, StateNo != 5300)
;trigger2 = EnemyNear,HitOver=1
var(17) = 0
ignoreHitPause = 1

[State -2, Updated Juggle Count];special thanks to 20S
type = VarAdd
trigger1 = !IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State -2, Juggle Reset Single];updated special thanks to 20S
type = VarSet
triggerAll = NumEnemy = 1 && var(15)
trigger1 = (Enemy, StateType != A) && (Enemy, StateNo != [5100,5109]) && (Enemy, Time >= 0)
trigger2 = (Enemy, MoveType != H) || (Enemy, StateNo = [120,155]) || (Enemy, Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Reset Simul];updated special thanks to 20S
type = VarSet
triggerAll = NumEnemy >= 2 && var(15)
trigger1 = (EnemyNear(0), StateType != A) && (EnemyNear(0), Time >= 0)
trigger2 = (EnemyNear(0), MoveType != H) || (EnemyNear(0), StateNo = [120,155]) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), StateType != A) && (EnemyNear(0), Time >= 0)
trigger4 = (EnemyNear(1), MoveType != H) || (EnemyNear(0), StateNo = [120,155]) || (EnemyNear(0), Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Free Juggling]
type = VarSet
trigger1 = RoundState != 2
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Flag]
type = VarSet
trigger1 = NumEnemy && !var(16)
trigger1 = (EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl)
var(16) = 1
ignorehitpause = 1

[State -2, Juggle Flag Reset Single]
type = VarSet
triggerAll = NumEnemy = 1 && var(16)
trigger1 = (Enemy, MoveType != H) && (Enemy, StateNo != 5040)
trigger2 = !(Enemy, HitShakeOver) || (Enemy, StateType = L) || (Enemy, Ctrl)
var(16) = 0
ignoreHitPause = 1

[State -2, Juggle Flag Reset Simul]
type = VarSet
triggerAll = NumEnemy >= 2 && var(16)
trigger1 = (EnemyNear(0), MoveType != H) && (EnemyNear(0), StateNo != 5040)
trigger2 = !(EnemyNear(0), HitShakeOver) || (EnemyNear(0), StateType = L) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), MoveType != H) && (EnemyNear(1), StateNo != 5040)
trigger4 = !(EnemyNear(1), HitShakeOver) || (EnemyNear(1), StateType = L) || (EnemyNear(1), Ctrl)
var(16) = 0
ignoreHitPause = 1

[State -2, Assert: UnGuardable]
type = AssertSpecial
trigger1 = var(18) > 0
trigger1 = var(18) := (var(18) - 1)
flag = UnGuardable
ignoreHitPause = 1

;============================================================================
;DW's Dampener adapted to Mr.A's Vars

;var(17) - Hit/Combo Count
;var(22) - Super Cancel status
;var(23) - Hyper Cancel status
;var(29) - Counter Hit Flag
;fvar(10) - Damage multiplier for Combo Count and Super/Hyper Cancel status
;fvar(11) - The dampener itself applied via AttackMulSet(Infinite Style) or in HitDefs(POTS style)

[State -2, Dampener - Combo Count]
type = VarSet
trigger1 = 1
fvar(10) = ifElse(var(17) < 6, 24.0, ifElse(var(17) >= 23, 1.0, 29 - var(17))) / 24.0
ignoreHitPause = 1

[State -2, Dampener - Supers]
type = VarSet
trigger1 = (StateNo = [3000,4999]) && stateno != 3015 && stateno != 3010
fvar(10) = ifElse(var(23), 0.6, ifElse(var(22), 0.8, 1.0))
ignoreHitPause = 1

[State -2, Dampener - Rolling Thunder]
type = VarSet
trigger1 = stateno = 3015 || stateno = 3010
fvar(10) = ifElse(var(23), 0.8, ifElse(var(22), 1.0, 1.0))
ignoreHitPause = 1


[state -2, Simple Dampener - Target Combo]
type = varset
triggerall = var(17) && (prevstateno =[200,499])
trigger1 = (stateno=[210,211]) || (stateno=[240,241]) || stateno=410 || stateno=440
trigger2 = (stateno=[220,221]) || (stateno=[250,251]) || stateno=420 || stateno=450
fvar(10) = 0.6
ignorehitpause = 1

[State -2, Dampener Limit]
type = VarSet
trigger1 = fvar(10) < 0
fvar(10) = 0
ignoreHitPause = 1


[State -2, Root Dampener]
type = VarSet
trigger1 = 1
fvar(11) = fvar(10) * ifElse(var(29), 1.2, 1.0)
ignoreHitPause = 1

;========Debug=======================================================
[State -2, Debug]
type = DisplayToClipBoard
trigger1 = 1
text = "Hit: %d |Dmg: %d | Dmp: %d "
params	= var(17),fvar(11), fvar(10)
ignorehitpause = 1

;=======Counter================================

[State -2, counterFX]
type=helper
trigger1= Movehit && Numtarget && Hitdefattr=SCA,AA
trigger1= !Numhelper(7400) && var(29)
trigger1= (Target,Movetype=H) && !(Target,Time)
helpertype=normal
stateno=8290
ID=8290
name="Counter"
posType = P1
pos = ceil(ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(12), ceil(P2Dist x), var(12))) * const(size.xScale)), ceil(var(13) * const(size.yScale))
ignorehitpause=1

;[State -2, countervar]
;type=varset
;trigger1= 1
;var(29)=ifelse((p2movetype=A),1,0)

[State -2, Counter Flag]
type=VarSet
trigger1=NumEnemy
var(29)=(EnemyNear, MoveType=A)
ignoreHitPause=1

;
;[state -2, No Clones]
;type = remappal
;triggerall=numenemy && (fvar(0)=[1,60])
;trigger1=fvar(0)&&!numhelper(256)&&matchno=1&&roundno=1
;trigger1=enemy,authorname="Dudley"&&enemy,name="DickBuckus&Mr.Ansatsuken"&&enemy,fvar(0)=fvar(0)
;source = 1, 1
;dest = 1, Ifelse(teamside!=1 && enemynear,Numhelper(256)=0,enemy,fvar(0)+teamside,fvar(0))
;ignorehitpause = 1
;[state -2, Palette]
;type = varset
;trigger1 = numhelper(256)
;trigger1=helper(256),fvar(0)=[1,60]
;fvar(0)= helper(256),fvar(0)
;ignorehitpause = 1
;[state -2, Palette Selection]
;type = remappal
;trigger1 = numhelper(256)
;trigger1=helper(256),fvar(0)=[1,60]
;source = 1, 1
;dest = 1, fvar(0)
;ignorehitpause = 1
;[state -2, Continue Palette]
;type = remappal
;trigger1= var(27)&&!AILevel&&matchno>1
;source = 1, 1
;dest = 1, fvar(0)
;ignorehitpause = 1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]
 
[State -3, Parry Detection]
type = Helper
triggerAll = RoundState = 2 && !NumHelper(765) ;&& !var(20)
triggerAll = (MoveType = I && ctrl) || (StateNo = [760,762]) || StateNo = 5120
triggerAll = (command != "rlsfwd" && command != "rlsback" && command != "rlsup" && command != "rlsdown")
trigger1 = (StateType = S || StateType = C || StateNo = 5120) && (command = "fwd" || command = "down")
trigger2 = StateType = A && (var(3) != 1 && var(3) != 2) && command = "fwd"
helperType = Normal
stateNo = 765
ID = 765
name = "Parry Detection"
posType = P1
pauseMoveTime = 65535
superMoveTime = 65535

[State -3, Parry Attacks]
type = ChangeState
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = Helper(765), StateNo = 766
value = ifElse((Helper(765), Anim = 767), 762, ifElse((Helper(765), Anim = 766), 761, 760))
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 765)
attr = SA, AP
stateNo = 760
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 766)
attr = C, AP
stateNo = 761
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 767)
attr = SCA, AP
stateNo = 762
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Assert: NoWalk after Parry]
type = AssertSpecial
trigger1 = var(26) > 0
trigger1 = var(26) := (var(26)-1)
flag = NoWalk
ignoreHitPause = 1
 
;[State -3, AfterImage Persist]
;type = AfterImageTime
;trigger1 = (StateNo = [600,699]) || StateNo = 50 
;trigger1 = (var(3) = 2 || var(3) = 3) && vel y < -1
;trigger2 = StateNo = [700,721]
;trigger3 = StateNo = [3000,4999]
;time = 3
 
[State -3, Corner Push]
type = VarSet
triggerAll = fvar(5)
trigger1 = abs(fvar(5)) <= (1 / 0.85)
trigger2 = NumTarget
trigger2 = Target, GetHitVar(HitTime) <= 0 || (Target, GetHitVar(HitShakeTime) > 0 && Target, Time <= 0)
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
trigger1 = NumTarget
trigger1 = Target, GetHitVar(HitShakeTime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, Corner Push]
type = VarSet
triggerall = movetype != H
trigger1 = MoveContact = 1 && NumTarget
fvar(5) = Target, GetHitVar(xVel)
ignoreHitPause = 1

[State -3, Corner Push]
type = PosAdd
triggerAll = fvar(5)
triggerAll = (StateType = S || StateType = C) && NumTarget
triggerAll = !HitPauseTime && Target, GetHitVar(HitShakeTime) <= 1
triggerAll = (Target, StateType = S || Target, StateType = C) && !(Target, GetHitVar(yVel)) && !(Target, HitFall)
trigger1 = Target, FrontEdgeBodyDist <= 0 && (Target, GetHitVar(xVel) * Target, Facing) > 0
trigger2 = Target, BackEdgeBodyDist <= 0 && (Target, GetHitVar(xVel) * Target, Facing) < 0
x = ifElse(Target, FrontEdgeBodyDist <= 0, -1, 1) * (Target, Facing) * (fvar(5)*0.85)

;=========================================
;Target Combos

[State -1, Standing Medium Punch Target Combo]
type=ChangeState
value=210
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown" && (command="y"||command="tgt.y") && movecontact
trigger1=stateno=240&&animelemtime(8)<0
trigger1=prevstateno=230&&prevstateno!=430
trigger2=stateno=200&&animelemtime(4)<0
trigger3=stateno=201&&animelemtime(4)<0

[State -1, Standing High Punch Target Combo]
type=ChangeState
value=220
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="tgt.z" && movecontact
trigger1=stateno=240&&prevstateno=241&&animelemtime(8)<0
trigger2=stateno=242&&prevstateno=210&&animelemtime(8)<0

[State -1, Standing Medium Kick Target Combo]
type=ChangeState
value=240
triggerall=!AILevel&&Roundstate=2&&statetype != A && (command="b"||command="tgt.b") && movecontact
trigger1=stateno=230&&animelemtime(6)<0
trigger2=stateno=210&&animelemtime(6)<0
trigger2=prevstateno=200
trigger2=prevstateno!=201
trigger3=stateno=430&&animelemtime(4)<0
trigger4=stateno=251&&animelemtime(9)<0
[State -1, Standing Medium Kick Target Combo (Dupe for HP)]
type=ChangeState
value=242
triggerall=!AILevel&&Roundstate=2&&statetype != A && (command="b"||command="tgt.b") && movecontact
trigger1=stateno=210&&prevstateno!=201&&animelemtime(6)<0

[State -1, Standing High Kick Target Combo]
type=ChangeState
value=250
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& (command="c"||command="tgt.c") && movecontact
trigger1=stateno=240&&prevstateno<200&&animelemtime(9)<0

[State -1, Crouching Medium Punch Target Combo]
type=ChangeState
value=410
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command= "holddown"&& command="tgt.y" && movecontact
trigger1=stateno=430&&animelemtime(4)<0

[State -1, Crouching Medium Punch Target Combo]
type=ChangeState
value=420
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command= "holddown"&& command="tgt.z" && movecontact
trigger1=stateno=410&&animelemtime(5)<0
trigger1=prevstateno=430

[State -1, Standing High Punch Target Combo]
type=ChangeState
value=425
triggerall=!AILevel&&Roundstate=2&&statetype != A && (command="z"||command="tgt.z") && movecontact
trigger1=stateno=210&&animelemtime(5)<0
trigger1=prevstateno=240
trigger1=prevstateno!=200
trigger1=prevstateno!=430
trigger2=stateno=250&&prevstateno=240&&animelemtime(5)<0


;=========================================

 
;[State -3, Chain Combo Reset]
;type=VarSet
;trigger1=1
;var(4)=0
;ignoreHitPause=1
;
;[State -3, Chain Combo Check]
;type = VarSet
;trigger1 = var(20) && (StateNo = [200,699]) && MoveContact
;trigger2 = var(20) && (StateNo = [1000,2999]) &&  MoveContact  
;var(4) = 1
;ignoreHitPause = 1
;===========================================================================
;Special/Super Cancel ;marker
;=============================
[State -3, Special Cancel Reset]
type=VarSet
trigger1=1
var(5)=0
ignoreHitPause=1
[State -3, Special Cancel Check]
type=VarSet
trigger1 = (StateNo = [200,699]) && Time <= 2
trigger2 = StateNo = 200
trigger3 = StateNo = 201
trigger4 = StateNo = 210 && (MoveContact = [1,4])
trigger4= prevstateno!=200;;; target combo check
trigger4= prevstateno!=240;;; target combo check
trigger5 = StateNo = 211  && (MoveContact = [1,4])
trigger6 = StateNo = 230
trigger7 = StateNo = 240 && (MoveContact = [1,4])
trigger7 = prevstateno!= 230;;; target combo check
trigger8 = StateNo = 241 &&(MoveContact = [1,4])
trigger9 = StateNo = 250  &&(MoveContact = [1,4])
trigger9 = (prevstateno!=[200,499]);;; target combo check
trigger10 = StateNo = 251  &&(MoveContact = [1,4])
trigger11 = StateNo = 400  
trigger12 = StateNo = 410  &&(MoveContact = [1,4])
trigger12 = (prevstateno!=[200,499]);;; target combo check
trigger13 = StateNo = 420  &&(MoveContact = [1,4]) 
trigger13 = (prevstateno!=[200,499]);;; target combo check
trigger14 = StateNo = 430  
;trigger15 = StateNo = 450  &&(MoveContact = [1,4])
var(5)=1
ignoreHitPause=1

[State -3, Super Cancel Reset]
type=VarSet
trigger1=1
var(6)=0
ignoreHitPause=1
[State -3, Super Cancel Check]
type=VarSet
trigger1 = var(20) && (StateNo = [200,699])
trigger2 = var(20) && (StateNo = [1000,2999]) && MoveContact
trigger3 = (StateNo = [200,699]) && Time <= 2
trigger4 = StateNo = 200
trigger5 = StateNo = 201
trigger6 = StateNo = 210 && (MoveContact = [1,4])
trigger6= prevstateno!=200;;; target combo check
trigger6= prevstateno!=240;;; target combo check
trigger7 = (StateNo = 211 || stateno = 221)  && (MoveContact = [1,4])
trigger8 = StateNo = 230
trigger9 = StateNo = 240 && (MoveContact = [1,4])
trigger9 = prevstateno!= 230;;; target combo check
trigger10 = StateNo = 241 &&(MoveContact = [1,4])
trigger11 = StateNo = 250  &&(MoveContact = [1,4])
trigger11 = (prevstateno!=[200,499]);;; target combo check
trigger12 = StateNo = 251  &&(MoveContact = [1,4])
trigger13 = StateNo = 400  
trigger14 = StateNo = 410  &&(MoveContact = [1,4])
trigger14 = (prevstateno!=[200,499]);;; target combo check
trigger15 = (StateNo = [420,425]) &&(MoveContact = [1,4])
trigger15 = (prevstateno!=[200,499]);;; target combo check
trigger16 = StateNo = 430  
trigger17 = StateNo = 450  &&(MoveContact = [1,4]) * 0;;;disabled 
trigger18= Stateno=1000 && (AnimElemNo(0) = [07,14]) && MoveContact 
trigger19= Stateno=1010 && (AnimElemNo(0) = [10,17]) && MoveContact 
trigger20= Stateno=1020 && (AnimElemNo(0) = [11,18]) && MoveContact 
trigger21= Stateno=1030 && (AnimElemNo(0) = [12,21]) && MoveContact 
trigger22= (Stateno=[1151,1152]) && MoveContact 
trigger23= (Stateno=[1200,1230]) && (AnimElemNo(0) = [12,13])&& Movecontact 
trigger24= Stateno=1230 && ((AnimElemNo(0) = [21,23]) || (AnimElemNo(0) = [31,32])) && Movecontact 
trigger25= (Stateno=[1160,1170]) && Movecontact 
trigger26= (Stateno=[1181,1182]) && Movecontact 
;trigger27= (Stateno=1050||Stateno=1060||Stateno=1070||Stateno=1080) && (AnimElemNo(0) = [4,6]) && Stateno!=1052 && MoveContact 
trigger27= (Stateno=1050||Stateno=1060||Stateno=1070||Stateno=1080) && AnimElemTime(7) <= 0 && Stateno!=1052 && MoveContact 
;trigger15= stateno=1052 && anim=1053 && animelemtime(5)>=0
trigger28=StateNo=220 && MoveContact && prevstateno!=242&& prevstateno!=240
var(6)=1
ignoreHitPause=1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = 1
var(11) = 0
ignoreHitPause = 1

[State -3, MAX Cancel Check]
type=VarSet
trigger1 = stateno = 3000 && AnimElemTime(18) < 0 && MoveContact
trigger2 = stateno = 3050 && stateno!=1052 && (AnimElemNo(0)=[6,34]) && movecontact
trigger3 = (Anim = [3010,3015]) && movecontact
var(11)=1
ignoreHitPause=1
;
[State -3, Super Cancel Flag Reset]
type = VarSet
trigger1 = var(22)
trigger1 = (StateNo != [3000,4999]) || MoveType = H
var(22) = 0
ignoreHitPause = 1

[State -3, Hyper Cancel Flag Reset]
type = VarSet
trigger1 = var(23)
trigger1 = (StateNo != [3000,4999]) || MoveType = H
var(23) = 0
ignoreHitPause = 1
;===========================================================================

;-------------------------------------------------------------------------------
[State -3, Movement AfterImage]
type = AfterImage
triggerAll = Time = 1 
trigger1 = StateNo = 50 && (var(3) = 2 || var(3) = 3)
trigger2 = (StateNo = [710,721])
time = 2
timeGap = 1
frameGap = 4
length = 9
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.9,0.9,0.9
trans = Add1
 
[State -3, Level 1 Super AfterImage]
type = AfterImage
trigger1 = StateNo = 3000 && Time = 43
trigger2 = StateNo = 3010 && Time = 43
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State -3, Level 2 Super AfterImage]
type = AfterImage
trigger1 = StateNo = 3015 && Time = 3
trigger2 = StateNo = 3055 && Time = 43
time = 2
timeGap = 1
framegap = 10
length = 21
palBright = 0,0,0
palContrast = 32,32,160
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State -3, Level 3 Super AfterImage]
type = AfterImage
trigger1 = StateNo = 4100 && Time = 43
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 160,32,32
palPostBright = 0,0,0
palAdd = 0,0,0
palMul= 0.75,0.75,0.75
trans = Add1
 
[State -3, ExFX]
type = varadd
trigger1 = var(25) > 0
var(25) = -1
[State -3, ExFX]
type = varset
trigger1 = (stateno != [1000, 2999]) || movetype = H
var(25) = 0
[State -3, Ex Flash]
type = palfx
trigger1 = !(gametime % 2) && var(25)
time = 1
color = 0
mul = 256, 224, 0
add = 128, 128, 128
ignorehitpause = 1

[State -3, AfterImage Persist]
type = AfterImageTime
trigger1 = StateNo = 50 || (StateNo = [600,699])
trigger1 = (var(3) = 2 || var(3) = 3) && vel y < -1
trigger2 = StateNo = [710,721]
trigger3 = StateNo = [3000,4999]
time = 2
[State -3, AfterImage Off]
type = AfterImageTime
triggerAll = Time <= 1
trigger1 = StateNo = 3000 || StateNo = 3010 || StateNo = 3015 || StateNo = 3050 || StateNo = 3055 || StateNo = 4100  
time = 0
 

[State -3, Underground Juggle Prevention]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget && NumEnemy
trigger1 = (Target, Time = 0) && (Target, ID = EnemyNear, ID)
trigger1 = !(Target, HitShakeOver) && (Target, pos y > 0)
pos = ceil(P2Dist x), ceil(-pos y)
ignoreHitPause = 1

[State -3, Prevent Crossup]
type = Width
trigger1 = MoveType != H
edge = 8, 0
ignoreHitPause = 1

[State -3, GetHit Snd]
type=playsnd
triggerall= alive && time=1
triggerall= stateno=5000 || stateno=5010
trigger1= gethitvar(animtype)>=2 && random<500
trigger2= gethitvar(animtype)=1 && random<375
trigger3= gethitvar(animtype)=0 && random<250
value=s10,0
channel=0
ignorehitpause=1

[State -3, GetHit Snd]
type=playsnd
triggerall= alive && time=1
trigger1= (stateno=5000 || stateno=5010) && numenemy
trigger1= gethitvar(fall) || (enemynear,hitdefattr=SCA,SA,HA)
trigger2= (stateno=5020 || stateno=5070 || stateno=5080)
trigger3= (stateno=5050 || stateno=5100) && (prevstateno!=[5000,5199])
value=s10,1
channel=0
ignorehitpause=1

[State -3, Super Finish]
type = Helper
triggerAll = WinKO
triggerAll = RoundState = 3 && !NumHelper(8600)
;trigger1 = var(23) := StateNo
trigger1 = MoveHit = 1 && (StateNo = [3000, 4999])
;trigger2 = StateNo =  3000 
;trigger2 = var(23) := 3000
;trigger3 = var(23) = StateNo
;trigger4 = StateNo = [3010, 3019]
;trigger4 = var(23) := 3010
;trigger5 = var(23) = StateNo
;trigger6 = var(23) := 3050
;trigger6 = StateNo = [3050, 3059]
;trigger7 = var(23) := 4100
;trigger7 = StateNo = 4100
helperType = Normal
stateNo = 8600
ID = 8600
name = "Super Finish"
posType = left
pos = 160,-120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1
