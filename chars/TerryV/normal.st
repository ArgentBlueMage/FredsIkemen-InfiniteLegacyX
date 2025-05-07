;=============================== STAND LIGHT PUNCH =============================
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 200
sprpriority = 1
facep2 = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,0+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,0
channel = 1

[State 200, Hit]
type = hitdef
trigger1 = !time
attr = S, NA
damage = 30,0
animtype = light
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 3, Hit
sparkno = -1+0*(var(33):=8022)
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10+0*(var(35):=140),var(36):=-168
hitsound = s1,0
guardsound = s2,0
ground.type = High
air.type = High
pausetime = 10,10
guard.pausetime = 10,10
ground.hittime = ceil((8+4)*fvar(13))
guard.hittime = ceil((8+2)*fvar(13))
ground.slidetime = ceil((8+4)*fvar(13))
air.hittime = ceil((8+4)*fvar(13))
air.velocity = -4,-7
ground.velocity = -4,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 85,42
givepower = 42,21
yaccel = .5
fall.recover = 1
id = 200

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 0, CtrlSet]
type = CtrlSet
trigger1 = animelemtime(7) = 0
value = 1
ignorehitpause = 1

[State 200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;=========================== STAND MEDIUM PUNCH ================================
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 210
sprpriority = 1
facep2 = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,0+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,1
channel = 1

[State 205, Hit]
type = hitdef
trigger1 = !time
attr = S, NA
damage = 60,0
animtype = medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
sparkno = -1+0*(var(33):=8022)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10+0*(var(35):=190),var(36):=-160
hitsound = s1,1
guardsound = s2,0
ground.type = high
pausetime = 12,12
guard.pausetime = 12,12
ground.hittime = ceil((14+2)*fvar(13))
guard.hittime = ceil((14-2)*fvar(13))
ground.slidetime = ceil((14+2)*fvar(13))
air.hittime = ceil((14+2)*fvar(13))
air.velocity = -3,-7
ground.velocity = -7,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 240,150
givepower = 150,75
yaccel = .5
fall.recover = 1
id = 210
;envshake.time=10
;envshake.ampl=2

[State 250, 1]
type = PosAdd
trigger1 = AnimElem = 4
x = 2

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 0, CtrlSet]
type = CtrlSet
trigger1 = animelemtime(11) = 0
value = 1
ignorehitpause = 1

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;STAND STRONG PUNCH ============================================================
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 220
sprpriority = 1
facep2 = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 3001, Width]
type = Width
trigger1 = 1
player = -5,-5

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,7;+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,2
channel = 1

[State 205, Hit]
type = hitdef
trigger1 = !time
attr = S, NA
damage = 90,0
animtype = heavy
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
sparkno = -1+0*(var(33):=8032)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10+0*(var(35):=115),var(36):=-180
hitsound = s1,2
guardsound = s2,0
ground.type = high
pausetime = 14,14
guard.pausetime = 14,14
ground.hittime = ceil((19+2)*fvar(13))
guard.hittime = ceil((19-2)*fvar(13))
ground.slidetime = ceil((19+2)*fvar(13))
air.hittime = ceil((19+2)*fvar(13))
air.velocity = -5,-5
ground.velocity = -10,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 350,175
givepower = 175,85
yaccel = .5
fall.recover = 1
id = 220
;envshake.time=10
;envshake.ampl=2

[State 215, 1]
type = posadd
trigger1 = AnimElem = 2
x = 28*.75

[State 215, 1]
type = posadd
trigger1 = AnimElem = 3
x = 24*.75

[State 215, 1]
type = posadd
trigger1 = AnimElem = 4
x = 20*.75

[State 215, 1]
type = posadd
trigger1 = AnimElem = 5
x = 15*.75

[State 215, 1]
type = posadd
trigger1 = AnimElem = 6
x = 2*.75

[State 215, 1]
type = posadd
trigger1 = AnimElem = 8
x = -7*.75

