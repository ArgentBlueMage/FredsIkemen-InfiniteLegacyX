
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
name = "holdfwd"
command=/$F
time=1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time=1

[Command]
name = "holddown"
command = /$D
time = 1


[Command]
name = "holddownback"
command = /$DB
time = 1
[Command]
name = "holdback"
command = /$B
time = 1
[Command]
name = "holdupback"
command = /$UB
time = 1
[Command]
name = "holdup"
command = /$U
time = 1
[Command]
name = "holdupfwd"
command = /$UF
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
name = "holdstart"
command = /s
time = 1





[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "dfwd"
command = DF
time = 1

[Command]
name = "dback"
command = DB
time = 1

[Command]
name = "ufwd"
command = UF
time = 1

[Command]
name = "uback"
command = UB
time = 1





[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1





[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1



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
command = /x
time = 1

[Command]
name = "recovery"
command = /y
time = 1

[Command]
name = "recovery"
command = /z
time = 1







[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1


[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1


[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1


[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "a+c"
command = a+c
time = 1

[Command]
name = "b+c"
command = b+c
time = 1





[Command]
name = "highjump"
command = $D, $U
time = 15
buffer.time = 3

[Command]
name = "DU"
command = ~$D, U
time = 12
buffer.time = 3

[Command]
name = "DU"
command = DB, UF
time = 18
buffer.time = 3

[Command]
name = "DU"
command = DF, UB
time = 18
buffer.time = 3

[Command]
name = "DU"
command = ~$D, UF
time = 12
buffer.time = 3
[Command]
name = "DU"
command = ~$D, UB
time = 12
buffer.time = 3



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


;---------------------------------------------------------------------------




[Statedef 10218]
type    = S
physics = S
anim=20218
ctrl = 0
[State 218 , 1]
type = posset
trigger1=1
x=root,pos x+ifelse((root,facing>0),-100,100)
y=root,pos y






 


[State 66]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow





[State -2, タッグ用生死判別];
Type = VarSet
triggerall = RoundState = 2
trigger1 = NumEnemy = 1
trigger2 = NumEnemy = 2
trigger2 = EnemyNear,life > 0
var(36) = 0
IgnoreHitPause = 1

[State -2, タッグ用生死判別];
Type = VarSet
triggerall = RoundState = 2
trigger1 = NumEnemy = 2
trigger1 = EnemyNear,life <= 0
var(36) = 1
IgnoreHitPause = 1












[State -2:         VarSet]
type     = VarSet
trigger1=fvar(5)<=-1
trigger1=fvar(5) !=-99999
trigger1=root,movetype=H||(root,stateno=[150,159])||(root,stateno=[550,579])||(root,stateno=[6080,6082])
fv = 5
value =-fvar(5)
Ignorehitpause=1










[State -2 , 1]
type = Varset
triggerall=fvar(34)>0 && fvar(34)-fvar(5) !=[-999,999]
triggerall=fvar(33)>0 && fvar(33)-fvar(5) !=[-999,999]
triggerall=fvar(32)>0 && fvar(32)-fvar(5) !=[-999,999]
triggerall=fvar(31)>0 && fvar(31)-fvar(5) !=[-999,999]
triggerall=fvar(30)>0 && fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(35)>=0
trigger1=fvar(5) >0
fv = 35
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(35)<0 
fv =  35
value =-fvar(35)
[State -2 , 1]
type = Varset
triggerall=fvar(34)=0||fvar(34)-fvar(5) =[-999,999]
triggerall=fvar(33)>0 && fvar(33)-fvar(5) !=[-999,999]
triggerall=fvar(32)>0 && fvar(32)-fvar(5) !=[-999,999]
triggerall=fvar(31)>0 && fvar(31)-fvar(5) !=[-999,999]
triggerall=fvar(30)>0 && fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(34)>=0
trigger1=fvar(5) >0
fv = 34
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(34)<0 
fv =  34
value =-fvar(34)
[State -2 , 1]
type = Varset
triggerall=fvar(33)=0||fvar(33)-fvar(5) =[-999,999]
triggerall=fvar(32)>0 && fvar(32)-fvar(5) !=[-999,999]
triggerall=fvar(31)>0 && fvar(31)-fvar(5) !=[-999,999]
triggerall=fvar(30)>0 && fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(33)>=0
trigger1=fvar(5) >0
fv = 33
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(33)<0 
fv =  33
value =-fvar(33)
[State -2 , 1]
type = Varset
triggerall=fvar(32)=0||fvar(32)-fvar(5) =[-999,999]
triggerall=fvar(31)>0 && fvar(31)-fvar(5) !=[-999,999]
triggerall=fvar(30)>0 && fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(32)>=0
trigger1=fvar(5) >0
fv = 32
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(32)<0 
fv =  32
value =-fvar(32)
[State -2 , 1]
type = Varset
triggerall=fvar(31)=0||fvar(31)-fvar(5) =[-999,999]
triggerall=fvar(30)>0 && fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(31)>=0
trigger1=fvar(5) >0
fv = 31
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(31)<0 
fv =  31
value =-fvar(31)
[State -2 , 1]
type = Varset
triggerall=fvar(30)=0||fvar(30)-fvar(5) =[-999,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(30)>=0
trigger1=fvar(5) >0
fv = 30
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(30)<0 
fv =  30
value =-fvar(30)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(30)=0||root,fvar(30)-fvar(5) =[-999,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(30)>=0
trigger1=fvar(5) >0
fv = 30
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(30)<0 
fv =  30
value =-root,fvar(30)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(33)=0||root,fvar(33)-fvar(5) =[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(33)>=0
trigger1=fvar(5) >0
fv = 33
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(33)<0 
fv =  33
value =-root,fvar(33)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(32)=0||root,fvar(32)-fvar(5) =[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(32)>=0
trigger1=fvar(5) >0
fv = 32
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(32)<0 
fv =  32
value =-root,fvar(32)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(29)=0||root,fvar(29)-fvar(5) =[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(29)>=0
trigger1=fvar(5) >0
fv = 29
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(29)<0 
fv =  29
value =-root,fvar(29)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(38)=0||root,fvar(38)-fvar(5) =[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(38)>=0
trigger1=fvar(5) >0
fv = 38
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(38)<0 
fv =  38
value =-root,fvar(38)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(37)=0||root,fvar(37)-fvar(5) =[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(37)>=0
trigger1=fvar(5) >0
fv = 37
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(37)<0 
fv =  37
value =-root,fvar(37)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(36)=0||root,fvar(36)-fvar(5) =[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(36)>=0
trigger1=fvar(5) >0
fv = 36
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(36)<0 
fv =  36
value =-root,fvar(36)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(35)=0||root,fvar(35)-fvar(5) =[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(35)>=0
trigger1=fvar(5) >0
fv = 35
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(35)<0 
fv =  35
value =-root,fvar(35)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(34)=0||root,fvar(34)-fvar(5) =[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(34)>=0
trigger1=fvar(5) >0
fv = 34
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(34)<0 
fv =  34
value =-root,fvar(34)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(31)=0||root,fvar(31)-fvar(5) =[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(31)>=0
trigger1=fvar(5) >0
fv = 31
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(31)<0 
fv =  31
value =-root,fvar(31)





[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(24)>1 && root,fvar(24)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(29)>1 && root,fvar(29)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(26)>1 && root,fvar(26)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(25)=0 && var(14)<2
fv = 25
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(25)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 25
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(25)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 25
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(29)>1 && root,fvar(29)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(26)>1 && root,fvar(26)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(24)=0 && var(14)<2
fv = 24
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(24)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 24
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(24)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 24
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset 
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(26)>1 && root,fvar(26)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(29)=0 && var(14)<2
fv = 29
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(29)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 29
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(29)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 29
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(26)=0 && var(14)<2
fv = 26
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(26)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 26
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(26)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 26
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(27)=0 && var(14)<2
fv = 27
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(27)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 27
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(27)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 27
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
trigger1=root,fvar(28)=0 && var(14)<2
fv = 28
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(28)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 28
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(28)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 28
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))











[State -2:         VarSet]
type     = VarSet
trigger1=fvar(5)>0
fv = 5
value =-99999
Ignorehitpause=1
[State -2 , 1]
type = Varset
triggerall=fvar(5) =-99999
trigger1=var(13) !=enemynear(Var(36)),stateno
fv = 5
value =0
Ignorehitpause=1
[State -2 , 1]
type = Varset
triggerall=fvar(5) !=-99999
triggerall=((root,movetype =H) ||root,stateno !=[800,899])
trigger1=1
fv = 5
value =0
Ignorehitpause=1
[State -2:         VarSet]
type     = VarSet
triggerall=fvar(5)<=0
triggerall=fvar(5) !=-99999
triggerall=root,movetype!=H
triggerall=root,stateno<200||root,movetype=A||(root,stateno=[4000,4099])
trigger1=var(13)>0
trigger1=var(13) =enemynear(Var(36)),stateno
fv = 5 
value =-(var(13)*1000)-ifelse(var(14)>999,999,var(14)+ifelse((root,teamside=1),1,0))
Ignorehitpause=1












[State -2:         VarSet] 
type     = VarSet 
triggerall=var(50)=[0,999999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899]);;;||(stateno=[1300,1499]))
trigger1=(var(13)=0)||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 50 
value =var(50)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 50
value =var(50)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1,999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])
trigger1=var(13)>0 
v = 50
value =-var(50)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=0
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])
trigger1=var(13)>0 
v = 50
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 50
value =ifelse(var(50)<=-1000000,-var(50)-1000000,ifelse(var(50)>=-999,0,-Var(50)-(ceil(-Var(50)/1000)-ifelse(-Var(50)-(ceil(-Var(50)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 50
value =-var(50)
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 50
value =var(50)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(50)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(50)-(ceil(Var(50)/1000)-ifelse(Var(50)-(ceil(Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 50
value =var(50)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[0,999999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])
trigger1=(var(13)=0)||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 51
value =var(51)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 51
value =var(51)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1,999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])
trigger1=var(13)>0 
v = 51
value =-var(51)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=0 && var(50)=[999,999999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])
trigger1=var(13)>0 
v = 51
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 51
value =ifelse(var(51)<=-1000000,-var(51)-1000000,ifelse(var(51)>=-999,0,-Var(51)-(ceil(-Var(51)/1000)-ifelse(-Var(51)-(ceil(-Var(51)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 51
value =-var(51)
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 51
value =var(51)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(51)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(51)-(ceil(Var(51)/1000)-ifelse(Var(51)-(ceil(Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 51
value =var(51)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[0,999999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])
trigger1=(var(13)=0)||((var(35)!=[1,8])&&(var(35)!=[100,140])&&fvar(5)!=-99999)||(root,prevstateno=105)
v = 52
value =var(52)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 52
value =var(52)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1,999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])
trigger1=var(13)>0 
v = 52
value =-var(52)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=0
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])
trigger1=var(13)>0 
v = 52
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 52
value =ifelse(var(52)<=-1000000,-var(52)-1000000,ifelse(var(52)>=-999,0,-Var(52)-(ceil(-Var(52)/1000)-ifelse(-Var(52)-(ceil(-Var(52)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 52
value =-var(52)
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 52
value =var(52)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(52)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(52)-(ceil(Var(52)/1000)-ifelse(Var(52)-(ceil(Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 52
value =var(52)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[0,999999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])
trigger1=(var(13)=0)||((var(35)!=[1,8])&&(var(35)!=[100,140])&&fvar(5)!=-99999)||(root,prevstateno=105);||numhelper(4010)
v = 53
value =var(53)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 53
value =var(53)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1,999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])
trigger1=var(13)>0 
v = 53
value =-var(53)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=0 && var(52)=[999,999999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])
trigger1=var(13)>0 
v = 53
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 53
value =ifelse(var(53)<=-1000000,-var(53)-1000000,ifelse(var(53)>=-999,0,-Var(53)-(ceil(-Var(53)/1000)-ifelse(-Var(53)-(ceil(-Var(53)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 53
value =-var(53)
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 53
value =var(53)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(53)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(53)-(ceil(Var(53)/1000)-ifelse(Var(53)-(ceil(Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 53
value =var(53)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[0,999999] 
trigger1=(root,stateno=1300);;||(root,stateno=[1200,1299]))&&(root,stateno!=[206,209])(root,stateno!=[206,209])
trigger1=(var(13)=0);;||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 54
value =var(54)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 54
value =var(54)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1,999]
trigger1=(root,stateno=1300)
trigger1=var(13)>0 
v = 54
value =-var(54)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=0
trigger1=(root,stateno=1300)
trigger1=var(13)>0 
v = 54
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||(root,ctrl&&var(35)!=[1,8])
v = 54
value =ifelse(var(54)<=-1000000,-var(54)-1000000,ifelse(var(54)>=-999,0,-Var(54)-(ceil(-Var(54)/1000)-ifelse(-Var(54)-(ceil(-Var(54)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200 && enemynear(Var(36)),statetype=A)||(root,stateno=[5100,5150])
v = 54
value =-var(54)
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 54
value =var(54)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(54)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(54)-(ceil(Var(54)/1000)-ifelse(Var(54)-(ceil(Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 54
value =var(54)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[0,999999]
trigger1=(root,stateno=1300)
trigger1=(var(13)=0);||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 55
value =var(55)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 55
value =var(55)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=(var(55)=[1,999]) 
trigger1=(root,stateno=1300)
trigger1=var(13)>0 
v = 55
value =-var(55)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=0 && (var(54)=[999,999999])
trigger1=(root,stateno=1300)
trigger1=var(13)>0 
v = 55
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200 && enemynear(Var(36)),statetype=A)||(root,ctrl&&var(35)!=[1,8])
v = 55
value =ifelse(var(55)<=-1000000,-var(55)-1000000,ifelse(var(55)>=-999,0,-Var(55)-(ceil(-Var(55)/1000)-ifelse(-Var(55)-(ceil(-Var(55)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 55
value =-var(55)
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 55
value =var(55)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(55)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(55)-(ceil(Var(55)/1000)-ifelse(Var(55)-(ceil(Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 55
value =var(55)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[0,999999]
trigger1=(root,stateno=[2000,3999])||root,stateno=1550
trigger1=(var(13)=0)
v = 57
value =var(57)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 57
value =var(57)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1,999]
trigger1=(root,stateno=[2000,3999])||root,stateno=1550
trigger1=var(13)>0 
v = 57
value =-var(57)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=0 ;;&& var(5)=[999,999999]
trigger1=(root,stateno=[2000,3999])||root,stateno=1550
trigger1=var(13)>0 
v = 57
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)
v = 57
value =ifelse(var(57)<=-1000000,-var(57)-1000000,ifelse(var(57)>=-999,0,-Var(57)-(ceil(-Var(57)/1000)-ifelse(-Var(57)-(ceil(-Var(57)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[-1999999,-1]
trigger1=(((root,Ctrl)||(root,StateNo =[120,149]))&&root,statetype!=A)||(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 57
value =-var(57)
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 57
value =var(57)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(57)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(57)-(ceil(Var(57)/1000)-ifelse(Var(57)-(ceil(Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 57
value =var(57)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[0,999999]
trigger1=(root,stateno=[2000,3999])||root,stateno=1550
trigger1=(var(13)=0)
v = 58
value =var(58)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 58
value =var(58)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1,999]
trigger1=(root,stateno=[2000,3999])||root,stateno=1550
trigger1=var(13)>0 
v = 58
value =-var(58)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=0 && var(57)=[999,999999]
trigger1=(root,stateno=[2000,3999])||root,stateno=1550
trigger1=var(13)>0 
v = 58
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)
v = 58
value =ifelse(var(58)<=-1000000,-var(58)-1000000,ifelse(var(58)>=-999,0,-Var(58)-(ceil(-Var(58)/1000)-ifelse(-Var(58)-(ceil(-Var(58)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[-1999999,-1]
trigger1=(((root,Ctrl)||(root,StateNo =[120,149]))&&root,statetype!=A)||(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 58
value =-var(58)
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 58
value =var(58)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(58)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(58)-(ceil(Var(58)/1000)-ifelse(Var(58)-(ceil(Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 58
value =var(58)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[0,999999]
triggerall=(root,stateno=[700,715])
trigger1=(var(13)=0)
v = 56
value =var(56)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 56
value =var(56)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1,999]
triggerall=(root,stateno=[700,715])
trigger1=var(13)>0 
v = 56
value =-var(56)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=0
triggerall=(root,stateno=[700,715])
trigger1=var(13)>0 
v = 56
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[-1999999,-1]
trigger1=(root,ctrl&&helper(218),var(35)!=[1,9])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)
v = 56
value =ifelse(var(56)<=-1000000,-var(56)-1000000,ifelse(var(56)>=-999,0,-Var(56)-(ceil(-Var(56)/1000)-ifelse(-Var(56)-(ceil(-Var(56)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150]);||(root,ctrl&&helper(218),var(35)!=[1,9])
v = 56
value =-var(56)
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 56
value =var(56)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(56)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(56)-(ceil(Var(56)/1000)-ifelse(Var(56)-(ceil(Var(56)/1000)*1000)<0,1,0))*1000)-(ceil(p2stateno/10)-ifelse(p2stateno-(ceil(p2stateno/10)*10)<0,1,0)) =0
v = 56
value =var(56)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[0,999999]
triggerall=(root,stateno=[700,715])
trigger1=(var(13)=0)
v = 59
value =var(59)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 59
value =var(59)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1,999]
triggerall=(root,stateno=[700,715])
trigger1=var(13)>0 
v = 59
value =-var(59)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=0 && var(56)=[999,999999]
trigger1=var(13)>0 
v = 59
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[-1999999,-1]
trigger1=(root,ctrl&&helper(218),var(35)!=[1,9])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)
v = 59
value =ifelse(var(59)<=-1000000,-var(59)-1000000,ifelse(var(59)>=-999,0,-Var(59)-(ceil(-Var(59)/1000)-ifelse(-Var(59)-(ceil(-Var(59)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150]);||(root,ctrl&&helper(218),var(35)!=[1,9])
v = 59
value =-var(59)
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 59
value =var(59)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(59)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(59)-(ceil(Var(59)/1000)-ifelse(Var(59)-(ceil(Var(59)/1000)*1000)<0,1,0))*1000)-(ceil(p2stateno/10)-ifelse(p2stateno-(ceil(p2stateno/10)*10)<0,1,0)) =0
v = 59
value =var(59)+2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(43)=[1,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT 
v = 43
value =-root,var(43)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(43)=0
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT 
v = 43
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(43)=[-1999999,-1]
trigger1=1;(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 43
value =-root,var(43)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(43)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 43
value =root,var(43)-2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(43)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(root,var(43)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(root,Var(43)-(ceil(root,Var(43)/1000)-ifelse(root,Var(43)-(ceil(root,Var(43)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
trigger3=numenemy>1&&(enemynear(0),life>0&&enemynear(1),life>0)
v = 43
value =root,var(43)+2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(44)=[1,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
v = 44
value =-root,var(44)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(44)=0 && root,var(43)=[999,999999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
v = 44
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(44)=[-1999999,-1]
trigger1=1;(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 44
value =-root,var(44)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(44)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 44
value =root,var(44)-2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(44)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(root,var(44)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(root,Var(44)-(ceil(root,Var(44)/1000)-ifelse(root,Var(44)-(ceil(root,Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
trigger3=numenemy>1&&(enemynear(0),life>0&&enemynear(1),life>0)
v = 44
value =root,var(44)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[0,999999]
triggerall=(root,stateno=[700,701])||(root,stateno=102)||(root,stateno=107)||(root,stateno=[1122,1123])
trigger1=(var(13)=0)||root,stateno=198
v = 44
value =var(44)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 44
value =var(44)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1,999]
triggerall=(root,stateno=[700,701])||(root,stateno=102)||(root,stateno=107)||(root,stateno=[1122,1123])
trigger1=var(13)>0 
v = 44
value =-var(44)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=0
triggerall=(root,stateno=[700,701])||(root,stateno=102)||(root,stateno=107)||(root,stateno=[1122,1123])
trigger1=var(13)>0 
v = 44
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[-1999999,-1]
trigger1=(root,ctrl&&var(35)!=[1,9])||(enemynear(Var(36)),movetype=H&&enemynear(Var(36)),stateno>=200)
v = 44
value =ifelse(var(44)<=-1000000,-var(44)-1000000,ifelse(var(44)>=-999,0,-Var(44)-(ceil(-Var(44)/1000)-ifelse(-Var(44)-(ceil(-Var(44)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 44
value =-var(44)
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 44
value =var(44)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(44)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(44)-(ceil(Var(44)/1000)-ifelse(Var(44)-(ceil(Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 44
value =var(44)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[0,999999]
triggerall=(root,stateno=[700,701])||(root,stateno=102)||(root,stateno=107)||(root,stateno=[1122,1123])
trigger1=(var(13)=0)
v = 45
value =var(45)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 45
value =var(45)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1,999]
triggerall=(root,stateno=[700,701])||(root,stateno=102)||(root,stateno=107)||(root,stateno=[1122,1123])
trigger1=var(13)>0 
v = 45
value =-var(45)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=0 && var(44)=[999,999999]
triggerall=(root,stateno=[700,701])||(root,stateno=102)||(root,stateno=107)||(root,stateno=[1122,1123])
trigger1=var(13)>0 
v = 45
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[-1999999,-1]
trigger1=(root,ctrl&&var(35)!=[1,9])||(enemynear(Var(36)),movetype=H&&enemynear(Var(36)),stateno>=200)
v = 45
value =ifelse(var(45)<=-1000000,-var(45)-1000000,ifelse(var(45)>=-999,0,-Var(45)-(ceil(-Var(45)/1000)-ifelse(-Var(45)-(ceil(-Var(45)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])||root,ctrl
v = 45
value =-var(45)
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 45
value =var(45)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(45)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(45)-(ceil(Var(45)/1000)-ifelse(Var(45)-(ceil(Var(45)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 45
value =var(45)+2000000





 





 

[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(46)=[-99999,0]
triggerall=(root,stateno=131)||(root,statetype=C&&root,stateno=[152,153])
trigger1=var(13)=[1,99999]
v = 46
value =-var(13)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(46)=[-99999,-1]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger2=root,life<=0
trigger3=enemynear(Var(36)),movetype !=A
trigger4=root,stateno=[800,899]
trigger5=root,movetype=A
trigger6=root,stateno=[2100,2199]
trigger7=root,stateno=140
v = 46
value =0
[State -2:         VarSet]
type     = parentVarSet 
triggerall=root,var(46)=[-99999,-1]
triggerall=(root,movetype !=H)||(root,stateno=[120,159])
trigger1=root,statetype !=C
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=root,stateno !=[130,159]
trigger4=(root,stateno!=131)&&(root,stateno!=[152,153])
v = 46
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(46)<-99999
trigger1=(root,stateno=[120,159])||root,movetype !=H
v = 46
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(46)=[-199999,-100000]
trigger1=1
v = 46
value =-root,var(46)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(46)=[-99999,-1]
trigger1=(root,stateno=[5000,5150])||(root,statetype=L)||((root,stateno >=200) && (root,movetype=H))
v = 46
value =root,var(46)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(45)=[-99999,0]
triggerall=root,var(46)>0&&root,var(46)!=var(13)
triggerall=(root,stateno=131)||(root,statetype=C&&root,stateno=[152,153])
trigger1=var(13)=[1,99999]
v = 45
value =-var(13)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(45)=[-99999,-1]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger2=root,life<=0
trigger3=enemynear(Var(36)),movetype !=A
trigger4=root,stateno=[800,899]
trigger5=root,movetype=A
trigger6=root,stateno=[2100,2199]
trigger7=root,stateno=140
trigger8=root,var(46)<=0||root,var(46)=-root,var(45)
v = 45
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(45)=[-99999,-1]
triggerall=(root,movetype !=H)||(root,stateno=[120,159])
trigger1=root,statetype !=C
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=root,stateno !=[130,159]
trigger4=(root,stateno!=131)&&(root,stateno!=[152,153])
v = 45
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(45)<-99999
trigger1=(root,stateno=[120,159])||root,movetype !=H
v = 45
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(45)=[-199999,-100000]
trigger1=1
v = 45
value =-root,var(45)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(45)=[-99999,-1]
trigger1=(root,stateno=[5000,5150])||(root,statetype=L)||((root,stateno >=200) && (root,movetype=H))
v = 45
value =root,var(45)-100000

















[State -2:         VarSet, Damage]
type     = VarSet
triggerall = enemynear(Var(36)),movetype=A
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1 =enemynear(Var(36)),HitDefAttr =SCA,HA
trigger2=var(15) - (enemynear(Var(36)),power*100)>=100000
v        = 15
value    =var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+100
[State -2:         VarSet, Damage]
type     = VarSet
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(15)-((ceil(var(15)/1000)-ifelse(var(15)-(ceil(var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
v        = 15
value    = var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+((ceil(enemynear(Var(36)),power/10)-ifelse(enemynear(Var(36)),power-(ceil(enemynear(Var(36)),power/10)*10)<0,1,0))*1000)
[State -2:         VarSet, Damage]
type     = VarSet
triggerall=var(15)-((ceil(var(15)/1000)-ifelse(var(15)-(ceil(var(15)/1000)*1000)<0,1,0))*1000)=[100,299]
trigger1 = enemynear(Var(36)),movetype !=A
v        = 15
value    = var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)

[State -2:         VarSet]
type     = varset
trigger1=root,stateno=131||(root,stateno=130&&root,time<=1&&prevstateno=131)
;trigger1=root,inguarddist=0
;trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=0
trigger2=root,statetype=L||root,stateno=[18300,18399]
trigger2=numpartner=0
trigger2=enemynear(Var(36)),movetype=A||root,stateno=[18300,18399]
trigger2=var(14)<=10||root,stateno=[18300,18399]
trigger3=(root,facing=1 && enemynear(Var(36)),pos x<root,pos x)||(root,facing=-1 && enemynear(Var(36)),pos x>root,pos x)
trigger3=enemynear(Var(36)),movetype=A && root,inguarddist=0
trigger3=numpartner=0 && numenemy=1
trigger4=numpartner=0 && numenemy=1
trigger4=(root,facing=1 && enemynear(Var(36)),pos x<=root,pos x)||(root,facing=-1 && enemynear(Var(36)),pos x>=root,pos x)||enemynear(Var(36)),vel x !=0
trigger4=enemynear(Var(36)),statetype=A && (var(14)<=20||(enemynear(Var(36)),vel x=0 && enemynear(Var(36)),vel y>0)) && enemynear(Var(36)),movetype =A 
trigger5=(var(35)=[100,101])||(var(35)=[200,201])
trigger6=var(10)-((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)=[100000,199999]
trigger6=(enemynear(Var(36)),pos x<=root,pos x)
trigger6=enemynear(Var(36)),statetype=A && enemynear(Var(36)),movetype=A && root,inguarddist=0
trigger7=var(10)-((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)=[200000,299999]
trigger7=(enemynear(Var(36)),pos x>=root,pos x)
trigger7=enemynear(Var(36)),statetype=A && enemynear(Var(36)),movetype=A && root,inguarddist=0
v        = 15
value    =((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+ifelse(root,stateno=131&& root,inguarddist=0,1,10)
[State -2, Run Back]
type     = varadd
triggerall=numpartner=0
triggerall=numenemy=1
triggerall=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=0
triggerall=enemynear(Var(36)),movetype=A && root,inguarddist=0
trigger1=root,fvar(30)>999 && root,fvar(30)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger1=root,fvar(30)>999 && root,fvar(30)-((ceil(root,fvar(30)/1000)-ifelse(root,fvar(30)-(ceil(root,fvar(30)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger2=root,fvar(33)>999 && root,fvar(33)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger2=root,fvar(33)>999 && root,fvar(33)-((ceil(root,fvar(33)/1000)-ifelse(root,fvar(33)-(ceil(root,fvar(33)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger3=root,fvar(32)>999 && root,fvar(32)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger3=root,fvar(32)>999 && root,fvar(32)-((ceil(root,fvar(32)/1000)-ifelse(root,fvar(32)-(ceil(root,fvar(32)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger4=root,fvar(29)>999 && root,fvar(29)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger4=root,fvar(29)>999 && root,fvar(29)-((ceil(root,fvar(29)/1000)-ifelse(root,fvar(29)-(ceil(root,fvar(29)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger5=root,fvar(38)>999 && root,fvar(38)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger5=root,fvar(38)>999 && root,fvar(38)-((ceil(root,fvar(38)/1000)-ifelse(root,fvar(38)-(ceil(root,fvar(38)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger6=root,fvar(37)>999 && root,fvar(37)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger6=root,fvar(37)>999 && root,fvar(37)-((ceil(root,fvar(37)/1000)-ifelse(root,fvar(37)-(ceil(root,fvar(37)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger7=root,fvar(36)>999 && root,fvar(36)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger7=root,fvar(36)>999 && root,fvar(36)-((ceil(root,fvar(36)/1000)-ifelse(root,fvar(36)-(ceil(root,fvar(36)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger8=root,fvar(35)>999 && root,fvar(35)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger8=root,fvar(35)>999 && root,fvar(35)-((ceil(root,fvar(35)/1000)-ifelse(root,fvar(35)-(ceil(root,fvar(35)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger9=root,fvar(34)>999 && root,fvar(34)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger9=root,fvar(34)>999 && root,fvar(34)-((ceil(root,fvar(34)/1000)-ifelse(root,fvar(34)-(ceil(root,fvar(34)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger10=root,fvar(31)>999 && root,fvar(31)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger10=root,fvar(31)>999 && root,fvar(31)-((ceil(root,fvar(31)/1000)-ifelse(root,fvar(31)-(ceil(root,fvar(31)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
v        = 15
value    =10
[State -2:         VarSet]
type     = varadd
trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=[1,98]
trigger1=root,movetype !=H
trigger1=root,statetype !=L
trigger1=root,stateno !=[5000,5150]
trigger1=root,stateno !=[8300,8305]
trigger1=root,stateno !=[18300,18305]
v        = 15
value    =1
[State -2:         VarSet]
type     = varset
trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=[3,9]
trigger2=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>=20
trigger3=root,stateno=[150,159]
trigger3=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>1||var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>10
trigger4=root,stateno=[5000,5059]
;trigger5=inguarddist
v        = 15
value    =((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)





[State -2 , 1]
type = Varset
triggerall=var(21)=[1,2]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 21
value =ifelse(var(21)=2,3,0)
[State -2 , 1]
type = Varset
trigger1=var(21)<3
trigger1=enemynear(Var(36)),stateno =5120
v = 21
value =1
[State -2 , 1]
type = Varset
trigger1=var(21)=1 && var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=(enemynear(Var(36)),stateno !=[5100,5110])&&(enemynear(Var(36)),stateno !=[0,199])
trigger1=(enemynear(Var(36)),vel x>2||enemynear(Var(36)),statetype=A) && numenemy=1 && numpartner=0
v = 21
value =3
[State -2 , 1]
type = Varset
trigger1=var(21)=0 && var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=(enemynear(Var(36)),stateno =5120)&&(enemynear(Var(36)),stateno !=[0,199])
trigger1=(enemynear(Var(36)),vel x>2||enemynear(Var(36)),statetype=A) && numenemy=1 && numpartner=0
v = 21
value =2
[State -2 , 1]
type = Varadd
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,998]
v = 18
value =1
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),life>0
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=0
trigger1=enemynear(Var(36)),stateno=[5100,5120]
v = 18
value =1
[State -2 , 1]
type = Varset
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)>=1
trigger1=(root,stateno=1200&&enemynear(Var(36)),stateno!=[5100,5159])||root,movehit||enemynear(Var(36)),stateno =[5000,5059]
v = 18
value =((ceil(var(53)/1000)-ifelse(var(53)-(ceil(var(53)/1000)*1000)<0,1,0))*1000)
[State -2 , 1]
type = Varset
triggerall=var(21)=3 && var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 18
value =1000+var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)
[State -2 , 1]
type = Varset
triggerall=var(18)=[1000,1999]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 18
value =1000
[State -2 , 1]
type = Varset
triggerall=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 18
value =(var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000))*1000














[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=30
trigger1=(enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899])
v = 19
value =-29
[State -2 , 1]
type = Varset
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=20
trigger2=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=30
trigger2=enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno=[0,199]
v = 19
value =((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)>1
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)<=19
v = 19
value =1
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=0
trigger1=(enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899])||(enemynear(Var(36)),statetype=A && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=1000)
v = 19
value =ifelse((enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899]),1,30)
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=1
trigger1=enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno=[0,199]
v = 19
value =1
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/1000)-ifelse(var(19)-(ceil(var(19)/1000)*1000)<0,1,0))*1000)=[0,99]
triggerall=root,inguarddist
trigger1=var(13)<=0 && enemynear(Var(36)),movetype !=A
v = 19
value =100
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/1000)-ifelse(var(19)-(ceil(var(19)/1000)*1000)<0,1,0))*1000)=[100,199]
trigger1=root,inguarddist=0
v = 19
value =-100
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=var(13)<=0 && root,movetype =A
v = 19
value =1000
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=root,stateno=305
v = 19
value =2000
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[1000,1999]
trigger1=root,ctrl
trigger2=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 19
value =ifelse(root,ctrl,-1000,1000)
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
triggerall=enemynear(Var(36)),pos x-root,pos x=[-120,120]
triggerall=(root,stateno=[120,159])||((root,stateno!=[5100,5150])&&(root,movetype !=H))
trigger1=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<30
trigger1=random<=10+ifelse((root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<20),20,0)
trigger2=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
trigger2=random<=8;+ifelse((root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<20),20,10)
v = 19
value =-2000
[State -2 , 1]
type = Varadd
triggerall= root,movetype!=A 
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[10000,19999]
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[30000,39999]
v = 19
value =ifelse(var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)<20000,-10000,-30000)
[State -2 , 1]
type = Varadd
triggerall= root,movetype!=A 
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[20000,29999]
v = 19
value =-20000
[State -2 , 1]
type = Varadd
trigger1= enemynear(Var(36)),stateno -var(13)!=[-9,9]
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[60000,69999]
trigger2= enemynear(Var(36)),stateno<160 ||(enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13))||(enemynear(Var(36)),movetype=H)||(root,movetype=H)
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[80000,89999]
v = 19
value =ifelse(var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)<70000,-60000,-80000)
[State -2 , 1]
type = Varadd
trigger1= enemynear(Var(36)),stateno !=var(13)
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[70000,79999]
v = 19
value =-70000
[State -2 , 1]
type = Varadd
triggerall= root,movetype=A
;triggerall=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[0,9999]
v = 19
value =ifelse(var(13)>0,20000,10000)
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),stateno!=var(13)
;trigger1=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[20000,29999]
v = 19
value =ifelse((enemynear(Var(36)),movetype=A),50000,ifelse((enemynear(Var(36)),stateno>=160),60000,10000))
[State -2 , 1]
type = Varadd
;triggerall=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
trigger1= enemynear(Var(36)),movetype=A||inguarddist
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[10000,19999]
trigger2= enemynear(Var(36)),movetype=A||inguarddist||(enemynear(Var(36)),stateno>=160 && enemynear(Var(36)),movetype!=H)
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[30000,39999]
v = 19
value =50000
[State -2 , 1]
type = Varadd
triggerall= var(35)=7 && root,stateno=[1100,1110]
triggerall=partner,life<=0;numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[0,99999]
trigger2=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[200000,299999]
trigger3=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[400000,499999]
trigger4=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[600000,699999]
v = 19
value =100000
[State -2 , 1]
type = Varadd
triggerall= root,stateno!=[1100,1110]
trigger1=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[100000,199999]
trigger2=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[300000,399999]
trigger3=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[500000,599999]
trigger4=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[700000,799999]
v = 19
value =100000
[State -2 , 1]
type = Varset
trigger1= enemynear(Var(36)),movetype=H && root,stateno=1150
trigger2=root,stateno=[1100,1110]
trigger2=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)<3
trigger3=root,prevstateno=[1100,1110]
trigger3=root,stateno!=[1100,1199]
trigger3=root,movetype!=H
v = 19
value =800000+var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)+((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1]
type = Varset
triggerall= enemynear(Var(36)),movetype!=H
trigger1=1
v = 19
value =var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)+((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1]
type = Varadd
triggerall=numenemy=1 && var(17)>0
trigger1=root,inguarddist 
v = 17
value =1
[State -2 , 1]
type = Varset
trigger1=root,inguarddist =0
v = 17
value =0
[State -2 , 1]
type = Varadd
triggerall=numenemy=1 && var(17)=0
trigger1=root,inguarddist && enemynear(Var(36)),movetype!=A
v = 17
value =1
[State -2 , 1]
type = Varadd 
trigger1=var(16)<999 && root,stateno=[120,159]
trigger2=(var(16)=[1,1000]) && root,stateno!=[120,159]
v = 16
value =ifelse((root,stateno!=[120,159]),-var(16),1)



[State -2 , 1]
type = Varset
trigger1=var(35)=1||var(35)=7||var(35)=[4,5]
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 35
value =3
[State -2 , 1]
type = Varset
trigger1=var(35)!=[10,39]
trigger1=(root,stateno=45)
v = 35
value =99
[State -2 , 1]
type = Varset
trigger1=0;;(root,stateno=102)
v = 35
value =98
[State -2 , 1]
type = Varset
trigger1=(root,stateno=710||root,stateno=1300) && enemynear(Var(36)),movetype!=H;; && var(13)>0
v = 35
value =ifelse(var(13)>0,7,2)
[State -2 , 1]
type = Varset
trigger1=var(35)=[7,8]
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 35
value =2
[State -2 , 1] 
type = Varset
trigger1=var(35)!=5
trigger1=var(35)!=[7,9]
trigger1 = (enemynear(Var(36)),HitDefAttr =SCA,NT,ST,HT)||root,var(46)>=2000000||root,var(47)>=2000000
v = 35
value =4
[State -2 , 1]
type = Varset
triggerall=((var(35)!=[5,40])&&(var(35)!=[98,300]));||var(35)=8
trigger1=(root,stateno=108)||(root,stateno=105)||(root,stateno=[41,49])||(root,stateno=123)||(root,stateno=[6080,6082])
v = 35
value =ifelse(var(35)=4,5,ifelse(var(13)>0,1,2))
[State -2 , 1]
type = Varset
trigger1=(root,stateno=625) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),statetype=A
v = 35
value =10
[State -2 , 1]
type = Varset
triggerall=(var(35)!=19)&&(var(35)!=13)&&(var(35)!=23)&&(var(35)!=21)&&(var(35)!=24)
trigger1=(root,stateno=[800,899]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger2=(root,stateno=[1000,1299]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger3=(root,stateno=[3000,3999]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =11
[State -2 , 1]
type = Varset
trigger1=var(35)!=10
trigger1=(root,stateno=[600,699]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200 && enemynear(Var(36)),statetype!=A
v = 35
value =12
[State -2 , 1]
type = Varset
triggerall=var(35)!=21
trigger1=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)>=2
trigger1=((root,stateno=[1200,1299])||(root,stateno=[1150,1159])) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger2=((var(35)=23||var(35)=13)&&root,stateno=1100)
v = 35
value =ifelse(var(35)=19||((var(35)=23||var(35)=13)&&root,stateno=1100),21,ifelse((root,stateno=[1200,1299]),17,ifelse((root,facing>0),13,23)))
[State -2 , 1]
type = Varset
triggerall=var(35)!=19
trigger1=root,stateno=1500 && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =ifelse((root,prevstateno=410),18,ifelse((root,prevstateno=450),15,14))
[State -2 , 1]
type = Varset
trigger1=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)>=3
trigger1=(root,stateno=[1050,1059]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =19
[State -2 , 1]
type = Varset
trigger1=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)>=3
trigger1=(root,stateno=1100) && (root,prevstateno=450) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =24
[State -2 , 1]
type = Varset
trigger1=(var(35)=[2,3])||(var(35)=9)||(var(35)=[97,99]);;||(var(35)=98)
trigger1=(root,statetype!=A)||root,movetype=H||root,movetype=A
trigger1=(root,ctrl && root,stateno!=[100,119])||root,movetype=H||root,movetype=A
trigger2=(var(35)=[10,39]);||(var(35)=[100,199])
trigger2=(var(35)!=10)||root,movetype=H||enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno<200||enemynear(Var(36)),ctrl
trigger2=(var(35)!=11)||root,movetype=H||enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno<200||enemynear(Var(36)),ctrl
trigger2=(enemynear(Var(36)),movetype!=H)||var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)>0||(enemynear(Var(36)),stateno =[5100,5150])
trigger3=(var(35)=[12,15])
trigger3=0;(root,stateno=[1000,1199])||(root,stateno=[3200,3999]);;&&(root,stateno!=410)
v = 35
value =0






[State -2:         VarSet]
type     = VarSet
trigger1=fvar(20)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
fv = 20 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(20)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 20 
value =-fvar(20)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(20)<=0 && enemynear(Var(36)),statetype!=A
fv = 20 
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(20)>0 && enemynear(Var(36)),stateno=fvar(20) && (root,stateno=1500)
fv = 20 
value =fvar(20)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(20)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 20 
value =ifelse((root,movetype=H),fvar(20)+100000,fvar(20)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(21)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(20)=enemynear(Var(36)),stateno||fvar(20)-100000=enemynear(Var(36)),stateno||fvar(20)-200000=enemynear(Var(36)),stateno
fv = 21 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(21)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 21 
value =-fvar(21)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(21)<=0 && fvar(20)>0 && enemynear(Var(36)),statetype!=A
fv = 21
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(21)>0 && enemynear(Var(36)),stateno=fvar(21) && (root,stateno=1500)
fv = 21
value =fvar(21)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(21)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 21 
value =ifelse((root,movetype=H),fvar(21)+100000,fvar(21)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(21)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(20)=enemynear(Var(36)),stateno||fvar(20)-100000=enemynear(Var(36)),stateno||fvar(20)-200000=enemynear(Var(36)),stateno
fv = 21 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(22)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(20)=enemynear(Var(36)),stateno||fvar(20)-100000=enemynear(Var(36)),stateno||fvar(20)-200000=enemynear(Var(36)),stateno
trigger3=fvar(21)=enemynear(Var(36)),stateno||fvar(21)-100000=enemynear(Var(36)),stateno||fvar(21)-200000=enemynear(Var(36)),stateno
fv = 22 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(22)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 22
value =-fvar(22)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(22)<=0 && fvar(20)>0 && fvar(21)>0 && enemynear(Var(36)),statetype!=A
fv = 22
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(22)>0 && enemynear(Var(36)),stateno=fvar(22) && (root,stateno=1500)
fv = 22
value =fvar(22)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(22)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 22
value =ifelse((root,movetype=H),fvar(22)+100000,fvar(22)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(22)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(20)=enemynear(Var(36)),stateno||fvar(20)-100000=enemynear(Var(36)),stateno||fvar(20)-200000=enemynear(Var(36)),stateno
trigger3=fvar(21)=enemynear(Var(36)),stateno||fvar(21)-100000=enemynear(Var(36)),stateno||fvar(21)-200000=enemynear(Var(36)),stateno
fv = 22
value =0




[State -2 , 1]
type = Varadd
triggerall=var(3)=[0,999]
trigger1=1
v = 3
value =1
[State -2 , 1]
type = Varset
triggerall=var(3)>0
trigger1=enemynear(Var(36)),movetype=H&&enemynear(Var(36)),stateno>200
v = 3
value =ifelse(var(3)>600,-300,0)
[State -2 , 1]
type = Varset
triggerall=var(3)<0
trigger1=enemynear(Var(36)),movetype!=H;;&&enemynear(Var(36)),stateno>200
v = 3
value =-var(3)
[State -2 , 1]
type = Varset
triggerall=var(5)<0
trigger1=(root,stateno!=[0,199])&&(root,movetype=A||root,movetype=H)
v = 5
value =0
[State -2 , 1]
type = Varset
triggerall=var(5)<0
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 5
value =ifelse((-var(5)-root,life>=100),var(13),0)
[State -2 , 1]
type = Varset
trigger1=var(5)=0 && enemynear(Var(36)),movetype=A
trigger1=root,stateno=[120,159]
v = 5
value =-root,life
[State -2 , 1]
type = Varset
triggerall=var(6)<0
trigger1=(root,stateno!=[0,199])&&(root,movetype=A||root,movetype=H)
v = 6
value =0
[State -2 , 1]
type = Varset
triggerall=var(6)<0
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 6
value =ifelse((-var(6)-root,life>=100),var(13),0)
[State -2 , 1]
type = Varset
trigger1=var(6)=0 && enemynear(Var(36)),movetype=A
trigger1=var(5)>0&&enemynear(Var(36)),stateno-var(5)!=[-99,99]
trigger1=root,stateno=[120,159]
v = 6
value =-root,life
[State -2 , 1]
type = Varset
triggerall=var(7)<0
trigger1=(root,stateno!=[0,199])&&(root,movetype=A||root,movetype=H)
v = 7
value =0
[State -2 , 1]
type = Varset
triggerall=var(7)<0
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 7
value =ifelse((-var(7)-root,life>=100),var(13),0)
[State -2 , 1]
type = Varset
trigger1=var(7)=0 && enemynear(Var(36)),movetype=A
trigger1=var(6)>0&&enemynear(Var(36)),stateno-var(6)!=[-99,99]
trigger1=var(5)>0&&enemynear(Var(36)),stateno-var(5)!=[-99,99]
trigger1=root,stateno=[120,159]
v = 7
value =-root,life
[State -2 , 1]
type = Varadd
trigger1=var(8)-((ceil(var(8)/10)-ifelse(var(8)-(ceil(var(8)/10)*10)<0,1,0))*10)=1
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 8
value =-1
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/10)-ifelse(var(8)-(ceil(var(8)/10)*10)<0,1,0))*10)=0
trigger1=enemynear(Var(36)),movetype=A && var(9)-enemynear(Var(36)),power>=1000
trigger2=enemynear(Var(36)),HitDefAttr =SCA,HA,HP,HT
v = 8
value =1
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/100)-ifelse(var(8)-(ceil(var(8)/100)*100)<0,1,0))*100)=[0,9]
trigger1=(root,stateno=200||root,stateno=400) && enemynear(Var(36)),movetype=H
v = 8
value =10
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/100)-ifelse(var(8)-(ceil(var(8)/100)*100)<0,1,0))*100)=[10,19]
trigger1=enemynear(Var(36)),movetype!=H
value =-10
[State -2 , 1]
type = Varset
trigger1=1
v = 9
value =enemynear(Var(36)),power
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),movetype=A && var(14)<2 && var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)=0
v = 12
value =1
[State -2 , 1]
type = Varset
trigger1=enemynear(Var(36)),HitDefAttr =SCA,NA,SA,HA,NT,ST,HT
trigger1=var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)>=1
trigger2=helper(4000),stateno=4120
trigger2=var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)>=1
v = 12
value =((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)
[State -2 , 1]
type = Varadd
trigger1=root,statetype=L && var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[0,9]
v = 12
value =10
[State -2 , 1]
type = Varadd
trigger1=root,statetype!=L 
trigger1=var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[10,89]
trigger2=var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[90,99]
v = 12
value =ifelse((var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[90,99]),-90,10)
[State -2 , 1]
type = Varadd
triggerall=var(12)-((ceil(var(12)/1000)-ifelse(var(12)-(ceil(var(12)/1000)*1000)<0,1,0))*1000)=[100,199]
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 12
value =-100
[State -2 , 1]
type = Varadd
triggerall=var(12)-((ceil(var(12)/1000)-ifelse(var(12)-(ceil(var(12)/1000)*1000)<0,1,0))*1000)=[0,99]
trigger1=root,time<=1 && var(14)>6 && (root,stateno=705||root,stateno=715||root,stateno=725)
trigger2=enemynear(Var(36)),HitDefAttr =SCA,SA
v = 12
value =100
[State -2 , 1]
type = Varadd
trigger1=var(12)-((ceil(var(12)/10000)-ifelse(var(12)-(ceil(var(12)/10000)*10000)<0,1,0))*10000)=[1000,1999]
trigger1=(var(13)-enemynear(Var(36)),stateno!=[-99,99])
v = 12
value =-1000
[State -2 , 1]
type = Varadd
trigger1=var(12)-((ceil(var(12)/10000)-ifelse(var(12)-(ceil(var(12)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,SA,SP,HA,HP
v = 12
value =1000
[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 11
value =0
[State -2 , 1]
type = Varset 
trigger1=(var(11)=0||var(11)=-2) && p2movetype=A 
trigger1=enemynear(helper(218),Var(36)),HitDefAttr =SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
v = 11
value =ifelse(var(11)=-2,1,-1)
[State -2 , 1]
type = Varset
trigger1=var(11)=0 && p2movetype=A 
v = 11
value =-2
[State -2 , 1] 
type = Varset
triggerall= root,stateno<200 && enemynear(helper(218),Var(36)),movetype!=H
trigger1=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)>0
v = 10
value =((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)
[State -2 , 1] 
type = Varadd
;triggerall=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)<3
triggerall= (root,stateno=1150) && enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H
trigger1=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=0
trigger2=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=2
trigger3=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=4
trigger4=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=6
trigger5=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=8
v = 10
value =1
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno!=1150)
trigger1=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=1
trigger2=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=3
trigger3=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=5
trigger4=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=7
v = 10
value =1
[State -2 , 1] 
type = Varset
triggerall= ((root,statetype!=A)&&(root,stateno!=[200,499])&&enemynear(helper(218),Var(36)),movetype!=H)||(root,movehit&&root,stateno=[1300,1399])
trigger1=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)>=10
v = 10
value =var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)+((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno=[1250,1259]) && enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H
trigger1=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[0,9]
trigger2=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[20,29]
trigger3=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[40,49]
trigger4=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[60,69]
v = 10
value =10
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno=[1000,1099])
trigger1=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[10,19]
trigger2=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[30,39]
trigger3=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[50,59]
trigger4=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[70,79]
v = 10
value =10
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno=3000);;;; && enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H
trigger1=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[0,99]
v = 10
value =100
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno=225) && (enemynear(helper(218),Var(36)),stateno<200||enemynear(helper(218),Var(36)),movetype!=H)
trigger1=var(10)-((ceil(var(10)/10000)-ifelse(var(10)-(ceil(var(10)/10000)*10000)<0,1,0))*10000)=[0,999]
v = 10
value =1000
[State -2 , 1] 
type = Varadd
;;triggerall=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
triggerall= (root,stateno=[1000,1099])||(root,stateno=[1400,1499])||(root,stateno=[1600,1699])
;;triggerall=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)<=0&&(enemynear(Var(36)),stateno!=[5000,5550])
trigger1=var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)<10000
v = 10
value =10000
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno!=[1000,1999])
trigger1=var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)=[10000,19999]
v = 10
value =ifelse((root,movetype=H)&&(root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=20),20000,10000)
[State -2 , 1] 
type = Varadd
triggerall= random<=8
trigger1=var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)=[20000,29999]
v = 10
value =-20000
[State -2 , 1] 
type = Varadd
triggerall= var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)=[30000,39999]
triggerall=(root,stateno<200||root,movetype!=H)
trigger1=random<=4 && root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
trigger2=random<=6 && root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<30
v = 10
value =-30000
[State -2 , 1] 
type = Varadd
triggerall=enemynear(Var(36)),statetype=A 
trigger1=var(10)-((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)<100000
v = 10
value =ifelse((root,facing>0),100000,200000)
[State -2 , 1] 
type = Varset
triggerall=root,movetype=H||root,movetype=A||enemynear(helper(218),Var(36)),statetype!=A
trigger1=var(10)-((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)>=100000
v = 10
value =var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)+((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1] 
type = Varadd
triggerall=var(10)<1000000
trigger1=root,stateno=195
v = 10
value =1000000





[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
trigger2=(enemynear(Var(36)),AnimElemTime(1)=0 && enemynear(Var(36)),stateno = var(13) &&var(14)>2 )
v = 14
value =0
Ignorehitpause=1




[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),movetype=A
trigger2=var(14)>0
v = 14
value =1
Ignorehitpause=1
[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 13
value =0
Ignorehitpause=1
[State -2 , 1]
type = Varset
trigger1=enemynear(Var(36)),movetype=A
trigger1=var(13)>=0
v = 13
value =enemynear(Var(36)),stateno
Ignorehitpause=1





[Statedef 20219]
type    = S
physics = S
anim=20218
ctrl = 0
[State 218 , 1]
type = velset
trigger1=1
x=120

[State -2 , 1]
type = Varadd
trigger1=frontedgebodydist>0
v = 59
value =1

[State 66]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow
Flag2= NoAutoTurn 

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,stateno!=[230,239]
trigger1 = enemynear(helper(218),Var(36)),movetype!=H































































; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerall = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = StateNo = 810 && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger5 = (StateNo = [700,715]) && !AnimTime
trigger6 = (StateNo = [6080,6082]) && !AnimTime
value = 1




;-------------------------■AI設定■--------------------------------------------------------










[State -2:         VarSet];■AI+コンボ設定(combo)■
type     = Varadd
triggerall=!ishelper
triggerall = var(59)=0 && AIlevel
triggerall=(RoundState =2)
trigger1 = (alive && ctrl)||var(59)>0
v        = 59
value    =                   4                        ;(ここを1以上にするとＡＩが入ります+コンボ設定。0~4)


[State -2:         VarSet];■立ち回り設定(movement)■
type     = Varadd
triggerall=!ishelper
triggerall = var(59)=[1,9]
triggerall=(RoundState =2)
trigger1 = (alive && ctrl)||var(59)>0
v        = 59
value    =10*                 3                        ;(立ち回り設定。0~3)


[State -2:         VarSet];■隠し武器設定(secret weapon)■
type     = Varadd
triggerall=!ishelper
triggerall = var(59)=[1,99]
triggerall=(RoundState =2)
trigger1 = (alive && ctrl)||var(59)>0
v        = 59
value    =100*                  1                        ;(本来使用できない改変元の技を使うかどうか。0~1)


[State -2:         VarSet];■超反応設定(counter)■
type     = VarSet
triggerall=!ishelper
trigger1=var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
trigger1=var(54)<100000
trigger2=(helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger3=enemynear(helper(218),Var(36)),movetype !=A
trigger4=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 54
value    =                   10             ;(0~10、超反応設定。数字が高いほど攻撃に対する反撃が厳しくなる)



[State -2:         VarSet];■ガード設定(guard)■
type     = VarSet
triggerall=!ishelper
trigger1=var(54) <1000
trigger2=(helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger3=enemynear(helper(218),Var(36)),movetype !=A
trigger4=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 54
value    =var(54)+1000*       11             ;(0~11、数字を上げるほど硬く。11で超反応で投げに対応)



[State -2:         VarSet];■アドガ頻度(guard push)■
type     = VarSet
triggerall=!ishelper
trigger1=var(55)=0
v        = 55
value    =                    999             ;(0~999、アドバンシングガードの頻度)



[State -2:         VarSet];■ブロッキング頻度(parry)■
type     = VarSet
triggerall=!ishelper
trigger1=var(53)=0
v        = 53
value    =                    999             ;(0~999、ブロッキングの頻度。改変元の仕様で本来は使用できないので注意)





































[State -2:         VarSet]
type     = Varset
triggerall=!ishelper
triggerall=var(53)>=1000
trigger1 = (inguarddist=0&&p2movetype!=A)||stateno=[6080,6082]
v        = 53
value    =var(53)-((ceil(var(53)/1000)-ifelse(var(53)-(ceil(var(53)/1000)*1000)<0,1,0))*1000)
[State -2:         VarSet]
type     = Varset
triggerall=!ishelper
triggerall=var(53)<1000
trigger1 = inguarddist||p2movetype=A
v        = 53
value    =var(53)+ifelse(random<=var(53),1000,2000)
[State -2:         VarSet]
type     = Varset
triggerall=!ishelper
triggerall=var(55)>=1000
trigger1 = helper(218),var(14)=1||stateno!=[150,159]
v        = 55
value    =var(55)-((ceil(var(55)/1000)-ifelse(var(55)-(ceil(var(55)/1000)*1000)<0,1,0))*1000)
[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall=var(55)<1000
trigger1 = (helper(218),var(14)!=1)&&stateno=[170,179]
v        = 55
value    =2000
[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall=var(55)<1000
trigger1 = helper(218),var(14)=1||stateno!=[150,159]
v        = 55
value    =ifelse(random<=var(55)-((ceil(var(55)/1000)-ifelse(var(55)-(ceil(var(55)/1000)*1000)<0,1,0))*1000),1000,2000) 

[State -1]
type = ChangeState
value = ifelse((stateno=[150,151]),550,ifelse((stateno=[152,153]),560,570))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive 
triggerall = var(55)=[1000,1999]
;;triggerall = (numhelper(265)=0&&numhelper(266)=0)||((helper(265),pos x-enemynear(helper(218),Var(36)),pos x!=[-140,140])&&(helper(266),pos x-enemynear(helper(218),Var(36)),pos x!=[-140,140]))||var(58)-((ceil(var(58)/100)-ifelse(var(58)-(ceil(var(58)/100)*100)<0,1,0))*100)<20||p2statetype!=A
triggerall = stateno = [150,ifelse(time<10,155,154)]
triggerall = p2bodydist x>=0
triggerall = ((stateno=154&&time=0&&prevstateno!=[160,169])||statetype!=A)
trigger1=0;enemynear(helper(218),Var(36)),animtime>-ifelse(p2bodydist x<=30,5,ifelse(p2bodydist x<=60,7,7+((p2bodydist x-60)/10)))-GetHitVar(ctrltime)+time
trigger2=p2bodydist x-enemynear(helper(218),Var(36)),vel x*10>100||statetype=A||p2statetype=A
[State -1]
type = ChangeState
value = 715;;ifelse(p2bodydist x>=0,710,715)
triggerall = !ishelper
triggerall = var(59)>0 && partner,life<=0 && backedgebodydist>60
triggerall = RoundState = 2 && Alive 
;triggerall = anim != 5111
triggerall = life > 0
;triggerall = time = 0
triggerall = anim != 5111
trigger1 = stateno = 5120
trigger1 = alive = 1
[State -1]
type = ChangeState
value = ifelse(p2bodydist x<0,710,715)
triggerall = !ishelper
triggerall = var(59)>0 && partner,life>0
triggerall = RoundState = 2 && Alive 
;triggerall = anim != 5111
triggerall = life > 0
;triggerall = time = 0
triggerall = anim != 5111
trigger1 = stateno = 5120
trigger1 = alive = 1

;-----------------------------------------------------------------
[State -1, Parry Stand]
type = HitOverride
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = RoundState = 2 && Alive 
triggerall = statetype!= A
triggerall =  Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)
trigger1 = random<=var(53) && var(53)<2000
attr = SA,AA,AP
stateno = 6080
slot = 0
time = 0
;------------------------------------------------------------------
[State -1, Crouching Parry]
type = HitOverride
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = RoundState = 2 && Alive 
triggerall = statetype!= A
triggerall =  Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)
trigger1 = random<=var(53) && var(53)<2000
attr = C,AA,AP
stateno = 6081
slot = 1
time =0
;-------------------------------------------------------------------
[State -1, Aerial Parry]
type= HitOverride
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = RoundState = 2 && Alive 
triggerall = statetype= A
triggerall =  Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)
trigger1 = random<=var(53) && var(53)<2000
attr = SCA,AA,AP
stateno = 6082
forceair = 1
slot = 2
time = 0



































[State -1, Stand]
type = ChangeState 
value =195
triggerall = !IsHelper
triggerall = roundstate!=4;;helper(218),var(35)!=16
triggerall = helper(218),var(10)<1000000
triggerall = var(59)!=0 
triggerall = win && Alive && statetype!=A
triggerall=p2bodydist x>=-20
trigger1=ctrl||stateno=[0,39]
[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall=var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000)<100
triggerall=random>(var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000))*100
triggerall=enemynear(helper(218),Var(36)),movetype=A
trigger1=helper(218),var(14)<2
trigger2=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 54
value    =100
[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall=var(54)<100000
triggerall=random>((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000)/10
triggerall=enemynear(helper(218),Var(36)),movetype=A
trigger1 = (helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger2=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 54
value    =100000 
[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall=var(53)-((ceil(var(53)/1000)-ifelse(var(53)-(ceil(var(53)/1000)*1000)<0,1,0))*1000)<100
triggerall=random>=(var(53)-((ceil(var(53)/1000)-ifelse(var(53)-(ceil(var(53)/1000)*1000)<0,1,0))*1000))*100
triggerall=stateno>=200 && time=0 && movetype!=H
trigger1=1
v        = 53
value    =100
[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall=var(53)<100000
triggerall=random>((ceil(var(53)/1000)-ifelse(var(53)-(ceil(var(53)/1000)*1000)<0,1,0))*1000)/10
triggerall=0;enemynear(helper(218),Var(36)),movetype=A
trigger1 = (helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger2=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 53
value    =100000 









[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(43) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(44) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(45) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(46) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(39) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(38) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(37) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(36) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(35) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(34) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(33) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(32) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(31) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(30) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(29) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(28) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(27) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(26) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(25) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(24) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(29) =0








[State -3:         VarSet]
type     = Varset
triggerall=!ishelper
triggerall = var(59)>0
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(59) = var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)+((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =(stateno=[1000,1099])||(stateno=[1400,1499])||(stateno=[1600,1699])
triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger1=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[0,999])
trigger2=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[2000,2999])
trigger3=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[4000,4999])
trigger4=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[6000,6999])
var(59) = 1000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2
triggerall =(stateno!=[200,1299])
trigger1=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[1000,1999])
trigger2=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[3000,3999])
trigger3=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[5000,5999])
trigger4=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[7000,7999])
var(59) = ifelse(movetype=H,1000,-1000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =stateno=[1000,1099]
triggerall=p2movetype=H||helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[0,9999])
var(59) = 10000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2
triggerall =(stateno=[1000,1099])
trigger1=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[10000,19999])
var(59) = ifelse(movetype=H,10000,-10000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall=(stateno=820||stateno=1010) && p2stateno=[150,159]
triggerall=(var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)<100000)
trigger1=1
var(59) = 100000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2 
triggerall=(var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)=[100000,199999])
trigger1=((stateno!=[800,899])&&(stateno=[1000,1010]))||p2life<=0||(p2movetype=H && p2stateno>200)
var(59) = ifelse(p2movetype=H && p2stateno>200,-100000,100000)
[State -3:         VarSet] 
type     = VarSet
triggerall=!ishelper
trigger1 = var(59)>0
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(59) = var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)
[State -3:         VarSet] 
type     = VarSet
triggerall=!ishelper
triggerall = var(59)>0
trigger1 = var(59)<1000000 && win
var(59) = var(59)+1000000
[State -3:         VarSet] 
type     = VarSet
triggerall=!ishelper
triggerall = var(59)>0
trigger1 = 0;var(59)>=1000000 && stateno=[3000,3099]
var(59) = var(59)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1=var(59)>0
trigger1=RoundState !=2
v        = 59
value    =-var(59)
[State -2:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1=var(59)<0
trigger1=RoundState=2 && ctrl
v        = 59
value    =-var(59)
[State -2:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1=var(59)>0
trigger1=NumPartner &&((sysvar(4) = [8,9])||(sysvar(4)=12)||(StateNo=[1251109,1251114])) 
v        = 59
value    =-var(59)

[State -2]
Type = Helper
triggerall=!ishelper
;trigger1=var(59)>0
trigger1 = numhelper(218)=0
StateNo = 10218
ID = 218
Name = "AI1"
Pos = 0,0
PosType = P1
Ownpal = 1
Persistent = 0
IgnoreHitPause =1

[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
trigger1=var(55)>=0
trigger1=0;numprojid(20219)
v        = 55
value    =1
[State -2:         VarSet]
type     = Varset
triggerall=!ishelper
trigger1=var(55)>0
trigger1=(stateno!=[200,399])
trigger1=0;p2movetype!=H
v        = 55
value    =0

[State -2, 1]
type = Projectile
triggerall=!ishelper
triggerall=var(59)
triggerall=var(55)=0 && !ishelper
trigger1=0;(stateno=[2300,2399])
projanim = 20218 
projid= 20219
projhitanim = 1112
velocity=50,0;120, 0
projpriority=4
projsprpriority=2
projstagebound=0
projedgebound=99999
offset=0, 0
;;postype=right
supermovetime=99999
pausemovetime=99999
projremovetime=20;;-1













[State -1]
type = ChangeState 
value = ifelse((p2bodydist y+enemynear(helper(218),Var(36)),vel y*10>-40),410,28)
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=helper(218),var(35)=24
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(StateNo = [100,103])
;triggerall=p2bodydist x>150;;<=100
triggerall=p2bodydist x>-60
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200 ;;;&& p2statetype=A;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=p2bodydist y+enemynear(helper(218),Var(36)),vel y*10>-40||(p2bodydist x<30&&stateno!=28)
[State -1]
type = ChangeState 
value = ifelse((p2bodydist y+enemynear(helper(218),Var(36)),vel y*15>=-60&&frontedgebodydist>80),1100,ifelse((p2bodydist x<30&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-10),1500,ifelse(stateno=103,20,102)))
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=helper(218),var(35)=19
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(StateNo = [100,103])
;triggerall=p2bodydist x>150;;<=100
triggerall=p2bodydist x>-60
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200 ;;;&& p2statetype=A;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=(stateno<100)||(stateno=103&&p2bodydist x<30)
trigger2=(p2bodydist x<30&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-10)
trigger3=(p2bodydist y+enemynear(helper(218),Var(36)),vel y*15>=-60&&frontedgebodydist>80)
[State -1]
type = ChangeState 
value = 1200
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = RoundState = 2 && Alive 
triggerall=stateno!=[100,103]
triggerall=(helper(218),var(35)=19)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(StateNo = [100,103])
;triggerall=p2bodydist x>150;;<=100
triggerall=p2bodydist x>-60
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200 ;;;&& p2statetype=A;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=0
[State -1]
type = ChangeState 
value = ifelse(stateno=410,1500,410)
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=17)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(StateNo = [100,103])||(stateno=410&&movehit)
;triggerall=p2bodydist x>150;;<=100
triggerall=p2bodydist x>-60
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200 ;;;&& p2statetype=A;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=(p2bodydist x<30&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-10)||stateno=410
[State -1]
type = ChangeState 
value = ifelse((p2bodydist x=[-40,40]),410,250)
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=13&&facing<0)||(helper(218),var(35)=23&&facing>0)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(StateNo = [100,103])
triggerall=p2bodydist x<80;;<=100
triggerall=p2bodydist x>-80
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200 ;;;&& p2statetype=A;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=p2bodydist y+enemynear(helper(218),Var(36)),vel y*10>=-10
[State -1]
type = ChangeState 
value = ifelse((p2bodydist x<70&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-10),1500,ifelse((p2bodydist y+enemynear(helper(218),Var(36)),vel y*15>=-60&&p2bodydist x=[60,180]),1100,ifelse(p2bodydist x<120,20,102)))
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=13&&(facing>0||p2bodydist x>100))||(helper(218),var(35)=23&&(facing<0||p2bodydist x>100))
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(StateNo = [100,103])
;triggerall=p2bodydist x>150;;<=100
triggerall=p2bodydist x>-60
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200 ;;;&& p2statetype=A;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=(p2bodydist x>150&&stateno<100)||(stateno=103&&p2bodydist x<120)
trigger2=(p2bodydist y+enemynear(helper(218),Var(36)),vel y*15>=-60&&p2bodydist x=[60,180])||(p2bodydist x<70&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-10)
[State -1]
type = ChangeState 
value = ifelse((p2bodydist x<70&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-10),1500,ifelse(stateno=103&&p2bodydist x>100,1000,ifelse(p2bodydist x<100,20,102)))
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=13&&(facing>0||p2bodydist x>100))||(helper(218),var(35)=23&&(facing<0||p2bodydist x>100))
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(StateNo = [100,103])
;triggerall=p2bodydist x>150;;<=100
triggerall=p2bodydist x>-60
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200 ;;;&& p2statetype=A;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=(p2bodydist x>150&&stateno<100)||(stateno=103&&(time=3||p2bodydist x<100))||(p2bodydist x<70&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-10)
[State -1]
type = ChangeState 
value = ifelse(var(29)>=4&&life>300,1300,ifelse(backedgebodydist<60&&p2bodydist x<100,108,48))
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = RoundState = 2 && Alive && partner,life<=0
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=11||helper(218),var(35)=21)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)
;triggerall=p2bodydist x>150;;<=100
triggerall=p2bodydist x>-60
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200 ;;;&& p2statetype=A;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=1;;var(18)>=3000
[State -1]
type = ChangeState 
value = ifelse(var(29)>=4&&life>300,1300,ifelse(backedgebodydist<60&&p2bodydist x<100,108,48))
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = RoundState = 2 && Alive && partner,life<=0
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=10)||helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)>=4
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)
;triggerall=p2bodydist x>150;;<=100
triggerall=p2bodydist x>-60
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200;;; && p2statetype=A;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=1;;var(18)>=3000
[State -1]
type = ChangeState
value =ifelse(p2statetype=A,ifelse(p2bodydist x<=30&&vel x>=0,600,620),ifelse(p2bodydist x<=ifelse(vel x=0,20,40)&&vel x>0,625,620))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && stateno!=105
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2stateno!=7012
triggerall=(helper(218),var(35)!=[10,11]);;||p2statetype=A
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A 
;triggerall = p2statetype = A
triggerall =  Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)
triggerall=p2bodydist x<=100+ifelse(vel x=0||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]),0,40)
triggerall=p2bodydist x>-50
triggerall=(p2statetype=A && p2bodydist y=[-40,ifelse(p2bodydist x<=30,40,10)])||(pos y>=-80 && (vel y>0||stateno=105||prevstateno=105) && p2statetype!=A)
triggerall=(stateno!=105)||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),var(35)=8||helper(218),fvar(5)=-99999
;trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;;;||p2statetype!=A
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2statetype!=A)||(p2movetype!=H);||p2stateno<=200||p2stateno=[5100,5110] 
trigger3=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger3=0;(enemynear(helper(218),Var(36)),facing*facing>0)&&(helper(218),var(10))-((ceil((helper(218),var(10))/10000)-ifelse((helper(218),var(10))-(ceil((helper(218),var(10))/10000)*10000)<0,1,0))*10000)>=1000
[State -1]
type = ChangeState
value =ifelse(random<=500,1450,1250)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && stateno!=105
triggerall=var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=100
;triggerall=(helper(218),var(35)!=14);;||p2statetype=A
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20;;;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A && Pos y<=-25 && (var(3) != [1, 2])
;triggerall = p2statetype = A
triggerall =  Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)
triggerall=p2bodydist x<100;;>100+ifelse(vel x=0||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]),0,40)
triggerall=p2bodydist x>0
triggerall=(p2statetype!=A)
;triggerall=(stateno!=105)||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1=helper(218),var(35)=5
[State -1]
type = ChangeState
value =ifelse(random<=333&&((p2movetype=H&&p2stateno>200)||p2statetype=L),1450,ifelse(random<=666&&(p2stateno<200||p2movetype!=H),1250,1050))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && stateno!=105
triggerall=var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=100
;triggerall=(helper(218),var(35)!=14);;||p2statetype=A
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20;;;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A && Pos y<=-25 && (var(3) != [1, 2])
;triggerall = p2statetype = A
triggerall =  Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)
triggerall=p2bodydist x>100+ifelse(vel x=0||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]),0,40)
triggerall=p2bodydist x>-50
triggerall=(p2statetype=A && p2bodydist y=[-40,80])||(pos y>=-120 && (vel y>0||stateno=105||prevstateno=105) && p2statetype!=A)
;triggerall=(stateno!=105)||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),var(35)=8||helper(218),fvar(5)=-99999
;trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;;;||p2statetype!=A
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2statetype!=A)||(p2movetype!=H);||p2stateno<=200||p2stateno=[5100,5110] 
trigger3=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger3=0;(enemynear(helper(218),Var(36)),facing*facing>0)&&(helper(218),var(10))-((ceil((helper(218),var(10))/10000)-ifelse((helper(218),var(10))-(ceil((helper(218),var(10))/10000)*10000)<0,1,0))*10000)>=1000
[State -1]
type = ChangeState
value =ifelse(random<=333,1450,ifelse(random<=666,1250,1050))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && stateno!=105
triggerall=var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=100
;triggerall=(helper(218),var(35)!=14);;||p2statetype=A
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20;;;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A && Pos y<=-25 && (var(3) != [1, 2])
;triggerall = p2statetype = A
triggerall =  Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)
triggerall=p2bodydist x>100+ifelse(vel x=0||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]),0,40)
triggerall=p2bodydist x>-50
triggerall=(p2statetype=A && p2bodydist y=[-40,80])||(pos y>=-120 && (vel y>0||stateno=105||prevstateno=105) && p2statetype!=A)
;triggerall=(stateno!=105)||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1=0;helper(218),var(35)=1||helper(218),var(35)=5||helper(218),var(35)=8||helper(218),fvar(5)=-99999
;trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;;;||p2statetype!=A
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2statetype!=A)||(p2movetype!=H);||p2stateno<=200||p2stateno=[5100,5110] 
trigger3=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger3=0;(enemynear(helper(218),Var(36)),facing*facing>0)&&(helper(218),var(10))-((ceil((helper(218),var(10))/10000)-ifelse((helper(218),var(10))-(ceil((helper(218),var(10))/10000)*10000)<0,1,0))*10000)>=1000
[State -1]
type = ChangeState
value =1050
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && stateno!=105
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2stateno!=7012
;triggerall=(helper(218),var(35)!=14);;||p2statetype=A
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A && Pos y<=-25 && (var(3) != [1, 2])
;triggerall = p2statetype = A
triggerall =  Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)
triggerall=p2bodydist x>100+ifelse(vel x=0||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]),0,40)
triggerall=p2bodydist x>-50
triggerall=(p2statetype=A && p2bodydist y=[-40,80])||(pos y>=-120 && (vel y>0||stateno=105||prevstateno=105) && p2statetype!=A)
;triggerall=(stateno!=105)||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1=0;helper(218),var(35)=1||helper(218),var(35)=5||helper(218),var(35)=8||helper(218),fvar(5)=-99999
;trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;;;||p2statetype!=A
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2statetype!=A)||(p2movetype!=H);||p2stateno<=200||p2stateno=[5100,5110] 
trigger3=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger3=0;(enemynear(helper(218),Var(36)),facing*facing>0)&&(helper(218),var(10))-((ceil((helper(218),var(10))/10000)-ifelse((helper(218),var(10))-(ceil((helper(218),var(10))/10000)*10000)<0,1,0))*10000)>=1000
[State -1, Stand]
type = ChangeState 
value =ifelse(p2statetype=A,ifelse(P2BodyDist X<=30,1500,250),ifelse(P2BodyDist X<=30+ifelse((helper(218),var(35)=12),-20,0),430,220))
triggerall = !IsHelper
triggerall =var(59)>0
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=21)&&(helper(218),var(35)!=19)
triggerall=(helper(218),var(35)!=24)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype=A)&&(p2bodydist y+enemynear(helper(218),Var(36)),vel y*7=[-10,20])
triggerall=p2bodydist x>=-30
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x<=30
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=[100,103])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-ifelse(P2BodyDist X<=30,5,7)||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=0;p2movetype=H&&p2stateno>200
trigger3=helper(218),var(35)=7
trigger3=enemynear(helper(218),Var(36)),animtime=-ifelse(p2bodydist x<=30,6,8)||(enemynear(helper(218),Var(36)),facing*facing>0&&enemynear(helper(218),Var(36)),animtime<=-ifelse(p2bodydist x<=30,6,8))
trigger3=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger3=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger3=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =ifelse(p2statetype=A,250,ifelse(P2BodyDist X<=30+ifelse((helper(218),var(35)=12),-20,0),430,220))
triggerall = !IsHelper
triggerall =var(59)>0
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=21)&&(helper(218),var(35)!=19)
triggerall=(helper(218),var(35)!=24)
triggerall=(helper(218),var(35)!=13)&&(helper(218),var(35)!=17)&&(helper(218),var(35)!=23)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A)||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-10,20])
triggerall=p2bodydist x>=-30
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x<=ifelse(p2statetype=A,70,60)+ifelse((helper(218),var(35)=12),-20,0)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=[100,103])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-ifelse(P2BodyDist X<=30,5,7)||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=p2movetype=H&&p2stateno>200
trigger3=helper(218),var(35)=7
trigger3=enemynear(helper(218),Var(36)),animtime=-ifelse(p2bodydist x<=30,6,8)||(enemynear(helper(218),Var(36)),facing*facing>0&&enemynear(helper(218),Var(36)),animtime<=-ifelse(p2bodydist x<=30,6,8))
trigger3=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger3=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger3=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =450
triggerall = !IsHelper
triggerall =var(59)>0
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=21)&&(helper(218),var(35)!=19)
triggerall=(helper(218),var(35)!=24)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A);;;||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(P2BodyDist X<=30,5,10)=[-40,20])
triggerall=p2bodydist x>=-30
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x<=100
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=[100,103])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-ifelse(P2BodyDist X<=60,6,6+((p2bodydist x-60)/10))||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=p2movetype=H&&p2stateno>200
trigger3=helper(218),var(35)=7 && p2bodydist x>30
trigger3=enemynear(helper(218),Var(36)),animtime<=-ifelse(P2BodyDist X<=60,6,6+((p2bodydist x-60)/10))
trigger3=enemynear(helper(218),Var(36)),animtime<=-ifelse(P2BodyDist X<=60,7,7+((p2bodydist x-60)/10))||(enemynear(helper(218),Var(36)),facing*facing>0)
trigger3=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger3=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger3=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =800
triggerall = !IsHelper
triggerall =var(59)>0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=19)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A);;;||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(P2BodyDist X<=30,5,10)=[-40,20])
triggerall=p2bodydist x>=-30
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2dist x<56
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=[100,103])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-3||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=0;p2movetype=H&&p2stateno>200
trigger3=helper(218),var(35)=7
trigger3=enemynear(helper(218),Var(36)),animtime=-4||(enemynear(helper(218),Var(36)),facing*facing>0&&enemynear(helper(218),Var(36)),animtime<=-4)
trigger3=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger3=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger3=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =ifelse(var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=100&&random<=500,1400,1000)
triggerall = !IsHelper
triggerall =var(59)>0
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=[10,11])
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
;triggerall=(p2statetype!=A);;;||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(P2BodyDist X<=30,5,10)=[-40,20])
triggerall=p2bodydist x>200
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=[100,103])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-ifelse(P2BodyDist X<=60,6,6+((p2bodydist x-60)/10))||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist y<-30,1100,1500)
triggerall = !IsHelper
triggerall =var(59)>0
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=21)&&(helper(218),var(35)!=19)
triggerall=(helper(218),var(35)!=24)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype=A)&&(p2bodydist y=[-100,10]) && (p2bodydist y<-60||p2bodydist y>=-30)
triggerall=p2bodydist x>=-10
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x<=50
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=[100,103])
trigger1=helper(218),var(35)=1 && ((stateno=[6080,6089])||(time<=1&&prevstateno=[6080,6089]))
trigger1=enemynear(helper(218),Var(36)),animtime<=-ifelse(P2BodyDist X<=60,6,6+((p2bodydist x-60)/10))||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]





















[State -1, Stand]
type = ChangeState
value =1550
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) && power>=1000 && (p2life<120||power>=4000)
;;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = StateNo =[150,159]
triggerall = p2movetype=A
triggerall=(p2statetype !=A);;;;||p2bodydist y>=-20&&;;;(p2bodydist y+enemynear(helper(218),Var(36)),vel y*40<=20)
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X<=30
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000 && (var(43)=[0,1999999]) && (var(44)=[0,1999999]) && (var(43)!=p2stateno) && (var(44)!=p2stateno)
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=1
[State -1, Stand]
type = ChangeState
value =3300
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall=partner,life<=0||(partner,movetype!=H)||partner,stateno<200;;||(partner,stateno=[5000,5150])
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) && power>=3000 ;&& random<=500
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=[100,103]
triggerall = p2movetype=A
triggerall=(p2statetype !=A);;||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*40<=20)
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <= 100
;;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=enemynear(helper(218),Var(36)),animtime<=-25
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000 && (var(43)=[0,1999999]) && (var(44)=[0,1999999]) && (var(43)!=p2stateno) && (var(44)!=p2stateno)
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[2,3]
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[2,3]
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[2,3]
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[2,3]
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[2,3]
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[2,3]
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[2,3]
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[2,3]
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[2,3]
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[2,3]
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[2,3]
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[2,3]
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[2,3]
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[2,3]
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[2,3]
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[2,3]
;;trigger17=partner,life>0 && p2bodydist x<80
[State -1, Stand]
type = ChangeState
value =430
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=[100,103])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <= 30
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger17=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger22=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
[State -1, Stand]
type = ChangeState
value =220
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=[100,103])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <= 60
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger17=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger22=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
[State -1, Stand]
type = ChangeState
value =800
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109);;;||(stateno=[100,103])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2Dist X < 56
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger17=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger22=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
[State -1, Stand]
type = ChangeState
value =450
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=[100,103])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <= 150
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||(helper(218),var(14)<2&&p2bodydist x<=100)
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||(helper(218),var(14)<2&&p2bodydist x<=100)
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||(helper(218),var(14)<2&&p2bodydist x<=100)
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||(helper(218),var(14)<2&&p2bodydist x<=100)
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||(helper(218),var(14)<2&&p2bodydist x<=100)
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||(helper(218),var(14)<2&&p2bodydist x<=100)
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger1=fvar(30)>999&&(fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger2=fvar(33)>999&&(fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger3=fvar(32)>999&&(fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger4=fvar(39)>999&&(fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger5=fvar(38)>999&&(fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger6=fvar(37)>999&&(fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger7=fvar(36)>999&&(fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger8=fvar(35)>999&&(fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger9=fvar(34)>999&&(fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger10=(fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger11=(helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger12=(helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger13=(helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger14=(helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger15=(helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger16=(helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger17=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger17=fvar(29)>999&&(fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger18=fvar(24)>999&&(fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger19=fvar(25)>999&&(fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger20=fvar(26)>999&&(fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger21=fvar(27)>999&&(fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
trigger22=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger22=fvar(28)>999&&(fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14))*10>=p2bodydist x-60
[State -1, Stand]
type = ChangeState
value =1300
triggerall = !IsHelper
triggerall = var(59)>0 && var(29)<=2
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=[100,103])
triggerall = p2movetype=A
triggerall=(p2statetype !=A)||p2bodydist y+enemynear(helper(218),Var(36)),vel y*30<0
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =frontedgebodydist-P2BodyDist X>60 && enemynear(helper(218),Var(36)),pos x=[-170,170]
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=enemynear(helper(218),Var(36)),animtime<-25
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger17=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger22=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
[State -1, Stand]
type = ChangeState
value =123;43;;105
triggerall = !IsHelper
triggerall = var(59)>0 ;;;&& var(37)=0 ;;;&& var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)
triggerall = stateno != [100,105]
;triggerall = ((Power <1000) && (Var(33) = 0))||(Var(46)=[1,1000])||p2bodydist x>300||p2statetype=A
triggerall = RoundState = 2 && Alive  && (statetype !=A)
triggerall=enemynear(helper(218),Var(36)),facing*facing>0||p2bodydist x>-40
triggerall=enemynear(helper(218),Var(36)),facing*facing<0||p2bodydist x<-40;||((p2bodydist x>=140||p2bodydist x<=50)&&(fvar(4)>2000000||fvar(5)>2000000))
triggerall=p2movetype=A
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[6000,6999])||p2statetype=S
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[2000,2999])&&(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[9000,9999])
;triggerall=var(48)=11||(random<=400)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=100
triggerall=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NT,ST,HT)||(var(43)>=2000000||var(44)>=2000000||var(43)=p2stateno||var(44)=p2stateno)
triggerall=(var(54)-((ceil(var(54)/100000)-ifelse(var(54)-(ceil(var(54)/100000)*100000)<0,1,0))*100000)=[11000,11999])||random<=400
triggerall=numpartner=0||partner,life<=0||(partner,movetype !=H)||(partner,stateno-p2stateno !=[-99,99])
trigger1=1
[State -1, Stand]
type = ChangeState
value =710
triggerall = !IsHelper
triggerall = var(59)>0 && partner,life<=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=[100,103]
triggerall = p2movetype=A
triggerall=(p2statetype !=A)||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*40<=20)
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
;;triggerall =P2BodyDist X <= 70
;;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=enemynear(helper(218),Var(36)),animtime<=-25
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=helper(218),var(56)<2000000 && helper(218),var(59)<2000000 && (var(43)=[0,1999999]) && (var(44)=[0,1999999]) && (var(43)!=p2stateno) && (var(44)!=p2stateno)
triggerall=(helper(218),var(56)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)-ifelse(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(59)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)-ifelse(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
[State -1, Stand]
type = ChangeState
value =710
triggerall = !IsHelper
triggerall = var(59)>0 && partner,life<=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=100
triggerall = p2movetype=A
triggerall=(p2statetype !=A)||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*40<=20)
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
;;triggerall =P2BodyDist X <= 70
;;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=enemynear(helper(218),Var(36)),animtime<=-25
triggerall=helper(218),var(56)<2000000 && helper(218),var(59)<2000000 && (var(43)=[0,1999999]) && (var(44)=[0,1999999]) && (var(43)!=p2stateno) && (var(44)!=p2stateno)
triggerall=(helper(218),var(56)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)-ifelse(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(59)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)-ifelse(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[25,49]
trigger2=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[25,49]
trigger3=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[25,49]
trigger4=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[25,49]
trigger5=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[25,49]
trigger6=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[25,49]
[State -1, Stand]
type = ChangeState
value =ifelse(p2bodydist x>160,108,47)
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall = helper(218),var(35)!=1
triggerall = helper(218),var(35)!=[7,8]
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000;||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=100
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-40
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=helper(218),var(44)<2000000 && helper(218),var(45)<2000000
;triggerall=helper(218),var(56)<2000000 && helper(218),var(59)<2000000
;triggerall=(helper(218),var(56)-(p2stateno*100) !=[-999,999])
;triggerall=(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)-ifelse(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
;triggerall=(helper(218),var(59)-(p2stateno*100) !=[-999,999])
;triggerall=(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)-ifelse(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger2=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger3=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger4=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger5=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger6=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
[State -1, Stand]
type = ChangeState
value =715
triggerall = !IsHelper
triggerall = var(59)>0 && partner,life<=0
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=100)
triggerall = p2movetype=A
;;triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall=(var(43)=[0,1999999]) && (var(44)=[0,1999999]) && (var(43)!=p2stateno) && (var(44)!=p2stateno)
triggerall=(var(36)>0 && var(36)=p2stateno)||(var(35)>0 && var(35)=p2stateno);;;||(enemynear(helper(218),Var(36)),vel x>0&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*30<=0&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*30<=20&&p2statetype=A)
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<=10
trigger17=p2statetype=A
[State -1, Stand]
type = ChangeState
value =1300
triggerall = !IsHelper
triggerall = var(59)>0 && partner,life>0 ;;;&& var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
;triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) 
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall = p2stateno<200||(p2movetype!=H)||helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=facing>0 && enemynear(helper(218),Var(36)),pos x>partner,pos x
trigger2=facing<0 && enemynear(helper(218),Var(36)),pos x<partner,pos x
[State -1, Stand]
type = ChangeState
value =1300
triggerall = !IsHelper
triggerall = var(59)>0 && var(29)<=2 && partner,life<=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
;triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)>=50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = (stateno=[1000,1500])&&(stateno!=[1300,1399])&&(stateno!=[1050,1099])&&(var(10)>0||(p2statetype!=A)||stateno!=[1100,1199])
triggerall = (p2movetype=A&&p2bodydist x>150)||p2statetype=A||(helper(218),fvar(20)>0 && helper(218),fvar(20)=p2stateno)||(helper(218),fvar(21)>0 && helper(218),fvar(21)=p2stateno)||(helper(218),fvar(22)>0 && helper(218),fvar(22)=p2stateno)
triggerall=p2movetype!=H
triggerall=p2bodydist x>=-30 
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=frontedgebodydist-P2BodyDist X>60
[State -1, Stand]
type = ChangeState
value =1300
triggerall = !IsHelper
triggerall = var(59)>0 && var(29)<=2 && partner,life<=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
;triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)>=50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = ((StateNo = [200,450])||(stateno=[1000,1500]))&&(stateno!=[1300,1399])&&(stateno!=[1050,1099])&&(var(10)>0||(p2statetype!=A)||stateno!=[1100,1199])
triggerall = p2movetype=A
triggerall=(p2statetype !=A)||p2bodydist y+enemynear(helper(218),Var(36)),vel y*30<0
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
;triggerall =frontedgebodydist-P2BodyDist X>60 && enemynear(helper(218),Var(36)),pos x=[-170,170]
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=enemynear(helper(218),Var(36)),animtime<-25
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger17=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger22=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9

































[State -1, 地上]
type       = ChangeState
value      = ifelse(stateno=1000,11000,ifelse(stateno=11000,3050,1000))
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=16
triggerall=(helper(218),var(35)!=24)||stateno!=1100
triggerall = RoundState = 2 && Alive && power>=1000
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
;triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;;&& p2bodydist x<=50
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;;||(p2bodydist x<=60&&p2statetype!=A)
triggerall=time>=15||movecontact=5||stateno!=450
trigger1 =(StateNo = 450) && movehit && p2bodydist x<=40 && (stateno=450||p2statetype!=A) && random<=500 && p2life<150
trigger2 =stateno=1000 && prevstateno=450 && animelemtime(2)>=0
trigger3 = stateno=11000
[State -1, 地上]
type       = ChangeState
value      = ifelse(random<=500,3000,3100)
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=16
triggerall=(helper(218),var(35)!=24)||stateno!=1100
triggerall = RoundState = 2 && Alive && power>=1000 && (random<=100||p2life<150)
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3 && life>p2life
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;;&& p2bodydist x<=50
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;;||(p2bodydist x<=60&&p2statetype!=A)
triggerall =movecontact
triggerall=time>=15||movecontact=5||stateno!=450
trigger1 =(StateNo = [200,499]) && (stateno=450||p2statetype!=A) && stateno!=225
[State -1, 地上]
type       = ChangeState
value      = ifelse(stateno=200||stateno=430,410,225)
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=16
triggerall=(helper(218),var(35)!=24)||stateno!=1100
triggerall = RoundState = 2 && Alive
triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 && p2bodydist x<=ifelse(stateno=410,70,20)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)&&p2statetype=A;;;||(p2bodydist x<=280&&p2statetype!=A)
triggerall =movecontact
trigger1 =StateNo = 200
trigger2 = StateNo = 410
trigger3 = StateNo = 430
[State -1, 地上]
type       = ChangeState
value      = ifelse(p2statetype=A,250,ifelse((stateno=200||stateno=430)&&p2bodydist x<=50,220,450))
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=16
triggerall=(helper(218),var(35)!=24)||stateno!=1100
triggerall = RoundState = 2 && Alive
triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||((stateno=200||stateno=230)&&p2bodydist x<=50)||(p2movetype=H&&p2stateno>200)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 && p2bodydist x<=90
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)||p2statetype!=A;;;||(p2bodydist x<=280&&p2statetype!=A)
triggerall =movecontact
trigger1 =StateNo = 200
trigger2 = StateNo = 220
trigger3 = StateNo = 430
trigger4 = StateNo = 410
[State -1, 地上]
type       = ChangeState
;value      = ifelse(stateno=1100,ifelse((random<=100||p2life<150)&&power>=1000&&(helper(218),var(35)!=21),ifelse(random<=500,3000,3100),1200),1100)
value      = ifelse(stateno=1100,1200,1100)
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=21
triggerall=(helper(218),var(35)!=24)||stateno!=1100
triggerall = RoundState = 2 && Alive
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;;&& p2bodydist x<=50
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;;||(p2bodydist x<=60&&p2statetype!=A)
triggerall =movecontact
triggerall=time>=15||movecontact=5||stateno!=450
trigger1 =(StateNo = [200,499]) && p2bodydist x<=40 && (stateno=450||p2statetype!=A)
trigger1 = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4||stateno!=225
trigger2 =StateNo = 1100 && (p2bodydist x<=140||prevstateno=[200,499])
[State -1, 地上]
type       = ChangeState
value      = ifelse(stateno=1100,ifelse(random<=500,3000,3100),1100)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=helper(218),var(35)!=21
triggerall=(helper(218),var(35)!=24)||stateno!=1100
triggerall = RoundState = 2 && Alive && power>=1000
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;;&& p2bodydist x<=50
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;;||(p2bodydist x<=60&&p2statetype!=A)
triggerall =movecontact
triggerall=time>=15||movecontact=5||stateno!=450
trigger1 =(StateNo = [200,499]) && (random<=100||p2life<200) && p2bodydist x<=40 && (stateno=450||p2statetype!=A)
trigger1 = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4||stateno!=225
trigger2 =StateNo = 1100 && prevstateno=[200,499]
[State -1, 地上]
type       = ChangeState
value      = ifelse(random<=500,3000,3100)
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=16
triggerall=(helper(218),var(35)!=24)||stateno!=1100
triggerall = RoundState = 2 && Alive && power>=1000 && (random<=100||p2life<150)
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;;&& p2bodydist x<=50
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;;||(p2bodydist x<=60&&p2statetype!=A)
triggerall =movecontact
triggerall=time>=15||movecontact=5||stateno!=450
trigger1 =(StateNo = [200,499]) && (stateno=450||p2statetype!=A) && stateno!=225
[State -1, 地上]
type       = ChangeState
value      = 1150
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=16
triggerall=(helper(218),var(35)!=24)||stateno!=1100
triggerall = RoundState = 2 && Alive
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=(p2bodydist x>=-40 && p2bodydist x<=60)||stateno=1200
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall =movecontact 
trigger1 =stateno=1100
trigger1 =((p2movetype!=H)||p2stateno<200)&&p2statetype!=A;;;||(p2bodydist x<=280&&p2statetype!=A)
trigger2 =(stateno=1100||stateno=[1200,1205]) && var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
trigger2 =(movehit&&p2movetype=H&&p2stateno>200);;;||(p2bodydist x<=60&&p2statetype!=A)
[State -1, 地上]
type       = ChangeState
value      = 1200;ifelse(p2bodydist x<=40&&(stateno=450||p2statetype!=A),1100,1200)
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=16
triggerall=(helper(218),var(35)!=24)||stateno!=1100
triggerall = RoundState = 2 && Alive
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;;&& p2bodydist x<=50
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;;||(p2bodydist x<=60&&p2statetype!=A)
triggerall =movecontact
triggerall=time>=15||movecontact=5||stateno!=450
trigger1 =StateNo = [200,499]
[State -1, 地上]
type       = ChangeState
value      = ifelse(stateno=1500,123,1500)
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=16
triggerall=(helper(218),var(35)!=24)||stateno!=1100
triggerall = RoundState = 2 && Alive
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
;;triggerall = statetype!= A
triggerall=p2bodydist x>=-40
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;;||p2statetype!=A;;;||(p2bodydist x<=280&&p2statetype!=A)
triggerall =movecontact && stateno!=225
triggerall=time>=15||movecontact=5||stateno!=450
trigger1 =(StateNo = [200,499]) && p2bodydist x<=30
trigger2 =stateno=1500 && animElem=4 
[State -1, 地上]
type       = ChangeState
value      = 1300
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=16
triggerall=(helper(218),var(35)!=24)||stateno!=1100
triggerall = RoundState = 2 && Alive && life>200
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;;&& p2bodydist x<=50
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall =movecontact
triggerall =(StateNo = [200,499])||(stateno=[1100,1299])
trigger1 =p2stateno<200||p2movetype!=H
trigger1 =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20&&(stateno=450||stateno=250)&&p2bodydist x<=50&&p2statetype!=A
[State -1, 地上]
type       = ChangeState
value      = ifelse(p2bodydist x>60||(p2movetype=H&&p2stateno>200&&random<=666&&p2statetype=A),ifelse(random<=ifelse(p2bodydist x<=60,333,500)||stateno=450,1200,1000),1100)
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=16
triggerall=(helper(218),var(35)!=24)||stateno!=1100
triggerall = RoundState = 2 && Alive
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;;&& p2bodydist x<=50
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall =movecontact
triggerall =StateNo = [200,499]
trigger1 =(p2movetype=H&&p2stateno>200)
trigger1=time>=15||movecontact=5||stateno!=450
trigger2=p2stateno<200||p2movetype!=H
trigger2 =((var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||stateno=450||stateno=250)&&p2bodydist x<=50&&p2statetype!=A)
[State -1, 地上]
type       = ChangeState
value      = ifelse(stateno=600,610,ifelse(stateno=610,620,ifelse(stateno=620,ifelse(power>=1000&&(random<=100||p2life<200)&&prevstateno=610&&frontedgebodydist>100&&p2bodydist y>=0,3050,1050),600)))
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=21)
triggerall=helper(218),var(35)!=14
triggerall=helper(218),var(35)!=19
triggerall = RoundState = 2 && Alive
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype= A
triggerall=p2bodydist x>=-40 && p2bodydist x<=120
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200) && p2statetype=A
trigger1 = StateNo = 600 && movecontact
trigger2 = StateNo = 610 && movecontact
trigger3 = StateNo = 620 && movecontact && Pos y<=-25 && (helper(218),var(35)!=18) && (helper(218),var(35)!=19)
trigger4 = ctrl||(stateno=[0,40])||(stateno=[120,149])||var(4)
trigger4=p2bodydist x<=80 && p2bodydist y=[ifelse(vel y<0,-100,-20),20)
[State -1, 地上]
type       = ChangeState
value      = ifelse(stateno=600,610,ifelse(stateno=610,620,ifelse(stateno=620,ifelse(power>=1000&&(random<=100||p2life<200)&&prevstateno=610&&frontedgebodydist>100&&p2bodydist y>=0,3050,1050),610)))
triggerall = !ishelper
triggerall = var(59)>0
triggerall=helper(218),var(35)=14||helper(218),var(35)=19
triggerall = RoundState = 2 && Alive
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype= A
triggerall=p2bodydist x>=-40 && p2bodydist x<=120
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200) && p2statetype=A
trigger1 = StateNo = 600 && movecontact
trigger2 = StateNo = 610 && movecontact
trigger3 = StateNo = 620 && movecontact && Pos y<=-25 && (helper(218),var(35)!=19)
trigger4 = ctrl||(stateno=[0,40])||(stateno=[120,149])||var(4)
trigger4=p2bodydist x<=80 && p2bodydist y=[ifelse(vel y<0,-100,-20),20)
[State -1, 地上]
type       = ChangeState
value      = 625
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=helper(218),var(35)!=16
triggerall = RoundState = 2 && Alive
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype= A
triggerall=p2bodydist x>=-40 && p2bodydist x<=120
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200) && p2statetype=A
trigger1 = StateNo = 620 && movecontact
[State -1, 地上]
type       = ChangeState
value      = 1050
triggerall = !ishelper
triggerall = var(59)>0
triggerall = RoundState = 2 && Alive
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype= A
triggerall=p2bodydist x>=-40;;; && p2bodydist x<=120
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =p2statetype=A && Pos y<=-25 && (var(3) != [1, 2])
trigger1 = StateNo = 600 && movecontact
trigger2 = StateNo = 610 && movecontact
trigger3 = StateNo = 620 && movecontact






























































[State -1]
type = ChangeState
value=ifelse(p2statetype=A,850,800)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
;;triggerall = var(53)-((ceil(var(53)/100)-ifelse(var(53)-(ceil(var(53)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = ((statetype != A)&&(p2statetype!=A))||((statetype = A)&&(p2statetype=A)&&(p2bodydist Y=[-20,20])&&pos y<-30)
triggerall=p2bodydist x>=-30
triggerall = stateno != 100
triggerall = p2dist X < 56
triggerall=statetype=A||p2movetype!=A;;(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H);;||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0||p2statetype=A
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=200||stateno=109;;||p2movetype=A;+ifelse(var(53)-((ceil(var(53)/100)-ifelse(var(53)-(ceil(var(53)/100)*100)<0,1,0))*100)>=30,-100,0);;;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger2 =((p2stateno=[50,59]) && var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20)
trigger3 =0;(teamside=2 && var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30)
trigger4 = statetype=A
[State -1]
type = ChangeState
value=109
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(p2movetype!=H)||random<=100||partner,life>0
triggerall = RoundState = 2 && Alive  && stateno!=3
;;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;triggerall=partner,life>0||helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = ((statetype != A)&&(p2statetype!=A));;;;;;;||((statetype = A)&&(p2statetype=A)&&p2bodydist y=[-40,40])
triggerall=p2bodydist x>=-20
triggerall = p2bodydist X <=50
;triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-60,0]
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
;triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H);||p2stateno=[120,159]
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
triggerall = (Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123))
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=100+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]);||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=225
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
triggerall=(helper(218),var(10))-((ceil((helper(218),var(10))/10000)-ifelse((helper(218),var(10))-(ceil((helper(218),var(10))/10000)*10000)<0,1,0))*10000)!=[1000,1999]
triggerall=p2bodydist x>0
triggerall=p2bodydist x<=90 
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=[100,103]
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=40+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-20,0)||(p2movetype=H&&p2statetype=C&&random<=200);;;||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x>30,220,430)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=-40
triggerall=p2bodydist x<=60 
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=[100,103]
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=200+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-100,0)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=500,200,410)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=-40
triggerall=p2bodydist x<=30 
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=[100,103]
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=200+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-100,0);;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=500||p2bodydist x>80,450,250)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>50
triggerall=p2bodydist x<=100 
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=[100,103]
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=200+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-100,0);;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=1100
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||p2bodydist x>100;;;||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>ifelse(p2bodydist x<=60,30,80)
triggerall=p2bodydist x<=ifelse(random<=500,150,100)
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=[100,103])
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;;;+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);;;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=1200
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30;;;||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>80
triggerall=p2bodydist x<=ifelse(random<=500,150,100)
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=[100,103])
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;;;+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);;;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=1500
triggerall = !ishelper
triggerall = var(59)>0
;triggerall =p2bodydist x<60||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive
triggerall = statetype != A
triggerall=p2bodydist x>=0
triggerall=p2bodydist x<=30
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=[100,103])
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =(helper(218),fvar(20)>0 && helper(218),fvar(20)=p2stateno)||(helper(218),fvar(21)>0 && helper(218),fvar(21)=p2stateno)||(helper(218),fvar(22)>0 && helper(218),fvar(22)=p2stateno)
[State -1]
type = ChangeState
value=1000
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive; && partner,life<=0
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall =helper(218),var(3)<600||random<=500
triggerall =time<30||random<=333
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<8000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<6000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<40||(life>500&&life>p2life&&random<=500)
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall =statetype != A 
triggerall=p2bodydist x>100 && (random<=500||p2bodydist x<200)
triggerall=P2bodyDist X-enemynear(helper(218),Var(36)),vel x*30>=100
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>130))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;;ifelse(p2bodydist x>400,25,50);||(partner,life>0&&(p2bodydist x>=170||facing*enemynear(helper(218),Var(36)),facing>0));+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000)||partner,life>0;;p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;trigger2 = partner,life>0
[State -1]
type = ChangeState
value=1600
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive; && partner,life<=0
triggerall =var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=100
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30;||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall =helper(218),var(3)<600||random<=500
triggerall =time<30||random<=333
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<8000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<6000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<40||(life>500&&life>p2life&&random<=500)
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall =statetype != A 
triggerall=p2bodydist x>100 && p2bodydist x<200
triggerall=P2bodyDist X-enemynear(helper(218),Var(36)),vel x*30>=100
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>120))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=0;helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;;ifelse(p2bodydist x>400,25,50);||(partner,life>0&&(p2bodydist x>=170||facing*enemynear(helper(218),Var(36)),facing>0));+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000)||partner,life>0;;p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=1400
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive && partner,life<=0
triggerall =var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=100;;||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall =helper(218),var(3)<600||random<=500
triggerall =time<30||random<=333
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<8000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<6000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<40||(life>500&&life>p2life&&random<=500)
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall =statetype != A 
triggerall=p2bodydist x>100 && (random<=500||p2bodydist x<200)
triggerall=P2bodyDist X-enemynear(helper(218),Var(36)),vel x*30>=100
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>120))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;;ifelse(p2bodydist x>400,25,50);||(partner,life>0&&(p2bodydist x>=170||facing*enemynear(helper(218),Var(36)),facing>0));+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000)||partner,life>0;;p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=1050;;ifelse((random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=ifelse(life<p2life,20,30))&&(!numhelper(1001)||helper(1001),stateno=1002),1000,1050)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive; && partner,life<=0
triggerall =statetype != A 
triggerall=p2bodydist x>ifelse((facing*enemynear(helper(218),Var(36)),facing>0),80,120)
triggerall=P2bodyDist X-enemynear(helper(218),Var(36)),vel x*30>=ifelse((facing*enemynear(helper(218),Var(36)),facing>0),80,120)
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>120))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =0;partner,life>0
[State -1]
type = ChangeState
value=1300
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive && partner,life<=0
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=500,30,20);||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
triggerall =helper(218),var(3)<600||random<=500
triggerall =time<30||random<=333
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20
;triggerall =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000)||partner,life>0||random<=500
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<8000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<6000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall =statetype != A 
triggerall=p2bodydist x>60 && p2bodydist x<=300
;;triggerall=P2bodyDist X-enemynear(helper(218),Var(36)),vel x*30>=150
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;||(partner,life>0&&(p2bodydist x>=170||facing*enemynear(helper(218),Var(36)),facing>0));+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=500||(partner,life>0)||(helper(218),var(3)>=600),ifelse(random<=250||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,42,47),ifelse(random<=750,43,48))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive; && partner,life<=0
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
triggerall =helper(218),var(3)<600||random<=500
triggerall =time<30||random<=333
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20
;triggerall =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000)||partner,life>0||random<=500
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<8000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<6000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall =statetype != A 
triggerall=p2bodydist x>60 && p2bodydist x<=300
;;triggerall=P2bodyDist X-enemynear(helper(218),Var(36)),vel x*30>=150
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;||(partner,life>0&&(p2bodydist x>=170||facing*enemynear(helper(218),Var(36)),facing>0));+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=1600
triggerall = !ishelper
triggerall = var(59)>0
triggerall =var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=100
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive && random<=500
;;triggerall = p2bodydist x<=150||stateno!=100
triggerall = statetype!=A 
triggerall=(p2bodydist x=[100,150]);;;||(p2bodydist x>0&&backedgebodydist>60);;; && p2bodydist x<200
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = 0;Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=100
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=0;helper(218),var(18)<1000 && p2stateno=5120;; && p2bodydist x>130
trigger2=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
;trigger3=helper(218),var(18)>3000 && ((helper(218),var(35)=[13,14])||(helper(218),var(35)=16))
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000=[32000,60000]
[State -1]
type = ChangeState
value=49
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive
;;triggerall = p2bodydist x<=150||stateno!=100
triggerall = statetype!=A 
triggerall=(p2bodydist x=[50,100]);;;||(p2bodydist x>0&&backedgebodydist>60);;; && p2bodydist x<200
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=100
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=0;helper(218),var(18)<1000 && p2stateno=5120;; && p2bodydist x>130
trigger2=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
;trigger3=helper(218),var(18)>3000 && ((helper(218),var(35)=[13,14])||(helper(218),var(35)=16))
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000=[39000,41000]
[State -1]
type = ChangeState
value=48
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive
;;triggerall = p2bodydist x<=150||stateno!=100
triggerall = statetype!=A 
triggerall=p2bodydist x>ifelse(random<=200,0,100)&&backedgebodydist>60;;; && p2bodydist x<200
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||stateno=100
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=helper(218),var(18)<1000 && p2stateno!=5120;; && p2bodydist x>130
trigger2=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
;trigger3=helper(218),var(18)>3000 && ((helper(218),var(35)=[13,14])||(helper(218),var(35)=16))
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000>30000
trigger3=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger3=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger3=partner,life>0;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
[State -1]
type = ChangeState
value=ifelse(frontedgebodydist>120&&(enemynear(helper(218),Var(36)),vel x>=2),108,ifelse(backedgebodydist>60,105,108))
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=(stateno!=1000) && (stateno!=[1340,1349]) && (stateno!=[11120,11129]) && (pos y>=0||((stateno!=[10,19])&&(prevstateno!=[10,19])))
triggerall=(helper(218),var(35)!=11)||(p2movetype!=H)||(p2stateno=[5100,5150])
;triggerall=p2stateno!=80103
triggerall = RoundState = 2 && Alive && numenemy=1 && numpartner=0
triggerall = statetype != A
;triggerall=backedgebodydist>60||(p2bodydist x<=60 && enemynear(helper(218),Var(36)),vel x>=3 && p2stateno!=[5100,5110])
triggerall=p2bodydist x>=-40
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)
triggerall =(p2statetype!=A);||(helper(218),var(35)=8)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1 =backedgebodydist<=50 && p2bodydist x<=60 && (enemynear(helper(218),Var(36)),vel x>=0||p2stateno=[5100,5110])
trigger2 =p2bodydist x<=100 && enemynear(helper(218),Var(36)),vel x>=2 && p2stateno!=[5100,5110]
trigger3 = p2bodydist x<=30 ;;;&& helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)!=[1,2]





















[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0 && stateno!=105
;triggerall=var(52)=[-999999,999]
triggerall=var(53)!=[1000,1999]
triggerall = (stateno!=50)||var(3)!=[1,2]
triggerall = helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=5120&&AnimTime=0)||stateno=100
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall = StateNo != [110,111]
triggerall = prevStateNo != [110,111]
triggerall=numenemy=1
;triggerall=statetype !=A
triggerall=inguarddist=0 && helper(218),inguarddist=0
triggerall=var(54)<100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)=[1,9]
value      = ifelse(statetype=A,132,130)
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0  && stateno!=105
;triggerall=var(52)=[-999999,999]
triggerall=var(53)!=[1000,1999]
triggerall = (stateno!=50)||var(3)!=[1,2]
triggerall = helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=5120&&AnimTime=0)||stateno=100
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall = StateNo != [110,111]
triggerall = prevStateNo != [110,111]
triggerall=numenemy=1
;triggerall=statetype !=A
triggerall=inguarddist=0 && helper(218),inguarddist=0
triggerall=var(54)<100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)>=1
value      = ifelse(statetype=A,132,ifelse((enemynear(helper(218),Var(36)),stateType = A),130,131))
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
;triggerall=var(52)=[-999999,999]
triggerall=var(53)!=[1000,1999]
;triggerall = p2statetype=A||helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=5120&&AnimTime=0)||stateno=100
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall = StateNo != [110,111]
triggerall = prevStateNo != [110,111]
triggerall=statetype !=A
triggerall=inguarddist||helper(218),inguarddist
triggerall=var(54)<100000
trigger1=enemynear(helper(218),Var(36)),MoveType = A
trigger1=enemynear(helper(218),Var(36)),statetype=A
trigger2=enemynear(helper(218),Var(36)),MoveType = A
trigger2=(var(46)>0 && var(46)=p2stateno)||(var(45)>0 && var(45)=p2stateno)
value      = 130
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0 
;triggerall=var(52)=[-999999,999]
triggerall=var(53)!=[1000,1999]
;triggerall = helper(218),var(52)<2000000 && helper(218),var(53)<2000000||p2statetype=A||helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=5120&&AnimTime=0)||stateno=100
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall = StateNo != [110,111]
triggerall = prevStateNo != [110,111]
triggerall=statetype!=A
triggerall=inguarddist||helper(218),inguarddist
triggerall=var(54)<100000
triggerall=(enemynear(helper(218),Var(36)),MoveType != A)||(var(46)<=0||var(46) !=p2stateno)
triggerall=(enemynear(helper(218),Var(36)),MoveType != A)||(var(45)<=0 ||var(45) !=p2stateno)
trigger1=enemynear(helper(218),Var(36)),statetype !=A
trigger1=enemynear(helper(218),Var(36)),MoveType = A
trigger2=enemynear(helper(218),Var(36)),movetype !=A
value      = 131
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0  && stateno!=105
triggerall=(stateno!=1000) && (stateno!=[1340,1349]) && (stateno!=[11120,11129]) && (pos y>=0||((stateno!=[10,19])&&(prevstateno!=[10,19])))
;triggerall=var(52)=[-999999,999]
triggerall=var(53)!=[1000,1999]
;triggerall = helper(218),var(35)!=1
;triggerall = helper(218),var(35)!=[100,130]
triggerall = RoundState = 2 && Alive
triggerall = StateNo != [120, 159]
triggerall = StateNo != 102
triggerall = StateNo != [110,111]
triggerall=inguarddist||helper(218),inguarddist
triggerall=var(54)<100000
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=5120&&AnimTime=0)||(stateno=[50,51])||(stateno=105&&time>=2)
triggerall=statetype=A
trigger1=1
value      = 132









[State -1, Stand1]
type = ChangeState
value =102
triggerall = !IsHelper
triggerall = var(59)>0
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=(helper(218),var(35)!=[11,12])
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,20,30)||(p2movetype!=H)||(p2statetype!=A)||(helper(218),var(35)=[11,12])||(helper(218),var(35)=[14,16])
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||(helper(218),var(35)!=19)
;triggerall = (helper(218),var(35)!=[13,14])
;triggerall = (helper(218),var(35)!=16)
;triggerall = (helper(218),var(35)!=[12,13])||p2statetype!=A
;triggerall = (helper(218),var(35)!=14)||p2bodydist x>150
;triggerall = (helper(218),var(35)!=18)||helper(218),var(10)-((ceil(helper(218),var(10)/1000000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/1000000)*1000000)<0,1,0))*1000000)>=100000
;triggerall = helper(218),var(12)<1000000||partner,life>0||(p2movetype=H&&p2bodydist y<-20)||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
triggerall = RoundState = 2 && Alive && (stateno!=[100,109]) && stateno!=3
triggerall = statetype != A 
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(p2movetype!=H)||(p2stateno =[120,159])
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)
triggerall=0;p2bodydist x>20||frontedgebodydist>60
;;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger1=p2bodydist x>250 && p2bodydist x-enemynear(helper(218),Var(36)),vel x*30>250
;trigger2=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger2=0;random<=8 && p2bodydist x<=150 && p2movetype!=H
trigger3=p2movetype=H && p2stateno>200 && p2bodydist x>100 && ((p2bodydist y>=-60&&p2bodydist x>60)||p2bodydist x>120||p2statetype!=A)
trigger3=0;helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno!=[5100,5150]
[State -1, Stand1]
type = ChangeState
value =27;ifelse((helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2bodydist x>ifelse(p2movetype=H,40,100)),100,25)
triggerall = !IsHelper
triggerall = var(59)>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20&&p2movetype!=A
;triggerall=(helper(218),var(35)!=[11,12])
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive && stateno!=3
triggerall = statetype != A 
triggerall=((stateno !=[100,101])&&(stateno !=[27,28]))||(time>=10 && stateno=28 && (random<=200||helper(218),var(35)=20))||(stateno=28 && (helper(218),var(35)=13||helper(218),var(35)=23))
triggerall=(inguarddist=0 && helper(218),inguarddist=0&&(numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0&&p2bodydist x>=80);||(numhelper(765)>=2&&helper(765),var(0)=0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0||(p2movetype=H &&p2stateno !=[120,159])
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)
trigger1=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,70,ifelse(p2movetype=H&&p2stateno>200&&(frontedgebodydist>50||p2statetype!=A),0,30))
trigger1=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
;trigger1=(helper(218),var(35)!=11)&&((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger2=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,70,ifelse(p2movetype=H&&p2stateno>200&&(frontedgebodydist>50||p2statetype!=A),0,50))
trigger2=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
;trigger2=(helper(218),var(35)!=11)&&((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
;trigger3=p2bodydist x>=70
;trigger3=(helper(218),var(35)=11)||(p2stateno=5500&&p2movetype=H);;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
[State -1, Stand1]
type = ChangeState
value =28;ifelse((helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2bodydist x>ifelse(p2movetype=H,40,100)),100,25)
triggerall = !IsHelper
triggerall = var(59)>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20&&p2movetype!=A
;triggerall=(helper(218),var(35)!=[11,12])
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive && stateno!=3
triggerall = statetype != A 
triggerall=((stateno !=[100,101])&&(stateno !=[27,28]))||(time>=10 && stateno=27 && (random<=200||helper(218),var(35)=20))||(stateno=27 && (helper(218),var(35)=13||helper(218),var(35)=23))
triggerall=(inguarddist=0 && helper(218),inguarddist=0&&(numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0&&p2bodydist x>=80);||(numhelper(765)>=2&&helper(765),var(0)=0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0||(p2movetype=H &&p2stateno !=[120,159])
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)
trigger1=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,70,ifelse(p2movetype=H&&p2stateno>200&&(frontedgebodydist>50||p2statetype!=A),0,30))
trigger1=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
;trigger1=(helper(218),var(35)!=11)&&((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger2=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,70,ifelse(p2movetype=H&&p2stateno>200&&(frontedgebodydist>50||p2statetype!=A),0,50))
trigger2=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
;trigger2=(helper(218),var(35)!=11)&&((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
;trigger3=p2bodydist x>=70
;trigger3=(helper(218),var(35)=11)||(p2stateno=5500&&p2movetype=H);;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
[State -1, Stand]
type = ChangeState
value = 0
triggerall = !IsHelper
triggerall = (var(59) !=0)||stateno=[27,28]
;triggerall = RoundState = 2 && Alive && time
triggerall = time>=10 && statetype != A
trigger1=(time>=10 && stateno=[27,28]);||(time>=3 && stateno=[100,101])
trigger1 = RoundState != 2
trigger2=(stateno=[27,28]);||(stateno=[100,101])||(StateNo = 5120 && AnimTime = 0)
trigger2 = p2bodydist x<-30||time>=300;||(p2bodydist x<0 && facing*enemynear(helper(218),Var(36)),facing>0)
;;trigger3 = helper(218),var(35)=18 && p2bodydist x=[-20,20]
ctrl=1
[State -1, Stand]
type = ChangeState
value = 0
triggerall = !IsHelper
triggerall = (var(59) !=0)
triggerall =0;stateno=100 && statetype != A
trigger1 = RoundState != 2
trigger2 = p2movetype=A||inguarddist||(((p2movetype!=H)||p2stateno<200||p2bodydist x<50)&&time>=30)
trigger2 = p2movetype=A||inguarddist||p2bodydist x-enemynear(helper(218),Var(36)),vel x*30<180||p2bodydist x<=180
trigger3 =p2bodydist x<ifelse(p2statetype=A,10,0)
ctrl=1











[State -2]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=time=0
triggerall = RoundState = 2 && Alive
trigger1=stateno=[5200,5210]
trigger1=0;numpartner=0
value      =5050
[State -1]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = RoundState = 2 && Alive
trigger1=stateno=20
trigger2=stateno=40
trigger3=0;stateno=45
trigger4=stateno=10
value      = ifelse(stateno=45,ifelse(vel y >=0,51,50),ifelse(p2movetype=A&&(helper(218),var(3)<600)&&p2bodydist x<130,28,27))
ctrl=1
[State -1]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)!=0
triggerall=stateno=[20,23]
trigger1=roundstate !=2
trigger2=p2bodydist x<-10
value      =0
ctrl=1


















































[State -1]
type = ChangeState
value =4250;;14400;ifelse(random<=500,14500,14600);ifelse(statetype=A,ifelse(random<=350,2150,ifelse(random<=700,2125,2100)),ifelse(random<=350,1500,ifelse(random<=700,2400,2400)));ifelse(random<=350,6000,ifelse(random<=700,4000,4100));ifelse(random<=350,ifelse(numhelper(6061) = 1,6051,6050),ifelse(random<=700,6000,ifelse((var(29)=1),4100,4000)));ifelse(random<=350,3000,ifelse(random<=700,3100,3050));ifelse((var(20)=1)||(var(21)=1)||(var(22)=1),ifelse((life>500||(var(20)=6)||(var(21)=6)||(var(22)=6))&&(var(20)!=4)&&(var(21)!=4)&&(var(22)!=4),1370,1390),1310)
triggerall =var(53)=0
trigger1 = 0;(StateType != A) && (MoveContact) && stateno<2000
[State -1]
type = ChangeState
value =123;;ifelse(statetype=A,ifelse(random<=500,1250,1450),ifelse(random<=500,1600,1400));ifelse((var(20)=1)||(var(21)=1)||(var(22)=1),ifelse((life>500||(var(20)=6)||(var(21)=6)||(var(22)=6))&&(var(20)!=4)&&(var(21)!=4)&&(var(22)!=4),1370,1390),1310)
triggerall =var(59)=0
trigger1 =Command = "a"
;trigger1 = statetype != A
trigger1 =0;ctrl||stateno=[20,29]
;trigger2=(stateno = 320) && (Time >= 35)





























































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
triggerall = stateno != [1000,1200]
triggerall = stateno != 11000
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
triggerall = StateNo = 3000 || stateno = 3100
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
trigger2 = Anim = [200,1000]
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
trigger5 = stateno = [1000,1200]
trigger5 = command = "sheoun"
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
triggerall = StateNo = [200,2000]
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

;==============================================================================================
;==============================================================================================
;================================<EXPLODsive Buffering System>=================================
;====================================<by JustMorphPointman>====================================
;==============================================================================================
;==============================================================================================

;This is an explod-based buffering system, designed to overcome several different errors and bugs
;related to MUGEN's default method of processing commands, as well as offering creators more control
;over how the commands of their character should work. It is designed to be easy to use, understand,
;and install. For more information, including instructions on how to add this to a character, as
;well as how to customize it and add new commands, please visit http://mugenguild.com/forum/msg.2366951

;==============================================================================================
;========================<QUICK REFERENCE GUIDE TO THE EXPLOD ID #'s>==========================
;==============================================================================================

;BASIC DIRECTIONAL INPUTS (these are primarily used to detect directional releases, but also can
;be used outside of the Buffering system code block to detect when a specific direction is currently
;being input or held down)

;Down: 90000002
;Down-right: 90000003
;Right: 90000006
;Up-right: 90000009
;Up: 90000008
;Up-left: 90000007
;Left: 90000004
;Down-left: 90000001


;BUTTON PRESS
;x: 90000200
;y: 90000210
;z: 90000220
;a: 90000230
;b: 90000240
;c: 90000250
;start: 90000195


;BUTTON RELEASE
;x: 90000205
;y: 90000215
;z: 90000225
;a: 90000235
;b: 90000245
;c: 90000255
;start: 90000196


;SYSTEM MOTIONS
;Down (3 ticks): (D with a 3 tick buffer) 90000012
;Down-right (3 ticks): (DR with a 3 tick buffer) 90000013
;Right (3 ticks): (R with a 3 tick buffer) 90000016
;Up-right (3 ticks): (UR with a 3 tick buffer) 90000019
;Up (3 ticks): (U with a 3 tick buffer) 90000018
;Up-left (3 ticks): (UL with a 3 tick buffer) 90000017
;Left (3 ticks): (L with a 3 tick buffer) 90000014
;Down-left (3 ticks): (DL with a 3 tick buffer) 90000011

;Down (3 ticks + HitPause): (D w/ 3 tick buffer + HitPause) 90000022
;Down-right (3 ticks + HitPause): (DR w/ 3 tick buffer + HitPause)90000023
;Right (3 ticks + HitPause): (R w/ 3 tick buffer + HitPause) 90000026
;Up-right (3 ticks + HitPause): (UR w/ 3 tick buffer + HitPause)90000029
;Up (3 ticks + HitPause): (U w/ 3 tick buffer + HitPause) 90000028
;Up-left (3 ticks + HitPause): (UL w/ 3 tick buffer + HitPause)90000027
;Left (3 ticks + HitPause): (L w/ 3 tick buffer + HitPause) 90000024
;Down-left (3 ticks + HitPause): (DL w/ 3 tick buffer + HitPause)90000021

;R, R: (F, F) 90001016
;L, L: (B, B) 90001064
;D, U: (D, U) 90000408
;U, U: (U, U) 90000518
;D, D: (D, D) 90000562
;R, DR, D (F, DF, D) 90007502
;L, DL, D (B, DB, D) 90007552


;SPECIAL MOTIONS
;D, DR, R: (QCF) 90010006
;D, DL, L: (QCB) 90010104
;R, D, DR: (F, D, DF) 90010203
;L, D, DL: (B, D, DB) 90010301
;L, DL, D, DR, R: (HCF) 90010406
;R, DR, D, DL, L: (HCB) 90010504
;(charge) L, R: ([charge] B, F) 90010606
;(charge) R, L: ([charge] F, B) 90010704
;(charge) D, U: ([charge] D, U) 90010808
;L, D, R, U: (360) 90011008
;L, U, R, D: (360) 90011102
;D, R, U, L: (360) 90011204
;D, L, U, R: (360) 90011306
;R, D, L, U: (360) 90011408
;R, U, L, D: (360) 90011502
;U, R, D, L: (360) 90011604
;U, L, D, R: (360) 90011706
;U, UR, R: (UP-QCF) 90011806
;U, UL, L: (UP-QCB) 90011904
;R, D, L, R: (HCB, F) 90012016
;L, D, R, L: (HCF, B) 90012114
;R, L, R: (F, B, F) 90012216
;L, R, L: (B, F, B) 90012314
;D, DR, R, UR: (QCF, UF) 90012409
;D, DL, L, UL: (QCB, UB) 90012507
;D, D: ([special] D, D) 90012602


;SUPER MOTIONS
;D, DR, R, D, DR, R: (QCFx2) 90030016
;D, DL, L, D, DL, L: (QCBx2) 90030114
;L, DL, D, DR, R, L, DL, D, DR, R: (HCFx2) 90030416
;R, DR, D, DL, L, R, DR, D, DL, L: (HCBx2) 90030514
;(charge) L, R, L, R: ([charge] B, F, B, F) 90030616
;(charge) R, L, R, L: ([charge] F, B, F, B) 90030714
;(charge) DL, DR, DL, UR: ([charge] DB, DF, DB, UF) 90030809
;(charge) DR, DL, DR, UL: ([charge] DF, DB, DF, UB) 90030907
;L, D, R, U, L, D, R, U: (720) 90031018
;L, U, R, D, L, U, R, D: (720) 90031112
;D, R, U, L, D, R, U, L: (720) 90031214
;D, L, U, R, D, L, U, R: (720) 90031316
;R, D, L, U, R, D, L, U: (720) 90031418
;R, U, L, D, R, U, L, D: (720) 90031512
;U, R, D, L, U, R, D, L: (720) 90031614
;U, L, D, R, U, L, D, R: (720) 90031716
;R, L, D, R: (F, HCF) 90032016
;L, R, D, L: (B, HCB) 90032114
;D, DR, R, D, L: (QCF, HCB) 90032204
;D, DL, L, D, R: (QCB, HCF) 90032306
;D, DR, R, DR, L: (QCF, DF, B) 90032404
;D, DL, L, DL, R: (QCB, DB, F) 90032506
;D, D, D: (D, D, D) 90032602


;SUPER MOTIONS (button inputs)
;x, x, F, a, z: (Shun Goku Satsu) 94000220
;x, y, F, b, b: (Midnight Pleasure) 94010241
;y, z, B, b, c: (Black Hayato) 94020250
;x, y, B, y, z: (Eternal Slumber) 94030220
;c, x, D, a, z: (Tour De Magie) 94040220
;z, a, B, x, x: (Otoko Michi) 94050211


;==============================================================================================
;===================================<DIRECTIONAL COMMANDS>=====================================
;==============================================================================================

;==============================================================================================
;These are required for the system to function; they are active whenever the specified direction
;is currently being input, and disappear as soon as they are released (via a series of RemoveExplods
;at the bottom of the Buffering system code block). They are used by the system to detect directional
;releases, but can also be used outside of the Buffering system code block to detect when a specific
;direction is being input or held down.
;==============================================================================================

[State -1, Release Down Detector]
type = Explod
;make sure explod doesn't already exist
triggerAll = !NumExplod(90000002)
;check to make sure Helper exists, and that the entity running this code isn't the helper, and that
;the AI isn't active. Only a human player should be making explods!
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
;If either of these explods exist, then down/up inputs have been reversed (this is usually caused
;by an attack of some sort, such as Thanos's Mind Gem super). We can easily flip left/right commands,
;but for down/up inputs, we must have two sets of triggers. This is the first set, which only activate
;if the explods don't exist, so we can just check the inputs normally.
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
;explod will be created if down is input
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
;no other directions may be input, otherwise it wouldn't be a down input!
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
;These sets of triggers, however, only are used if one of the direction input reversal explods exist.
;We treat "down" inputs as "up", and vice-versa; "down-right" is treated as "up-right", and so on.
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000002
;these explods are only removed via a RemoveExplod, so their RemoveTime is set to -1 (aka infinite)
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Down-Right Detector]
type = Explod
triggerAll = !NumExplod(90000003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000003
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Right Detector]
type = Explod
triggerAll = !NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000006
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up-Right Detector]
type = Explod
triggerAll = !NumExplod(90000009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000009
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up Detector]
type = Explod
triggerAll = !NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000008
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up-Left Detector]
type = Explod
triggerAll = !NumExplod(90000007)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000007
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Left Detector]
type = Explod
triggerAll = !NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000004
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Down-Left Detector]
type = Explod
triggerAll = !NumExplod(90000001)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000001
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1



;==============================================================================================
;==========================================<BUTTONS>===========================================
;==============================================================================================

[State -1, Press x]
type = Explod
;if there already exists a "press x" explod, and the player is in HitPauseTime, then we don't need another!
trigger1 = !HitPauseTime || !NumExplod(90000200)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 90000200
;the removeTime, pauseMoveTime, and superMoveTime all must be the same value. This represents the
;amount of time (in ticks) that this individual input is "active"; in other words, it's the window
;of time the player has to input the next input in sequence (or if it's the final input of a command,
;the amount of time that command will last, if the character cannot currently perform the move in
;question). We use "10" as the default value for most directional inputs, because it's generally the
;standard amount of time for most games
;We use "3" for button inputs, which is what many modern games use, but there's a lot of variance
;there.

;We also include " + ifElse(HitPauseTime, HitPauseTime - 1, 0)" to the RemoveTime/PauseMoveTime/SuperMoveTime
;in order to keep the command alive during hit pause. This goes on all button press commands, as well as
;the final directional input of any system, special, or super command.
;For more information on what the removeTime (and pauseMoveTime, et. al.) represents, see the comments for
;the "Right, Right" command
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press y]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000210)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1998
ID = 90000210
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press z]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000220)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 90000220
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press a]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000230)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a"
anim = 1998
ID = 90000230
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press b]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000240)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b"
anim = 1998
ID = 90000240
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press c]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000250)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c"
anim = 1998
ID = 90000250
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press start]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000195)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "start"
anim = 1998
ID = 90000195
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;These explods are used to detect button releases, much in the same way that the directional
;detectors work. These are required for the system, but it's easier to use MUGEN's standard
;"holda" / "holdx" / etc. for situations where you need to detect a held button input, rather than
;making use of these like you would the release direction detectors.
;==============================================================================================
[State -1, Release x Detector]
type = Explod
triggerAll = !NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x" || Helper(90000005), command = "holdx"
anim = 1998
ID = 90000201
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release y Detector]
type = Explod
triggerAll = !NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y" || Helper(90000005), command = "holdy"
anim = 1998
ID = 90000211
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release z Detector]
type = Explod
triggerAll = !NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z" || Helper(90000005), command = "holdz"
anim = 1998
ID = 90000221
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release a Detector]
type = Explod
triggerAll = !NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a" || Helper(90000005), command = "holda"
anim = 1998
ID = 90000231
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release b Detector]
type = Explod
triggerAll = !NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b" || Helper(90000005), command = "holdb"
anim = 1998
ID = 90000241
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release c Detector]
type = Explod
triggerAll = !NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c" || Helper(90000005), command = "holdc"
anim = 1998
ID = 90000251
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release start Detector]
type = Explod
triggerAll = !NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "start"
anim = 1998
ID = 90000194
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1



;==============================================================================================
;Take note of the RemoveTimes on these: release button inputs don't persist through hitpause!
;==============================================================================================

[State -1, Release x]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000205)
triggerAll = NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "x" && Helper(90000005), command != "holdx"
anim = 1998
ID = 90000205
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release y]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000215)
triggerAll = NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "y" && Helper(90000005), command != "holdy"
anim = 1998
ID = 90000215
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release z]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000225)
triggerAll = NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "z" && Helper(90000005), command != "holdz"
anim = 1998
ID = 90000225
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release a]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000235)
triggerAll = NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "a" && Helper(90000005), command != "holda"
anim = 1998
ID = 90000235
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release b]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000245)
triggerAll = NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "b" && Helper(90000005), command != "holdb"
anim = 1998
ID = 90000245
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release c]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000255)
triggerAll = NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "c" && Helper(90000005), command != "holdc"
anim = 1998
ID = 90000255
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release start]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000196)
triggerAll = NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "start" && Helper(90000005), command != "holdstart"
anim = 1998
ID = 90000196
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;==============================================================================================
;=============================<DIRECTIONAL INPUTS (3 TICK BUFFER)>=============================
;==============================================================================================

;==============================================================================================
;These activate whenever the direction in question is input, and persist for three ticks. Useful
;if you need to use only a single directional input, but also want it to last longer than one tick.
;==============================================================================================

;======================================<DOWN (3 TICKS)>========================================
[State -1, Down (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90000012
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;===================================<DOWN-RIGHT (3 TICKS)>=====================================
[State -1, Down-Right (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90000013
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;======================================<RIGHT (3 TICKS)>=======================================
[State -1, Right (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90000016
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;=====================================<UP-RIGHT (3 TICKS)>=====================================
[State -1, Up-Right (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90000019
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;========================================<UP (3 TICKS)>========================================
[State -1, Up (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "back"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "back"
anim = 1998
ID = 90000018
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;=====================================<UP-LEFT (3 TICKS)>======================================
[State -1, Up-Left (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90000017
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;=======================================<LEFT 3 TICKS>=========================================
[State -1, Left (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90000014
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;====================================<DOWN-LEFT 3 TICKS>=======================================
[State -1, Down-Left (3 ticks)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90000011
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;==============================================================================================
;=====================<DIRECTIONAL INPUTS (3 TICK BUFFER + HITPAUSE TIME)>=====================
;==============================================================================================

;==============================================================================================
;These are almost identical to the explods directly above this, except these will persist through
;a HitPause, and will only activate if the direction in question is being either held or input on
;the same tick that any button is input. These can be used to replicate the command behavior of Capcom
;games for crouching and command normal moves. For more information, please see [INSERT LINK].
;==============================================================================================

;==============================<DOWN (3 TICKS + HITPAUSE TIME)>================================
[State -1, Down (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "down" || Helper(90000005), command = "holddown") && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holdup" && Helper(90000005), command != "holdfwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "up" || Helper(90000005), command = "holdup") && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holddown" && Helper(90000005), command != "holdfwd"
anim = 1998
ID = 90000022
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1




;===========================<DOWN-RIGHT (3 TICKS + HITPAUSE TIME)>=============================
[State -1, Down-Right (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "dfwd" || (Helper(90000005), command = "holddown" && Helper(90000005), command = "holdfwd")) && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "ufwd" || (Helper(90000005), command = "holdup" && Helper(90000005), command = "holdfwd")) && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000023
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================<RIGHT (3 TICKS + HITPAUSE TIME)>===============================
[State -1, Right (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd") && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holdup" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000026
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=============================<UP-RIGHT (3 TICKS + HITPAUSE TIME)>=============================
[State -1, Up-Right (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "ufwd" || (Helper(90000005), command = "holdup" && Helper(90000005), command = "holdfwd")) && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "dfwd" || (Helper(90000005), command = "holddown" && Helper(90000005), command = "holdfwd")) && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "holdback" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000029
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;================================<UP (3 TICKS + HITPAUSE TIME)>================================
[State -1, Up (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "up" || Helper(90000005), command = "holdup") && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "back" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holddown" && Helper(90000005), command != "holdback"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "down" || Helper(90000005), command = "holddown") && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "back" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holdup" && Helper(90000005), command != "holdback"
anim = 1998
ID = 90000028
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=============================<UP-LEFT (3 TICKS + HITPAUSE TIME)>==============================
[State -1, Up-Left (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "uback" || (Helper(90000005), command = "holdup" && Helper(90000005), command = "holdback")) && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "dback" || (Helper(90000005), command = "holddown" && Helper(90000005), command = "holdback")) && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000027
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;===============================<LEFT 3 TICKS + HITPAUSE TIME>=================================
[State -1, Left (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = (Helper(90000005), command = "back" || Helper(90000005), command = "holdback") && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holdup" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000024
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;============================<DOWN-LEFT 3 TICKS + HITPAUSE TIME>===============================
[State -1, Down-Left (3 ticks + HitPauseTime)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = Helper(90000005), command = "x" || Helper(90000005), command = "y" || Helper(90000005), command = "z" || Helper(90000005), command = "a" || Helper(90000005), command = "b" || Helper(90000005), command = "c" || Helper(90000005), command = "start"
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "dback" || (Helper(90000005), command = "holddown" && Helper(90000005), command = "holdback")) && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "uback" || (Helper(90000005), command = "holdup" && Helper(90000005), command = "holdback")) && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "holddown"
anim = 1998
ID = 90000021
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;Reminder: because this system is based on absolute directions (left/right) instead of relative
;directions (forward/backward), all commands must have a mirrored command as well (unless they are
;performed solely with up and/or down!) In other words, two different versions of each individual
;command must be defined in this system: one assuming the character is facing the right, and one
;for the left.
;==============================================================================================

;==============================================================================================
;================================<FORWARD, FORWARD/BACK, BACK>=================================
;==============================================================================================

;==============================================================================================
;Dash/run commands in SNK typically have release directions as their first inputs. In other words,
;in most SNK games, you can dash/run by holding forward or back for however long you like, and then
;quickly releasing the stick and returning to neutral, then quickly inputting forward/back again.
;In most Capcom games, this will not work. We have the dash/run commands in this system set up to
;follow Capcom's example.

;Different games have different input windows for dash commands. KOF gives you a 7 tick window between
;each the first and second forward/back commands, and the final input has a buffer time of 3 ticks.
;CPS2 Capcom games (under the normal speed setting) have an input window of 7 ticks for the consecutive
;forward/back commands, and the final input has a buffer time of 2 ticks. In SFIII, both the input
;window and the buffer time is 7 ticks. The default values in this system are 10 for the input window
;and 3 for the buffer time, to match up with the other commands (but feel free to change those values
;to suit your personal preference!)
;==============================================================================================

;=======================================<RIGHT, RIGHT>=========================================
[State -1, R, R: 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001006
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, R: Neutral]
type = Explod
triggerAll = NumExplod(90000006) && NumExplod(90001006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
;make sure no directional input is being performed
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90001005
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

;We remove the neutral explod if any non-right input is detected, or if the 1st right explod does not exist
;in most Capcom games, a dash command will be cancelled mid-input if any direction other than forward/back
;and neutral are input. But SNK games give you more leeway: as long as you have inputting forward/back, and
;have returned the stick to neutral, you can input any other directional command and still get a dash as long
;as you input another forward/back command. If you want to replicate this behavior, simply delete the first trigger
;of this RemoveExplod sctrl (you will still need the second trigger, though).
[State -1, Remove R, R: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000009) || NumExplod(90000008) || NumExplod(90000007) || NumExplod(90000004) || NumExplod(90000001)
trigger2 = !NumExplod(90001006)
ID = 90001005
ignoreHitPause = 1

[State -1, R, R: 2nd Right]
type = Explod
;we check to see if the user has input right recently, and has returned the stick to neutral
triggerAll = NumExplod(90001005) && NumExplod(90001006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001016
;see the button explods above for an explanation of this ifElse statement. This statement only goes on the final
;input of any command, and should not go anywhere else in the command!
;We also are using a non-standard removeTime for this input, as dash commands in most games are only active
;for a short period of time (around 1-3 ticks).
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, R, R: 2nd Right (10 ticks)]
type = Explod
;this one is used for Kung Fu Knee
triggerAll = NumExplod(90001005) && NumExplod(90001006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001026
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;Now for the reversed command:
;==============================================================================================

;=======================================<LEFT, LEFT>=========================================
[State -1, L, L: 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001054
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, L: Neutral]
type = Explod
triggerAll = NumExplod(90000004) && NumExplod(90001054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90001055
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove L, L: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000006) || NumExplod(90000009) || NumExplod(90000008) || NumExplod(90000007) || NumExplod(90000001)
trigger2 = !NumExplod(90001054)
ID = 90001055
ignoreHitPause = 1

[State -1, L, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90001055) && NumExplod(90001054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001064
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, L, L: 2nd Left (10 ticks)]
type = Explod
triggerAll = NumExplod(90001055) && NumExplod(90001054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90001074
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================================<DOWN, UP (SUPER JUMP)>====================================
;==============================================================================================

;==============================================================================================
;Super jump commands can be done with any down directional input, followed by any up directional
;==============================================================================================

;=======================================<DOWN, UP>=========================================
[State -1, D, U: Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1998
ID = 90000402
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, U: Up]
type = Explod
triggerAll = NumExplod(90000402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger1 = Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger2 = Helper(90000005), command != "up"
anim = 1998
ID = 90000408
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=====================================<UP, UP/DOWN, DOWN>======================================
;==============================================================================================

;==============================================================================================
;Pretty similar to the Forward, Forward/Back, Back commands, only we don't need to worry about
;the player's facing or anything, since all the inputs are either down or up!

;Also of note is that any up/down direction may be used to activate this command (i.e., a UF, UF
;will still be considered a U, U command).
;==============================================================================================

;=======================================<UP, UP>=========================================
[State -1, U, U: 1st Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger1 = Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger2 = Helper(90000005), command != "up"
anim = 1998
ID = 90000508
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, U, U: Neutral]
type = Explod
triggerAll = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009)) && NumExplod(90000508)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
anim = 1998
ID = 90000505
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove U, U: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000006)
trigger2 = !NumExplod(90000508)
ID = 90000505
ignoreHitPause = 1

[State -1, U, U: 2nd Up]
type = Explod
triggerAll = NumExplod(90000505) && NumExplod(90000508)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger1 = Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger2 = Helper(90000005), command != "up"
anim = 1998
ID = 90000518
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=========================================<DOWN,DOWN>==========================================
[State -1, D, D: 1st Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1998
ID = 90000552
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, D: Neutral]
type = Explod
triggerAll = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003)) && NumExplod(90000552)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90000555
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove D, D: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009) || NumExplod(90000006)
trigger2 = !NumExplod(90000552)
ID = 90000555
ignoreHitPause = 1

[State -1, D, D: 2nd Down]
type = Explod
triggerAll = NumExplod(90000555) && NumExplod(90000552)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1998
ID = 90000562
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================================<QUARTER CIRCLE DOWN>======================================
;==============================================================================================

;==============================================================================================
;This is the SFA2 style Zero Counter command. This is the first command in the system that uses
;a release directional input. However, this command works somewhat differently from the way pretty
;much every other command in this system works, so we're gonna avoid getting deep into discussion
;about anything here. Please see the following command (quarter-circle forward/back) for a basic
;look at how most release inputs work in this system.
;==============================================================================================


;================================<RIGHT, DOWN-RIGHT, DOWN>=====================================
[State -1, R, DR, D: Release Right]
type = Explod
;check to see if the Release Right Detector explod exists. If it exists and down is no longer being
;input, that means it was released!
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
;if right isn't currently being input by the user, then right was released!
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
;... but if right is currently being input by the user, AND there's another direction being input,
;then right is still considered to have been released.
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90007506
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D: Down-Right]
type = Explod
;the "Right" explod needs to exist before the next command in sequence is allowed
triggerAll = NumExplod(90007506)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90007503
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D: Down]
type = Explod
triggerAll = NumExplod(90007503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90007502
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<LEFT, DOWN-LEFT, DOWN>======================================
[State -1, L, DL, D: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90007554
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D: Down-Left]
type = Explod
triggerAll = NumExplod(90007554)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90007551
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D: Down]
type = Explod
triggerAll = NumExplod(90007551)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90007552
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===============================<QUARTER CIRCLE FORWARD/BACK>==================================
;==============================================================================================

;==============================================================================================
;The vast majority of all commands in fighting games allow the first input of any command to be
;a release input, so that you're allowed to hold the direction that the command starts with for
;however long you want, then input the rest of the command, and still get the move. This is why
;in MUGEN, people typically write all their character's commands as starting with a release input;
;however, things are a bit more complicated outside of MUGEN (and thus, more complicated in this
;buffer too). In most games, the window of time a player has to input the next command in sequence
;after performing a release input is shorter than the window of time they have to input the next
;command after a press input. For example, in Street Fighter III, if you want to perform a quarter-
;circle forward motion, and you press (or hold) the "down" direction, you will have 10 ticks to
;input "down-forward" and continue the command. But if instead you were to hold the "down" direction
;down for a few seconds before releasing it, you will have only 5 ticks to input "down-forward" to
;continue entering the command.

;The way this is translated to the EXPLODsive Buffering system is this: we have two separate explods
;for the first input of every command that uses a release directional input. One explod is created
;whenever the first input is entered, and has a RemoveTime of 10 (which is the same amount of time
;that most other directional explods use in this system); one other explod is also created whenever
;the direction of the first input is released: this has a RemoveTime of 5, which is generally what
;commercial fighting games use.

;Do note that not every game gives players the same input windows for every single command: for
;example, in Street Fighter Alpha 3 (on normal speed), press directional inputs all have a 10 tick
;input window, but the input window for the release directional input in a quarter-circle motion is
;6, while the input window for the release directional input in a forward, down, down-forward motion
;is only 4! There's a whole bunch of variance here, sometimes in the same game, and so it's best to check
;the source game of the character you're making (if applicable) to try and get an idea of what RemoveTime
;will be best for each of your commands.
;==============================================================================================

;================================<DOWN, DOWN-RIGHT, RIGHT>=====================================

;Since this is the press directional input for the first input, it has a RemoveTime of 10
[State -1, D, DR, R: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

;And since this is the release directional input for the first input, it has a RemoveTime of only 5!
[State -1, D, DR, R: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1998
ID = 90010052
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, D, DR, R: Down-Right]
type = Explod
;Remember, we have to check to see if either the "press down" or "release down" explods exist!
triggerAll = NumExplod(90010002) || NumExplod(90010052)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90010003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010006
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<DOWN, DOWN-LEFT, LEFT>======================================
[State -1, D, DL, L: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010102
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1998
ID = 90010152
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90010102) || NumExplod(90010152)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90010101
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010104
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===========================<DOUBLE QUARTER CIRCLE FORWARD/BACK>===============================
;==============================================================================================

;==============================================================================================
;This command is mostly identical to the QCF/QCB commands, but with different ID's; there are some
;important differences, however. Instead of repeating the entire first QCF/QCB command, we just
;(mostly) use the ones we already defined above!

;We do repeat the forward/backward input from the first QCF/QCB, though. This is because the final
;explod of the QCF/QCB command will persist through hitpause, which is not true for the QCFx2
;command: otherwise, you'd be able to input a QCF during a long hitpause, wait for the hitpause to
;end, and then input another QCF and still get a QCFx2 motion, and that's not how things are supposed
;to work!

;Also, do note that Capcom games use a command shortcut for QCFx2/QCBx2 motions; a D, DF, F, D, DF
;will work just as well as a D, DF, F, D, DF, F motion; if you want to replicate this behavior, all
;you have to do is check to see if either the repsective "DF/DB" or the "F/B" explods exist in the
;triggers for that move's ChangeState.
;==============================================================================================

;===========================<DOUBLE DOWN, DOWN-RIGHT, RIGHT>===============================
;this is almost identical to the D, DR, R: Right explod; the only difference is that it has a
;RemoveTime of 10 (with no additional ifElse statements), because it shouldn't persist through hitpause!
[State -1, D, DR, R, D, DR, R: 1st Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90030006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90030002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90030003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90030003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030016
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1


;===========================<DOUBLE DOWN, DOWN-LEFT, LEFT>===============================
[State -1, D, DL, L, D, DL, L: 1st Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030104
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90030104)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90030102
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90030101
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90030101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030114
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=====<QUARTER CIRCLE FORWARD, HALF CIRCLE BACK/QUARTER CIRCLE BACK, HALF CIRCLE FORWARD>======
;==============================================================================================

;==============================================================================================
;This is a command used mostly by SNK, and it has a few quirks compared to how Capcom approaches
;commands. For half-circle motions, SNK only checks for the cardinal inputs (i.e., the non-diagonal
;directions) to see if the user has successfully complated the move, and gives those cardinal inputs
;an extra-long input window (in KOF '98, for example, it's 16, compared to the 10 tick input window for
;normal commands) to compensate for the loss of the diagonal inputs.

;For the default EXPLODsive Buffering system, however, we have opted to allow diagonal inputs in
;these SNK-style half-circle commands, but to make them optional (because, to be quite honest, ignoring
;diagonal inputs entirely is pretty dumb!). What this ends up looking like is that the command can be
;completed only using cardinal inputs, but any diagonal inputs will still be cheked: any diagonal
;input will keep the command "alive" even if the cardinal input preceeding it has exhausted its input
;window.

;The way that translates to this explod system is that (for half-circle motions) we allow the user
;to skip the diagonal inputs: the "down" explod in a HCF command could be created if the "back"
;explod exists, e.g., instead of requiring the "down-back" explod to exist. However, we must also
;allow the "back" explod to be created if the "down-back" explod exists: this makes it so the diagonal
;inputs aren't just a waste of time; they will keep the command alive even if the previous cardinal
;direction explod has expired, which is exactly the same behavior that KOF has.

;To replicate the same behavior that SNK games use, simply delete the diagonal input explods, and increase
;the RemoveTime on each of the cardinal input explods.

;A final note: as with the QCFx2/QCBx2 commands, we use the parts of the earlier QCF/QCB command block
;instead of just repeating that code.
;==============================================================================================

;===============<DOWN, DOWN-RIGHT, RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>===================
[State -1, D, DR, R, DR, D, DL, L: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032206
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down-Right]
type = Explod
triggerAll = NumExplod(90032206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032203
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down]
type = Explod
triggerAll = NumExplod(90032203) || NumExplod(90032206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032202
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90032202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032201
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90032201) || NumExplod(90032202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032204
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;================<DOWN, DOWN-LEFT, LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>===================
[State -1, D, DL, L, DL, D, DR, R: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032304
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down-Left]
type = Explod
triggerAll = NumExplod(90032304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032301
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down]
type = Explod
triggerAll = NumExplod(90032301) || NumExplod(90032304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032302
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down-Right]
type = Explod
triggerAll = NumExplod(90032302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032303
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90032303) || NumExplod(90032302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032306
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=====<QUARTER CIRCLE FORWARD, DOWN-FORWARD, BACK/QUARTER CIRCLE BACK, DOWN-BACK, FORWARD>=====
;==============================================================================================

;==============================================================================================
;This is very, very similar to the preceding command, but it is a distinct command with its own
;quirks! This is typically used for Terry's Power Geyser super, among a few other moves. What
;makes this different from the QCF, HCB/QCB, HCF command is that although this command is officially
;referred to in move lists as "QCF, DF, B/QCB, DB, F", in KOF games, this command can (usually) skip
;straight from the starting QCF/QCB and proceed directly to the final input of the command (the
;command would here be rendered as "QCF, B"/"QCB, F"). But this can sometimes be weird: in KOF 2002
;this can only be done if that final input in the QCF/QCB part of the command is held for at least
;two ticks (KOF 2002 is the first game in the series where the player only needs to enter an individual
;input for only one frame and still complete a command; previous games required the inputs to be held
;for at least two). In the Fatal Fury series, however, generally this either uses a motion that is
;actually "QCF, DF, B / QCB, DB, F" motion, or sometimes even a QCF, HCB/QCB, HCF motion. Point is,
;there's a ton of variance here!

;As with the previous command, we have opted to modify this for the default EXPLODsive Buffering system,
;in order to keep it relatively simple and tried to change the manner in which the command worked into
;something that made more sense (to us, at least). We have it set up so that this command can skip straight
;from the starting QCF/QCB and proceed directly to the final input of the command (the command would here
;be rendered as "QCF, B"/"QCB, F"). It also can be performed using a QCF, HCB/QCB, HCF motion, with
;the additional quirk that the user can proceed immediately to the final input of the command no matter
;where they are in the half circle motion. So, for example, the user could perform QCB, DB, D, F, and
;still get the move. What this ends up looking like translated to MUGEN code is that, for instance, the
;explod representing QCF, DF, B: DB is allowed to be created if an explod exists representing "D", or "DF",
;or even "F".

;As with the the QCF, HCB / QCB, HCF command, this can be made to accurate to the source game(s)
;by removing some or all of the non-diagonal (and also the "down") explods.
;==============================================================================================

;========================<DOWN, DOWN-RIGHT, RIGHT, DOWN-RIGHT, LEFT>===========================
[State -1, D, DR, R, DR, L: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032406
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Down-Right]
type = Explod
triggerAll = NumExplod(90032406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032403
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Down]
type = Explod
;the Down explod will be created if either (or both) the Right or Down-Right explods exist
triggerAll = NumExplod(90032406) || NumExplod(90032403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032402
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Down-Left]
type = Explod
;the Down-Left explod will be created if the Right, Down-Right, or Down explods exist
triggerAll = NumExplod(90032406) || NumExplod(90032403) || NumExplod(90032402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032401
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Left]
type = Explod
;the Left explod will be created if the Right, Down-Right, Down, or Down-Left explods exist
triggerAll = NumExplod(90032406) || NumExplod(90032403) || NumExplod(90032402) || NumExplod(90032401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032404
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=========================<DOWN, DOWN-LEFT, LEFT, DOWN-LEFT, RIGHT>============================
[State -1, D, DL, L, DL, R: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032504
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Down-Left]
type = Explod
triggerAll = NumExplod(90032504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032501
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Down]
type = Explod
triggerAll = NumExplod(90032504) || NumExplod(90032501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032502
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Down-Right]
type = Explod
triggerAll = NumExplod(90032504) || NumExplod(90032501) || NumExplod(90032502)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032503
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Right]
type = Explod
triggerAll = NumExplod(90032504) || NumExplod(90032501) || NumExplod(90032502) || NumExplod(90032503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032506
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;============<QUARTER CIRCLE FORWARD, UP-FORWARD/QUARTER CIRCLE BACK, UP-BACK>=================
;==============================================================================================

;==============================================================================================
;Also known as a "Tiger Knee" motion. Works much the same way the double quarter circle motions
;work.
;==============================================================================================

;===========================<DOWN, DOWN-RIGHT, RIGHT, UP-RIGHT>================================
[State -1, D, DR, R, UR: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012406
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DR, R, UR: Up-Right]
type = Explod
triggerAll = NumExplod(90012406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90012409
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=============================<DOWN, DOWN-LEFT, LEFT, UP-LEFT>=================================
[State -1, D, DL, L, UL: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012504
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, D, DL, L, UL: Up-Left]
type = Explod
triggerAll = NumExplod(90012504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90012507
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;====================<FORWARD, DOWN, DOWN-FORWARD/BACK, DOWN, DOWN-BACK>=======================
;==============================================================================================

;==============================================================================================
;Nothing special here, just the standard dragon punch motion!
;==============================================================================================

;================================<RIGHT, DOWN, DOWN-RIGHT>=====================================
[State -1, R, D, DR: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010206
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, D, DR: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90010256
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, D, DR: Down]
type = Explod
triggerAll = NumExplod(90010206) || NumExplod(90010256)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010202
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, D, DR: Down-Right]
type = Explod
triggerAll = NumExplod(90010202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90010203
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<LEFT, DOWN, DOWN-LEFT>======================================
[State -1, L, D, DL: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010304
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, D, DL: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90010354
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, D, DL: Down]
type = Explod
triggerAll = NumExplod(90010304) || NumExplod(90010354)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010302
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, D, DL: Down-Left]
type = Explod
triggerAll = NumExplod(90010302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90010301
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=================================<HALF CIRCLE FORWARD/BACK>===================================
;==============================================================================================

;==============================================================================================
;As mentioned earlier, SNK games have command shortcuts for half-circle moves, allowing the user
;to only input cardinal directions and still complete the command. We have opted to use Capcom's
;method for the standard half circle comands here, but these can very easily be modified to use
;the SNK method!
;==============================================================================================

;========================<LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>============================
[State -1, L, DL, D, DR, R: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010404
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90010454
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down-Left]
type = Explod
triggerAll = NumExplod(90010404) || NumExplod(90010454)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90010401
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down]
type = Explod
triggerAll = NumExplod(90010401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010402
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down-Right]
type = Explod
triggerAll = NumExplod(90010402) || NumExplod(90010401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90010403
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90010403) || NumExplod(90010402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010406
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;========================<RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>============================
[State -1, R, DR, D, DL, L: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010506
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1


[State -1, R, DR, D, DL, L: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90010556
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down-Right]
type = Explod
triggerAll = NumExplod(90010506) || NumExplod(90010556)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90010503
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down]
type = Explod
triggerAll = NumExplod(90010503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90010502
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90010502) || NumExplod(90010503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90010501
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010501) || NumExplod(90010502)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90010504
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;==============================<DOUBLE HALF CIRCLE FORWARD/BACK>===============================
;==============================================================================================

;==============================================================================================
;The double half circle motions use the exact same principles that the double quarter circle motions
;used: they're dependent on the standard half circle motions to reduce clutter and unnecessary
;duplication of code.
;==============================================================================================

;=====================<DOUBLE LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>========================
[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 1st Right]
type = Explod
triggerAll = NumExplod(90010403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030406
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Left]
type = Explod
triggerAll = NumExplod(90030406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030404
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030404)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90030401
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90030401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90030402
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90030403
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90030403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030416
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;========================<DOUBLE RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>============================
[State -1, R, DR, D, DL, L, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030504
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Right]
type = Explod
triggerAll = NumExplod(90030504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030506
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030506)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90030503
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90030503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90030502
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030502)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90030501
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90030501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90030514
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1





;==============================================================================================
;===========================================<360>==============================================
;==============================================================================================

;==============================================================================================
;Much like with SNK's half circle commands, 360 commands (from both Capcom and SNK) only require
;you to input the cardinal directions. And again like SNK's half-circle commands, however, we have
;opted to make it so that diagonal inputs are still accepted and that they will keep the command "alive".
;There are eight different permutations of the 360 command: there are four different directional input
;that the move can be started in, and the move can be performed in either a clockwise or counter-clockwise
;direction.

;This all means a whole lot of code! If you aren't using either the 360 or 720 commands, it is strongly
;recommended that you delete this huge block of code!
;==============================================================================================

;=================================<360/LEFT, DOWN, RIGHT, UP>==================================
[State -1, 360/L, D, R, U: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011054
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Down-Left]
type = Explod
triggerAll = NumExplod(90011004) || NumExplod(90011054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011001
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Down]
type = Explod
triggerAll = NumExplod(90011004) || NumExplod(90011054) || NumExplod(90011001)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Down-Right]
type = Explod
triggerAll = NumExplod(90011002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Right]
type = Explod
triggerAll = NumExplod(90011003) || NumExplod(90011002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Up-Right]
type = Explod
triggerAll = NumExplod(90011006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011009
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, D, R, U: Up]
type = Explod
triggerAll = NumExplod(90011006) || NumExplod(90011009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011008
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<360/LEFT, UP, RIGHT, DOWN>==================================
[State -1, 360/L, U, R, D: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011104
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011154
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Up-Left]
type = Explod
triggerAll = NumExplod(90011104) || NumExplod(90011154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011107
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Up]
type = Explod
triggerAll = NumExplod(90011104) || NumExplod(90011154) || NumExplod(90011107)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011108
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Up-Right]
type = Explod
triggerAll = NumExplod(90011108)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011109
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Right]
type = Explod
triggerAll = NumExplod(90011108) || NumExplod(90011109)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011106
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Down-Right]
type = Explod
triggerAll = NumExplod(90011106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011103
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/L, U, R, D: Down]
type = Explod
triggerAll = NumExplod(90011106) || NumExplod(90011103)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011102
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<360/DOWN, RIGHT, UP, LEFT>==================================
[State -1, 360/D, R, U, L: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011202
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1998
ID = 90011252
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Down-Right]
type = Explod
triggerAll = NumExplod(90011202) || NumExplod(90011252)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011203
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Right]
type = Explod
triggerAll = NumExplod(90011202) || NumExplod(90011252) || NumExplod(90011203)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011206
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Up-Right]
type = Explod
triggerAll = NumExplod(90011206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011209
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Up]
type = Explod
triggerAll = NumExplod(90011206) || NumExplod(90011209)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011208
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Up-Left]
type = Explod
triggerAll = NumExplod(90011208)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011207
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, R, U, L: Left]
type = Explod
triggerAll = NumExplod(90011208) || NumExplod(90011207)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011204
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1


;=================================<360/DOWN, LEFT, UP, RIGHT>==================================
[State -1, 360/D, L, U, R: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011302
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1998
ID = 90011352
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Down-Left]
type = Explod
triggerAll = NumExplod(90011302) || NumExplod(90011352)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011301
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Left]
type = Explod
triggerAll = NumExplod(90011302) || NumExplod(90011352) || NumExplod(90011301)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011304
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Up-Left]
type = Explod
triggerAll = NumExplod(90011304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011307
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Up]
type = Explod
triggerAll = NumExplod(90011304) || NumExplod(90011307)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011308
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Up-Right]
type = Explod
triggerAll = NumExplod(90011308)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011309
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/D, L, U, R: Right]
type = Explod
triggerAll = NumExplod(90011308) || NumExplod(90011309)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011306
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<360/RIGHT, DOWN, LEFT, UP>==================================
[State -1, 360/R, D, L, U: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011406
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011456
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Down-Right]
type = Explod
triggerAll = NumExplod(90011406) || NumExplod(90011456)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011403
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Down]
type = Explod
triggerAll = NumExplod(90011406) || NumExplod(90011456) || NumExplod(90011403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011402
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Down-Left]
type = Explod
triggerAll = NumExplod(90011402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011401
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Left]
type = Explod
triggerAll = NumExplod(90011402) || NumExplod(90011401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011404
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Up-Left]
type = Explod
triggerAll = NumExplod(90011404)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011407
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, D, L, U: Up]
type = Explod
triggerAll = NumExplod(90011404) || NumExplod(90011407)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011408
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<360/RIGHT, UP, LEFT, DOWN>==================================
[State -1, 360/R, U, L, D: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011506
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011556
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Up-Right]
type = Explod
triggerAll = NumExplod(90011506) || NumExplod(90011556)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011509
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Up]
type = Explod
triggerAll = NumExplod(90011506) || NumExplod(90011556) || NumExplod(90011509)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011508
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Up-Left]
type = Explod
triggerAll = NumExplod(90011508)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011507
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Left]
type = Explod
triggerAll = NumExplod(90011508) || NumExplod(90011507)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011504
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Down-Left]
type = Explod
triggerAll = NumExplod(90011504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011501
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/R, U, L, D: Down]
type = Explod
triggerAll = NumExplod(90011504) || NumExplod(90011501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011502
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<360/UP, RIGHT, DOWN, LEFT>==================================
[State -1, 360/U, R, D, L: Press Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011608
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Release Up]
type = Explod
triggerAll = NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011658
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Up-Right]
type = Explod
triggerAll = NumExplod(90011608) || NumExplod(90011658)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011609
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Right]
type = Explod
triggerAll = NumExplod(90011608) || NumExplod(90011658) || NumExplod(90011609)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011606
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Down-Right]
type = Explod
triggerAll = NumExplod(90011606)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011603
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Down]
type = Explod
triggerAll = NumExplod(90011606) || NumExplod(90011603)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011602
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Down-Left]
type = Explod
triggerAll = NumExplod(90011602)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011601
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, R, D, L: Left]
type = Explod
triggerAll = NumExplod(90011602) || NumExplod(90011601)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011604
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<360/UP, LEFT, DOWN, RIGHT>==================================
[State -1, 360/U, L, D, R: Press Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90011708
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Release Up]
type = Explod
triggerAll = NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011758
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Up-Left]
type = Explod
triggerAll = NumExplod(90011708) || NumExplod(90011758)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011707
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Left]
type = Explod
triggerAll = NumExplod(90011708) || NumExplod(90011758) || NumExplod(90011707)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011704
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Down-Left]
type = Explod
triggerAll = NumExplod(90011704)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90011701
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Down]
type = Explod
triggerAll = NumExplod(90011704) || NumExplod(90011701)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011702
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Down-Right]
type = Explod
triggerAll = NumExplod(90011702)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011703
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 360/U, L, D, R: Right]
type = Explod
triggerAll = NumExplod(90011702) || NumExplod(90011703)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011706
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

;================================<UP, UP-RIGHT, RIGHT>=====================================

;Since this is the press directional input for the first input, it has a RemoveTime of 10
[State -1, U, UR, R: Press Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011808
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

;And since this is the release directional input for the first input, it has a RemoveTime of only 5!
[State -1, U, UR, R: Release Up]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011852
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, U, UR, R: Up-Right]
type = Explod
;Remember, we have to check to see if either the "press down" or "release down" explods exist!
triggerAll = NumExplod(90011808) || NumExplod(90011852)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90011809
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, U, UR, R: Right]
type = Explod
triggerAll = NumExplod(90011809)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90011806
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<UP, UP-LEFT, LEFT>======================================
[State -1, U, UL, L: Press Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90011908
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, U, UL, L: Release Up]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90011952
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, U, UL, L: Up-Left]
type = Explod
triggerAll = NumExplod(90011908) || NumExplod(90011952)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90011907
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, U, UL, L: Left]
type = Explod
triggerAll = NumExplod(90011907)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down" && Helper(90000005), command != "up"
anim = 1998
ID = 90011904
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

;==============================================================================================
;===========================================<720>==============================================
;==============================================================================================

;==============================================================================================
;This block of code is pretty much identical to the 360 command block, but we only have to code
;one additional rotation, because the first rotation is already covered by the 360 command block
;(much in the same way that the QCFx2/QCBx2 block only needed to code a single quarter-circle motion)
;==============================================================================================

;======================<720/LEFT, DOWN, RIGHT, UP, LEFT, DOWN, RIGHT, UP>======================
[State -1, 720/L, D, R, U, L, D, R, U: 1st Up]
type = Explod
triggerAll = NumExplod(90011006) || NumExplod(90011009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031008
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: Up-Left]
type = Explod
triggerAll = NumExplod(90031008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031007
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Left]
type = Explod
triggerAll = NumExplod(90031008) || NumExplod(90031007)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031001
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Down]
type = Explod
triggerAll = NumExplod(90031001) || NumExplod(90031004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Right]
type = Explod
triggerAll = NumExplod(90031003) || NumExplod(90031002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031009
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Up]
type = Explod
triggerAll = NumExplod(90031006) || NumExplod(90031009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031018
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=====================<720/LEFT, UP, RIGHT, DOWN, LEFT, UP, RIGHT, DOWN>=======================
[State -1, 720/L, U, R, D, L, U, R, D: 1st Down]
type = Explod
triggerAll = NumExplod(90011106) || NumExplod(90011103)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031102
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: Down-Left]
type = Explod
triggerAll = NumExplod(90031102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031101
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Left]
type = Explod
triggerAll = NumExplod(90031102) || NumExplod(90031101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031104
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031104)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031107
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Up]
type = Explod
triggerAll = NumExplod(90031107) || NumExplod(90031104)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031108
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031108)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031109
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Right]
type = Explod
triggerAll = NumExplod(90031108) || NumExplod(90031109)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031106
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031103
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Down]
type = Explod
triggerAll = NumExplod(90031106) || NumExplod(90031103)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031112
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;======================<720/DOWN, RIGHT, UP, LEFT, DOWN, RIGHT, UP, LEFT>======================
[State -1, 720/D, R, U, L, D, R, U, L: 1st Left]
type = Explod
triggerAll = NumExplod(90011208) || NumExplod(90011207)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031204
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/L, D, R, U, L, D, R, U: Down-Left]
type = Explod
triggerAll = NumExplod(90031204)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031201
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90031204) || NumExplod(90031201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031202
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031203
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Right]
type = Explod
triggerAll = NumExplod(90031202) || NumExplod(90031203)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031206
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031209
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Up]
type = Explod
triggerAll = NumExplod(90031206) || NumExplod(90031209)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031208
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031208)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031207
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90031208) || NumExplod(90031207)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031214
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<360/DOWN, LEFT, UP, RIGHT>==================================
[State -1, 720/D, L, U, R, D, L, U, R: 1st Right]
type = Explod
triggerAll = NumExplod(90011308) || NumExplod(90011309)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031306
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: Down-Right]
type = Explod
triggerAll = NumExplod(90031306)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031303
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90031306) || NumExplod(90031303)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031302
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031301
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Left]
type = Explod
triggerAll = NumExplod(90031302) || NumExplod(90031301)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031304
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031307
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Up]
type = Explod
triggerAll = NumExplod(90031304) || NumExplod(90031307)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031308
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031308)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031309
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90031308) || NumExplod(90031309)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031316
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;======================<720/RIGHT, DOWN, LEFT, UP, RIGHT, DOWN, LEFT, UP>======================
[State -1, 720/R, D, L, U, R, D, L, U: 1st Up]
type = Explod
triggerAll = NumExplod(90011404) || NumExplod(90011407)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031408
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: Up-Right]
type = Explod
triggerAll = NumExplod(90031408)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031409
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Right]
type = Explod
triggerAll = NumExplod(90031408) || NumExplod(90031409)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031406
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031403
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Down]
type = Explod
triggerAll = NumExplod(90031406) || NumExplod(90031403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031402
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031401
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Left]
type = Explod
triggerAll = NumExplod(90031402) || NumExplod(90031401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031404
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031404)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031407
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Up]
type = Explod
triggerAll = NumExplod(90031404) || NumExplod(90031407)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031418
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;======================<720/RIGHT, UP, LEFT, DOWN, RIGHT, UP, LEFT, DOWN>======================
[State -1, 720/R, U, L, D, R, U, L, D: 1st Down]
type = Explod
triggerAll = NumExplod(90011504) || NumExplod(90011501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031505
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, D, L, U, R, D, L, U: Down-Right]
type = Explod
triggerAll = NumExplod(90031505)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031503
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Right]
type = Explod
triggerAll = NumExplod(90031505) || NumExplod(90031503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031506
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031506)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031509
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Up]
type = Explod
triggerAll = NumExplod(90031506) || NumExplod(90031509)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031508
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031508)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031507
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Left]
type = Explod
triggerAll = NumExplod(90031508) || NumExplod(90031507)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031504
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031501
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Down]
type = Explod
triggerAll = NumExplod(90031504) || NumExplod(90031501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031502
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;======================<720/UP, RIGHT, DOWN, LEFT, UP, RIGHT, DOWN, LEFT>======================
[State -1, 720/U, R, D, L, U, R, D, L: 1st Left]
type = Explod
triggerAll = NumExplod(90011602) || NumExplod(90011601)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031604
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: Up-Left]
type = Explod
triggerAll = NumExplod(90031604)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031607
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Up]
type = Explod
triggerAll = NumExplod(90031604) || NumExplod(90031607)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031608
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Up-Right]
type = Explod
triggerAll = NumExplod(90031608)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031609
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Right]
type = Explod
triggerAll = NumExplod(90031608) || NumExplod(90031609)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031606
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031606)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031603
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90031606) || NumExplod(90031603)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031602
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031602)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031601
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90031602) || NumExplod(90031601)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031614
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<720/UP, LEFT, DOWN, RIGHT>==================================
[State -1, 720/U, L, D, R, U, L, D, R: 1st Right]
type = Explod
triggerAll = NumExplod(90011702) || NumExplod(90011703)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031706
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: Up-Right]
type = Explod
triggerAll = NumExplod(90031706)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031709
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Up]
type = Explod
triggerAll = NumExplod(90031706) || NumExplod(90031709)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
anim = 1998
ID = 90031708
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Up-Left]
type = Explod
triggerAll = NumExplod(90031708)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
anim = 1998
ID = 90031707
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Left]
type = Explod
triggerAll = NumExplod(90031708) || NumExplod(90031707)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031704
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90031704)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90031701
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90031704) || NumExplod(90031701)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90031702
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90031702)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90031703
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90031702) || NumExplod(90031703)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90031716
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================<HALF CIRCLE FORWARD, BACK/HALF CIRCLE BACK, FORWARD>======================
;==============================================================================================

