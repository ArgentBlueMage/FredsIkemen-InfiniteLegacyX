;================================ STAND ========================================
[Statedef 0]
type = S
physics = N
movetype = I
sprpriority = 0
anim = 0
velset = 0, 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1000, Strength];super cancel reactivate
type = varset
trigger1 = time = 0
var(12) = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = prevstateno = 191
trigger1 = time = 0
channel = 0
;ignorehitpause =
persistent = 0

[State 0, Remove Explods]
type = RemoveExplod
trigger1 = IsHelper

[State 0, Destroy Helpers]
type = DestroySelf
trigger1 = IsHelper

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 0

[State 2]
type = VelSet
trigger1 = time = 0
y = 0

[State 3]
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
trigger2 = time = 4
x = 0

[State 0, Dead]
type = changestate
trigger1 = !alive
value = 5050

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050
;============================ STAND TO CROUCH  =================================
[Statedef 10]
type    = C
physics = N
movetype = I
sprpriority = 0
anim = 10
velset = 0, 0

[State 10, 1]
type = VelMul
trigger1 = Time = 0
x = .75

[State 10, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
;============================ CROUCHING ========================================
[Statedef 11]
type    = C
physics = N
movetype = I
anim = 11
sprpriority = 0
velset = 0, 0

[State 52, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 11, 1] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim = 6 && AnimTime = 0
value = 11
;============================ CROUCH TO STAND ==================================
[Statedef 12]
type    = S
physics = N
movetype = I
sprpriority = 0
anim = 12

[State 12, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;============================ WALK =============================================
[Statedef 20]
type    = S
physics = N
movetype = I
sprpriority = 0
ctrl = 1
velset = 0, 0

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, 3]
type = ChangeAnim
triggerall = command = "holdfwd"
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = command = "holdback"
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

[State 0, ChangeState]
type = ChangeState
trigger1 = command != "holdback" && command !="holdfwd"
value = 0
ctrl = 1
;============================ JUMP START =======================================
[Statedef 40]
type    = S
physics = N
movetype = I
sprpriority = 1
anim = ifelse(prevstateno = 100,45,40)
ctrl = 0
velset = 0, 0
facep2 = 1

[State 0, Explod]
type = Explod
trigger1 = !animtime
anim = 7102
ID = 7102
pos = 0,7
postype = p1
bindtime = 1
removetime = -2
scale = .35,.5
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 40, Var]
type = varset
trigger1 = !time
var(13) = ifelse(prevstateno = 100, 3, 1)

[State 40, Var]
type = varset
trigger1 = !AIlevel
trigger1 = var(13) != 3 && command != "holdup"
var(13) = 2

[State 40, Var]
type = varset
trigger1 = AIlevel
trigger1 = var(13) != 3
var(13) = ifelse(random<700,1,2)

[State 40, Direction]
type = varset
trigger1 = !AIlevel
sysvar(1) = ifelse(!time, 0, ifelse(command = "holdfwd", 1, ifelse(command = "holdback", -1, sysvar(1))))

[State 40, Direction]
type = varset
trigger1 = AIlevel
sysvar(1) = ifelse((enemynear, movetype != A || backedgebodydist <= 10), 1, ifelse((enemynear, movetype = A), -1, 0))

[State 40, Vel]
type = velset
trigger1 = !animtime && var(13) != 3
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = ifelse(var(13) = 2, 0.7, 1) * const(velocity.jump.y)

[State 40, Vel]
type = velset
trigger1 = !animtime && var(13) = 3
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, 1.5 * const(velocity.jump.fwd.x), 1.5 * const(velocity.jump.back.x)))
y = ifelse(var(13) = 2, 0.7, 1.1) * const(velocity.jump.y)

[State 40, Vel]
type = velset
trigger1 = !animtime && var(13) = 3 && sysvar(1)
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, 1.5 * const(velocity.jump.fwd.x), 1.5 * const(velocity.jump.back.x)))
y = ifelse(var(13) = 2, 0.7, 1.1) * const(velocity.jump.y)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimTime = 0
value = s40,0
channel = 1

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
; AirJump Start
[Statedef 45]
type    = A
physics = N
movetype = I
sprpriority = 1
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 time = 1
value = S40,0
channel = 1
persistent = 0