[State 215, 1]
type = posadd
trigger1 = AnimElem = 9
x = -9*.75

[State 215, 1]
type = posadd
trigger1 = AnimElem = 10
x = -16*.75

[State 215, 1]
type = posadd
trigger1 = AnimElem = 11
x = -9*.75

[State 215, 1]
type = posadd
trigger1 = AnimElem = 12
x = -16*.75

[State 215, 1]
type = posadd
trigger1 = AnimElem = 13
x = -8*.75

[State 215, 1]
type = posadd
trigger1 = AnimElem = 14
x = -20*.75

[State 215, 1]
type = posadd
trigger1 = AnimElem = 15
x = -4*.75

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 0, CtrlSet]
type = CtrlSet
trigger1 = animelemtime(14) = 0
value = 1
ignorehitpause = 1

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;STAND LIGHT KICK ============================================================
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 1
facep2 = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,0+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,3
channel = 1

[State 215, Hit]
type = hitdef
trigger1 = time = 0
attr = S, NA
damage = 30,0
animtype = Light
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
sparkno = -1+0*(var(33):=8022)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=180), var(36):=-110
hitsound = s1,3
guardsound = s2,0
ground.type = Low
pausetime = 10,10
guard.pausetime = 10,10
ground.hittime = ceil((9+4)*fvar(13))
guard.hittime = ceil((9+2)*fvar(13))
ground.slidetime = ceil((9+4)*fvar(13))
air.hittime = ceil((9+4)*fvar(13))
ground.velocity = -4,0
air.velocity = -6,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 85,42
givepower = 42,21
yaccel = .5
fall.recover = 1
id = 230

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 0, CtrlSet]
type = CtrlSet
trigger1 = animelemtime(9) = 0
value = 1
ignorehitpause = 1

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;STAND MEDIUM KICK ============================================================
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 1
facep2 = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,0+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,4
channel = 1

[State 220, Hit]
type = hitdef
trigger1 = animelem = 3 ;&& anim = 240
attr = S, NA
damage = 60,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
sparkno = -1+0*(var(33):=8021)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=155), var(36):=-185
hitsound = s1,4
guardsound = s2,0
ground.type = high
pausetime = 12,12
guard.pausetime = 12,12
ground.hittime = ceil((13+4)*fvar(13))
guard.hittime = ceil((13-2)*fvar(13))
ground.slidetime = ceil((13+4)*fvar(13))
air.hittime = ceil((13+4)*fvar(13))
ground.velocity = -7,0
air.velocity = -6,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 240,150
givepower = 150,75
yaccel = .5
fall.recover = 1
envshake.time=10
envshake.ampl=2
id = 240

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(3) = 0
x = 4

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 0, CtrlSet]
type = CtrlSet
trigger1 = animelemtime(9) = 0
value = 1
ignorehitpause = 1

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;STAND STRONG KICK ============================================================
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 1
facep2 = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,7;+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,5
channel = 1

[State 225, Hit]
type = hitdef
trigger1 = time = 0
attr = S, NA
damage = 90,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
sparkno = -1+0*(var(33):=8032)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=150), var(36):=-170
hitsound = s1,5
guardsound = s2,0
ground.type = High
pausetime = 14,14
guard.pausetime = 14,14
ground.hittime = ceil((16+0)*fvar(13))
guard.hittime = ceil((16-2)*fvar(13))
ground.slidetime = ceil((16+0)*fvar(13))
air.hittime = ceil((16+0)*fvar(13))
ground.velocity = -10,0
air.velocity = -6,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 350,175
givepower = 175,85
yaccel = .5
fall.recover = 1
envshake.time=12
envshake.ampl=3
id = 250

[State 250, 1]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
x = 6

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 0, CtrlSet]
type = CtrlSet
trigger1 = animelemtime(11) = 0
value = 1
ignorehitpause = 1

