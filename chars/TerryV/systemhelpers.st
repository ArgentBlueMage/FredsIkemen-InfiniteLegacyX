;========================== NORMAL HITSPARK NORTH ==============================
[Statedef 8020]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .13,.13
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = prevstateno = [1000,1999]
trigger1 = time <= 10
time = 1
color = 0+(time*25)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .13+((time)*.01),.13+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .15-((time-2)*.024),.15-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .05+((time-8)*.006125),.05+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .23,.11
postype = p1
pos = 0,0
vel = 0,-.75
facing = 1
vfacing = 1
sprpriority = -3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .29,.13
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;===================== NORMAL HITSPARK NORTH EAST ==============================
[Statedef 8021]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .13,.13
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .13+((time)*.01),.13+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .15-((time-2)*.024),.15-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .05+((time-8)*.006125),.05+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .23,.11
postype = p1
pos = 0,0
vel = -.75,-.75
facing = 1
vfacing = 1
sprpriority = -3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .29,.13
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================== NORMAL HITSPARK EAST ==============================
[Statedef 8022]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .13,.13
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .13+((time)*.01),.13+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .15-((time-2)*.024),.15-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .05+((time-8)*.006125),.05+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .23,.11
postype = p1
pos = -10,0
vel = -.75,0
facing = 1
vfacing = ifelse(random<500,1,-1)
sprpriority = -3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .29,.13
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;===================== NORMAL HITSPARK SOUTH EAST ==============================
[Statedef 8023]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .13,.13
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .13+((time)*.01),.13+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .15-((time-2)*.024),.15-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .05+((time-8)*.006125),.05+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .23,.11
postype = p1
pos = 0,0
vel = -.75,.75
facing = 1
vfacing = 1
sprpriority = -3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .29,.13
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================== NORMAL HITSPARK SOUTH ==============================
[Statedef 8024]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .13,.13
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .13+((time)*.01),.13+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .15-((time-2)*.024),.15-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .05+((time-8)*.006125),.05+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .23,.11
postype = p1
pos = 0,0
vel = 0,.75
facing = 1
vfacing = 1
sprpriority = -3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .29,.13
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================== SPECIAL HITSPARK NORTH =============================
[Statedef 8030]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .175,.175
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .175+((time)*.01),.175+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .195-((time-2)*.024),.195-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .065+((time-8)*.006125),.065+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .29,.14
postype = p1
pos = 0,0
vel = 0,-.75
facing = 1
vfacing = 1;ifelse(random<500,1,-1)
sprpriority = -3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .39,.18
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;======================= SPECIAL HITSPARK NORTH EAST ===========================
[Statedef 8031]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .175,.175
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .175+((time)*.01),.175+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .195-((time-2)*.024),.195-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .065+((time-8)*.006125),.065+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .29,.14
postype = p1
pos = 0,0
vel = -.75,-.75
facing = 1
vfacing = 1
sprpriority = -3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .39,.18
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================= SPECIAL HITSPARK EAST ===============================
[Statedef 8032]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .175,.175
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .175+((time)*.01),.175+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .195-((time-2)*.024),.195-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .065+((time-8)*.006125),.065+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .29,.14
postype = p1
pos = -10,0
vel = -.75,0
facing = 1
vfacing = ifelse(random<500,1,-1)
sprpriority = -3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .39,.18
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;====================== SPECIAL HITSPARK SOUTH EAST ============================
[Statedef 8033]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .175,.175
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .175+((time)*.01),.175+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .195-((time-2)*.024),.195-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .065+((time-8)*.006125),.065+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .29,.14
postype = p1
pos = 0,0
vel = -.75,.75
facing = 1
vfacing = 1
sprpriority = -3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .39,.18
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;======================== SPECIAL HITSPARK SOUTH ===============================
[Statedef 8034]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .175,.175
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 8
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .175+((time)*.01),.175+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .195-((time-2)*.024),.195-((time-2)*.024)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 8
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 7
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .065+((time-8)*.006125),.065+((time-8)*.006125)
trans = addalpha
alpha = 256-((time-8)*42),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .29,.14
postype = p1
pos = 0,0
vel = 0,.75
facing = 1
vfacing = 1;ifelse(random<500,1,-1)
sprpriority = -3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .39,.18
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================== SUPER HITSPARK NORTH =============================
[Statedef 8040]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .28,.28
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .30-((time-2)*.05),.30-((time-2)*.05)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 7
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 5
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .1+((time-8)*.015),.1+((time-8)*.015)
trans = addalpha
alpha = 200-((time-8)*40),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .39,.19
postype = p1
pos = 0,0
vel = 0,-.75
facing = 1
vfacing = 1
sprpriority = -3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8023
ID = 8023
scale = .2,.2
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = -4
removetime = 8
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8023)
ID = 8023
trans = addalpha
alpha = 256-((time-2)*32),256
scale = .2+(time*.0125),.2+(time*.0125)

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .52,.25
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================== SUPER HITSPARK NORTH EAST ===========================
[Statedef 8041]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .28,.28
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .30-((time-2)*.05),.30-((time-2)*.05)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 7
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 5
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .1+((time-8)*.015),.1+((time-8)*.015)
trans = addalpha
alpha = 200-((time-8)*40),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .39,.19
postype = p1
pos = 0,0
vel = -.75,-.75
facing = 1
vfacing = 1
sprpriority = -3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8023
ID = 8023
scale = .2,.2
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = -4
removetime = 8
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8023)
ID = 8023
trans = addalpha
alpha = 256-((time-2)*32),256
scale = .2+(time*.0125),.2+(time*.0125)

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .52,.25
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = -45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================== SUPER HITSPARK EAST ===============================
[Statedef 8042]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .28,.28
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .30-((time-2)*.05),.30-((time-2)*.05)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 7
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 5
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .1+((time-8)*.015),.1+((time-8)*.015)
trans = addalpha
alpha = 200-((time-8)*40),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .39,.19
postype = p1
pos = -10,0
vel = -.75,0
facing = 1
vfacing = ifelse(random<500,1,-1)
sprpriority = -3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8023
ID = 8023
scale = .2,.2
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = -4
removetime = 8
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8023)
ID = 8023
trans = addalpha
alpha = 256-((time-2)*32),256
scale = .2+(time*.0125),.2+(time*.0125)

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .52,.25
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================== SUPER HITSPARK SOUTH EAST ============================
[Statedef 8043]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .28,.28
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .30-((time-2)*.05),.30-((time-2)*.05)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 7
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 5
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .1+((time-8)*.015),.1+((time-8)*.015)
trans = addalpha
alpha = 200-((time-8)*40),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .39,.19
postype = p1
pos = 0,0
vel = -.75,.75
facing = 1
vfacing = 1
sprpriority = -3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8023
ID = 8023
scale = .2,.2
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = -4
removetime = 8
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8023)
ID = 8023
trans = addalpha
alpha = 256-((time-2)*32),256
scale = .2+(time*.0125),.2+(time*.0125)

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .52,.25
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;========================== SUPER HITSPARK SOUTH ===============================
[Statedef 8044]
physics = N
anim = 9741
velset = 0,0

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8020
ID = 8020
scale = .28,.28
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
supermovetime = 9999
pausemovetime = 9999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time < 3
ID = 8020
scale = .28+((time)*.01),.28+((time)*.01)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8020)
trigger1 = time > 2
ID = 8020
scale = .30-((time-2)*.05),.30-((time-2)*.05)
angle = time*90