;==============================================================================================
;This command is used generally by SNK for characters with command throws; much like SNK half-circle
;commands, a player can skip the diagonal inputs and still complete the move.
;==============================================================================================

;====================<RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT, RIGHT>=========================
[State -1, R, DR, D, DL, L, R: Press 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Release 1st Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90012056
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Down-Right]
type = Explod
triggerAll = NumExplod(90012006) || NumExplod(90012056)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90012003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Down]
type = Explod
triggerAll = NumExplod(90012003) || NumExplod(90012006) || NumExplod(90012056)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90012002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Down-Left]
type = Explod
triggerAll = NumExplod(90012002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90012001
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: Left]
type = Explod
triggerAll = NumExplod(90012001) || NumExplod(90012002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, DR, D, DL, L, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90012004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012016
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=====================<LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT, LEFT>=========================
[State -1, L, DL, D, DR, R, L: Press 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012104
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Release 1st Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90012154
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Down-Left]
type = Explod
triggerAll = NumExplod(90012104) || NumExplod(90012154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90012101
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Down]
type = Explod
triggerAll = NumExplod(90012101) || NumExplod(90012104) || NumExplod(90012154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90012102
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Down-Right]
type = Explod
triggerAll = NumExplod(90012102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90012103
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: Right]
type = Explod
triggerAll = NumExplod(90012103) || NumExplod(90012102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012106
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, DL, D, DR, R, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90012106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012114
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;========================<FORWARD, BACK, FORWARD/BACK, FORWARD, BACK>==========================
;==============================================================================================

;==============================================================================================
;The Zanretsuken motion, used mostly in Art of Fighting characters. Despite looking somewhat similar
;to a dash command, the first forward/back input can be a release motion, and there's no need to return
;the stick to neutral.
;==============================================================================================

;====================================<RIGHT, LEFT, RIGHT>======================================
[State -1, R, L, R: Press 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012206
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, R: Release 1st Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90012256
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, L, R: Left]
type = Explod
triggerAll = NumExplod(90012206) || NumExplod(90012256)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012204
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90012204)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012216
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;====================================<LEFT, RIGHT, LEFT>=======================================
[State -1, L, R, L: Press 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012304
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, L: Release 1st Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90012354
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, R, L: Right]
type = Explod
triggerAll = NumExplod(90012304) || NumExplod(90012354)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012306
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90012306)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90012314
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;==================================<(SPECIAL) DOWN, DOWN >=====================================
;==============================================================================================