[State 710, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;============================= OVERHEAD =====================================
[Statedef 300]
type = S
movetype = A
physics = N
juggle = 1
anim = 300
velset = 0,0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,0+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S0,5
channel = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 1
statetype = A
movetype = A
physics = N

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 3
y = -3.75

[State 0, VelAdd]
type = VelAdd
trigger1 = animelemtime(1) >= 1
y = .45

[State 207, Hit]
type = hitdef
trigger1 = animelem = 6
attr = S, NA
damage = 50, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 14,14
guard.pausetime = 14,14
sparkno = -1+0*(var(33):=8032)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=140), var(36):=-100
hitsound = s1,5
guardsound = s2,0
ground.type = High
ground.slidetime =  ceil((15+3)*fvar(13))
ground.hittime = ceil((15+3)*fvar(13))
ground.velocity = -5, 0
ground.cornerpush.veloff = 0
air.type = Low
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = 240,150
givepower = 150,75
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
envshake.time=12
envshake.ampl=3
id = 300

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = animelemtime(5) >= 0
trigger1 = Pos Y >= 15 && Vel Y > 0
value = 52
ctrl = 0
;---------------------------------------------------------------------------
; Crouching Light Attack
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 400
sprpriority = 1
velset = 0,0
facep2 = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,0+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,0
channel = 1

[State 230, hit]
type=hitdef
trigger1=time = 0
attr=C,NA
damage=30,0
hitflag = MAF
guardflag = MA
animtype = Light
air.animtype = back
fall.animtype = back
priority = 2,Hit
sparkno = -1 +0* (var(33):=8022)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=134), var(36):=-125
hitsound=s1,0
guardsound=s2,0
ground.type = Low
air.type = High
pausetime = 10,10
guard.pausetime = 10,10
ground.hittime = ceil((8+3)*fvar(13))
guard.hittime = ceil((8+1)*fvar(13))
ground.slidetime = ceil((8+3)*fvar(13))
air.hittime = ceil((8+3)*fvar(13))
air.velocity = -4,-7
ground.velocity = -4,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 85,42
givepower = 42,21
yaccel = .5
fall.recover = 1
id = 400

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; Crouching Medium Punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 410
sprpriority = 1
velset = 0,0
facep2 = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,0+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,1
channel = 1

[State 235, hit]
type=hitdef
trigger1=time=0
attr=C,NA
damage=60,0
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = back
fall.animtype = back
priority = 3,Hit
sparkno = -1 +0* (var(33):=8022)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=170), var(36):=-120
hitsound=s1,1
guardsound=s2,0
ground.type = Low
air.type = High
pausetime = 12,12
guard.pausetime = 12,12
ground.hittime = ceil((12+2)*fvar(13))
guard.hittime = ceil((12+0)*fvar(13))
ground.slidetime = ceil((12+2)*fvar(13))
air.hittime = ceil((12+2)*fvar(13))
air.velocity = -3,-7
ground.velocity = -7,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 240,150
givepower = 150,75
yaccel = .5
fall.recover = 1
envshake.time=10
envshake.ampl=2
forcestand = 1
id = 410

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;=========================== CROUCH STRONG =====================================
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 420
sprpriority = 1
velset = 0,0
facep2 = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,7;+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,2
channel = 1

[State 235, hit]
type=hitdef
trigger1 = animelem = 3
attr=C,NA
damage=90,0
hitflag = MAF
guardflag = MA
animtype = Heavy
air.animtype = back
fall.animtype = back
priority = 3,Hit
sparkno = -1 +0* (var(33):=8031)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=105), var(36):=-180
hitsound=s1,2
guardsound=s2,0
ground.type = High
air.type = High
pausetime = 14,14
guard.pausetime = 14,14
ground.hittime = ceil((20-4)*fvar(13))
guard.hittime = ceil((20-6)*fvar(13))
ground.slidetime = ceil((20-4)*fvar(13))
air.hittime = ceil((20-4)*fvar(13))
air.velocity = -3,-7
ground.velocity = -10,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 350,175
givepower = 175,85
yaccel = .5
fall.recover = 1
envshake.time=10
envshake.ampl=2
persistent = 0
id = 420

