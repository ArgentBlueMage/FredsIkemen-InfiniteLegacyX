;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------




[Command]
name = "驚天動地"
command = ~D, F, D, F, x+y
time = 25



[Command]
name = "吼える大門"
command = ~D, F, D, F, x
time = 25

[Command]
name = "吼える大門"
command = ~D, F, D, F, y
time = 25



[Command]
name = "風林火山"
command = ~F, D, B, F, D, B, a+b
time = 35


[Command]
name = "ぶっこ抜き裏投げ"
command = ~F, D, DF, a

[Command]
name = "ぶっこ抜き裏投げ"
command = ~F, D, DF, b


[Command]
name = "続・切り株返し"
command = ~B, D, F, a

[Command]
name = "続・切り株返し"
command = ~B, D, F, b


[Command]
name = "MAX嵐の山"
command = ~D, F, D, F, a+b
time = 35

[Command]
name = "嵐の山"
command = ~D, F, D, F, a
time = 35

[Command]
name = "嵐の山"
command = ~D, F, D, F, b
time = 35


[Command]
name = "冥土落とし"
command = ~B, D, F, a

[Command]
name = "冥土落とし"
command = ~B, D, F, b


[Command]
name = "MAX地獄極楽落とし"
command = ~F, D, B, F, D, B, x+y
time = 35


[Command]
name = "地獄極楽落とし"
command = ~F, D, B, F, D, B, x
time = 35

[Command]
name = "地獄極楽落とし"
command = ~F, D, B, F, D, B, y
time = 35



;-| Special Motions |------------------------------------------------------
[Command]
name = "踊る大門"
command = ~B,D,F, a
time = 25

[Command]
name = "踊る大門"
command = ~B,D,F, b
time = 25


[Command]
name = "淬ぐ大門"
command = ~B,D,F, x
time = 25

[Command]
name = "淬ぐ大門"
command = ~B,D,F, y
time = 25



[Command]
name = "裏投げ"
command = ~F, DF, D, DB, B, F, a
time = 22

[Command]
name = "裏投げ"
command = ~F, DF, D, DB, B, F, b
time = 22


[Command]
name = "天地返し"
command = ~F, DF, D, DB, B, F, x
time = 22

[Command]
name = "天地返し"
command = ~F, DF, D, DB, B, F, y
time = 22


[Command]
name = "挫く大門"
command = ~D, DB, B, x

[Command]
name = "挫く大門"
command = ~D, DB, B, y


[Command]
name = "超大外刈り"
command = ~F, D, DF, a

[Command]
name = "超大外刈り"
command = ~F, D, DF, b


[Command]
name = "超受け身"
command = ~D, DB, B, a

[Command]
name = "超受け身"
command = ~D, DB, B, b



[Command]
name = "根っこ返し"
command = ~D, DF, F, a

[Command]
name = "根っこ返し"
command = ~D, DF, F, b



[Command]
name = "地雷震"
command = ~F, D, DF, x

[Command]
name = "地雷震"
command = ~F, D, DF, y



[Command]
name = "雲つかみ投げ"
command = ~D, DF, F, x

[Command]
name = "切り株返し"
command = ~D, DF, F, y



[Command]
name = "緊急回避前"
command = x+a
time = 1

[Command]
name = "緊急回避前"
command = z
time = 1

[Command]
name = "緊急回避後"
command = /$B,x+a
time = 1

[Command]
name = "緊急回避後"
command = /$B,z
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "ふっ飛ばし"
command = c
time = 1

[Command]
name = "ふっ飛ばし"
command = y+b
time = 1

[Command]
name = "MAX"
command = y+a
time = 1

[Command]
name = "おしっぱなしx"
command = /$x
time = 1

[Command]
name = "おしっぱなしy"
command = /$y
time = 1

[Command]
name = "おしっぱなしa"
command = /$a
time = 1

[Command]
name = "おしっぱなしb"
command = /$b
time = 1

[Command]
name = "おしっぱなしz"
command = /$z
time = 1

[Command]
name = "おしっぱなしc"
command = /$c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1



; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================