[State 8010, Main Spark]
type = explod
trigger1 = time = 7
anim = 8021
ID = 8021
scale = .105,.105
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 5
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8021)
ID = 8021
scale = .1+((time-8)*.015),.1+((time-8)*.015)
trans = addalpha
alpha = 200-((time-8)*40),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8022
ID = 8022
scale = .39,.19
postype = p1
pos = 0,0
vel = 0,.75
facing = 1
vfacing = 1
sprpriority = -3
removetime = -2
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8022)
trigger1 = time > 4
ID = 8022
trans = addalpha
alpha = 256-((time-4)*21),256

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8023
ID = 8023
scale = .2,.2
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = -4
removetime = 8
supermovetime = 9999
pausemovetime = 9999
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8023)
ID = 8023
trans = addalpha
alpha = 256-((time-2)*32),256
scale = .2+(time*.0125),.2+(time*.0125)

[State 8010, Main Spark]
type = explod
trigger1 = !time
anim = 8024
ID = 8024
scale = .52,.25
postype = p1
pos = 0,0
vel = 0,0
facing = -1
vfacing = -1
sprpriority = 4
removetime = 10
supermovetime = 9999
pausemovetime = 9999
trans = add
persistent = 0
angle = 90

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8024)
trigger1 = time > 6
ID = 8024
trans = addalpha
alpha = 256-((time-6)*65),256