[State 235, hit]
type=hitdef
trigger1= movehit <= 0
trigger1 = animelem = 4
attr=C,NA
damage=60,0
hitflag = MAF
guardflag = MA
animtype = Heavy
air.animtype = back
fall.animtype = back
priority = 3,Hit
sparkno = -1 +0* (var(33):=8031)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=70), var(36):=-280
hitsound=s1,2
guardsound=s2,0
ground.type = High
air.type = High
pausetime = 14,14
guard.pausetime = 14,14
ground.hittime = ceil((20-4)*fvar(13))
guard.hittime = ceil((20-6)*fvar(13))
ground.slidetime = ceil((20-4)*fvar(13))
air.hittime = ceil((20-4)*fvar(13))
air.velocity = -3,-7
ground.velocity = -10,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 150,75
givepower = 75,37
yaccel = .5
fall.recover = 1
envshake.time=10
envshake.ampl=2
persistent = 0
id = 420

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 0, CtrlSet]
type = CtrlSet
trigger1 = animelemtime(10) = 0
value = 1
ignorehitpause = 1

[State 420, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Crouching Light Kick
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 430
sprpriority = 1
velset = 0,0
facep2 = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,0+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,3
channel = 1

[State 230, hit]
type=hitdef
trigger1=time = 0
attr=C,NA
damage=30,0
hitflag = MAF
guardflag = L
animtype = Light
air.animtype = back
fall.animtype = back
priority = 2,Hit
sparkno = -1 +0* (var(33):=8022)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=135), var(36):=0
hitsound=s1,3
guardsound=s2,0
ground.type = Low
air.type = High
pausetime = 10,10
guard.pausetime = 10,10
ground.hittime = ceil((10+1)*fvar(13))
guard.hittime = ceil((10-1)*fvar(13))
ground.slidetime = ceil((10+1)*fvar(13))
air.hittime = ceil((10+1)*fvar(13))
ground.velocity = -4,0
air.velocity = -6,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 85,42
givepower = 42,21
yaccel = .5
fall.recover = 1
id = 430

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; Crouching Medium Kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 440
sprpriority = 1
velset = 0,0
facep2 = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,0+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,4
channel = 1

[State 235, hit]
type=hitdef
trigger1=time=0
attr=C,NA
damage=60,0
hitflag = MAF
guardflag = L
animtype = Medium
air.animtype = back
fall.animtype = back
priority = 3,Hit
sparkno = -1 +0* (var(33):=8022)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=135), var(36):=0
hitsound=s1,4
guardsound=s2,0
ground.type = Low
air.type = High
pausetime = 12,12
guard.pausetime = 12,12
ground.hittime = ceil((12+2)*fvar(13))
guard.hittime = ceil((12-2)*fvar(13))
ground.slidetime = ceil((12+2)*fvar(13))
air.hittime = ceil((12+2)*fvar(13))
ground.velocity = -7,0
air.velocity = -6,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 240,150
givepower = 150,75
yaccel = .5
fall.recover = 1
envshake.time=10
envshake.ampl=2
id = 440

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; Crouching Heavy Kick
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 450
sprpriority = 1
velset = 0,0
facep2 = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,7;+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,5
channel = 1

[State 240, hit]
type=hitdef
trigger1 = time = 0
attr=C,NA
damage=90,0
hitflag = MAF
guardflag = L
animtype = Heavy
air.animtype = back
fall.animtype = back
priority = 4,Hit
pausetime=12,12
sparkno = -1 +0* (var(33):=8032)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=200), var(36):=-110
hitsound=s1,5
guardsound=s2,0
ground.type = Trip
air.type = High
pausetime = 14,14
guard.pausetime = 14,14
ground.hittime = ceil((22)*fvar(13))
guard.hittime = ceil((22-10)*fvar(13))
ground.slidetime =ceil((22)*fvar(13))
air.hittime = ceil((22)*fvar(13))
ground.velocity = -2,-8
air.velocity = -2,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 350,175
givepower = 175,85
air.fall = 1
fall = 1
fall.recover = 0
air.recover = 0
yaccel = .75
fall.recover = 1
envshake.time=12
envshake.ampl=3
fall.envshake.time=12
fall.envshake.ampl=3
id = 450

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 420, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;--------------------------------------------------------------------------- <---------------
; Jump Light Attack
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 600
sprpriority = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,0+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,0
channel = 1