[State 45, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(44)
value = 44

[State 45, 2]
type = ChangeAnim
trigger1 = !SelfAnimExist(44)
value = 41

[State 45, 3]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 45, 4]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 45, 5]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 45, 6]
type = VelSet
trigger1 = Time = 2
x = ifelse(sysvar(1)=0, const(velocity.airjump.neu.x), ifelse(sysvar(1)=1, const(velocity.airjump.fwd.x), const(velocity.airjump.back.x)))
y = const(velocity.airjump.y)*.7

[State 45, 7]
type = ChangeState
trigger1 = Time = 2
value = 50
ctrl = 1
;---------------------------------------------------------------------------
; Jump Up
[Statedef 50]
type    = A
physics = A
movetype = I
sprpriority = 1

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

;[State 50, 3]
;type = ChangeAnim
;trigger1 = Vel y > -3
;trigger1 = SelfAnimExist(anim + 3)
;persistent = 0
;value = Anim + 3

[State 0, VelAdd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = vel x < (const(velocity.jump.fwd.x))
x = .115

[State 0, VelAdd]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = vel x > (const(velocity.jump.back.x))
x = -.115
;---------------------------------------------------------------------------
; Jump Down (empty state for compatibility)
[Statedef 51]
type    = A
physics = A
velset = 0,0

[State 51, 1]
type = Null
trigger1 = 1

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
movetype = I
sprpriority = 1
ctrl = 0
anim=47
velset = 0,0
;facep2 = 1

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

[State 52, stop]
type=velset
trigger1 = time <=3
x=0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, ctrl]
type=ctrlset
trigger1 = time >= 4
value = 1