;==============================================================================================
;This explod is for the special move variant of the D, D motion; the only difference between this
;and the one above is that this has a RemoveTime of 10, like every other special move, since it's
;designed to be used for special moves (as opposed to the earlier D, D command, which was for air
;dashing).
;==============================================================================================

[State -1, (special) D, D: 2nd Down]
type = Explod
triggerAll = NumExplod(90000555) && NumExplod(90000552)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1998
ID = 90012602
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;====================================<DOWN, DOWN, DOWN>========================================
;==============================================================================================

;==============================================================================================
;And this is just extending the principle futher, to a third down input! This is typically used
;as a super command.
;==============================================================================================

[State -1, D, D, D: 2nd Neutral]
type = Explod
triggerAll = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003)) && NumExplod(90012602)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1998
ID = 90032605
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, Remove D, D, D: 2nd Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009) || NumExplod(90000006)
trigger2 = !NumExplod(90012602)
ID = 90032605
ignoreHitPause = 1

[State -1, D, D, D: 3rd Down]
type = Explod
triggerAll = NumExplod(90032605) && NumExplod(90012602)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1998
ID = 90032602
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================<FORWARD, HALF CIRCLE FORWARD/BACK, HALF CIRCLE BACK>======================
;==============================================================================================

;==============================================================================================
;A super motion used mostly by SNK; uses the modified SNK half-circle rules defined earlier.
;==============================================================================================