[State 260, hit]
type=hitdef
trigger1=time = 0
attr=A,NA
damage=30,0
hitflag = MAF
guardflag = HA
animtype = Light
air.animtype = back
fall.animtype = back
priority = 2,Hit
sparkno = -1 +0* (var(33):=8023)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=105), var(36):=-150
hitsound=s1,0
guardsound=s2,0
ground.type = High
pausetime = 10,10
guard.pausetime = 10,10
ground.slidetime = 13
ground.hittime = 13
air.hittime = 13
guard.hittime = 13
ground.velocity = -3
guard.velocity = -5
air.velocity = -4, vel y+1
airguard.velocity = -4,-1
ground.cornerpush.veloff = -4.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 85,42
givepower = 42,21
persistent = 0
yaccel = .5
id = 600

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

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I


;---------------------------------------------------------------------------
; Jump Medium Punch
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 610
sprpriority = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,0+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,1
channel = 1

[State 265, hit]
type=hitdef
trigger1=time = 0
attr=A,NA
damage=60,0
hitflag = MAF
guardflag = HA
animtype = Medium
air.animtype = up
fall.animtype = up
priority = 3,Hit
sparkno = -1 +0* (var(33):=8023)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=130), var(36):=-130
hitsound=s1,1
guardsound=s2,0
ground.type = High
pausetime = 12,14
guard.pausetime = 12,12
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
guard.ctrltime = 16
guard.hittime = 16
ground.velocity = -4
guard.velocity = -5
air.velocity = -5,vel y+3;-2.5
airguard.velocity = -5,-1
ground.cornerpush.veloff = -5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 240,150
givepower = 150,75
persistent = 0
envshake.time=10
envshake.ampl=2
yaccel = .5
id = 610

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

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

;---------------------------------------------------------------------------
; Jump Strong Attack
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 620
sprpriority = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,7;+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,2
channel = 1

[State 270, hit]
type=hitdef
trigger1=time = 0
attr=A,NA
damage=90,0
hitflag = MAF
guardflag = HA
animtype = Heavy
air.animtype = back
fall.animtype = back
priority = 4,Hit
pausetime=12,12
sparkno = -1 +0* (var(33):=8033)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=130), var(36):=-130
hitsound=s1,2
guardsound=s2,0
ground.type = High
pausetime = 14,14
guard.pausetime = 14,14
ground.slidetime = 19
ground.hittime = 19
air.hittime = 19
guard.ctrltime = 16
guard.hittime = 16
ground.velocity = -3
guard.velocity = -9.33
air.velocity = -6.5, vel y+5.5;-6
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -7
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 350,175
givepower = 175,85
persistent = 0
envshake.time=12
envshake.ampl=3
yaccel = .5
id = 620

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

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

;---------------------------------------------------------------------------
;Air Light Kick
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 630
sprpriority = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,0+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,3
channel = 1

[State 260, hit]
type=hitdef
trigger1=time = 0
attr=A,NA
damage=30,0
hitflag = MAF
guardflag = HA
animtype = Light
air.animtype = back
fall.animtype = back
priority = 2,Hit
sparkno = -1 +0* (var(33):=8022)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=135), var(36):=-180
hitsound=s1,3
guardsound=s2,0
ground.type = High
pausetime = 10,10
guard.pausetime = 10,10
ground.slidetime = 13
ground.hittime = 13
air.hittime = 13
guard.hittime = 11
guard.ctrltime = 11
ground.velocity = -3
guard.velocity = -5
air.velocity = -4, vel y+1
airguard.velocity = -4,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 85,42
givepower = 42,21
persistent = 0
yaccel = .5
id = 630

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

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I


