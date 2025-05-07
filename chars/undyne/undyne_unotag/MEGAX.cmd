
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1



[Command]
name = "cpu"
command = D, F, U, UF, D, F, x+y
time = 0

[Command]
name = "cpu2"
command = B, F, U, DB, D, F, a+b
time = 0

[Command]
name = "cpu3"
command = B, U, DB, D, F, D, c
time = 0

[Command]
name = "cpu4"
command = F, D, UB, F, B, D, a
time = 0

[Command]
name = "cpu5"
command = F+a, b+c+D, c+x+a+UB
time = 0

[Command]
name = "cpu6"
command = F+b+c, D, UB, c+a, c+x+UF
time = 0

[Command]
name = "cpu7"
command = F, U, B, F, UF, U, B, DF, c+z
time = 0

[Command]
name = "cpu8"
command = F, U, B, F, UF, U, B, DU, c+z
time = 0

[Command]
name = "cpu9"
command = F, U, B, F, UF, U, B, D, D, c+z
time = 0

[Command]
name = "cpu10"
command = F, U, B, F, UF, U, B, c+z+UB
time = 0

[Command]
name = "cpu11"
command = F, U, B, F, UF, U, B, c+z+UD
time = 0

[Command]
name = "cpu12"
command = F, U, B, F, UF, U, B, a+b
time = 0

[Command]
name = "cpu13"
command = F, U, B, F, UF, U, B, c+y
time = 0

[Command]
name = "cpu14"
command = F, U, B, F, UF, U, B, c+x
time = 0

[Command]
name = "cpu15"
command = F, U, B, F, UF, U, B, c+b
time = 0

[Command]
name = "cpu16"
command = F, U, B, F, UF, U, B, c+a
time = 0

[Command]
name = "cpu17"
command = F, U, B, F, UF, U, B, c+z+b
time = 0

[Command]
name = "cpu18"
command = F, U, B, F, UF, U, B, c+z+a
time = 0

[Command]
name = "cpu19"
command = F, U, B, F, UF, U, B, c+z+x
time = 0

[Command]
name = "cpu20"
command = F, U, B, F, UF, U, B, c+z+B
time = 0

[Command]
name = "cpu21"
command = F, U, B, F, UF, U, B, c+z+y
time = 0

[Command]
name = "cpu22"
command = F, U, B, F, UF, U, B, a+b
time = 0

[Command]
name = "cpu23"
command = F, U, B, F, UF, U, B, c+y
time = 0

[Command]
name = "cpu24"
command = F, U, B, F, UF, U, B, c+x
time = 0

[Command]
name = "cpu25"
command = F, U, B, F, UF, U, B, c+b
time = 0

[Command]
name = "cpu26"
command = F, U, B, F, UF, U, B, c+a
time = 0

[Command]
name = "cpu27"
command = F, U, B, F, UF, U, B, c+z+b
time = 0

[Command]
name = "cpu28"
command = F, U, B, F, UF, U, B, c+z+a
time = 0

[Command]
name = "cpu29"
command = F, U, B, F, UF, U, B, c+z+x
time = 0

[Command]
name = "cpu30"
command = F, U, B, F, UF, U, B, c+z+B
time = 0

[Command]
name = "cpu31"
command = F, UD, B, F, UF, U, B, c+z+y
time = 0

[Command]
name = "cpu32"
command = F, U, BD, F, UF, U, B, c+z+y
time = 0

[Command]
name = "cpu33"
command = F, UF, B, F, UF, U, B, c+z+y
time = 0

[Command]
name = "cpu34"
command = D, D, D, D, D, D, D, x+y+c
time = 0


[Command]
name = "63214A"
command = ~F, DF, D, DB, B, x
time = 20

[Command]
name = "63214B"
command = ~F, DF, D, DB, B, a
time = 20

[Command]
name = "63214C"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "63214D"
command = ~F, DF, D, DB, B, b
time = 20

[Command]
name = "TripleKFPalm2"
command = ~D,DF,$F,D,DF,$F,c
time = 24
buffer.time = 4

[Command]
name = "TripleKFPalm2"
command = ~D,DF,$F,D,DF,$F,x+y
time = 24
buffer.time = 4

[Command]
name = "TripleKFPalm2"
command = ~D,DF,$F,D,DF,$F,z+y
time = 24
buffer.time = 4