;=====================<RIGHT, LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>========================
[State -1, R, L, DL, D, DR, R: Press 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Release 1st Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90032056
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Left]
type = Explod
triggerAll = NumExplod(90032006) || NumExplod(90032056)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Down-Left]
type = Explod
triggerAll = NumExplod(90032004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032001
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Down]
type = Explod
triggerAll = NumExplod(90032001) || NumExplod(90032004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: Down-Right]
type = Explod
triggerAll = NumExplod(90032002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032003
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, R, L, DL, D, DR, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90032003) || NumExplod(90032002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032016
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==================<LEFT, RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>======================
[State -1, L, R, DR, D, DL, L: Press 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032104
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: 1st Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1998
ID = 90032154
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: Right]
type = Explod
triggerAll = NumExplod(90032104) || NumExplod(90032154)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032106
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: Down-Right]
type = Explod
triggerAll = NumExplod(90032106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1998
ID = 90032103
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: Down]
type = Explod
triggerAll = NumExplod(90032103) || NumExplod(90032106)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1998
ID = 90032102
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90032102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1998
ID = 90032101
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, L, R, DR, D, DL, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90032101) || NumExplod(90032102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1998
ID = 90032114
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1



;==============================================================================================
;===========================<SHUN GOKU SATSU/x, x, FORWARD, a, z>==============================
;==============================================================================================

;==============================================================================================
;This move to demonstrates how button press commands work: note that we use unique button press explods
;here because we need to keep track of what order the buttons have been pressed in, and because
;unlike the regular button inputs, which only stay active for a fairly brief period of time, the
;button inputs for the Shun Goku Satsu motion stay active for the same period of time that all other
;directional commands do.
;==============================================================================================

;This is the 2nd x input for this move, but it goes above the 1st x input because otherwise, a single
;press of x would activate both explods! Placing it above the 1st means that x must be input twice, each
;on separate ticks.
[State -1, x, x, F, a, z: 2nd x]
type = Explod
triggerAll = NumExplod(94000200)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94000201
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, x, F, a, z: 1st x]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94000200
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1