;---------------------------------------------------------------------------
; Jump Medium Kick
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 640
sprpriority = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,0+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,4
channel = 1

[State 265, hit]
type=hitdef
trigger1=time = 0
attr=A,NA
damage=60,0
hitflag = MAF
guardflag = HA
animtype = Medium
air.animtype = up
fall.animtype = up
priority = 3,Hit
sparkno = -1 +0* (var(33):=8022)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=135), var(36):=-110
hitsound=s1,4
guardsound=s2,0
ground.type = High
pausetime = 12,12
guard.pausetime = 12,12
ground.slidetime = 16
ground.hittime = 16
air.hittime = 16
guard.ctrltime = 13
guard.hittime = 13
ground.velocity = -4
guard.velocity = -5
air.velocity = -5,vel y+3
airguard.velocity = -5,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 240,150
givepower = 150,75
persistent = 0
envshake.time=10
envshake.ampl=2
yaccel = .5
id = 640

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

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

;---------------------------------------------------------------------------
; Jump Medium Kick
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 650
sprpriority = 1

[State 0, Dampener itself]
type=attackmulset
trigger1 = time = 0
value = fvar(12)
ignorehitpause = 1
persistent = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,7;+(random%7)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,5
channel = 1

[State 270, hit]
type=hitdef
trigger1=time = 0
attr=A,NA
damage=90,0
hitflag = MAF
guardflag = HA
animtype = Heavy
air.animtype = back
fall.animtype = back
priority = 4,Hit
pausetime=12,12
sparkno = -1 +0* (var(33):=8031)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=105), var(36):=-210
hitsound=s1,5
guardsound=s2,0
ground.type = High
pausetime = 14,14
guard.pausetime = 14,14
ground.slidetime = 19
ground.hittime = 19
air.hittime = 19
guard.ctrltime = 16
guard.hittime = 16
ground.velocity = -3
guard.velocity = -9.33
air.velocity = -6.5, vel y+5.5
airguard.velocity = -6,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 350,175
givepower = 175,85
persistent = 0
envshake.time=12
envshake.ampl=3
yaccel = .5
id = 650

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

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
;============================ THROW CONTROLLER ================================
[Statedef 800]
type = S
movetype = A
physics = S
juggle = 15
velset = 0, 0
ctrl = 0
anim = 800
sprpriority = 1
facep2 = 1
poweradd = 0

[State 800, Strength]
type = varset
trigger1 = !time
var(10) = 2;ifelse(command = "z", 1, ifelse(command = "y", 2, 3))

[State 800, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 800, Hit]
type = hitdef
trigger1 = !time ;&& var(10) = 3
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
hitsound = s800,3
p1facing = 1;ifelse((command = "holdback") || (frontedgedist < backedgedist), 1, -1)
p2facing = 1
p1stateno = 805;ifelse((command = "holdback") || (frontedgedist < backedgedist), 801, 803)
guard.dist = 0
fall = 1
fall.recover = 1
fall.recovertime = 120
ID = 800

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,0+(random%7)
channel = 0

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 1
value = s0,0
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 800, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;============================== BACK THROW  ==================================
[Statedef 810]
type = S
movetype = A
physics = S
juggle = 15
velset = 0, 0
ctrl = 0
anim = 800
sprpriority = 1
facep2 = 1
poweradd = 0

[State 800, Strength]
type = varset
trigger1 = !time
var(10) = 2;ifelse(command = "z", 1, ifelse(command = "y", 2, 3))