;---------------------------------------------------------------------------
;驚天動地
[State ERROR]
type = ChangeState
value = 2700
triggerall = command = "驚天動地"
triggerall = power >= 3000 || (var(20) > 0 && power >= 1000 )
triggerall = life <= 300
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0
trigger12= stateno = 450 && movecontact



;---------------------------------------------------------------------------
;風林火山
[State ERROR]
type = ChangeState
value = 2300
triggerall = command = "風林火山"
triggerall = power >= 3000 || (var(20) > 0 && power >= 1000 )
triggerall = life <= 300
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0
trigger12= stateno = 450 && movecontact


;===========================================================================
;---------------------------------------------------------------------------
;吼える大門
[State Hoeru Daichi]
type = ChangeState
value = 2600
triggerall = command = "吼える大門"
triggerall = power >= 1000 || var(20) > 0
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0
trigger12= stateno = 450 && movecontact




;---------------------------------------------------------------------------
;MAX荒ぶる大門
[State Araburu Daichi]
type = ChangeState
value = 2550
triggerall = command = "MAX嵐の山"
triggerall = power >= 3000 || (var(20) > 0 && power >= 1000 )
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0
trigger12= stateno = 450 && movecontact

;---------------------------------------------------------------------------
;荒ぶる大門
[State Araburu Daichi]
type = ChangeState
value = 2500
triggerall = command = "嵐の山"
triggerall = power >= 1000 || var(20) > 0
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0
trigger12= stateno = 450 && movecontact






;---------------------------------------------------------------------------
;MAX暗黒地獄極楽落とし
[State Final Impact]
type = ChangeState
value = 2450
triggerall = command = "MAX地獄極楽落とし"
triggerall = power >= 3000 || (var(20) > 0 && power >= 1000 )
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0
trigger12= stateno = 450 && movecontact

;---------------------------------------------------------------------------
;暗黒地獄極楽落とし
[State Final Impact]
type = ChangeState
value = 2400
triggerall = command = "地獄極楽落とし"
triggerall = power >= 1000 || var(20) > 0
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0
trigger12= stateno = 450 && movecontact





;---------------------------------------------------------------------------
;MAX嵐の山
[State Million Bash Stream]
type = ChangeState
value = 2150
triggerall = command = "MAX嵐の山"
triggerall = power >= 3000 || (var(20) > 0 && power >= 1000 )
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0
trigger12= stateno = 450 && movecontact

;---------------------------------------------------------------------------
;嵐の山
[State Million Bash Stream]
type = ChangeState
value = 2100
triggerall = command = "嵐の山"
triggerall = power >= 1000 || var(20) > 0
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0
trigger12= stateno = 450 && movecontact

;---------------------------------------------------------------------------
;冥土落とし
[State Final Impact]
type = ChangeState
value = 2200
triggerall = command = "冥土落とし"
triggerall = power >= 1000 || var(20) > 0
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0
trigger12= stateno = 450 && movecontact

;---------------------------------------------------------------------------
;MAX地獄極楽落とし
[State Final Impact]
type = ChangeState
value = 2050
triggerall = command = "MAX地獄極楽落とし"
triggerall = power >= 3000 || (var(20) > 0 && power >= 1000 )
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0
trigger12= stateno = 450 && movecontact


;---------------------------------------------------------------------------
;地獄極楽落とし
[State Final Impact]
type = ChangeState
value = 2000
triggerall = command = "地獄極楽落とし"
triggerall = power >= 1000 || var(20) > 0
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0
trigger12= stateno = 450 && movecontact


;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;DC超受け身
[State Jet Counter]
type = ChangeState
value = 1100
triggerall = command = "超受け身"
triggerall = statetype != A
triggerall = var(20) > 0
triggerall = var(1) = 1
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 250
trigger4 = stateno = 410
trigger5 = stateno = 430
trigger6 = stateno = 450

trigger7 = stateno = 1450

;---------------------------------------------------------------------------
;DC暴れ大門
[State Jet Counter]
type = ChangeState
value = 1450
triggerall = command = "地雷震"
triggerall = statetype != A
triggerall = var(20) > 0
triggerall = var(1) = 1
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 250
trigger4 = stateno = 410
trigger5 = stateno = 430
trigger6 = stateno = 450