;This forward input is a little bit tricky and weird. We have it patterned after SFA and other CPS2 games
;here, where it behaves a little differently compared to how most games (including SFA itself) operate
;for moves done in or inputted while in the air (see http://mugenguild.com/forum/msg.2366955 for a discussion
;about how most games operate). In CPS2 games, if you jump over an opponent while inputting this command,
;"forward" won't have flipped directions until you land. This is in contrast to how the move behaves in SFIII
;and elsewhere. Remove the "StateType != A" in the triggers below to have it work like SFIII/most other games.

;An additional item of interest here is that directional inputs in (most) games's command supers accept diagonals
;in place of cardinal directional inputs; i.e., "LP, LP, DF, LK, HP" would still activate an SGS in SFA2. Weirdly
;enough, though diagonals are allowed in SFA2, SFIII, and the Darkstalkers series, SFA3 only allows a cardinal input!
;SNK games also only allow cardinal inputs. We however have opted to follow Capcom's (usual) method and allow diagonals.
[State -1, x, x, F, a, z: Forward]
type = Explod
triggerAll = NumExplod(94000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType != A, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "back"
trigger2 = ifElse(P2dist x < 0 && StateType != A, Facing = 1, Facing = -1)
trigger2 = (Helper(90000005), command = "back" || Helper(90000005), command = "dback" || Helper(90000005), command = "uback") && Helper(90000005), command != "fwd"
anim = 1998
ID = 94000006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, x, F, a, z: a]
type = Explod
triggerAll = NumExplod(94000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a"
anim = 1998
ID = 94000230
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, x, F, a, z: z]
type = Explod
triggerAll = NumExplod(94000230)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 94000220
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;==========================<MIDNIGHT PLEASURE/x, y, FORWARD, b, b>=============================
;==============================================================================================