[State 52, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;=============================== RUN ===========================================
[Statedef 100]
type = S
movetype = I
physics = N
velset = 0, 0
anim = 100
ctrl = 0
sprpriority = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7099
ID = 7099
pos = 10,-2
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 2
ownpal = 1
removeongethit = 1

[State 100, Assert]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = noautoturn

[State 100, Vel]
type = velset
trigger1 = anim = 100
x = const(velocity.run.fwd.x)

[State 100, steps]
type = playsnd
trigger1 = time = 1
trigger2 = time = 55
trigger3 = time = 109
trigger4 = time = 163
value = s100,4;1
channel = 15
volumescale = 80

[State 0, CtrlSet]
type = CtrlSet
trigger1 = (animelemtime(3) > 3) && anim = 100
value = 1

[State 100, End]
type = changestate
triggerall = (animelemtime(3) > 3) && anim = 100
trigger1 = !AIlevel && command != "holdfwd"
trigger2 = AIlevel && p2bodydist x <= 70
value = 101
persistent = 0
;============================ Stop Running ===================================
[StateDef 101]
type = S
physics = S
moveType = I
anim = 101
ctrl = 1
sprPriority = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(4) = 0
x = 0

[State 100, steps]
type = playsnd
trigger1 = time = 1
value = s100,2
channel = 1

[State 101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=============================== DASH FWD ======================================
[Statedef 102]
type = S
movetype = I
physics = N
velset = 0, 0
anim = 102
ctrl = 0
sprpriority = 1

[State 102, Vel]
type = velset
trigger1 = animelem = 2
x = const(velocity.run.fwd.x)*1.55
y = const(velocity.run.back.y)

;[State 110, VelMul]
;type = VelMul
;trigger1 = AnimElemTime(2) > 0
;x = 0.98

[State 102, Snd]
type = playsnd
trigger1 = time = 1
value = s100,3
channel = 1

;[State 102, End]
;type = changestate
;triggerall = (animelemtime(2) > 3) && (animelemtime(2) < 7)
;trigger1 = command = "holdfwd"
;value = 100

[State 102, End]
type = changestate
trigger1 = (animelemtime(2) > 7)
value = 103
ctrl = 0
;======================== DASH FORWARD STOP ====================================
[StateDef 103]
type = S
physics = S
ctrl = 0
anim = 103
velSet = 0,0

[State 111, Dash End Sound]
type = PlaySnd
trigger1 = time = 1
value = s52,0
channel = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time > 3
value = 1

[State 111, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=============================== BACK DASH =====================================
[Statedef 105]
type = S
movetype = I
physics = N
velset = 0, 0
anim = 105
ctrl = 0
sprpriority = 1

[State 111, Dash End Sound]
type = PlaySnd
trigger1 = animelemtime(3) = 0
value = s100,3
channel = 1

[State 105, Vel]
type = velset
trigger1 = animelemtime(3) = 0
x = const(velocity.run.back.x)*.75
y = -2

[State 0, VelAdd]
type = VelAdd
trigger1 = animelemtime(3) >= 2
y = .55

[State 105, End]
type = changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 106
;============================= BACK DASH LAND ==================================
[Statedef 106]
type    = S
physics = S
movetype = I
sprpriority = 1
ctrl = 0
anim = 106
velset = 0,0
;facep2 = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

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
sprpriority = -2
removeongethit = 1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1=time=0
value = S52,0
channel = 1

[State 52, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;=============================== BACK DASH =====================================
[Statedef 105]
type = S
movetype = I
physics = N
velset = 0, 0
anim = 105
ctrl = 0
sprpriority = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7099
ID = 7099
pos = -30,0
postype = p1
facing = -1
bindtime = 1
removetime = -2
scale = .25,.5
sprpriority = 2
ownpal = 1
removeongethit = 1

[State 111, Dash End Sound]
type = PlaySnd
trigger1 = animelemtime(3) = 0
value = s100,3
channel = 1

[State 105, Vel]
type = velset
trigger1 = animelemtime(2) = 0
x = const(velocity.run.back.x)

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(2) = 2
physics = S

[State 105, Vel]
type = velset
trigger1 = animelemtime(4) = 0
x = 0

[State 111, Landing Dust Explod]
type = Explod
trigger1 = animelem = 4
anim = 7152
sprPriority = -3
posType = P1
scale = 0.125,0.125
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 170, 1]
type = nothitby
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(4) <= 5
value = SCA
time = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = animelemtime(5) = 0
value = 1

[State 105, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;LOSE BY TIME OUT ==============================================================
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, Snd]
type = playsnd
trigger1 = animelem = 2
value = s5595,0
channel = 5

[State 170, Snd]
type = playsnd
trigger1 = animelem = 2
value = s100,0
channel = 5

[State 170, Dust]
type = explod
trigger1 = animelem = 2
anim = 7152
ID = 7152
sprpriority = -4
postype = p1
pos = -3,0
scale = 0.175, 0.175
ownpal = 1

[State 170, 1]
type = nothitby
trigger1 = 1
value = SCA
time = 1
;================================= WIN STATE DECIDER ===========================
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = time = 0;prevstateno!=182
value = 181

;[State 180, winSGS]
;type=changestate
;trigger1=prevstateno=3601
;value=182

;[State 180, winSGS]
;type = changestate
;trigger1 = prevstateno = 182
;value = 182

;[State 180, 1]
;type = ChangeState
;trigger1 =prevstateno=182
;value = 183
;=============================== WINPOSE 1 =====================================
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 1
value = s180,0
channel = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(10) = 0
anim = 182
ID = 182
pos = -25,-130
postype = p1
vel = 0,0
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 0
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(11) = 0
anim = 183
ID = 183
pos = 10,-150
postype = p1
vel = 6,-4
bindtime = 1
removetime = 50
scale = .5,.5
sprpriority = 0
ownpal = 1
removeongethit = 1

[State 351, win]
type = assertspecial
trigger1 = time < 200
flag = roundnotover

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
;PRE - INTRODUCTION ============================================================
[Statedef 190]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time = 0
value = 1000

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 1
value = s190,1
channel = 0

[State 190, 1] ;Freeze animation until PreIntro is over
type = ChangeState
trigger1 = RoundState = 0
value = 191

[State 190, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, 4] ;Change to stand state
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;INTRODUCTION 1 ================================================================
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 190, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;TAUNT 1 =======================================================================
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 1
value = s195,0
channel = 0

[State 195, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
