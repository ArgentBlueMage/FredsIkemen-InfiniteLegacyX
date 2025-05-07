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
name = "���՗���"
command = ~D, DF, F, DF, D, DB, B, x+y
time = 30


[Command]
name = "���ړl���e"
command = ~D, DF, F, D, DF, F, a+b
time = 25


[Command]
name = "�Ɍ��ՙ�"
command = ~D, DF, F, D, DF, F, b
time = 25

[Command]
name = "�Ɍ��ՙ�"
command = ~D, DF, F, D, DF, F, a
time = 25


[Command]
name = "���e��������"
command = ~F, B, DB, D, DF, F, x+y
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "�S�_��"
command = ~D, DF, F, DF, D, DB, B, y
time = 30

[Command]
name = "�S�_��"
command = ~D, DF, F, DF, D, DB, B, x
time = 30


[Command]
name = "�e��������"
command = ~F, B, DB, D, DF, F, y
time = 30

[Command]
name = "�e��������"
command = ~F, B, DB, D, DF, F, x
time = 30


[Command]
name = "EX�ė��r"
command = ~F, DF, D, DB, B, a+b
time = 20

[Command]
name = "�ė��r"
command = ~F, DF, D, DB, B, b
time = 20

[Command]
name = "�ė��r"
command = ~F, DF, D, DB, B, a
time = 20


[Command]
name = "EX�b��"
command = ~F, B, F, x+y

[Command]
name = "�b��"
command = ~F, B, F, y

[Command]
name = "�b��"
command = ~F, B, F, x


[Command]
name = "EX�b��"
command = ~B, D, DB, x+y

[Command]
name = "�b��"
command = ~B, D, DB, y

[Command]
name = "�b��"
command = ~B, D, DB, x


[Command]
name = "EX�򉍎����r"
command = ~20$DB, F, a+b

[Command]
name = "�򉍎����r"
command = ~20$DB, F, b

[Command]
name = "�򉍎����r"
command = ~20$DB, F, a


[Command]
name = "EX�ՙ�"
command = ~F, D, DF, x+y

[Command]
name = "�ՙ�"
command = ~F, D, DF, y

[Command]
name = "�ՙ�"
command = ~F, D, DF, x


[Command]
name = "EX������"
command = ~D, DF, F, x+y

[Command]
name = "������"
command = ~D, DF, F, y

[Command]
name = "������"
command = ~D, DF, F, x


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
name = "���"
command = x+a
time = 1

[Command]
name = "���"
command = z
time = 1


[Command]
name = "HD���[�h"
command = y+a
time = 1