;---------------------------------------------------------------------------
;暴れ大門
[State Jet Counter]
type = ChangeState
value = 1450
triggerall = command = "地雷震"
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0

;---------------------------------------------------------------------------
;踊る大門
[State Jet Counter]
type = ChangeState
value = 1350
triggerall = command = "踊る大門"
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0

;---------------------------------------------------------------------------
;咽ぶ大門
[State Jet Counter]
type = ChangeState
value = 1050
triggerall = command = "天地返し"
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0

;---------------------------------------------------------------------------
;淬ぐ大門
[State Jet Counter]
type = ChangeState
value = 1150
triggerall = command = "淬ぐ大門"
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0


;---------------------------------------------------------------------------
;DC挫く大門
[State Jet Counter]
type = ChangeState
value = 1250
triggerall = command = "挫く大門"
triggerall = statetype != A
triggerall = var(20) > 0
triggerall = var(1) = 1
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 250
trigger4 = stateno = 410
trigger5 = stateno = 430
trigger6 = stateno = 450

trigger7 = stateno = 1450 && movecontact

;---------------------------------------------------------------------------
;挫く大門
[State Jet Counter]
type = ChangeState
value = 1250
triggerall = command = "挫く大門"
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0

;---------------------------------------------------------------------------
;裏投げ
[State Jet Counter]
type = ChangeState
value = 1500
triggerall = command = "裏投げ"
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0

;---------------------------------------------------------------------------
;天地返し
[State Jet Counter]
type = ChangeState
value = 1600
triggerall = command = "天地返し"
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0

;---------------------------------------------------------------------------
;DC超大外刈り
[State Jet Counter]
type = ChangeState
value = 1700
triggerall = command = "超大外刈り"
triggerall = statetype != A
triggerall = var(20) > 0
triggerall = var(1) = 0
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 250
trigger4 = stateno = 410
trigger5 = stateno = 430
trigger6 = stateno = 450

trigger7 = stateno = 1000

;---------------------------------------------------------------------------
;超大外刈り
[State Jet Counter]
type = ChangeState
value = 1700
triggerall = command = "超大外刈り"
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0


;---------------------------------------------------------------------------
;DC根っこ返し
[State Jet Counter]
type = ChangeState
value = 1400
triggerall = command = "根っこ返し"
triggerall = statetype != A
triggerall = var(20) > 0
triggerall = var(1) = 0
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 250
trigger4 = stateno = 410
trigger5 = stateno = 430
trigger6 = stateno = 450

trigger7 = stateno = 1000

;---------------------------------------------------------------------------
;根っこ返し
[State Jet Counter]
type = ChangeState
value = 1400
triggerall = command = "根っこ返し"
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0


;---------------------------------------------------------------------------
;DC地雷震
[State Jet Counter]
type = ChangeState
value = 1000
triggerall = command = "地雷震"
triggerall = statetype != A
triggerall = var(20) > 0
triggerall = var(1) = 0
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 250
trigger4 = stateno = 410
trigger5 = stateno = 430
trigger6 = stateno = 450

;---------------------------------------------------------------------------
;地雷震
[State Jet Counter]
type = ChangeState
value = 1000
triggerall = command = "地雷震"
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0

;---------------------------------------------------------------------------
;DC切り株返し
[State Jet Counter]
type = ChangeState
value = 1300
triggerall = command = "切り株返し"
triggerall = statetype != A
triggerall = var(20) > 0
triggerall = var(1) = 0
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 250
trigger4 = stateno = 410
trigger5 = stateno = 430
trigger6 = stateno = 450

trigger7 = stateno = 1000

;---------------------------------------------------------------------------
;切り株返し
[State Jet Counter]
type = ChangeState
value = 1300
triggerall = command = "切り株返し"
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0


;---------------------------------------------------------------------------
;DC雲つかみ投げ
[State Jet Counter]
type = ChangeState
value = 1200
triggerall = command = "雲つかみ投げ"
triggerall = statetype != A
triggerall = var(20) > 0
triggerall = var(1) = 0
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 250
trigger4 = stateno = 410
trigger5 = stateno = 430
trigger6 = stateno = 450

trigger7 = stateno = 1000