[Command]
name = "TripleKFPalm2"
command = ~D,DF,$F,D,DF,$F,x+z
time = 24
buffer.time = 4

[Command]
name = "TripleKFPalm"
command = ~D,DF,$F,D,DF,$F,x
time = 24
buffer.time = 4

[Command]
name = "TripleKFPalm"
command = ~D,DF,$F,D,DF,$F,y
time = 24
buffer.time = 4

[Command]
name = "TripleKFPalm"
command = ~D,DF,$F,D,DF,$F,z
time = 24
buffer.time = 4


[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, y
time = 20


[Command]
name = "upper_x"
command = ~F,D,$F,x
time = 12
buffer.time = 3

[Command]
name = "upper_y"
command = ~F,D,$F,y
time = 12
buffer.time = 3

[Command]
name = "upper_xy"
command = ~F,D,$F,z
time = 12
buffer.time = 3
 
[Command]
name = "QCF_x"
command = ~D,DF,$F,x
time = 8
buffer.time = 3

[Command]
name = "QC_y"
command = ~D,DF,$F,y
time = 8
buffer.time = 3
 
[Command]
name = "QCF_xy"
command = ~D,DF,$F,z
buffer.time = 3
 

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "EXlance"
command = ~D, DB, B, z


[Command]
name = "lance"
command = ~D, DB, $B, x
time = 15
buffer.time = 3

[Command]
name = "lance1"
command = ~D, DB, $B, y
time = 15
buffer.time = 3

[Command]
name = "lance2"
command = ~D, DB, $B, z
time = 15
buffer.time = 3

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "EXsuplex_rock"
command = ~$B,$F,z
time = 10
buffer.time = 3
 
[Command]
name = "suplex_rock"
command = ~$B,$F,x
time = 10
buffer.time = 3
[Command]
name = "suplex_rockb"
command = ~$B,$F,y
time = 10
buffer.time = 3

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10


[Command]
name = "recovery"
command = x
time = 1
[Command]
name = "recovery"
command = y
time = 1
[Command]
name = "recovery"
command = a
time = 1
[Command]
name = "recovery"
command = b
time = 1
[Command]
name = "‹Ù‹}‰ñ”ðŒã"
command = /$B,x+a
time = 1

[Command]
name = "‹Ù‹}‰ñ”ðŒã"
command = /$B,z
time = 1
[Command]
name = "‹Ù‹}‰ñ”ð‘O"
command = x+a
time = 0

[Command]
name = "‹Ù‹}‰ñ”ð‘O"
command = z
time= 0

[Command]
name = "‚Ó‚Á”ò‚Î‚µ"
command = ~B,DB,$D,x
time = 10
buffer.time = 3

[Command]
name = "‚Ó‚Á”ò‚Î‚µ"
command = ~B,DB,$D,y
time = 10
buffer.time = 3

[Command]
name = "‚Ó‚Á”ò‚Î‚µ"
command = ~B,DB,$D,z
time = 10
buffer.time = 3

[Command]
name = "‚Ó‚Á”ò‚Î‚µ"
command = y+b
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1


[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "jump"
command = ~$D, U
time = 12
buffer.time = 3

[Command]
name = "jump"
command = ~$D, UF
time = 12
buffer.time = 3

[Command]
name = "jump"
command = ~$D, UB
time = 12
buffer.time = 3

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1


[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1





;   --- Uno Tag System [Type-R] Command definition ---

[Command]
name = "aHsoNn"
command = ~D, D, D, s
Time = 25

[Command]
name = "sheoun"
command = ~D, DF, F, z+c
Time = 25

[Command]
name = "palit"
command = z+c
Time = 2

[Command]
name = "turtleuno"
command = s
Time = 2


[Statedef -1]


[State -1, Partner Assist]
type = VarSet
sysvar(4) = 10
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 60 && Time > 0
triggerall = teammode = Simul
triggerall = StateNo != [3000,1251199]
triggerall = hitdefattr != SCA, HA, HP, HT
triggerAll = StateNo != [130,152]
triggerall = !(StateNo = [5000,5500])
triggerall = stateno != [1000,3159]
trigger1 = command = "turtleuno"
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = !ctrl && Movetype = A
trigger2 = Random < (((2 * ifelse(MoveContact, ifelse(MoveHit, 2, 3),1)) + (UniqHitCount * 2)) *(AILevel**2/64.0))
trigger3 = AILevel >  0
trigger3 = StateNo = [190,199]
trigger3 = AnimElemNo(0) = 2
ignorehitpause = 1

[State -1, Delayed Hyper]
type = ChangeState
value = 1251127
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Partner, life > 0
triggerall = power >= 1000
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = stateno = 3000 || stateno = 3100
trigger1 = command = "sheoun"
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = NumTarget && MoveContact
trigger2 = Random < (10*(AILevel**2/64.0) + (Uniqhitcount*((Life < Partner,Life)*2)))
trigger2 = Partner, Time > 35
trigger3 = AILevel >  0
trigger3 = Partner, Time > 30 && Time > 25
trigger3 = HitCount >= 6
trigger3 = Random < (2 * Uniqhitcount * ifelse(hitcount > 9, 2, 1))
ignorehitpause = 1

[State -1, Team Hyper Attack]
type = ChangeState
value = 1251125
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = Partner, life > 0
triggerall = power >= 3000
triggerall = RoundState = 2
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 9		
triggerall= (StateType != A)
trigger1 = command = "sheoun"
trigger1 = (Ctrl = 1)
trigger1 = AILevel <=  0
trigger2 = command = "sheoun"
trigger2 = stateno = [200,500]
trigger2 = AILevel <=  0
trigger3 = AILevel > 0 && ctrl
trigger3 = Random < (10 + ((Life < Lifemax/6)*3))
trigger3 = NumEnemy && enemy, pos x = [0,200]
trigger4 = AILevel >  0
trigger4 = Anim = [200,1000]
trigger4 = movetype = A
trigger4 = hitdefattr = SC, NA
trigger4 = MoveContact
trigger4 = Random < (11 + ((MoveHit)*5) + ((Life < Lifemax/6)*5))
trigger5 = stateno = 1610 && movecontact
trigger5 = command = "sheoun"
trigger6 = command = "sheoun"
trigger6 = stateno = 1140 && movecontact
trigger7 = stateno = 1141 && movecontact
trigger7 = command = "sheoun"
trigger8 = stateno = 1500 && movecontact
trigger8 = command = "sheoun"
ignorehitpause = 1

[State -1, Change Attack]
type = ChangeState
value = 1251126
triggerall = command != "sheoun"
triggerall = NumPartner
triggerall = (sysvar(4) = 1 && power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),250,500)) || (sysvar(4) = 15 && power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),500,1000))
triggerall = Partner, life > 0
triggerall = !MoveReversed
triggerall = (Partner, StateNo = 1251112 || Partner, StateNo = 1251114)  && Time > 1
triggerall = StateNo = [200,4850]
triggerall = StateNo != [1251102,1251105]
triggerall = NumTarget > 0
triggerall = Target, pos Y > -160
triggerall = (Target, StateNo != [5110,5955])
triggerall = Hitdefattr != SCA, NT && ((Target, Statetype = A || (Hitdefattr != A, NA && Target, Statetype != A)) && ((!Target, HitOver || EnemyNear, StateNo = [5000,5900]) && (MoveContact || ProjContactTime(0) < 8)))
trigger1 = command = "palit"
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = UniqHitCount >= 2
trigger2 = Random < (((ifelse(sysvar(4)=15,25,50)*(AILevel**2/64.0)) + ((hitdefattr = SCA, SA, HA)*15) + ifelse(lifemax/life > 15, 15, lifemax/life)))
trigger2 = Partner, Life > Lifemax/10 || Life <= Partner, Life
trigger2 = Partner, Time > 25
trigger3 = AILevel >  0
trigger3 = Partner, Time > 27
trigger3 = Random < (25*(2*(Life = (Lifemax/4) && Life < Partner, Life)) *(AILevel**2/64.0))
trigger3 = MoveContact
ignorehitpause = 1