[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holds"
command = /$s
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


[Command]
name = "�f�o�b�O�p�R�}���h"
command = ~D, D, s


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
;---------------------------------------------------------------------------
;MAX�L�����Z�����՗���
[State negathibu anngisshu]
type = ChangeState
value = 2500
triggerall = (command = "���՗���") || (var(38) = 85 && var(40) > 0)
triggerall = (power >= 2000 && var(21) > 0)
trigger1 = stateno = 2000 && animelem = 17,>0 && animelem = 30,<0
trigger2 = stateno = 2100 && movehit
trigger3 = stateno = 2205 && movehit

;---------------------------------------------------------------------------
;���՗���
[State negathibu anngisshu]
type = ChangeState
value = 2500
triggerall = (command = "���՗���") || (var(38) = 85 && var(40) > 0)
triggerall = statetype != A
triggerall = (power >= 3000 && var(20) >= 1000) || (power >= 2000 && var(21) > 0)
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && animelem = 3,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 440 && animelem = 4,<=0

;HD�L�����Z��
trigger12= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger12= var(21) > 0
trigger13= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger13= var(21) > 0
trigger14= stateno = 1100 && movecontact
trigger14= var(21) > 0
trigger15= stateno = 1150 && movecontact
trigger15= var(21) > 0
trigger16= stateno = 1151 && movecontact
trigger16= var(21) > 0
trigger17= stateno = 1311 && movecontact = 1
trigger17= var(21) > 0
trigger18= stateno = 1361 && movecontact = 1
trigger18= var(21) > 0
trigger19= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger19= var(21) > 0
trigger20= stateno = 1605 && movecontact && animelem = 32,<0
trigger20= var(21) > 0

;HD�ʏ�Z�������L�����Z��
trigger21= stateno = [200,499]
trigger21= movecontact
trigger21= var(21) > 0






;---------------------------------------------------------------------------
;���ړl���e
[State negathibu anngisshu]
type = ChangeState
value = 2200
triggerall = (command = "���ړl���e") || (var(38) = 80 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && animelem = 3,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 440 && animelem = 4,<=0

;�X�[�p�[�L�����Z��
trigger12= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1151 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0
trigger17= stateno = 1311 && movehit = 1
trigger17= var(20) >= 500
trigger17= var(21) = 0
trigger18= stateno = 1361 && movehit = 1
trigger18= var(20) >= 500
trigger18= var(21) = 0
trigger19= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger19= var(20) >= 500
trigger19= var(21) = 0
trigger20= stateno = 1605 && movehit && animelem = 32,<0
trigger20= var(20) >= 500
trigger20= var(21) = 0

;HD�L�����Z��
trigger21= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger21= var(21) > 0
trigger22= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger22= var(21) > 0
trigger23= stateno = 1100 && movecontact
trigger23= var(21) > 0
trigger24= stateno = 1150 && movecontact
trigger24= var(21) > 0
trigger25= stateno = 1151 && movecontact
trigger25= var(21) > 0
trigger26= stateno = 1311 && movecontact = 1
trigger26= var(21) > 0
trigger27= stateno = 1361 && movecontact = 1
trigger27= var(21) > 0
trigger28= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger28= var(21) > 0
trigger29= stateno = 1605 && movecontact && animelem = 32,<0
trigger29= var(21) > 0

;HD�ʏ�Z�������L�����Z��
trigger30= stateno = [200,499]
trigger30= movecontact
trigger30= var(21) > 0



;---------------------------------------------------------------------------
;�Ɍ��ՙ�
[State negathibu anngisshu]
type = ChangeState
value = 2100
triggerall = (command = "�Ɍ��ՙ�") || (var(38) = 75 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && animelem = 3,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 440 && animelem = 4,<=0

;�X�[�p�[�L�����Z��
trigger12= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1151 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0
trigger17= stateno = 1311 && movehit = 1
trigger17= var(20) >= 500
trigger17= var(21) = 0
trigger18= stateno = 1361 && movehit = 1
trigger18= var(20) >= 500
trigger18= var(21) = 0
trigger19= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger19= var(20) >= 500
trigger19= var(21) = 0
trigger20= stateno = 1605 && movehit && animelem = 32,<0
trigger20= var(20) >= 500
trigger20= var(21) = 0

;HD�L�����Z��
trigger21= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger21= var(21) > 0
trigger22= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger22= var(21) > 0
trigger23= stateno = 1100 && movecontact
trigger23= var(21) > 0
trigger24= stateno = 1150 && movecontact
trigger24= var(21) > 0
trigger25= stateno = 1151 && movecontact
trigger25= var(21) > 0
trigger26= stateno = 1311 && movecontact = 1
trigger26= var(21) > 0
trigger27= stateno = 1361 && movecontact = 1
trigger27= var(21) > 0
trigger28= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger28= var(21) > 0
trigger29= stateno = 1605 && movecontact && animelem = 32,<0
trigger29= var(21) > 0


;HD�ʏ�Z�������L�����Z��
trigger30= stateno = [200,499]
trigger30= movecontact
trigger30= var(21) > 0


;---------------------------------------------------------------------------
;���e��������
[State negathibu anngisshu]
type = ChangeState
value = 2000
triggerall = (command = "���e��������") || (var(38) = 70 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && animelem = 3,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 440 && animelem = 4,<=0

;�X�[�p�[�L�����Z��
trigger12= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1151 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0
trigger17= stateno = 1311 && movehit = 1
trigger17= var(20) >= 500
trigger17= var(21) = 0
trigger18= stateno = 1361 && movehit = 1
trigger18= var(20) >= 500
trigger18= var(21) = 0
trigger19= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger19= var(20) >= 500
trigger19= var(21) = 0
trigger20= stateno = 1605 && movehit && animelem = 32,<0
trigger20= var(20) >= 500
trigger20= var(21) = 0

;HD�L�����Z��
trigger21= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger21= var(21) > 0
trigger22= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger22= var(21) > 0
trigger23= stateno = 1100 && movecontact
trigger23= var(21) > 0
trigger24= stateno = 1150 && movecontact
trigger24= var(21) > 0
trigger25= stateno = 1151 && movecontact
trigger25= var(21) > 0
trigger26= stateno = 1311 && movecontact = 1
trigger26= var(21) > 0
trigger27= stateno = 1361 && movecontact = 1
trigger27= var(21) > 0
trigger28= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger28= var(21) > 0
trigger29= stateno = 1605 && movecontact && animelem = 32,<0
trigger29= var(21) > 0


;HD�ʏ�Z�������L�����Z��
trigger30= stateno = [200,499]
trigger30= movecontact
trigger30= var(21) > 0

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;�S�_��
[State negathibu anngisshu]
type = ChangeState
value = 1600
triggerall = (command = "�S�_��") || (var(38) = 65 && var(40) > 0)
triggerall = statetype != A
triggerall = enemynear,statetype = S
triggerall = p2bodydist x <= 30
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && animelem = 3,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 440 && animelem = 4,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1151 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0
trigger17= stateno = 1311 && movehit = 1
trigger17= var(20) >= 500
trigger17= var(21) = 0
trigger18= stateno = 1361 && movehit = 1
trigger18= var(20) >= 500
trigger18= var(21) = 0
trigger19= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger19= var(20) >= 500
trigger19= var(21) = 0
trigger20= stateno = 160500 && movehit && animelem = 32,<0
trigger20= var(20) >= 500
trigger20= var(21) = 0

;HD�L�����Z��
trigger21= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger21= var(21) > 0
trigger22= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger22= var(21) > 0
trigger23= stateno = 1100 && movecontact
trigger23= var(21) > 0
trigger24= stateno = 1150 && movecontact
trigger24= var(21) > 0
trigger25= stateno = 1151 && movecontact
trigger25= var(21) > 0
trigger26= stateno = 1311 && movecontact = 1
trigger26= var(21) > 0
trigger27= stateno = 1361 && movecontact = 1
trigger27= var(21) > 0
trigger28= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger28= var(21) > 0
trigger29= stateno = 160500 && movecontact && animelem = 32,<0
trigger29= var(21) > 0


;HD�ʏ�Z�������L�����Z��
trigger30= stateno = [200,499]
trigger30= movecontact
trigger30= var(21) > 0

;---------------------------------------------------------------------------
;�e��������
[State negathibu anngisshu]
type = ChangeState
value = 1500
triggerall = (command = "�e��������") || (var(38) = 60 && var(40) > 0)
triggerall = statetype != A
triggerall = numhelper(1510) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && animelem = 3,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 440 && animelem = 4,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1151 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0
trigger17= stateno = 1311 && movehit = 1
trigger17= var(20) >= 500
trigger17= var(21) = 0
trigger18= stateno = 1361 && movehit = 1
trigger18= var(20) >= 500
trigger18= var(21) = 0
trigger19= stateno = 150000 && animelem = 17,>0 && animelem = 23,<0
trigger19= var(20) >= 500
trigger19= var(21) = 0
trigger20= stateno = 1605 && movehit && animelem = 32,<0
trigger20= var(20) >= 500
trigger20= var(21) = 0

;HD�L�����Z��
trigger21= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger21= var(21) > 0
trigger22= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger22= var(21) > 0
trigger23= stateno = 1100 && movecontact
trigger23= var(21) > 0
trigger24= stateno = 1150 && movecontact
trigger24= var(21) > 0
trigger25= stateno = 1151 && movecontact
trigger25= var(21) > 0
trigger26= stateno = 1311 && movecontact = 1
trigger26= var(21) > 0
trigger27= stateno = 1361 && movecontact = 1
trigger27= var(21) > 0
trigger28= stateno = 150000 && animelem = 17,>0 && animelem = 23,<0
trigger28= var(21) > 0
trigger29= stateno = 1605 && movecontact && animelem = 32,<0
trigger29= var(21) > 0


;HD�ʏ�Z�������L�����Z��
trigger30= stateno = [200,499]
trigger30= movecontact
trigger30= var(21) > 0


;---------------------------------------------------------------------------
;EX�ė��r
[State negathibu anngisshu]
type = ChangeState
value = 1450
triggerall = (command = "EX�ė��r") || (var(38) = 55 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && animelem = 3,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 440 && animelem = 4,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1151 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0
trigger17= stateno = 1311 && movehit = 1
trigger17= var(20) >= 500
trigger17= var(21) = 0
trigger18= stateno = 1361 && movehit = 1
trigger18= var(20) >= 500
trigger18= var(21) = 0
trigger19= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger19= var(20) >= 500
trigger19= var(21) = 0
trigger20= stateno = 1605 && movehit && animelem = 32,<0
trigger20= var(20) >= 500
trigger20= var(21) = 0

;HD�L�����Z��
trigger21= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger21= var(21) > 0
trigger22= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger22= var(21) > 0
trigger23= stateno = 1100 && movecontact
trigger23= var(21) > 0
trigger24= stateno = 1150 && movecontact
trigger24= var(21) > 0
trigger25= stateno = 1151 && movecontact
trigger25= var(21) > 0
trigger26= stateno = 1311 && movecontact = 1
trigger26= var(21) > 0
trigger27= stateno = 1361 && movecontact = 1
trigger27= var(21) > 0
trigger28= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger28= var(21) > 0
trigger29= stateno = 1605 && movecontact && animelem = 32,<0
trigger29= var(21) > 0


;HD�ʏ�Z�������L�����Z��
trigger30= stateno = [200,499]
trigger30= movecontact
trigger30= var(21) > 0


;---------------------------------------------------------------------------
;�ė��r
[State negathibu anngisshu]
type = ChangeState
value = 1400
triggerall = (command = "�ė��r") || (var(38) = 50 && var(40) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && animelem = 3,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 440 && animelem = 4,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1151 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0
trigger17= stateno = 1311 && movehit = 1
trigger17= var(20) >= 500
trigger17= var(21) = 0
trigger18= stateno = 1361 && movehit = 1
trigger18= var(20) >= 500
trigger18= var(21) = 0
trigger19= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger19= var(20) >= 500
trigger19= var(21) = 0
trigger20= stateno = 1605 && movehit && animelem = 32,<0
trigger20= var(20) >= 500
trigger20= var(21) = 0

;HD�L�����Z��
trigger21= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger21= var(21) > 0
trigger22= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger22= var(21) > 0
trigger23= stateno = 1100 && movecontact
trigger23= var(21) > 0
trigger24= stateno = 1150 && movecontact
trigger24= var(21) > 0
trigger25= stateno = 1151 && movecontact
trigger25= var(21) > 0
trigger26= stateno = 1311 && movecontact = 1
trigger26= var(21) > 0
trigger27= stateno = 1361 && movecontact = 1
trigger27= var(21) > 0
trigger28= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger28= var(21) > 0
trigger29= stateno = 1605 && movecontact && animelem = 32,<0
trigger29= var(21) > 0


;HD�ʏ�Z�������L�����Z��
trigger30= stateno = [200,499]
trigger30= movecontact
trigger30= var(21) > 0


;---------------------------------------------------------------------------
;EX�b��
[State negathibu anngisshu]
type = ChangeState
value = 1350
triggerall = (command = "EX�b��") || (var(38) = 45 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && animelem = 3,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 440 && animelem = 4,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1151 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0
trigger17= stateno = 1311 && movehit = 1
trigger17= var(20) >= 500
trigger17= var(21) = 0
trigger18= stateno = 136100 && movehit = 1
trigger18= var(20) >= 500
trigger18= var(21) = 0
trigger19= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger19= var(20) >= 500
trigger19= var(21) = 0
trigger20= stateno = 1605 && movehit && animelem = 32,<0
trigger20= var(20) >= 500
trigger20= var(21) = 0

;HD�L�����Z��
trigger21= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger21= var(21) > 0
trigger22= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger22= var(21) > 0
trigger23= stateno = 1100 && movecontact
trigger23= var(21) > 0
trigger24= stateno = 1150 && movecontact
trigger24= var(21) > 0
trigger25= stateno = 1151 && movecontact
trigger25= var(21) > 0
trigger26= stateno = 1311 && movecontact = 1
trigger26= var(21) > 0
trigger27= stateno = 136100 && movecontact = 1
trigger27= var(21) > 0
trigger28= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger28= var(21) > 0
trigger29= stateno = 1605 && movecontact && animelem = 32,<0
trigger29= var(21) > 0


;HD�ʏ�Z�������L�����Z��
trigger30= stateno = [200,499]
trigger30= movecontact
trigger30= var(21) > 0


;---------------------------------------------------------------------------
;�b��
[State negathibu anngisshu]
type = ChangeState
value = 1300
triggerall = (command = "�b��") || (var(38) = 40 && var(40) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && animelem = 3,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 440 && animelem = 4,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1151 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0
trigger17= stateno = 131100 && movehit = 1
trigger17= var(20) >= 500
trigger17= var(21) = 0
trigger18= stateno = 1361 && movehit = 1
trigger18= var(20) >= 500
trigger18= var(21) = 0
trigger19= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger19= var(20) >= 500
trigger19= var(21) = 0
trigger20= stateno = 1605 && movehit && animelem = 32,<0
trigger20= var(20) >= 500
trigger20= var(21) = 0

;HD�L�����Z��
trigger21= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger21= var(21) > 0
trigger22= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger22= var(21) > 0
trigger23= stateno = 1100 && movecontact
trigger23= var(21) > 0
trigger24= stateno = 1150 && movecontact
trigger24= var(21) > 0
trigger25= stateno = 1151 && movecontact
trigger25= var(21) > 0
trigger26= stateno = 131100 && movecontact = 1
trigger26= var(21) > 0
trigger27= stateno = 1361 && movecontact = 1
trigger27= var(21) > 0
trigger28= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger28= var(21) > 0
trigger29= stateno = 1605 && movecontact && animelem = 32,<0
trigger29= var(21) > 0


;HD�ʏ�Z�������L�����Z��
trigger30= stateno = [200,499]
trigger30= movecontact
trigger30= var(21) > 0


;---------------------------------------------------------------------------
;EX�򉍎����r
[State negathibu anngisshu]
type = ChangeState
value = 1250
triggerall = (command = "EX�򉍎����r") || (var(38) = 35 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && animelem = 3,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 440 && animelem = 4,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1151 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0
trigger17= stateno = 1311 && movehit = 1
trigger17= var(20) >= 500
trigger17= var(21) = 0
trigger18= stateno = 1361 && movehit = 1
trigger18= var(20) >= 500
trigger18= var(21) = 0
trigger19= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger19= var(20) >= 500
trigger19= var(21) = 0
trigger20= stateno = 1605 && movehit && animelem = 32,<0
trigger20= var(20) >= 500
trigger20= var(21) = 0

;HD�L�����Z��
trigger21= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger21= var(21) > 0
trigger22= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger22= var(21) > 0
trigger23= stateno = 1100 && movecontact
trigger23= var(21) > 0
trigger24= stateno = 1150 && movecontact
trigger24= var(21) > 0
trigger25= stateno = 1151 && movecontact
trigger25= var(21) > 0
trigger26= stateno = 1311 && movecontact = 1
trigger26= var(21) > 0
trigger27= stateno = 1361 && movecontact = 1
trigger27= var(21) > 0
trigger28= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger28= var(21) > 0
trigger29= stateno = 1605 && movecontact && animelem = 32,<0
trigger29= var(21) > 0


;HD�ʏ�Z�������L�����Z��
trigger30= stateno = [200,499]
trigger30= movecontact
trigger30= var(21) > 0


;---------------------------------------------------------------------------
;�򉍎����r
[State negathibu anngisshu]
type = ChangeState
value = 1200
triggerall = (command = "�򉍎����r") || (var(38) = 30 && var(40) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && animelem = 3,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 440 && animelem = 4,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1151 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0
trigger17= stateno = 1311 && movehit = 1
trigger17= var(20) >= 500
trigger17= var(21) = 0
trigger18= stateno = 1361 && movehit = 1
trigger18= var(20) >= 500
trigger18= var(21) = 0
trigger19= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger19= var(20) >= 500
trigger19= var(21) = 0
trigger20= stateno = 1605 && movehit && animelem = 32,<0
trigger20= var(20) >= 500
trigger20= var(21) = 0

;HD�L�����Z��
trigger21= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger21= var(21) > 0
trigger22= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger22= var(21) > 0
trigger23= stateno = 1100 && movecontact
trigger23= var(21) > 0
trigger24= stateno = 1150 && movecontact
trigger24= var(21) > 0
trigger25= stateno = 1151 && movecontact
trigger25= var(21) > 0
trigger26= stateno = 1311 && movecontact = 1
trigger26= var(21) > 0
trigger27= stateno = 1361 && movecontact = 1
trigger27= var(21) > 0
trigger28= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger28= var(21) > 0
trigger29= stateno = 1605 && movecontact && animelem = 32,<0
trigger29= var(21) > 0


;HD�ʏ�Z�������L�����Z��
trigger30= stateno = [200,499]
trigger30= movecontact
trigger30= var(21) > 0


;---------------------------------------------------------------------------
;EX�ՙ�
[State negathibu anngisshu]
type = ChangeState
value = 1150
triggerall = (command = "EX�ՙ�") || (var(38) = 25 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && animelem = 3,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 440 && animelem = 4,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 115000 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 115100 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0
trigger17= stateno = 1311 && movehit = 1
trigger17= var(20) >= 500
trigger17= var(21) = 0
trigger18= stateno = 1361 && movehit = 1
trigger18= var(20) >= 500
trigger18= var(21) = 0
trigger19= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger19= var(20) >= 500
trigger19= var(21) = 0
trigger20= stateno = 1605 && movehit && animelem = 32,<0
trigger20= var(20) >= 500
trigger20= var(21) = 0

;HD�L�����Z��
trigger21= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger21= var(21) > 0
trigger22= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger22= var(21) > 0
trigger23= stateno = 1100 && movecontact
trigger23= var(21) > 0
trigger24= stateno = 115000 && movecontact
trigger24= var(21) > 0
trigger25= stateno = 115100 && movecontact
trigger25= var(21) > 0
trigger26= stateno = 1311 && movecontact = 1
trigger26= var(21) > 0
trigger27= stateno = 1361 && movecontact = 1
trigger27= var(21) > 0
trigger28= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger28= var(21) > 0
trigger29= stateno = 1605 && movecontact && animelem = 32,<0
trigger29= var(21) > 0


;HD�ʏ�Z�������L�����Z��
trigger30= stateno = [200,499]
trigger30= movecontact
trigger30= var(21) > 0

;---------------------------------------------------------------------------
;�ՙ�
[State negathibu anngisshu]
type = ChangeState
value = 1100
triggerall = (command = "�ՙ�") || (var(38) = 20 && var(40) > 0)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && animelem = 3,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 440 && animelem = 4,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 110000 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1151 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0
trigger17= stateno = 1311 && movehit = 1
trigger17= var(20) >= 500
trigger17= var(21) = 0
trigger18= stateno = 1361 && movehit = 1
trigger18= var(20) >= 500
trigger18= var(21) = 0
trigger19= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger19= var(20) >= 500
trigger19= var(21) = 0
trigger20= stateno = 1605 && movehit && animelem = 32,<0
trigger20= var(20) >= 500
trigger20= var(21) = 0

;HD�L�����Z��
trigger21= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger21= var(21) > 0
trigger22= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger22= var(21) > 0
trigger23= stateno = 110000 && movecontact
trigger23= var(21) > 0
trigger24= stateno = 1150 && movecontact
trigger24= var(21) > 0
trigger25= stateno = 1151 && movecontact
trigger25= var(21) > 0
trigger26= stateno = 1311 && movecontact = 1
trigger26= var(21) > 0
trigger27= stateno = 1361 && movecontact = 1
trigger27= var(21) > 0
trigger28= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger28= var(21) > 0
trigger29= stateno = 1605 && movecontact && animelem = 32,<0
trigger29= var(21) > 0


;HD�ʏ�Z�������L�����Z��
trigger30= stateno = [200,499]
trigger30= movecontact
trigger30= var(21) > 0



;---------------------------------------------------------------------------
;EX������
[State negathibu anngisshu]
type = ChangeState
value = 1050
triggerall = (command = "EX������") || (var(38) = 15 && var(40) > 0)
triggerall = statetype != A
triggerall = power >= 1000
triggerall = numhelper(1010) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && animelem = 3,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 440 && animelem = 4,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 105000 && animelem = 5,>0 && animelem = 19,<0
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1151 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0
trigger17= stateno = 1311 && movehit = 1
trigger17= var(20) >= 500
trigger17= var(21) = 0
trigger18= stateno = 1361 && movehit = 1
trigger18= var(20) >= 500
trigger18= var(21) = 0
trigger19= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger19= var(20) >= 500
trigger19= var(21) = 0
trigger20= stateno = 1605 && movehit && animelem = 32,<0
trigger20= var(20) >= 500
trigger20= var(21) = 0

;HD�L�����Z��
trigger21= stateno = 1000 && animelem = 7,>0 && animelem = 10,<0
trigger21= var(21) > 0
trigger22= stateno = 105000 && animelem = 5,>0 && animelem = 19,<0
trigger22= var(21) > 0
trigger23= stateno = 1100 && movecontact
trigger23= var(21) > 0
trigger24= stateno = 1150 && movecontact
trigger24= var(21) > 0
trigger25= stateno = 1151 && movecontact
trigger25= var(21) > 0
trigger26= stateno = 1311 && movecontact = 1
trigger26= var(21) > 0
trigger27= stateno = 1361 && movecontact = 1
trigger27= var(21) > 0
trigger28= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger28= var(21) > 0
trigger29= stateno = 1605 && movecontact && animelem = 32,<0
trigger29= var(21) > 0


;HD�ʏ�Z�������L�����Z��
trigger30= stateno = [200,499]
trigger30= movecontact
trigger30= var(21) > 0


;---------------------------------------------------------------------------
;������
[State negathibu anngisshu]
type = ChangeState
value = 1000
triggerall = (command = "������") || (var(38) = 10 && var(40) > 0)
triggerall = statetype != A
triggerall = numhelper(1010) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && animelem = 3,>=0
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 400 && animelem = 3,>=0
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && animelem = 3,>=0
trigger10= stateno = 290 && animelem = 6,>=0
trigger11= stateno = 440 && animelem = 4,<=0

;�h���C�u�L�����Z��
trigger12= stateno = 100000 && animelem = 7,>0 && animelem = 10,<0
trigger12= var(20) >= 500
trigger12= var(21) = 0
trigger13= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger13= var(20) >= 500
trigger13= var(21) = 0
trigger14= stateno = 1100 && movehit
trigger14= var(20) >= 500
trigger14= var(21) = 0
trigger15= stateno = 1150 && movehit
trigger15= var(20) >= 500
trigger15= var(21) = 0
trigger16= stateno = 1151 && movehit
trigger16= var(20) >= 500
trigger16= var(21) = 0
trigger17= stateno = 1311 && movehit = 1
trigger17= var(20) >= 500
trigger17= var(21) = 0
trigger18= stateno = 1361 && movehit = 1
trigger18= var(20) >= 500
trigger18= var(21) = 0
trigger19= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger19= var(20) >= 500
trigger19= var(21) = 0
trigger20= stateno = 1605 && movehit && animelem = 32,<0
trigger20= var(20) >= 500
trigger20= var(21) = 0

;HD�L�����Z��
trigger21= stateno = 100000 && animelem = 7,>0 && animelem = 10,<0
trigger21= var(21) > 0
trigger22= stateno = 1050 && animelem = 5,>0 && animelem = 19,<0
trigger22= var(21) > 0
trigger23= stateno = 1100 && movecontact
trigger23= var(21) > 0
trigger24= stateno = 1150 && movecontact
trigger24= var(21) > 0
trigger25= stateno = 1151 && movecontact
trigger25= var(21) > 0
trigger26= stateno = 1311 && movecontact = 1
trigger26= var(21) > 0
trigger27= stateno = 1361 && movecontact = 1
trigger27= var(21) > 0
trigger28= stateno = 1500 && animelem = 17,>0 && animelem = 23,<0
trigger28= var(21) > 0
trigger29= stateno = 1605 && movecontact && animelem = 32,<0
trigger29= var(21) > 0


;HD�ʏ�Z�������L�����Z��
trigger30= stateno = [200,499]
trigger30= movecontact
trigger30= var(21) > 0


;===========================================================================
;---------------------------------------------------------------------------


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
;�K�[�L�����ӂ���΂��U��
[State ga-kyannhuttobasikougeki]
type = ChangeState
value = 299
triggerall = command = "�ӂ���΂�"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151


;---------------------------------------------------------------------------
;�󒆂ӂ���΂��U��
[State kuuchuuhuttobasikougeki]
type = ChangeState
value = 690
triggerall = command = "�ӂ���΂�"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;�ӂ���΂��U��
[State huttobasikougeki]
type = ChangeState
value = 290
triggerall = command = "�ӂ���΂�"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�K�[�L�������킵�ړ��E��
[State ga-kyannkawasiidou usiro]
type = ChangeState
value = 701
triggerall = command = "���"
triggerall = command = "holdback"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;�K�[�L�������킵�ړ��E�O
[State ga-kyannkawasiidou mae]
type = ChangeState
value = 700
triggerall = command = "���"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;���킵�ړ��E��
[State kawasiidou usiro]
type = ChangeState
value = 701
triggerall = command = "���"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;���킵�ړ��E�O
[State kawasiidou mae]
type = ChangeState
value = 700
triggerall = command = "���"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�_�E�����
[State daunkaihi]
type = ChangeState
value = 702
triggerall = var(9) >= 1
triggerall = alive
triggerall = pos y >= 0
trigger1 = stateno = 5050
trigger2 = stateno = 5071
trigger3 = stateno = 5100


;---------------------------------------------------------------------------
;HD���[�h����
[State huttobasikougeki]
type = ChangeState
value = 900
triggerall = command = "HD���[�h"
triggerall = statetype != A
triggerall = var(20) >= 1000
trigger1 = ctrl

;---------------------------------------------------------------------------
;HD���[�h�����E��
[State huttobasikougeki]
type = ChangeState
value = 901
triggerall = command = "HD���[�h"
triggerall = statetype = A
triggerall = var(20) >= 1000
trigger1 = stateno = 50

;---------------------------------------------------------------------------
;HD���[�h�����E�L�����Z��
[State huttobasikougeki]
type = ChangeState
value = 902
triggerall = command = "HD���[�h"
triggerall = statetype != A
triggerall = var(20) >= 1000
triggerall = stateno = [200,499]
trigger1 = movecontact


;---------------------------------------------------------------------------
;��{�w����
[State deddo fo-ru]
type = ChangeState
value = 800
triggerall = command = "y" || command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 5
trigger1 = p2statetype != A
trigger1 = p2movetype != H

;===========================================================================

;---------------------------------------------------------------------------
;�����R��
[State tachijakupanchi]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 210 && animelem = 4,>=0
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 400 && animelem = 3,>=0
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && animelem = 5,>=0


;---------------------------------------------------------------------------
;������p���`
[State tachijakupanchi]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 4,>=0
trigger3 = stateno = 400 && animelem = 4,>=0
trigger4 = stateno = 430 && animelem = 4,>=0

;---------------------------------------------------------------------------
;�ߋ����������p���`
[State tachikyoupanchi]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X <=55 || p2bodydist x <= 10
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�������������p���`
[State tachikyoupanchi]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;������L�b�N
[State tachijakukikku]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�������������L�b�N
[State ennkyoritachikyoukikku]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;����
[State chouhatu]
type = ChangeState
value = 199
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;���Ⴊ�ݎ�p���`
[State tachijakupanchi]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 4,>=0
trigger3 = stateno = 400 && animelem = 4,>=0
trigger4 = stateno = 430 && animelem = 4,>=0

;---------------------------------------------------------------------------
;���Ⴊ�݋��p���`
[State tachijakupanchi]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;���Ⴊ�ݎ�L�b�N
[State shagamijakukikku]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 430 && animelem = 4,>=0

;---------------------------------------------------------------------------
;���Ⴊ�݋��L�b�N
[State shagamikyoukikku]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆎�p���`
[State kuuchuujakupanchi]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;�󒆋��p���`
[State kuuchuukyoupanchi]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;Jump Strong Kick
;�󒆋��L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger2 = stateno = 901
trigger2 = ctrl = 1