[State 8010, End]
type = removeexplod
trigger1 = time > 16
trigger2 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = time > 16
trigger2 = enemynear,movetype!=h
;============================ NORMAL GUARD-SPARK=================
[Statedef 8100]
physics = N
anim=8100
velset=0,0
sprpriority=7

[State 8010, assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8010, scale]
type=angledraw
trigger1= 1
scale=.8,.8

[State 8010, end]
type=removeexplod
trigger1= animtime = 0

[State 8010, end]
type=destroyself
trigger1= animtime = 0
;============================ SPECIAL GUARD SPARK =================
[Statedef 8105]
physics = N
anim = 9741
velset=0,0
sprpriority=7

[State 8010, assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8104
ID = 8104
pos = 0,0
postype = p1
facing = -1
vfacing = 1
bindtime = -1
removetime = -2
supermovetime=9999
pausemovetime=9999
scale = .5,.75
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause =  1
trans = add

[State 8010, end]
type = destroyself
trigger1= time > 12
;============================== TRIGGER FX =================================
[Statedef 8200]
physics = N
anim = 9741
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S7000,9
channel = -1
volumescale = 50

[State 0, Explod]
type = Explod
trigger1 = time = 6
anim = 8220
ID = 8220
pos = 0,0
postype = p1
scale = .25,.25
bindtime = 1
removetime = -2
supermovetime = 255
pausemovetime = 255
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 0
trans = add

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8210
ID = 8210
pos = 0,0
postype = p1
scale = .25,.25
bindtime = 1
removetime = -2
supermovetime = 255
pausemovetime = 255
sprpriority = -2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
trans = add

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 25

[State 1150, ChangeState]
type = DestroySelf
trigger1 = time >= 25
;============================== EX FX =================================
[Statedef 8400]
physics = n
anim = parent,anim
sprpriority = 2

[State 0, PlayerPush]
type = PlayerPush
trigger1 =  1
value = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 20000, Turn]
type = Turn
trigger1 = facing != root,facing

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S7000,4
channel = -1
volumescale = 70
persistent = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = time <= 15
time = 1
add = 200-(time*13),200-(time*13),200-(time*13)
invertall = 0
color = 256
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = parent,animelemtime(1) >= 0
trigger1 = parent,animelemtime(2) < 0
value = anim
elem = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = parent,animelemtime(2) >= 0
trigger1 = parent,animelemtime(3) < 0
value = anim
elem = 2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = parent,animelemtime(3) >= 0
trigger1 = parent,animelemtime(4) < 0
value = anim
elem = 3

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = parent,animelemtime(4) >= 0
trigger1 = parent,animelemtime(5) < 0
value = anim
elem = 4

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = parent,animelemtime(5) >= 0
trigger1 = parent,animelemtime(6) < 0
value = anim
elem = 5

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = parent,animelemtime(6) >= 0
trigger1 = parent,animelemtime(7) < 0
value = anim
elem = 6
persistent = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = parent,animelemtime(7) >= 0
trigger1 = parent,animelemtime(8) < 0
value = anim
elem = 7
persistent = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = parent,animelemtime(8) >= 0
trigger1 = parent,animelemtime(9) < 0
value = anim
elem = 8
persistent = 1

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 15
trigger2 = root,movetype = h
trigger3 = root,anim != anim
;============================== SUPER SPARK ===================================
[Statedef 8500]
physics = N
anim = 9741

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 29
flag = noFG

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time < 29
time = 1
color = 0
add = -10,-10,-10

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time = [29,34]
time = 1
color = 0+((time-29)*51)
add = -10+((time-29)*2),-10+((time-29)*2),-10+((time-29)*2)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S7000,1
channel = -1
volumescale = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S7000,2
channel = -1
volumescale = 90

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8500
ID = 8500
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .4,.5
sprpriority = -5
ownpal = 1
removeongethit = 1
trans = add
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8510
ID = 8510
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .4,.5
sprpriority = -6
ownpal = 1
removeongethit = 1
trans = sub
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8520
ID = 8520
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .25,.25
sprpriority = 4
ownpal = 1
removeongethit = 1
trans = add
persistent = 0

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 34

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 34
;============================== SUPER SPARK 2 =================================
[Statedef 8550]
physics = N
anim = 9741

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG
;flag2 = nobardisplay
;flag3 = noBG

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time < 30
time = 1
color = 0
add = -250,-250,-250

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time = [30,38]
time = 1
color = 0+((time-30)*32)
add = -180+((time-30)*20),-180+((time-30)*20),-180+((time-30)*20)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S7000,2
channel = -1
volumescale = 60

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S7000,3
channel = -1
volumescale = 80

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8550
ID = 8550
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .4,.5
sprpriority = -5
ownpal = 1
removeongethit = 1
trans = add

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8510
ID = 8510
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .5,.6
sprpriority = -6
ownpal = 1
removeongethit = 1
trans = sub

