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
name = "���V���n"
command = ~D, F, D, F, x+y
time = 25



[Command]
name = "�Ⴆ����"
command = ~D, F, D, F, x
time = 25

[Command]
name = "�Ⴆ����"
command = ~D, F, D, F, y
time = 25



[Command]
name = "���щΎR"
command = ~F, D, B, F, D, B, a+b
time = 35


[Command]
name = "�Ԃ�������������"
command = ~F, D, DF, a

[Command]
name = "�Ԃ�������������"
command = ~F, D, DF, b


[Command]
name = "���E�؂芔�Ԃ�"
command = ~B, D, F, a

[Command]
name = "���E�؂芔�Ԃ�"
command = ~B, D, F, b


[Command]
name = "MAX���̎R"
command = ~D, F, D, F, a+b
time = 35

[Command]
name = "���̎R"
command = ~D, F, D, F, a
time = 35

[Command]
name = "���̎R"
command = ~D, F, D, F, b
time = 35


[Command]
name = "���y���Ƃ�"
command = ~B, D, F, a

[Command]
name = "���y���Ƃ�"
command = ~B, D, F, b


[Command]
name = "MAX�n���Ɋy���Ƃ�"
command = ~F, D, B, F, D, B, x+y
time = 35


[Command]
name = "�n���Ɋy���Ƃ�"
command = ~F, D, B, F, D, B, x
time = 35

[Command]
name = "�n���Ɋy���Ƃ�"
command = ~F, D, B, F, D, B, y
time = 35



;-| Special Motions |------------------------------------------------------
[Command]
name = "�x����"
command = ~B,D,F, a
time = 25

[Command]
name = "�x����"
command = ~B,D,F, b
time = 25


[Command]
name = "�������"
command = ~B,D,F, x
time = 25

[Command]
name = "�������"
command = ~B,D,F, y
time = 25



[Command]
name = "������"
command = ~F, DF, D, DB, B, F, a
time = 22

[Command]
name = "������"
command = ~F, DF, D, DB, B, F, b
time = 22


[Command]
name = "�V�n�Ԃ�"
command = ~F, DF, D, DB, B, F, x
time = 22

[Command]
name = "�V�n�Ԃ�"
command = ~F, DF, D, DB, B, F, y
time = 22


[Command]
name = "�������"
command = ~D, DB, B, x

[Command]
name = "�������"
command = ~D, DB, B, y


[Command]
name = "����O����"
command = ~F, D, DF, a

[Command]
name = "����O����"
command = ~F, D, DF, b


[Command]
name = "���󂯐g"
command = ~D, DB, B, a

[Command]
name = "���󂯐g"
command = ~D, DB, B, b



[Command]
name = "�������Ԃ�"
command = ~D, DF, F, a

[Command]
name = "�������Ԃ�"
command = ~D, DF, F, b



[Command]
name = "�n���k"
command = ~F, D, DF, x

[Command]
name = "�n���k"
command = ~F, D, DF, y



[Command]
name = "�_���ݓ���"
command = ~D, DF, F, x

[Command]
name = "�؂芔�Ԃ�"
command = ~D, DF, F, y



[Command]
name = "�ً}���O"
command = x+a
time = 1

[Command]
name = "�ً}���O"
command = z
time = 1

[Command]
name = "�ً}�����"
command = /$B,x+a
time = 1

[Command]
name = "�ً}�����"
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
name = "�ӂ���΂�"
command = c
time = 1

[Command]
name = "�ӂ���΂�"
command = y+b
time = 1

[Command]
name = "MAX"
command = y+a
time = 1

[Command]
name = "�������ςȂ�x"
command = /$x
time = 1

[Command]
name = "�������ςȂ�y"
command = /$y
time = 1

[Command]
name = "�������ςȂ�a"
command = /$a
time = 1

[Command]
name = "�������ςȂ�b"
command = /$b
time = 1

[Command]
name = "�������ςȂ�z"
command = /$z
time = 1