[State -1, TagIn]
type = ChangeState
value = 1251110
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner && NumEnemy
triggerall = RoundState = 2 
triggerall = Partner, life > 0
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 40	
triggerall = (MoveType != A && StateType != A) && (Ctrl = 1) || StateNo = 0
trigger1 = command = "palit"
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = Random < (ifelse((LifeMax/Life > 120), 120, LifeMax/Life)+((EnemyNear,statetype=L)*25))
trigger2 = Life < Partner, Life && Partner, Time > 1 * TicksPerSecond
trigger2 = EnemyNear, movetype != A
trigger3 = AILevel >  0
trigger3 = Life < Partner, Life && Partner, Time > 1 * TicksPerSecond && Life < LifeMax * (LifeMax*0.55)
trigger3 = Random < ((ifelse(LifeMax/Life > 10, 10, LifeMax/Life) + (10+ifelse((EnemyNear, StateNo > 5000),25,1))) * ifelse((Life < Partner, Life), 1.45, 0.5))
trigger3 = Partner, Time > 1 * TicksPerSecond
trigger3= EnemyNear, statetype = L || p2bodydist x > 250 && EnemyNear, movetype != A
trigger4 = AILevel >  0
trigger4 = Life < 150 && Life < Partner, Life
trigger4 = EnemyNear, statetype = L || p2bodydist x > 200 && EnemyNear, movetype != A
trigger4 = Random < (125*(AILevel**2/64.0))