;[State 0, Explod]
;type = Explod
;trigger1 = time = 0
;anim = 8550
;ID = 8550
;pos = 0,0
;postype = p1
;bindtime = -1
;removetime = -2
;supermovetime = 999
;pausemovetime = 999
;scale = .4,.5
;sprpriority = -6
;ownpal = 1
;removeongethit = 1
;trans = sub

;[State 0, Explod]
;type = Explod
;trigger1 = time = 14
;anim = 8510
;ID = 8510
;pos = 0,0
;postype = p1
;bindtime = -1
;removetime = -2
;supermovetime = 999
;pausemovetime = 999
;scale = .5,.3
;sprpriority = 4
;ownpal = 1
;removeongethit = 1
;trans = add
;angle = 90
;ontop = 1

;[State 0, Explod]
;type = Explod
;trigger1 = time = 24
;anim = 8510
;ID = 8510
;pos = 0,0
;postype = p1
;bindtime = -1
;removetime = -2
;supermovetime = 999
;pausemovetime = 999
;scale = .85,.3
;sprpriority = 4
;ownpal = 1
;removeongethit = 1
;trans = add
;ontop = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8560
ID = 8560
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .215,.215
sprpriority = 4
ownpal = 1
removeongethit = 1
trans = add

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 38

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 38
;============================== ULTRA SPARK ===================================
[Statedef 8600]
physics = N
anim = 9741

;[State 8510, BG PalFX]
;type = bgpalfx
;trigger1 = 1;time > 5
;time = 1
;color = 0
;add = -240,-240,-240
;mul = 180,180,180;110,40,90
;invertall = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S7000,0
channel = -1
volumescale = 200

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8600
ID = 8600
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .85,.85
sprpriority = -5
ownpal = 1
removeongethit = 1
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 11
ID = 8600
scale = .8,.8
trans = add

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8610
ID = 8610
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1.5,1.5
sprpriority = 3
ownpal = 1
removeongethit = 1
trans = add

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 11
ID = 8610
scale = .75,.75
trans = add

;[State 0, Explod]
;type = Explod
;trigger1 = time = 0
;anim = 8520
;ID = 8520
;pos = 0,0
;postype = p1
;bindtime = -1
;removetime = -2
;supermovetime = 999
;pausemovetime = 999
;scale = .25,.25
;sprpriority = 4
;ownpal = 1
;removeongethit = 1
;trans = add

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 38

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 38