[State -1, x, y, F, b, b: x]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94010200
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, F, b, b: y]
type = Explod
triggerAll = NumExplod(94010200)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1998
ID = 94010210
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, F, b, b: Forward]
type = Explod
triggerAll = NumExplod(94010210)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType != A, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "back"
trigger2 = ifElse(P2dist x < 0 && StateType != A, Facing = 1, Facing = -1)
trigger2 = (Helper(90000005), command = "back" || Helper(90000005), command = "dback" || Helper(90000005), command = "uback") && Helper(90000005), command != "fwd"
anim = 1998
ID = 94010006
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, F, b, b: 2nd b]
type = Explod
triggerAll = NumExplod(94010240)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b"
anim = 1998
ID = 94010241
removeTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 7 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1


[State -1, x, y, F, b, b: 1st b]
type = Explod
triggerAll = NumExplod(94010006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b"
anim = 1998
ID = 94010240
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1 



;==============================================================================================
;==========================<BLACK HAYATO/y, z, BACK, b, c>=============================
;==============================================================================================

[State -1, y, z, B, b, c: y]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1998
ID = 94020210
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, y, z, B, b, c: z]
type = Explod
triggerAll = NumExplod(94020210)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 94020220
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, y, z, B, b, c: Back]
type = Explod
triggerAll = NumExplod(94020220)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType != A, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005), command = "back" || Helper(90000005), command = "dback" || Helper(90000005), command = "uback") && Helper(90000005), command != "fwd"
trigger2 = ifElse(P2dist x < 0 && StateType != A, Facing = 1, Facing = -1)
trigger2 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "back"
anim = 1998
ID = 94020004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, y, z, B, b, c: b]
type = Explod
triggerAll = NumExplod(94020004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b"
anim = 1998
ID = 94020240
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, y, z, B, b, c: c]
type = Explod
triggerAll = NumExplod(94020240)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c"
anim = 1998
ID = 94020250
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1