[State -1, C_6]
type = CtrlSet
value = 1
triggerall = RoundState = 2 && NumPartner
triggerall = NumTarget
triggerall = Target, StateNo != [200,4999]
triggerall = StateNo != 1251106 && !Ctrl
triggerall = (Partner, StateNo != [1251128,1251129]) && (Partner, PrevStateNo != [1251128,1251129])
trigger1 = command="x"||command="y"||command="z"||command="a"||command="b"||command="c"
trigger1 = sysvar(4) = 7
trigger1 = Movetype = A
trigger1 = MoveContact
trigger1 = hitdefattr = SCA, NA, SA
trigger1 = StateNo != PrevStateNo
trigger1 = Time > 3
trigger2 = PrevStateNo = 1251106
ignorehitpause = 0

; ------ Uno Tag System [Type-R] END LINE -------

;  ;]


[State -1, AI Defense]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = stateno!= [120,155]
triggerall = roundstate= 2
triggerall = AILevel != 0
triggerall = ctrl
triggerall = InGuardDist
trigger1 = (random<999*(AILevel**2/64.0))
value = 120

[State -1, AI Guard Counter]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 291
triggerall = var(51)= 1
triggerall = roundstate=2
triggerall = power>=1000
triggerall = statetype =S
trigger1 = stateno=150||stateno=151||stateno=152||stateno=153
trigger1 = p2bodydist x=[0,65]
trigger1 = enemynear,vel x=[-2,2]
trigger1 = random<=950


[State -1, Throw When P2 Is Close]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 800
triggerall = (roundstate = 2) && AILevel
triggerall = !sysfvar(4)
triggerall = !var(58)
triggerall = StateType = S
triggerall = p2statetype!=A
triggerall = p2bodydist X <= 6
triggerall = numtarget(420) = 0
trigger1 = Random < (800 * (AIlevel ** 2 / 64.0))
trigger1 = ctrl
trigger1 = p2Movetype = I