;---------------------------------------------------------------------------
;雲つかみ投げ
[State Jet Counter]
type = ChangeState
value = 1200
triggerall = command = "雲つかみ投げ"
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0
trigger11= stateno = 1100 && animelem = 3,>=0


;---------------------------------------------------------------------------
;DC超受け身
[State Jet Counter]
type = ChangeState
value = 1100
triggerall = command = "超受け身"
triggerall = statetype != A
triggerall = var(20) > 0
triggerall = var(1) = 0
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 250
trigger4 = stateno = 410
trigger5 = stateno = 430
trigger6 = stateno = 450

trigger7 = stateno = 1000

;---------------------------------------------------------------------------
;超受け身
[State Jet Counter]
type = ChangeState
value = 1100
triggerall = command = "超受け身"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 2,>=0
trigger3 = stateno = 205 && animelem = 2,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && animelem = 3,>=0
trigger7 = stateno = 245 && animelem = 3,>=0
trigger8 = stateno = 400 && animelem = 2,>=0
trigger9 = stateno = 440 && animelem = 2,>=0
trigger10= stateno = 290 && animelem = 4,>=0




;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ガードキャンセルふっ飛ばし攻撃
[State -1, 290]
type = ChangeState
value = 291
triggerall = command = "ふっ飛ばし"
triggerall = power >= 500
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;ふっ飛ばし攻撃
[State -1, 290]
type = ChangeState
value = 290
triggerall = command = "ふっ飛ばし"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中ふっ飛ばし攻撃
[State -1, Jump Strong Kick]
type = ChangeState
value = 690
triggerall = command = "ふっ飛ばし"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl


;---------------------------------------------------------------------------
;MAX発動
[State -1, Jump Strong Kick]
type = ChangeState
value = 900
triggerall = command = "MAX"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(20) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;クイックMAX
[State -1, Jump Strong Kick]
type = ChangeState
value = 901
triggerall = command = "MAX"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = var(20) = 0
trigger1 = stateno = [200,499]
trigger1 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;緊急回避後
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = command = "緊急回避後"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ガードキャンセル緊急回避後
[State -1, 701]
type = ChangeState
value = 701
triggerall = command = "緊急回避後"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
;---------------------------------------------------------------------------
;緊急回避前
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = command = "緊急回避前"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ガードキャンセル緊急回避前
[State -1, 700]
type = ChangeState
value = 700
triggerall = command = "緊急回避前"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
;---------------------------------------------------------------------------
;クイック前転
[State -1, 700]
type = ChangeState
value = 700
triggerall = command = "緊急回避前"
triggerall = power >= 1000
trigger1 = stateno = [200,499]
trigger1 = movecontact
;---------------------------------------------------------------------------
;ダウン回避
[State -1, Taunt]
type = ChangeState
value = 702
triggerall = command = "緊急回避前"
triggerall = alive
trigger1 = stateno = 5050
trigger1 = pos y >=-40
trigger1 = vel y > 0
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;もみもみ投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 5
trigger1 = p2statetype != A
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;足払い
[State -1, Kung Fu Throw]
type = ChangeState
value = 810
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 5
trigger1 = p2statetype != A
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;玉潰し
[State -1, a]
type = ChangeState
value = 250
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10= stateno = 1100 && animelem = 3,>=0

;---------------------------------------------------------------------------
;頭上払い
[State -1, a]
type = ChangeState
value = 450
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10= stateno = 1100 && animelem = 3,>=0

;===========================================================================
;---------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = animelem = 2,>=0
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = animelem = 2,>=0
trigger4 = stateno = 400
trigger4 = movecontact
trigger4 = animelem = 2,>=0

;---------------------------------------------------------------------------
;近距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = animelem = 2,>=0
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = animelem = 2,>=0
trigger4 = stateno = 400
trigger4 = movecontact
trigger4 = animelem = 2,>=0

;---------------------------------------------------------------------------
;遠距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X >70
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X <=70
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち強キック1
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X >70
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X <=70
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 199
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = animelem = 2,>=0
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = animelem = 2,>=0
trigger4 = stateno = 400
trigger4 = movecontact
trigger4 = animelem = 2,>=0

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