[State 800, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 800, Hit]
type = hitdef
trigger1 = !time ;&& var(10) = 3
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
hitsound = s800,3
p1facing = 1;ifelse((command = "holdback") || (frontedgedist < backedgedist), 1, -1)
p2facing = 1
p1stateno = 801;ifelse((command = "holdback") || (frontedgedist < backedgedist), 801, 803)
guard.dist = 0
fall = 1
fall.recover = 1
fall.recovertime = 120
ID = 800

[State 200, Voice]
type = PlaySnd
trigger1 = !time && random < 600
value = s10,0+(random%7)
channel = 0

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 1
value = s0,0
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 800, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;-------------------------------- PLAYER ---------------------------------------
[Statedef 801]
type = S
movetype = A
physics = S
anim = 801
ctrl = 0
sprpriority = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = prevstateno = 810
anim = 8109
ID = 8109
pos = 50,-75
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = 2
ownpal = 1
removeongethit = 1

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 4
value = s10,1
channel = 0
volumescale = 200

[State 800, misssnd]
type = playsnd
trigger1 = animelem =4
value = s0,0
channel = 1
volumescale = 200

[State Throw]
type = targetstate
trigger1 = !time
value = 802

[State 0, TargetFacing]
type = TargetFacing
trigger1 = 1
value = -1
ID = 801

[State 0, PosAdd]
type = PosAdd
trigger1 = backedgedist < 40
x = 10

[State Width]
type = width
trigger1 = 1
edge = 20, 0

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 45, -105

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 35, -110

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 25, -115

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 10, -115

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = -15, -125

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = -55, -20

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
pos = -105, 0

[State 0, PowerAdd]
type = PowerAdd
trigger1 = animelemtime(7) = 0
value = 200

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(7) = 0
value = -90
kill = 1

[State 2100, Wolf]
type = EnvShake
trigger1 = animelemtime(7) = 0
time = 15
ampl = -5
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = animelemtime(7) = 0
x = -2

[State 0, Turn]
type = Turn
trigger1 = !animtime
persistent = 0

[State 801, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;---------------------------------- TARGET -----------------------------------
[Statedef 802]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 802, Anim]
type = changeanim2
trigger1 = !time
value = 802

;[State 0, Turn]
;type = Turn
;trigger1 = time = 0

[State 806, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 809, Accel]
type = gravity
trigger1 = 1

[State 809, hitground]
type = selfstate
trigger1 = Pos Y >= 0 && Vel Y > 0
;trigger1 = vel y > 0
;trigger1 = pos y >= -9
value = 5100
;-------------------------------- PLAYER ---------------------------------------
[Statedef 805]
type = S
movetype = A
physics = S
anim = 805
ctrl = 0
sprpriority = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8109
ID = 8109
pos = 50,-75
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 999
scale = .5,.5
sprpriority = 2
ownpal = 1
removeongethit = 1

;[State 801, End]
;type = changestate
;trigger1 = time <= 1
;trigger1 = command = "holdback"
;value = 801
;ctrl = 0

[State 800, misssnd]
type = playsnd
trigger1 = animelem =6
value = s0,0
channel = 1

[State Throw]
type = targetstate
trigger1 = !time
value = 806

[State 0, PosAdd]
type = PosAdd
trigger1 = frontedgedist < 50
x = -10

[State Width]
type = width
trigger1 = 1
edge = 20, 0

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 45,0

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 25,0

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 5,0

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = -25,0

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(5) >= 0
pos = -40,0

[State 0, Turn]
type = Turn
trigger1 = !animtime

[State 801, End]
type = changestate
trigger1 = !animtime
value = 801
ctrl = 0
;---------------------------------- TARGET -----------------------------------
[Statedef 806]
type = S
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
;anim = 806

[State 802, Anim]
type = changeanim2
trigger1 = !time
value = 806

[State 0, SprPriority]
type = SprPriority
trigger1 = animelemtime(2) = 0
value = 2

[State 806, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 809, hitground]
type = changestate;selfstate
trigger1 = !animtime
;trigger1 = vel y > 0
;trigger1 = pos y >= -9
value = 802