;==============================================================================================
;==========================<ETTERNAL SLUMBER/x, y, Back, y, z >=============================
;==============================================================================================

[State -1, x, y, B, y, z : x]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94030200
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1,x, y, B, y, z : 2nd y]
type = Explod
triggerAll = NumExplod(94030004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1998
ID = 94030211
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, B, y, z : Back]
type = Explod
triggerAll = NumExplod(94030210)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType != A, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005), command = "back" || Helper(90000005), command = "dback" || Helper(90000005), command = "uback") && Helper(90000005), command != "fwd"
trigger2 = ifElse(P2dist x < 0 && StateType != A, Facing = 1, Facing = -1)
trigger2 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "back"
anim = 1998
ID = 94030004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, B, y, z : 1st y]
type = Explod
triggerAll = NumExplod(94030200)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1998
ID = 94030210
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, x, y, B, y, z : z]
type = Explod
triggerAll = NumExplod(94030211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 94030220
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1



;==============================================================================================
;==========================<TOUR DE MAGIE/c, x, Down, a, z>=============================
;==============================================================================================

[State -1, c, x, D, a, z: c]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c"
anim = 1998
ID = 94040250
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, c, x, D, a, z: x]
type = Explod
triggerAll = NumExplod(94040250)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94040200
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, c, x, D, a, z: Down]
type = Explod
triggerAll = NumExplod(94040200)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = (Helper(90000005), command = "down" || Helper(90000005), command = "dback" || Helper(90000005), command = "dfwd") && Helper(90000005), command != "up"
anim = 1998
ID = 94040002
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, c, x, D, a, z: a]
type = Explod
triggerAll = NumExplod(94040002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a"
anim = 1998
ID = 94040230
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, c, x, D, a, z: z]
type = Explod
triggerAll = NumExplod(94040230)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 94040220
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1