[State -1, rain flame LV2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value =4000
triggerall=AIlevel&&roundstate = 2 && statetype != A &&power >= 5000
triggerall=(enemynear,Movetype!=A)&&(enemynear,stateno!=[120,155])&&(enemynear,statetype!=L)
triggerall=(p2dist x>=140)&&(p2dist y=[-120,5])&&(Ifelse(var(1),random<400,random<450)*(AIlevel ** 2 / 64.0))
triggerall = !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
trigger1 = ctrl
trigger2 = (stateno = [200,450])&&anim!=221&&stateno!=400&&movecontact

[State -1, rain flame LV2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3040
triggerall=AIlevel&&roundstate = 2 && statetype != A &&power >= 2000
triggerall=(enemynear,Movetype!=A)&&(enemynear,stateno!=[120,155])&&(enemynear,statetype!=L)
triggerall=(p2dist x>=35)&&(p2dist y=[-70,5])&&(Ifelse(var(1),random<200,random<150)*(AIlevel ** 2 / 64.0))
triggerall = !numhelper(3005) && !numhelper(3025) && !numhelper(3045) && !numhelper(3055)
trigger1 = ctrl
trigger2 = (stateno = [200,450])&&anim!=221&&stateno!=241&&movecontact

[State -1, Crouching Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 410
triggerall = RoundState = 2
triggerall = AILevel != 0
triggerall = random<199*(AILevel**2/64.0)
triggerall = statetype != A
triggerall = enemynear,StateType = A
Triggerall = enemynear,StateType != L
triggerall = enemynear,movetype != H
triggerall = enemynear,stateno != [5020,5040]
triggerall = enemynear(var(58)),facing != facing
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist x = [-10+floor(8*(enemynear(var(58)),vel x)),23+floor(8*(enemynear(var(58)),vel x))]
trigger1 = p2bodydist y = [-100-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(39)),0-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(39))]

[State -1, Bullet Full Flame]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1300
triggerall=AIlevel&&roundstate = 2 && statetype != A
triggerall=(p2Movetype!=A)&&(p2stateno!=[120,155])&&(p2statetype!=A)&&(p2statetype!=C)&&(p2statetype!=L)
triggerall=(p2dist x>=60)&&(Ifelse(var(1),random<60,random<40)*(AIlevel ** 2 / 64.0))
trigger1 = ctrl
trigger2 = (stateno = [200,449])&&anim!=221&&stateno!=420&&movecontact

[State -1, Bullet Full Flame]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1310
triggerall=AIlevel&&roundstate = 2 && statetype != A
triggerall=(p2Movetype!=A)&&(p2stateno!=[120,155])&&(p2statetype!=A)&&(p2statetype!=C)&&(p2statetype!=L)
triggerall=(p2dist x>=100)&&(Ifelse(var(1),random<60,random<40)*(AIlevel ** 2 / 64.0))
trigger1 = ctrl
trigger2 = (stateno = [200,449])&&anim!=221&&stateno!=420&&movecontact

[State -1, Light Kung Fu Upper]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1150
triggerall = command = "upper_xy"
triggerall = ifelse(numhelper(243000),power>=250,power>=500)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact
trigger3 = stateno = 1610 && movecontact
trigger4 = stateno = 1141 && movecontact
trigger5 = stateno = 1500 && movecontact
trigger6 = stateno = 1350 && movecontact 

[State -1, High Kung Fu Blocking High]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1350
triggerall = ifelse(numhelper(243000),power>=250,power>=500)
triggerall = command = "EXlance"
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = [200,500]
trigger2 = movecontact
trigger3 = stateno = 1610 && movecontact
trigger4 = stateno = 1141 && movecontact
trigger5 = stateno = 225 && movecontact
trigger6 = stateno = 1150
trigger7 = stateno = 1500 

[State -1, Triple Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 4000
trigger1 = command = "TripleKFPalm2"
triggerall = power >= 3000
triggerall = statetype != A
triggerall = ctrl || var(29) = 1
triggerall = stateno != 4000
triggerall = numhelper(243000) 

[State -1, Smash Kung Fu Upper]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3050
triggerall = command = "SmashKFUpper"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact 

[State -1, Triple Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3040
trigger1 = command = "TripleKFPalm2"
triggerall = power >= 3000
triggerall = statetype != A
triggerall = ctrl || var(29) = 1
triggerall = stateno != 3040
triggerall = !numhelper(243000) 

[State -1, Triple Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3000
trigger1 = command = "TripleKFPalm"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = stateno != 3000
triggerall = stateno != 4000
triggerall = stateno != 3040
triggerall = var(29) = 1 || ctrl 

[State -1, Light Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1450
triggerall = ifelse(numhelper(243000),power>=250,power>=500)
triggerall = command = "EXsuplex_rock" && command != "QCF_xy"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,500]
trigger2 = movecontact
trigger3 = stateno = 1500 && movecontact 

[State -1, Light Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1430
triggerall = command != "QCF_x" && command != "QC_y"
triggerall = command = "suplex_rockb"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,500]
trigger2 = movecontact 

[State -1, Light Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1400
triggerall = command != "QCF_x" && command != "QC_y"
triggerall = command = "suplex_rock"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,500]
trigger2 = movecontact 

[State -1, Light Kung Fu Upper]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1100
triggerall = command = "upper_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact 

[State -1, Strong Kung Fu Upper]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1110
triggerall = command = "upper_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact 

[State -1, Fast Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1500
triggerall = command != "upper_xy"
triggerall = command != "sheoun"
triggerall = command = "QCF_xy"
triggerall = ifelse(numhelper(243000),power>=250,power>=500)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,500]
trigger2 = movecontact
trigger3 = stateno = 1610 && movecontact
trigger4 = stateno = 1141 && movecontact 

[State -1, Light Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1140
triggerall = command = "QC_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,500]
trigger2 = movecontact 

[State -1, Light Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1000
triggerall = command = "QCF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,500]
trigger2 = movecontact 

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 241
triggerall = command = "y" && command = "holdfwd" && command != "holddown"
trigger1 = statetype != A
TRIGGER1 = Ctrl


[State -1, Jump Strong Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 690
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

[State -1, High Kung Fu Blocking High]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1300
triggerall = command = "lance"
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = [200,500]
trigger2 = movecontact


[State -1, High Kung Fu Blocking High]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1310
triggerall = command = "lance1"
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = [200,500]
trigger2 = movecontact

[State -1, Powah power]
type = null; ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 8000
triggerall = !AILevel&& roundstate = 2&&power < 5000
triggerall = roundstate<=2
triggerall = !var(52)||Var(52) && !var(11)
triggerall = Power != Powermax
triggerall = command = "holdy" && command = "holda"
triggerall = !numhelper(3111)
triggerall = statetype != A
trigger1 = ctrl


[State -1, Run Fwd]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl



[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Kung Fu Throw]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 830
triggerall = command = "b"
triggerall = statetype != A
trigger1 = ctrl
triggerall = command = "holdback"


[State -1, Kung Fu Throw]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 800
trigger1 = command = "y"
triggerall = statetype = S
triggerall = ctrl
trigger1 = stateno != [100, 105]
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "y"
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = command = "b"

[State -1, 290]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 291
triggerall = var(51)= 0
triggerall = command = "‚Ó‚Á”ò‚Î‚µ"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 153
trigger4 = stateno = 152

[State -1, 290]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 290
triggerall = command = "z" && command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 430 && movecontact
trigger5 = stateno = 400 && movecontact

[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 702
triggerall = command = "‹Ù‹}‰ñ”ð‘O"
triggerall = alive
trigger1 = stateno = 5050
trigger1 = pos y >=-40
trigger1 = vel y > 0


[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 710
triggerall = command = "a" && command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 700
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = teammode != Simul 
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = teammode = Simul 
triggerall = numpartner
triggerall = partner,life = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 200
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 430 && movecontact 
 

[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 210
triggerall = command = "z" && command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 430 && movecontact
trigger5 = stateno = 400 && movecontact

[State -1, Stand Light Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 230
triggerall = command = "x" && command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Stand Strong Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 242
triggerall = var(51) != 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl|| (stateno = [100,101])
triggerall = p2bodydist X <= 37


[State -1, Standing Strong Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 240
triggerall = command = "x" && command != "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl







[State -1, Crouching Light Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 430 && movecontact

[State -1, Crouching Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 410
triggerall = command = "z" && command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 430 && movecontact
trigger5 = stateno = 400 && movecontact


[State -1, Crouching Light Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Crouching Strong Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 440
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 430 && movecontact
trigger5 = stateno = 400 && movecontact

[State -1, Jump Light Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact



[State -1, Jump Light Kick]
type = Null
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl



[State -1, Jump Strong Kick]
type = Null
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(29) = 0
ignorehitpause = 1

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl && (ctrl = 0)
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = stateno = 1000 && movecontact
trigger4 = stateno = 1610 && movecontact
trigger5 = stateno = 3159
trigger6 = stateno = 1140 && movecontact
trigger7 = stateno = 1141 && movecontact
trigger8 = stateno = 1500 && movecontact
trigger9 = stateno = [1300,1350]
var(29) = 1
ignorehitpause = 1

[State 12500, 2]
type = Helper
triggerall = numhelper(243000) = 1
triggerall = !numhelper(311)
triggerall = command = "c"
triggerall = stateno != [1251112,1251113]
triggerall = stateno != [4002,4008]
trigger1 = MoveType != H
trigger1 = RoundState = 2
helpertype = normal
name = "¤±¤¤¤·"
ID = 311
pos = 0,0
postype = P1
facing = 1
stateno = 311
keyctrl = 0
ownpal = 1
Size.XScale = 2.0
Size.YScale = 2.0