[Command]
name = "�������ςȂ�c"
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
;���V���n
[State ERROR]
type = ChangeState
value = 2700
triggerall = command = "���V���n"
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
;���щΎR
[State ERROR]
type = ChangeState
value = 2300
triggerall = command = "���щΎR"
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
;�Ⴆ����
[State Hoeru Daichi]
type = ChangeState
value = 2600
triggerall = command = "�Ⴆ����"
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
;MAX�r�Ԃ���
[State Araburu Daichi]
type = ChangeState
value = 2550
triggerall = command = "MAX���̎R"
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
;�r�Ԃ���
[State Araburu Daichi]
type = ChangeState
value = 2500
triggerall = command = "���̎R"
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
;MAX�Í��n���Ɋy���Ƃ�
[State Final Impact]
type = ChangeState
value = 2450
triggerall = command = "MAX�n���Ɋy���Ƃ�"
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
;�Í��n���Ɋy���Ƃ�
[State Final Impact]
type = ChangeState
value = 2400
triggerall = command = "�n���Ɋy���Ƃ�"
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
;MAX���̎R
[State Million Bash Stream]
type = ChangeState
value = 2150
triggerall = command = "MAX���̎R"
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
;���̎R
[State Million Bash Stream]
type = ChangeState
value = 2100
triggerall = command = "���̎R"
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
;���y���Ƃ�
[State Final Impact]
type = ChangeState
value = 2200
triggerall = command = "���y���Ƃ�"
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
;MAX�n���Ɋy���Ƃ�
[State Final Impact]
type = ChangeState
value = 2050
triggerall = command = "MAX�n���Ɋy���Ƃ�"
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
;�n���Ɋy���Ƃ�
[State Final Impact]
type = ChangeState
value = 2000
triggerall = command = "�n���Ɋy���Ƃ�"
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
;DC���󂯐g
[State Jet Counter]
type = ChangeState
value = 1100
triggerall = command = "���󂯐g"
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
;DC�\����
[State Jet Counter]
type = ChangeState
value = 1450
triggerall = command = "�n���k"
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
;�\����
[State Jet Counter]
type = ChangeState
value = 1450
triggerall = command = "�n���k"
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
;�x����
[State Jet Counter]
type = ChangeState
value = 1350
triggerall = command = "�x����"
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
;��ԑ��
[State Jet Counter]
type = ChangeState
value = 1050
triggerall = command = "�V�n�Ԃ�"
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
;�������
[State Jet Counter]
type = ChangeState
value = 1150
triggerall = command = "�������"
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
;DC�������
[State Jet Counter]
type = ChangeState
value = 1250
triggerall = command = "�������"
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
;�������
[State Jet Counter]
type = ChangeState
value = 1250
triggerall = command = "�������"
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
;������
[State Jet Counter]
type = ChangeState
value = 1500
triggerall = command = "������"
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
;�V�n�Ԃ�
[State Jet Counter]
type = ChangeState
value = 1600
triggerall = command = "�V�n�Ԃ�"
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
;DC����O����
[State Jet Counter]
type = ChangeState
value = 1700
triggerall = command = "����O����"
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
;����O����
[State Jet Counter]
type = ChangeState
value = 1700
triggerall = command = "����O����"
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
;DC�������Ԃ�
[State Jet Counter]
type = ChangeState
value = 1400
triggerall = command = "�������Ԃ�"
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
;�������Ԃ�
[State Jet Counter]
type = ChangeState
value = 1400
triggerall = command = "�������Ԃ�"
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
;DC�n���k
[State Jet Counter]
type = ChangeState
value = 1000
triggerall = command = "�n���k"
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
;�n���k
[State Jet Counter]
type = ChangeState
value = 1000
triggerall = command = "�n���k"
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
;DC�؂芔�Ԃ�
[State Jet Counter]
type = ChangeState
value = 1300
triggerall = command = "�؂芔�Ԃ�"
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
;�؂芔�Ԃ�
[State Jet Counter]
type = ChangeState
value = 1300
triggerall = command = "�؂芔�Ԃ�"
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
;DC�_���ݓ���
[State Jet Counter]
type = ChangeState
value = 1200
triggerall = command = "�_���ݓ���"
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
;�_���ݓ���
[State Jet Counter]
type = ChangeState
value = 1200
triggerall = command = "�_���ݓ���"
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
;DC���󂯐g
[State Jet Counter]
type = ChangeState
value = 1100
triggerall = command = "���󂯐g"
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
;���󂯐g
[State Jet Counter]
type = ChangeState
value = 1100
triggerall = command = "���󂯐g"
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
;�K�[�h�L�����Z���ӂ���΂��U��
[State -1, 290]
type = ChangeState
value = 291
triggerall = command = "�ӂ���΂�"
triggerall = power >= 500
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;�ӂ���΂��U��
[State -1, 290]
type = ChangeState
value = 290
triggerall = command = "�ӂ���΂�"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆂ӂ���΂��U��
[State -1, Jump Strong Kick]
type = ChangeState
value = 690
triggerall = command = "�ӂ���΂�"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl


;---------------------------------------------------------------------------
;MAX����
[State -1, Jump Strong Kick]
type = ChangeState
value = 900
triggerall = command = "MAX"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(20) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;�N�C�b�NMAX
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
;�ً}�����
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = command = "�ً}�����"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;�K�[�h�L�����Z���ً}�����
[State -1, 701]
type = ChangeState
value = 701
triggerall = command = "�ً}�����"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
;---------------------------------------------------------------------------
;�ً}���O
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = command = "�ً}���O"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;�K�[�h�L�����Z���ً}���O
[State -1, 700]
type = ChangeState
value = 700
triggerall = command = "�ً}���O"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
;---------------------------------------------------------------------------
;�N�C�b�N�O�]
[State -1, 700]
type = ChangeState
value = 700
triggerall = command = "�ً}���O"
triggerall = power >= 1000
trigger1 = stateno = [200,499]
trigger1 = movecontact
;---------------------------------------------------------------------------
;�_�E�����
[State -1, Taunt]
type = ChangeState
value = 702
triggerall = command = "�ً}���O"
triggerall = alive
trigger1 = stateno = 5050
trigger1 = pos y >=-40
trigger1 = vel y > 0
;---------------------------------------------------------------------------
;Run Fwd
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;���݂��ݓ���
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
;������
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
;�ʒׂ�
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
;���㕥��
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
;������������p���`
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
;�ߋ���������p���`
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
;�������������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X >70
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�ߋ����������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X <=70
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;������������L�b�N
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�ߋ���������L�b�N
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�������������L�b�N1
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X >70
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�ߋ����������L�b�N
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X <=70
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;����
[State -1, Taunt]
type = ChangeState
value = 199
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;���Ⴊ�ݎ�p���`
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
;���Ⴊ�݋��p���`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;���Ⴊ�ݎ�L�b�N
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;���Ⴊ�݋��L�b�N
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆎�p���`
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
;�󒆋��L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