;==============================================================================================
;==========================<OTOKO MICHI/ z, a, B, x, x>=============================
;==============================================================================================

[State -1, z, a, B, x, x: z]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1998
ID = 94050220
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, z, a, B, x, x: a]
type = Explod
triggerAll = NumExplod(94050220)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a"
anim = 1998
ID = 94050230
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, z, a, B, x, x: Back]
type = Explod
triggerAll = NumExplod(94050230)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = ifElse(P2dist x < 0 && StateType != A, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005), command = "back" || Helper(90000005), command = "dback" || Helper(90000005), command = "uback") && Helper(90000005), command != "fwd"
trigger2 = ifElse(P2dist x < 0 && StateType != A, Facing = 1, Facing = -1)
trigger2 = (Helper(90000005), command = "fwd" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "ufwd") && Helper(90000005), command != "back"
anim = 1998
ID = 94050004
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, z, a, B, x, x: 2nd x]
type = Explod
triggerAll = NumExplod(94050200)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94050211
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1

[State -1, z, a, B, x, x: 1st x]
type = Explod
triggerAll = NumExplod(94050004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1998
ID = 94050200
removeTime = 7
pauseMoveTime = 7
superMoveTime = 7
ignoreHitPause = 1



;==============================================================================================
;===============================<REMOVE DIRECTIONAL DETECTORS>=================================
;==============================================================================================

;==============================================================================================
;This block of RemoveExplods gets rid of any active release detector explods; if the direction in
;question isn't currently being input, or if the direction is being input but other directions are
;also being input, then the detector explod is removed, having served its purpose as a detector.
;This must go at the very bottom of the entire EXPLODsive Buffering system code!
;==============================================================================================

[State -1, Remove Down Detector]
type = RemoveExplod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000002
ignoreHitPause = 1

[State -1, Remove Down-Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000003
ignoreHitPause = 1

[State -1, Remove Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000006
ignoreHitPause = 1

[State -1, Remove Up-Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000009
ignoreHitPause = 1

[State -1, Remove Up Detector]
type = RemoveExplod
triggerAll = NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000008
ignoreHitPause = 1

[State -1, Remove Up-Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000007)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000007
ignoreHitPause = 1

[State -1, Remove Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000004
ignoreHitPause = 1

[State -1, Remove Down-Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000001)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000001
ignoreHitPause = 1



;==============================================================================================
;==============================<REMOVE RELEASE BUTTON DETECTORS>===============================
;==============================================================================================

;==============================================================================================
;Same principle here as with the directional release detector explods.
;==============================================================================================

[State -1, Remove x Detector]
type = RemoveExplod
triggerAll = NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "x" && Helper(90000005), command != "holdx"
ID = 90000201
ignoreHitPause = 1

[State -1, Remove y Detector]
type = RemoveExplod
triggerAll = NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "y" && Helper(90000005), command != "holdy"
ID = 90000211
ignoreHitPause = 1

[State -1, Remove z Detector]
type = RemoveExplod
triggerAll = NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "z" && Helper(90000005), command != "holdz"
ID = 90000221
ignoreHitPause = 1

[State -1, Remove a Detector]
type = RemoveExplod
triggerAll = NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "a" && Helper(90000005), command != "holda"
ID = 90000231
ignoreHitPause = 1

[State -1, Remove b Detector]
type = RemoveExplod
triggerAll = NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "b" && Helper(90000005), command != "holdb"
ID = 90000241
ignoreHitPause = 1

[State -1, Remove c Detector]
type = RemoveExplod
triggerAll = NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "c" && Helper(90000005), command != "holdc"
ID = 90000251
ignoreHitPause = 1

[State -1, Remove start Detector]
type = RemoveExplod
triggerAll = NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "start" && Helper(90000005), command != "holdstart"
ID = 90000194
ignoreHitPause = 1


;==============================================================================================
;==========================================<GUARDING>==========================================
;==============================================================================================

;==============================================================================================
;Here, we override the MUGEN's default guard system when the character is airborne, and add our
;own triggers. This will ensure that the player can always block as long as they are holding a
;direction away from the opponent. This block of code also adds "chicken guarding", which is allowing
;the player to air guard by holding not only back, but down-back and up-back.

;It is also recommended that you also override the guard states (120, 130, 131, 132, 140, 150, 151,
;152, 154, 155) with an updated version that uses the EXPLODsive buffering system. A copy of those
;fixed states can be found here: http://network.mugenguild.com/jmorphman/resources/EXPLODsiveBuffering_GuardStates.txt
;==============================================================================================

[State -1, AssertSpecial: NoAirGuard]
type = AssertSpecial
trigger1 = P2dist x < 0 && StateType = A
trigger1 = !AILevel
flag = NoAirGuard
ignoreHitPause = 0

[State -1, Air Blocking]
type = ChangeState
triggerAll = !AILevel
triggerAll = InGuardDist
triggerAll = StateType = A
triggerAll = ctrl
triggerAll = !(StateNo = [120,155])
triggerAll = !NumExplod(90000004) && !NumExplod(90000006) && !NumExplod(90000001) && !NumExplod(90000003) && !NumExplod(90000007) && !NumExplod(90000009)
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
trigger2 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000001)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000003))
trigger3 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000007)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000009))
value = 120

;These three ChangeStates are only in use when the character has landed from a jump after switching
;sides, to get around a MUGEN bug where a character's directions don't switch until a tick has passed,
;after they've landed from a jump and switched sides. Otherwise, MUGEN's default guard behavior works
;well enough!
[State -1, AssertSpecial: No StandGuard and NoCrouchGuard]
type = AssertSpecial
triggerAll = !AILevel
trigger1 = P2dist x < 0 && StateType != A
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger3 = !NumExplod(90000004) && !NumExplod(90000006) && !NumExplod(90000001) && !NumExplod(90000003) && !NumExplod(90000007) && !NumExplod(90000009)
flag = NoStandGuard
flag2 = NoCrouchGuard
ignoreHitPause = 0

[State -1, Stand Blocking]
type = ChangeState
triggerAll = !AILevel
triggerAll = InGuardDist
triggerAll = (P2dist x < 0 && StateType != A) || NumExplod(94646464) || NumExplod(92468246)
triggerAll = StateType = S
triggerAll = ctrl
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
value = 120

[State -1, Crouch Blocking]
type = ChangeState
triggerAll = !AILevel
triggerAll = InGuardDist
triggerAll = (P2dist x < 0 && StateType != A) || NumExplod(94646464) || NumExplod(92468246)
triggerAll = StateType = C
triggerAll = ctrl
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000001)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000003))
value = 120



;==============================================================================================
;==============================================================================================
;=============================<End of EXPLODsive Buffering System>=============================
;==============================================================================================
;==============================================================================================



; ------ Uno Tag System [Type-R] END LINE -------

;  ;]

[State -1, Tick Fix]
type = CtrlSet
triggerall = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = StateNo = 810 && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger5 = (StateNo = [700,715]) && !AnimTime
trigger6 = (StateNo = [6080,6082]) && !AnimTime
value = 1

[State -1, 4th Wall Crisis]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=3300
triggerall=!AILevel && RoundState=2 && StateType != A && power >= 3000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = NumHelper(90000005) 
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90030016))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90030114))
triggerall = ((numexplod(90000200)||numexplod(90000205)) && (numexplod(90000210)||numexplod(90000215))) || ((numexplod(90000220)||numexplod(90000225)) && (numexplod(90000210)||numexplod(90000215))) || ((numexplod(90000200)||numexplod(90000205)) && (numexplod(90000220)||numexplod(90000225)))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2= stateno = [200,450]
trigger3 = stateno = [1000,1600]

[State -1, Cutting Time]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=3100
triggerall=!AILevel && RoundState=2 && StateType != A && power >= 1000
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90030114))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90030016))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
triggerall = !ishelper
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2= stateno = [200,450]
trigger3 = stateno = [1000,1600]

[State -1, Happy Happy Trigger]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=3000
triggerall=!AILevel && RoundState=2 && stateno!= 3000 && StateType != A && power >= 1000
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90030016))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90030114))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
triggerall = !ishelper
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2= stateno = [200,450]
trigger3 = stateno = [1000,1600]

[State -1, Air Happy Happy Trigger]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=3050
triggerall=!AILevel && RoundState=2 && stateno!= 3050 && StateType = A && Pos y<=-15 && power >= 1000
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90030016))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90030114))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
triggerall = !ishelper
trigger1=ctrl
trigger2=var(6)|| var(7)
trigger3=(stateno=[600,650])
trigger4 = stateno = [11000,11050]

[State -1, Shoryuken]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1500
triggerall = stateno != 225
triggerall=!AILevel && RoundState=2 && StateType != A && (command="c")
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2= stateno = [200,450]
trigger2 = movecontact

[State -1, Chimichangas Follow up]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=1150
triggerall=!AILevel && RoundState=2 && StateType != A && command="z"
trigger1= stateno=1100 && movecontact

[State -1, Katana-Rama]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
value = 1100
triggerall=!AILevel && RoundState=2 && StateType != A
triggerall = !ishelper
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90010203))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90010301))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2=stateno = [200,450]
trigger2 = movecontact

[State -1, Teleport]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
;value=Ifelse(command="TeleportEX"&&var(20) <= 60&&power>=500,1350,1300)
value = 1300
triggerall=!AILevel && RoundState=2 && StateType != A
triggerall = !ishelper
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90010301))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90010203))
triggerall =ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102]) || (stateno = [200,450]) || (stateno = [1000,1500])
trigger1 = numexplod(90000200)||numexplod(90000205)
trigger1 = var(10) := 0 || 1
trigger2 = numexplod(90000210)||numexplod(90000215)
trigger2 = var(10) := 1 || 1
trigger3 = numexplod(90000220)||numexplod(90000225)
trigger3 = var(10) := 2 || 1

[State -1, Quick Work]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
;value=Ifelse(command="QuickWorkEX"&&var(20) <= 60&&power>=500,1225,1200)
value = 1200
triggerall=!AILevel && RoundState=2 && StateType != A
triggerall = !ishelper
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90010104))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90010006))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)

trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,102])
trigger2= stateno = [200,450]
trigger2 = movecontact

[State -1, Trigger Happy]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
;value=Ifelse(command="TriggerHappyEX"&&var(20) <= 60&&power>=500,1025,1000)
value = 1000
triggerall=!AILevel && RoundState=2 && StateType != A
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
triggerall = !ishelper
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,103])
trigger2= stateno = [200,450]
trigger2 = movecontact

[State -1, Air Trigger Happy]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
;value=Ifelse(command="TriggerHappyEX"&&var(20) <= 60&&power>=500,1075,1050)
value = 1050
triggerall=!AILevel && RoundState=2 && StateType = A && Pos y<=-25 && (var(3) != [1, 2])
triggerall = NumHelper(90000005)
triggerall = !AIlevel
triggerAll = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
triggerall = !ishelper
trigger1=ctrl
trigger2=(stateno=[600,650])

[State -1, Zero Counter]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1550
triggerall = NumHelper(90000005)
triggerall = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90007552))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90007502))
triggerall = numexplod(90000200)||numexplod(90000205)||numexplod(90000210)||numexplod(90000215)||numexplod(90000220)||numexplod(90000225)
triggerall = !ishelper
trigger1 = StateNo = [150,153]
trigger1 = !AILevel&&RoundState = 2 && StateType != A
trigger1 = power >= 1000

[State -1, Throw]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 800
trigger1 = (command = "holdfwd" || command = "holdback") && command = "z"
trigger1 = p2dist X < 56 && p2movetype != H
triggerall = !AILevel&&RoundState = 2 && StateType != A
triggerall = ctrl
trigger2 = command = "b"

[State -1, Air Throw]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value =850
trigger1=(command="holdfwd"||command="holdback")&&(command="pp")
trigger1=!AILevel&&RoundState=2 && Statetype=A && Pos Y<=-30
triggerall=ctrl
trigger2 = command = "b"

[State -1, SIdestep/Dodge]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = Ifelse(command="holdfwd",710,Ifelse(command="holdback",715,700))
triggerall = command = "a"
triggerall = !AILevel && RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,103]))

[State -1, Custom Combo]
type = null;ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = Ifelse(StateType = A,905,900)
triggerAll = !AILevel && command = "c+z" && RoundState = 2 && power >= 1000 
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,103])
trigger1 = !var(41)

[State -1, Super Jump]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 123
triggerall= !AILevel && var(55)=2 && roundstate=2 && statetype != A
trigger1 = ctrl && command = "DU"
trigger2 = stateno=420 && movehit && command = "holdup"

[State -1, Wall Jumps]
type = null;ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = Ifelse(command = "holdfwd",60,61)
triggerall = !AIlevel && roundstate = 2 && statetype = A && pos y <= -32 && vel x != 0 && (prevstateno!=[60,61])
triggerall = (command = "holdfwd" && backedgebodydist <= 0||command = "holdback"&&frontedgebodydist <= 0)
trigger1 = ctrl

[State -1, Forward Dash/ Run /Dash Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = Ifelse(command = "BB",105,102)
trigger1 = !AILevel&&Roundstate=2&&statetype = S
trigger1 = command = "FF"||command = "BB"
trigger1 = ctrl

[State -1, Standing Low Punch]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=200
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="x"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=stateno=200&&movecontact

[State -1, Standing High Punch]
type= ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 225
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="y" && command = "holdfwd"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,220])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact

[State -1, Standing Medium Punch]
type= ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=220
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="y"
triggerall = stateno != 220
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact

[State -1, Standing High Punch]
type= ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 250
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="z"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,220])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact

[State -1, Crouching Low Punch]
type=null;ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=400
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="x"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)

[State -1, Crouching Medium Punch]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=410
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command= "holddown"&& command="y"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact

[State -1, Crouching High Punch]
type=null;ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=420
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="z"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact&&var(55)

[State -1, Crouching Low Kick]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=430
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="x"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3= stateno = 430
trigger3 = movecontact

[State -1, Crouching Medium Kick]
type=null;ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=440
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="b"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439]))&&movecontact&&var(55)

[State -1, Crouching High Kick]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=450
triggerall = stateno != 225
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="z"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,249])||(stateno=[400,449]))&&movecontact

[State -1, Jumping Low Punch]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 600
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="x"
trigger1=ctrl
trigger2=var(4)
trigger3 = stateno = 600 & movecontact

[State -1, Jumping Medium Punch]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=610
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="y"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,609])||(stateno=[630,639]))&&movecontact

[State -1, Jumping High Punch]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=620
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="z"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,649]))&&movecontact

[State -1, Jumping High Kick]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value=625
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="c"
trigger1=ctrl
trigger2=var(4)
trigger3=(stateno=[600,620])&&movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 550
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "z")
trigger1 = stateno = [150,151]


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 560
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "z")
trigger1 = stateno = [152,153]


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 570
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = var(59) = 0
triggerall = teammode != Simul 
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = var(59) = 0
triggerall = teammode = Simul 
triggerall = numpartner
triggerall = partner,life = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
