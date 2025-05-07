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

;���X�e�B�b�N�p�L�[�z�u
;[Remap]
;x = a
;y = y
;z = b
;a = x
;b = z
;c = c
;s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;------------------------------------------------------------------------------
;AI�p�R�}���h

[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = U, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, D, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1

[Command]
name = "CPU26"
command = D, D, D
time = 1

[Command]
name = "CPU27"
command = F, F, F
time = 1

[Command]
name = "CPU28"
command = U, U, U
time = 1

[Command]
name = "CPU29"
command = U, U, B, B
time = 1

[Command]
name = "CPU30"
command = D, D, F, F
time = 1

[Command]
name = "CPU31"
command = U, D, F, U, D
time = 1

[Command]
name = "CPU32"
command = U, B, F, U, D
time = 1

[Command]
name = "CPU33"
command = U, D, D, U, D
time = 1

[Command]
name = "CPU34"
command = F, B, U, U, D
time = 1

[Command]
name = "CPU35"
command = U, F, U, B, U, D
time = 1

[Command]
name = "CPU36"
command = U, D, B, U, D
time = 1

[Command]
name = "CPU37"
command = F, F, B, U, D
time = 1

[Command]
name = "CPU38"
command = U, D, U, U, D
time = 1

[Command]
name = "CPU39"
command = F, B, B, U, D
time = 1

[Command]
name = "CPU40"
command = F, F, B, B, U, D
time = 1

[Command]
name = "CPU41"
command = U, U, F, U, D
time = 1

[Command]
name = "CPU42"
command = U, B, B, U, D
time = 1

[Command]
name = "CPU43"
command = U, B, F, F, U, D
time = 1

[Command]
name = "CPU44"
command = U, F, B, U, U, D
time = 1

[Command]
name = "CPU45"
command = U, B, F, U, U, D
time = 1

[Command]
name = "CPU46"
command = U, B, B, B, U, D
time = 1

[Command]
name = "CPU47"
command = U, D, B, F, U, D
time = 1

[Command]
name = "CPU48"
command = U, D, B, D, U, D
time = 1

[Command]
name = "CPU49"
command = U, D, F, U, U, D
time = 1

[Command]
name = "CPU50"
command = U, D, U, B, U, D
time = 1

;-| Super Motions |--------------------------------------------------------


[Command]
name = "���I�i�u���[�h"
command = ~D, B, D, F, x+y
time = 25

[Command]
name = "���I�i�u���[�h_R"
command = ~D, F, D, B, x+y
time = 25

[Command]
name = "�X���b�V���Z�C�o�["
command = ~D, B, D, F, b
time = 25

[Command]
name = "�X���b�V���Z�C�o�["
command = ~D, B, D, F, a
time = 25

[Command]
name = "MAXV�X���b�V���["
command = ~D, F, D, B, x+y
time = 25

[Command]
name = "V�X���b�V���["
command = ~D, F, D, B, y
time = 25

[Command]
name = "V�X���b�V���["
command = ~D, F, D, B, x
time = 25


;-| Special Motions |------------------------------------------------------

[Command]
name = "X�L�����o�[EX"
command = ~D, DB, B, x+y

[Command]
name = "X�L�����o�[1"
command = ~D, DB, B, x

[Command]
name = "X�L�����o�[2"
command = ~D, DB, B, y



[Command]
name = "�O�����h�Z�C�o�[EX_D"
command = ~B,F, a+b

[Command]
name = "�O�����h�Z�C�o�[_D"
command = ~B,F, b

[Command]
name = "�O�����h�Z�C�o�[_D"
command = ~B,F, a


[Command]
name = "�O�����h�Z�C�o�[EX"
command = ~20$B,F, a+b

[Command]
name = "�O�����h�Z�C�o�["
command = ~20$B,F, b

[Command]
name = "�O�����h�Z�C�o�["
command = ~20$B,F, a



[Command]
name = "���[���X���b�V���[EX_D"
command = ~D,U, x+y

[Command]
name = "���[���X���b�V���[_D"
command = ~D,U, x

[Command]
name = "���[���X���b�V���[_D"
command = ~D,U, y


[Command]
name = "���[���X���b�V���[EX"
command = ~20$D,$U, x+y

[Command]
name = "���[���X���b�V���["
command = ~20$D,$U, x

[Command]
name = "���[���X���b�V���["
command = ~20$D,$U, y



[Command]
name = "�{���e�b�N�����`���[EX"
command = ~20$B,F, x+y

[Command]
name = "�{���e�b�N�����`���["
command = ~20$B,F, y

[Command]
name = "�{���e�b�N�����`���["
command = ~20$B,F, x



[Command]
name = "�C�������O���eEX"
command = ~D, DB, B, a+b

[Command]
name = "�C�������O���eA"
command = ~D, DB, B, a

[Command]
name = "�C�������O���eB"
command = ~D, DB, B, b


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

[Command]
name = "hold_s"
command = /$s
time = 1



; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;AI
[State -1, AI]
type = VarSet
triggerall = var(59) <= 0
triggerall = RoundState = 2
triggerall = ctrl || movetype != I
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
trigger17  = command = "CPU17"
trigger18  = command = "CPU18"
trigger19  = command = "CPU19"
trigger20  = command = "CPU20"
trigger21  = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
trigger26  = command = "CPU26"
trigger27  = command = "CPU27"
trigger28  = command = "CPU28"
trigger29  = command = "CPU29"
trigger30  = command = "CPU30"
trigger31  = command = "CPU31"
trigger32  = command = "CPU32"
trigger33  = command = "CPU33"
trigger34  = command = "CPU34"
trigger35  = command = "CPU35"
trigger36  = command = "CPU36"
trigger37  = command = "CPU37"
trigger38  = command = "CPU38"
trigger39  = command = "CPU39"
trigger40  = command = "CPU40"
trigger41  = command = "CPU41"
trigger42  = command = "CPU42"
trigger43  = command = "CPU43"
trigger44  = command = "CPU44"
trigger45  = command = "CPU45"
trigger46  = command = "CPU46"
trigger47  = command = "CPU47"
trigger48  = command = "CPU48"
trigger49  = command = "CPU49"
trigger50  = command = "CPU50"
;trigger51  = !isHelper ;��ԍ��́g ; �h���͂����Ə펞�`�h�N��
var(59) = 1 ;AI Level
         ;���̐�����ς��鎖�ŁAAI�̋������ς��܂��B
         ;[0:�`�h����]  [1:�΃v���C���[���x��]  [2:�΂`�h���x��]
         ;�΂o���샌�x���c������:�����i�΋�͂���j�@�Ԃ���:����
         ;�΂`�h���x���c�c������:��m���ł���@�@�@�@�Ԃ���:���C�t�ɗ]�T�����鎞�ɂ�������

;�`�h�p�K�[�h���x��
[State -1]
type = varset
triggerall = var(36) = 0
trigger1 = 1
var(36) = 1 ;���̐�����ς��鎖�ł`�h�̃K�[�h�̍d�����ς��܂��B
            ;0  ���S�ɂl�t�f�d�m�{�̗���B����ł����\�K�[�h����B
            ;1�@��ѓ���炢�Ȃ�A�����ƃK�[�h���郌�x���B
            ;2  ����Ȃ�ɃK�[�h���Ă����B�ł������ƒn���ɋ�炤�B
            ;
            ;��AI���z�肵�Ă�Ȃ�A1�ȏ�ɂ͂��Ƃ��������������ƁB
            ;����Ȃ��ƁA���肪���������݂܂���AI�Ƃ�����p�^�[���Ƀn�}��\����B
            ;�^�b�O��Ƃ��}�W�Ńt���{�b�R�Ȃ�ŁA�����Ɛݒ肵�ĂˁB

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;�`�h����
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;�`�h����p�f�o�b�N
[State -3]
type = DisplayToClipboard
trigger1 = 1
text = "                               BDX:%d, DX:%d, FD:%d V18:%d V14:%d"
params = floor(P2BodyDist X), floor(P2Dist X), FrontEdgeBodyDist, var(18), var(14)


;�g���K�[EnemyNear�̔��ʐ؂�ւ��p
[State -3, AI]
Type = VarSet
Trigger1 = NumEnemy = 1
Trigger2 = NumEnemy = 2
Trigger2 = Enemynear,Life > 0
var(53) = 0
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

;�g���K�[EnemyNear�̔��ʐ؂�ւ��p
[State -3, AI]
Type = VarSet
Trigger1 = NumEnemy > 1
Trigger1 = Enemynear,Life = 0
var(53) = 1            ;simul��p��EnemyNear�̐؂�ւ��������鏈���ł�
                        ;EnemyNear(Var(53))�ƋL�q���邱�ƂŎ������ʂ��܂�
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

;�G�^�b�O���A����Ă���̓G�̈ʒu���f
[State -1]
type = varset
trigger1 = EnemyNear(Var(53)),numpartner
fvar(37) = ifelse(facing = 1,floor(EnemyNear(1),Pos X - Pos X),-floor(EnemyNear(1),Pos X - Pos X))

;��������������������������������������������������������������������������������
; �ǒ[���o�w���p�[(�����Ҏ���)
;��������������������������������������������������������������������������������
[State -3, Center]
Type = Helper
Trigger1 = !NumHelper(8900+id) && !IsHelper && RoundState < 3 && alive
HelperType = Normal
Name = "Center"
ID = 8900+id
pos = 160,524288
PosType = left
facing = 1
StateNo = 8900
KeyCtrl = 1
Ownpal = 0
supermovetime=524288
pausemovetime=524288
persistent = 0
IgnoreHitPause = 1

[State -3]
type=changestate
trigger1= ishelper
trigger1= ishelper(8900+root,id) && stateno != 8900
value=8900

[State -3]
type=changestate
trigger1= ishelper
trigger1= (ishelper(8905+root,id)||ishelper(8906+root,id)) && stateno !=8905
value=8905

[State -3]
type = AssertSpecial
trigger1 = var(59) > 0
flag = noairguard

[State -3]
type = AssertSpecial
trigger1 = NumEnemy <= 1 && var(59) > 0
trigger1 = Enemy(var(53)),P2Dist X < 0
flag = nostandguard
flag2 = nocrouchguard

;��������������������������������������������������������������������������������
; �Δ�ѓ���w���p�[(�~�E����)
;��������������������������������������������������������������������������������
[State -3]
Type = HelPer
Trigger1 = !NumHelper(20000)
HelPerType = normal
Name = "bullet"
StateNo = 20000
ID = 20000
OwnPal = 1
pos = 5, 0
postype = p1
PauseMoveTime = 99999999
SuperMoveTime = 99999999
IgnoreHitPause = 1

;==========================================================================
;--------------------------------------------------------------------------
;���̑�

;�������i�΍�i���ȗ��Ȃ̂ŁA����ŗǂ��̂��͒m���j
[State -1]
type = varset
triggerall = var(47) = 0
trigger1 = !EnemyNear(Var(53)),HitDefAttr = SC, NT,ST,HT
trigger1 = statetype = S && EnemyNear(Var(53)),statetype = S
trigger1 = movetype = H && EnemyNear(Var(53)),movetype = A
trigger1 = (prevstateno = [120,159]) && stateno != [120,159]
var(47) = EnemyNear(Var(53)),stateno

;�󒆉��i�΍�i���ȗ��Ȃ̂ŁA����ŗǂ��̂��͒m���j
[State -1]
type = varset
triggerall = var(47) = 0
triggerall = EnemyNear(Var(53)),movetype = A && EnemyNear(Var(53)),statetype = A
Trigger1 = EnemyNear(Var(53)),Name="millia"
Trigger1 = EnemyNear(Var(53)),StateNo=1500
Trigger2 = EnemyNear(Var(53)),Name="cvscammy"
Trigger2 = EnemyNear(Var(53)),StateNo=1100
var(47) = EnemyNear(Var(53)),stateno

[State -1];���Z�b�g
type = varset
triggerall = var(47) != 0
trigger1 = teammode = turns && roundstate != 2
var(47) = 0

;�������i�΍�E���̂Q�i���ȗ��Ȃ̂ŁA����ŗǂ��̂��͒m���j
[State -1]
type = varset
triggerall = var(46) = 0
triggerall = var(47) != 0 && EnemyNear(Var(53)),stateno != var(47)
triggerall = EnemyNear(Var(53)),prevstateno != var(47)
trigger1 = !EnemyNear(Var(53)),HitDefAttr = SC, NT,ST,HT
trigger1 = statetype = S && EnemyNear(Var(53)),statetype = S
trigger1 = movetype = H && EnemyNear(Var(53)),movetype = A
trigger1 = (prevstateno = [120,159]) && stateno != [120,159]
var(46) = EnemyNear(Var(53)),stateno

;�󒆉��i�΍�i���ȗ��Ȃ̂ŁA����ŗǂ��̂��͒m���j
[State -1]
type = varset
triggerall = var(46) = 0
triggerall = var(47) != 0 && EnemyNear(Var(53)),stateno != var(47)
triggerall = EnemyNear(Var(53)),prevstateno != var(47)
triggerall = EnemyNear(Var(53)),movetype = A && EnemyNear(Var(53)),statetype = A
Trigger1 = EnemyNear(Var(53)),Name="millia"
Trigger1 = EnemyNear(Var(53)),StateNo=1500
Trigger2 = EnemyNear(Var(53)),Name="cvscammy"
Trigger2 = EnemyNear(Var(53)),StateNo=1100
var(46) = EnemyNear(Var(53)),stateno

[State -1];���Z�b�g
type = varset
triggerall = var(46) != 0
trigger1 = teammode = turns && roundstate != 2
var(46) = 0

;�G�����Z���f
[State -1]
type = varset
triggerall = var(48) = 0
trigger1 = EnemyNear(Var(53)),HitDefAttr = SC, NT,ST,HT
trigger1 = EnemyNear(Var(53)),stateno = [1000,4999]
var(48) = EnemyNear(Var(53)),stateno

[State -1];���Z�b�g
type = varset
triggerall = var(48) != 0
trigger1 = teammode = turns && roundstate != 2
var(48) = 0

;�G�����Z���f�E���̂Q
[State -1]
type = varset
triggerall = var(45) = 0
trigger1 = EnemyNear(Var(53)),HitDefAttr = SC, NT,ST,HT
trigger1 = EnemyNear(Var(53)),stateno = [0,999]
var(45) = EnemyNear(Var(53)),stateno

[State -1];���Z�b�g
type = varset
triggerall = var(45) != 0
trigger1 = teammode = turns && roundstate != 2
var(45) = 0

;--

;�G��canrecover�𖳎����邩�ǂ���
[State -2];���d����C�̂Ȃ��A�z�ǂ�(����Ă���Ă�`�h����҂��ܘ_���܂�)
Type = VarSet
TriggerAll = var(50) = 0
Trigger1 = EnemyNear(Var(53)),Name ="Lin" && EnemyNear(Var(53)),AuthorName="ahuron"
Trigger2 = EnemyNear(Var(53)),Name ="Kim Kaphwan" && EnemyNear(Var(53)),AuthorName="ahuron"
Trigger3 = EnemyNear(Var(53)),Name ="Chris" && EnemyNear(Var(53)),AuthorName="ahuron"
Trigger4 = EnemyNear(Var(53)),Name ="Yashiro Nanakase" && EnemyNear(Var(53)),AuthorName="ahuron"
Trigger5 = EnemyNear(Var(53)),Name ="Shermie" && EnemyNear(Var(53)),AuthorName="ahuron"
Trigger6 = EnemyNear(Var(53)),Name ="Asura" && EnemyNear(Var(53)),AuthorName="ahuron"
Trigger7 = EnemyNear(Var(53)),Name ="Yuki" && EnemyNear(Var(53)),AuthorName="ahuron"
Trigger8 = EnemyNear(Var(53)),Name="anna" && EnemyNear(Var(53)),AuthorName="kayui uma"
Trigger9 = EnemyNear(Var(53)),Name="henri" && EnemyNear(Var(53)),AuthorName="kayui uma"
Trigger10= EnemyNear(Var(53)),Name="mora" && EnemyNear(Var(53)),AuthorName="kayui uma"
Trigger11= EnemyNear(Var(53)),Name="saya" && EnemyNear(Var(53)),AuthorName="kayui uma"
Trigger12= EnemyNear(Var(53)),Name="Geese Howard" && EnemyNear(Var(53)),AuthorName="Rin & Bat"
Trigger13= EnemyNear(Var(53)),Name="Nightmare Geese" && EnemyNear(Var(53)),AuthorName="Rin & Bat"
Trigger14= EnemyNear(Var(53)),Name="White" && EnemyNear(Var(53)),AuthorName="Rin & Bat"
Trigger15= EnemyNear(Var(53)),Name="Krizalid-" && EnemyNear(Var(53)),AuthorName="Chin-ya"
Trigger16= EnemyNear(Var(53)),Name="D-yashiro" && EnemyNear(Var(53)),AuthorName="Chin-ya"
Trigger17= EnemyNear(Var(53)),Name="Reak" && EnemyNear(Var(53)),AuthorName="Chin-ya"
Trigger18= EnemyNear(Var(53)),Name="Malin" && EnemyNear(Var(53)),AuthorName="Chin-ya"
Trigger19= EnemyNear(Var(53)),Name="EX_Saishu" && EnemyNear(Var(53)),AuthorName="Chin-ya"
Trigger20= EnemyNear(Var(53)),Name="Reak" && EnemyNear(Var(53)),AuthorName="Chin-ya"
Trigger21= EnemyNear(Var(53)),Name="Weakest_R" && EnemyNear(Var(53)),AuthorName="Chin-ya"
var(50) = 1

;���ۂ�canrecover�𖳎����ꂽ�t���O�B
[State -2];
Type = VarSet
TriggerAll = var(50) = [0,1]
TriggerAll = Enemy,TeamMode = Single || Enemy,TeamMode = Turns
TriggerAll = RoundState = 2
Trigger1 =!EnemyNear(Var(53)),CanRecover
Trigger1 = EnemyNear(Var(53)),PrevStateNo = 5050
Trigger1 = EnemyNear(Var(53)),MoveType != H
var(50) = 2

[State -2]
Type = VarSet
TriggerAll = var(50) != 0
TriggerAll = Enemy,TeamMode = Turns
Trigger1 = RoundState != 2
var(50) = 0

;-----

;�G�s���۔��f(�U����)
[State -1]
Type = VarSet
TriggerAll = var(55) = 0
Trigger1 = roundstate = 2
Trigger1 = EnemyNear(Var(53)),movetype = A && EnemyNear(Var(53)),ctrl = 0
var(55) = 1

;�G�s���۔��f(�U���I���Amovetype = I)
[State -1]
Type = VarSet
TriggerAll = var(55) = 1
Trigger1 = roundstate = 2
Trigger1 = EnemyNear(Var(53)),movetype = I && EnemyNear(Var(53)),ctrl = 0
var(55) = 2

;���Z�b�g
[State -1]
Type = VarSet
TriggerAll = var(55) = [1,2]
Trigger1 = roundstate != 2
Trigger2 = EnemyNear(Var(53)),movetype = H || EnemyNear(Var(53)),ctrl
Trigger3 = EnemyNear(Var(53)),time = 1
var(55) = 0

;-----

;�����߃^�C���J�n
[State -1]
Type = VarSet
TriggerAll = var(52) = 0
Trigger1 = roundstate = 2
Trigger1 = statetype != S
var(52) = 1

[State -1]
Type = VarAdd
TriggerAll = var(52) = [1,19]
TriggerAll = roundstate = 2
Trigger1 = statetype != S
var(52) = 1

;�����߃^�C������
[State -1]
Type = VarSet
TriggerAll = var(52) = 20
TriggerAll = roundstate = 2
Trigger1 = statetype != S
var(52) = 115

;���[���X���b�V���[�g�p�\�c�莞��(100~115�̊�)
[State -1]
Type = VarSet
TriggerAll = var(52) = 115
Trigger1 = statetype = S
var(52) = 114

[State -1]
Type = VarAdd
TriggerAll = var(52) = [101,114]
Trigger1 = 1
var(52) = -1

;�^�C�����Z�b�g
[State -1]
Type = VarSet
TriggerAll = var(52) = [1,20]
Trigger1 = roundstate != 2
Trigger2 = statetype = S
var(52) = 0

[State -1]
Type = VarSet
Trigger1 = var(52) = 100
var(52) = 0

;---------------------------------------------------------------------------
;��ѓ�����

;���W�����v
[State -1]
type=ChangeState
value = 62
triggerall = Var(59) >= 1 && numenemy
triggerall = roundstate=2 && statetype != A
TriggerAll=EnemyNear(Var(53)),Alive
triggerall=P2Dist x = [1,320]
TriggerAll=EnemyNear(Var(53)),MoveType!=H||EnemyNear(Var(53)),stateno<200
TriggerAll=EnemyNear(Var(53)),statetype!=L
TriggerAll=EnemyNear(Var(53)),statetype!=A || EnemyNear(Var(53)),Pos Y>=-30
triggerall=ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall=numhelper(20000)
triggerall= (helper(20000),var(58)/1000000000)%10
triggerall=P2Dist x > 80
Triggerall= random <= 150
Trigger1= EnemyNear(Var(53)),movetype = A && EnemyNear(Var(53)),animtime < -10

;���W�����v
[State -1]
type=ChangeState
value = 65
triggerall = Var(59) >= 1 && numenemy
triggerall = roundstate=2 && statetype != A
TriggerAll=EnemyNear(Var(53)),Alive
triggerall=P2Dist x = [1,320]
TriggerAll=EnemyNear(Var(53)),MoveType!=H||EnemyNear(Var(53)),stateno<200
TriggerAll=EnemyNear(Var(53)),statetype!=L
TriggerAll=EnemyNear(Var(53)),statetype!=A || EnemyNear(Var(53)),Pos Y>=-30
triggerall=ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall=numhelper(20000)
triggerall= (helper(20000),var(58)/1000000)%10
triggerall=P2Dist x > 100
Triggerall= random <= 100
Trigger1= EnemyNear(Var(53)),movetype = A && EnemyNear(Var(53)),animtime < -15

;��W�����v
[State -1]
type=ChangeState
value = 68
triggerall = Var(59) >= 1 && numenemy
triggerall = roundstate=2 && statetype != A
TriggerAll=EnemyNear(Var(53)),Alive
triggerall=P2Dist x = [1,320]
TriggerAll=EnemyNear(Var(53)),MoveType!=H||EnemyNear(Var(53)),stateno<200
TriggerAll=EnemyNear(Var(53)),statetype!=L
TriggerAll=EnemyNear(Var(53)),statetype!=A || EnemyNear(Var(53)),Pos Y>=-30
triggerall=ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall=numhelper(20000)
triggerall= (helper(20000),var(58)/10000000)%10
triggerall=P2Dist x > 140
Triggerall= random <= 70
Trigger1= EnemyNear(Var(53)),movetype = A && EnemyNear(Var(53)),animtime < -20

;��荞��
[State -1]
type=ChangeState
value = 700
triggerall = Var(59) >= 1 && numenemy
triggerall = roundstate=2 && statetype != A
TriggerAll=EnemyNear(Var(53)),Alive
triggerall=P2Dist x > 0
TriggerAll=EnemyNear(Var(53)),MoveType!=H||EnemyNear(Var(53)),stateno<200
TriggerAll=EnemyNear(Var(53)),statetype!=L
triggerall=ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall=numhelper(20000)
triggerall= (helper(20000),var(58)/100000000)%10
;Triggerall= random <= 50
trigger1 = EnemyNear(Var(53)),movetype = A || (var(55) = 2 && EnemyNear(Var(53)),movetype = I && EnemyNear(Var(53)),ctrl = 0)
Trigger1 = EnemyNear(Var(53)),animtime < -33
Trigger1 = EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),Vel Y <= 0
Trigger2 = p2bodydist X > 200 + ((EnemyNear(Var(53)),Vel X * 20) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1))

;---------------------------------------------------------------------------
;�J�E���^�[

:�����m���A�b�v�t���O
[State -1]
Type = VarSet
triggerall = var(44) = 0
trigger1 = movetype = H
var(44) = 1

[State -1]
Type = VarAdd
triggerall = var(44) >= 1
trigger1 = 1
var(44) = ifelse(movetype = H,2,1)

[State -1]
Type = VarSet
triggerall = var(44) != 0
trigger1 = roundstate != 2 || movetype = A || statetype = L
var(44) = 0
;����Ɍł߂��āA��莞�Ԕ����̎����������Ȃ����
;�Ԃ���or�������̊m���������Ȃ�܂��B
;�Ƃ肠�������̏��A300F�ȏ㔽���ł��Ȃ�������A�b�v�B
;����or�]�΂��ꂽ�烊�Z�b�g�B
;
;�t�ɁA�K�[�h�Ōł߂��܂����Ă鎞�ɂ́A
;�G�̓����U�����������m����������܂��B

;-------------------

;�W�����v�i��������j
[state -1, jump]
type = ChangeState
value = ifelse(Helper(8900+id),fvar(facing = 1) <= 90,42,105)
triggerall = Var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (movetype != H && stateno = [120,149])
triggerall = p2bodydist X <= 160
triggerall = var(44) <= 120 || (var(44) <= 200 && random <= 500) || random <= 250
triggerall = var(59) >= 2 || random <= 500
trigger1 = EnemyNear(Var(53)),HitDefAttr = SC, NT,ST,HT && inguarddist && random <= 500
trigger2 = EnemyNear(Var(53)),stateno = var(48)
trigger2 = var(48) >= 1000 && EnemyNear(Var(53)),time <= 15 && random <= 700
trigger3 = EnemyNear(Var(53)),stateno = var(45)
trigger3 = (var(45) = [1,999]) && EnemyNear(Var(53)),time <= 15 && random <= 700

;�W�����v�i��������j
[state -1, jump]
type = ChangeState
value = 43
triggerall = Var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (movetype != H && stateno = [120,149])
triggerall = p2bodydist X <= 150
triggerall = EnemyNear(Var(53)),HitDefAttr = SCA, ST,HT
triggerall = EnemyNear(Var(53)),statetype = A
triggerall = var(44) <= 120 || (var(44) <= 200 && random <= 500) || random <= 250
trigger1 = random <= 120 || (EnemyNear(Var(53)),Vel Y > 0 && random <= 250)

;---------

;���I�i�u���[�h�i�Βn�j
[State -1]
type = ChangeState
value = 3500
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 || (var(29) >= 1 && var(20) > 0 && power >= 2000)
triggerall = var(20) > 0 || var(19) >= 1000
triggerall = power >= 4000 || EnemyNear(Var(53)),life <= 450
triggerall = var(59) >= 2 || EnemyNear(Var(53)),time >= 25
triggerall = EnemyNear(Var(53)),movetype = A || (var(55) = 2 && EnemyNear(Var(53)),movetype = I && EnemyNear(Var(53)),ctrl = 0)
triggerall = EnemyNear(Var(53)),statetype != A && EnemyNear(Var(53)),statetype != L
triggerall = p2bodydist X <= 30 || (EnemyNear(Var(53)),statetype = S && p2bodydist X <= 65)
triggerall = EnemyNear(Var(53)),animtime < -11
triggerall = (p2dist X = [1,320]) && EnemyNear(Var(53)),facing = -facing
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = (stateno = [15,16]) || Vel X = 0
triggerall = var(44) > 500 || (random <= 800 && var(44) = [300,499]) || random <= 500
triggerall = random <= 50 || (life <= 400 && random <= 100)
trigger1 = 1

;EX���[���X���b�V���[�i�Βn�j
[State -1]
type = ChangeState
value = 2000
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000
triggerall = power >= 2000 || EnemyNear(Var(53)),life <= 200
triggerall = var(52) >= 20
triggerall = var(59) >= 2 || EnemyNear(Var(53)),time >= 25
triggerall = EnemyNear(Var(53)),movetype = A || (var(55) = 2 && EnemyNear(Var(53)),movetype = I && EnemyNear(Var(53)),ctrl = 0)
triggerall = EnemyNear(Var(53)),statetype != A && EnemyNear(Var(53)),statetype != L
triggerall = p2bodydist X <= 45 || (EnemyNear(Var(53)),Vel X > 0 && p2bodydist X <= 35 + EnemyNear(Var(53)),Vel X * 7)
triggerall = EnemyNear(Var(53)),animtime < -7
triggerall = (p2dist X = [1,320]) && EnemyNear(Var(53)),facing = -facing
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = (stateno = [15,16]) || Vel X = 0
triggerall = var(44) > 500 || (random <= 800 && var(44) = [300,499]) || random <= 500
triggerall = random <= 50 || (life <= 400 && random <= 100)
trigger1 = 1

;EX���[���X���b�V���[�i�Ԃ��ρj
[State -1]
type = ChangeState
value = 2000
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000
triggerall = power >= 2000 || EnemyNear(Var(53)),life <= 200
triggerall = var(52) >= 20
triggerall = EnemyNear(Var(53)),time <= 5 && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype != A && EnemyNear(Var(53)),facing = -facing
triggerall = p2bodydist X <= 45 || (p2bodydist X <= 35 + EnemyNear(Var(53)),Vel X * 7)
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = p2dist X = [1,320]
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = var(44) > 500 || (random <= 800 && var(44) = [300,499]) || random <= 500
trigger1 = random <= 20 || (numhelper(1000) && random <= 60)

;V�X���b�V���[(�Βn)�E��
[State -1]
type = ChangeState
value = ifelse(power >= 2000 && EnemyNear(Var(53)),life > 220 && (EnemyNear(Var(53)),life <= 320 || power >= 3000),3050,3000)
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = power >= 1000
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),animtime < -5
triggerall = EnemyNear(Var(53)),movetype = A || (var(55) = 2 && EnemyNear(Var(53)),movetype = I && EnemyNear(Var(53)),ctrl = 0)
triggerall = EnemyNear(Var(53)),statetype != A && p2dist X = [1,320]
triggerall = Pos Y < -4
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
triggerall = var(59) >= 2 || EnemyNear(Var(53)),time >= 15
triggerall = random <= 300 || EnemyNear(Var(53)),time >= 15
triggerall = random <= 50 || (power >= 2000 && random <= 100)
triggerall = (p2dist X = [40,320])
triggerall = p2bodydist X >= 30 || Pos Y <= -40 || Vel Y <= 0
trigger1 = p2bodydist X <= 40 - ((EnemyNear(Var(53)),animtime + 3) * 11)
trigger1 = p2bodydist X >= -floor(Pos Y * 11 / 4) - 80
trigger1 = p2bodydist X <= -floor(Pos Y * 11 / 4) + 40
trigger1 = var(58) := 2

;V�X���b�V���[(�Βn)�E��
[State -1]
type = ChangeState
value = 3000
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = power >= 1000
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),animtime < -5
triggerall = EnemyNear(Var(53)),movetype = A || (var(55) = 2 && EnemyNear(Var(53)),movetype = I && EnemyNear(Var(53)),ctrl = 0)
triggerall = EnemyNear(Var(53)),statetype != A && p2dist X = [1,320]
triggerall = Pos Y < -4
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
triggerall = var(59) >= 2 || EnemyNear(Var(53)),time >= 15
triggerall = random <= 300 || EnemyNear(Var(53)),time >= 15
triggerall = random <= 50 || (power >= 2000 && random <= 100)
triggerall = (p2dist X = [40,320])
triggerall = p2bodydist X >= 30 || Pos Y <= -40 || Vel Y <= 0
trigger1 = p2bodydist X <= 40 - ((EnemyNear(Var(53)),animtime + 3) * 4)
trigger1= p2bodydist X >= -floor(Pos Y * 4 / 11) - 80
trigger1= p2bodydist X <= -floor(Pos Y * 4 / 11) + 40
trigger1= var(58) := 1

;---------------------------------------------

:�΋�}���m���A�b�v�t���O
[State -1]
Type = VarSet
triggerall = var(49) = 0
trigger1 = EnemyNear(Var(53)),statetype = A
var(49) = 1

[State -1];���肪�󒆂ɔ��ł��鎞�Ԃ��J�E���g
Type = VarAdd
triggerall = var(49) >= 1
trigger1 = EnemyNear(Var(53)),statetype = A
var(49) = 1

[State -1];���Z�b�g
Type = VarSet
triggerall = var(49) != 0
trigger1 = EnemyNear(Var(53)),statetype != A
var(49) = 0

;EX���[���X���b�V���[(�΋�)
[State -1, taiku]
type = ChangeState
value = 2000
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000
triggerall = inguarddist || power >= 2000 || random <= 50
triggerall = EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),movetype != H && var(1) <= 0
triggerall = var(52) >= 20
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
 triggerall = (stateno = [15,16]) || Vel X = 0 || statetype = C || var(52) >= 20
 triggerall = var(49) > 25 || random <= 500 || (stateno = [15,16]) || var(52) >= 20
 triggerall = var(59) >= 2 || random <= 700 || (stateno = [15,16]) || var(52) >= 20
 triggerall = var(59) >= 2 || random <= 150
 triggerall = EnemyNear(Var(53)),Vel Y >= 0 || random <= 150 || var(52) >= 20
 triggerall = var(44) > 500 || (random <= 800 && var(44) = [300,499]) || random <= 600 || var(52) >= 20
 triggerall = random <= 200 || (life <= 300 && random <= 350) || (random <= 450 && stateno = [15,16]) || var(52) >= 20
trigger1 = EnemyNear(Var(53)),Pos Y >= (-110 - (EnemyNear(Var(53)),Vel Y * 5) - (EnemyNear(Var(53)),const(movement.yaccel) * 15))
trigger1 = EnemyNear(Var(53)),Pos Y <= (-10 - (EnemyNear(Var(53)),Vel Y * 5) - (EnemyNear(Var(53)),const(movement.yaccel) * 15))
trigger1 = p2dist X <= 15 + (EnemyNear(Var(53)),Vel X * 5) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = (Helper(8900+id),fvar(facing = 1) <= 90 && p2dist X = [-60,320]) || p2dist X >= -60 + (EnemyNear(Var(53)),Vel X * 5) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = EnemyNear(Var(53)),Pos Y >= (-115 - (EnemyNear(Var(53)),Vel Y * 7) - (EnemyNear(Var(53)),const(movement.yaccel) * 28))
trigger2 = EnemyNear(Var(53)),Pos Y <= (-10 - (EnemyNear(Var(53)),Vel Y * 7) - (EnemyNear(Var(53)),const(movement.yaccel) * 28))
trigger2 = p2bodydist X <= 40 + (EnemyNear(Var(53)),Vel X * 7) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = p2dist X >= -10 + (EnemyNear(Var(53)),Vel X * 7) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger3 = EnemyNear(Var(53)),Pos Y >= (-50 - (EnemyNear(Var(53)),Vel Y * 9) - (EnemyNear(Var(53)),const(movement.yaccel) * 45))
trigger3 = EnemyNear(Var(53)),Pos Y <= (-10 - (EnemyNear(Var(53)),Vel Y * 9) - (EnemyNear(Var(53)),const(movement.yaccel) * 45))
trigger3 = p2bodydist X <= 65 + (EnemyNear(Var(53)),Vel X * 9) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger3 = p2dist X >= 10 + (EnemyNear(Var(53)),Vel X * 9) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)

;---

;�����オ��i���Ⴊ�ݑҋ@�����j
[State -1]
type = ChangeState
value = 12
triggerall = statetype != A
triggerall = stateno = 16
trigger1 = time > 100 || roundstate != 2
trigger2 = inguarddist
trigger2 = power < 1000 || var(52) < 20
trigger3 = EnemyNear(Var(53)),statetype = S || EnemyNear(Var(53)),statetype = C
trigger4 = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype = H
ctrl = 1

;���Ⴊ�ݑҋ@�i�΋�p�j
[State -1]
type = ChangeState
value = 15
triggerall = var(59)>=1 && numenemy
triggerall = roundstate=2 && statetype != A
triggerall = !InGuardDist
triggerall = (stateno != [10,12]) && (stateno != [15,16])
triggerall = stateno != [120,159]
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),facing = -facing && var(1) <= 0
triggerall = ctrl || stateno = 1 || (stateno = [21,22]) || (movetype != H && stateno = [120,149])
triggerall = power >= 1000 || random <= 100
triggerall = random <= 200
trigger1 = EnemyNear(Var(53)),Pos Y >= (-110 - (EnemyNear(Var(53)),Vel Y * 25) - (EnemyNear(Var(53)),const(movement.yaccel) * 325))
trigger1 = EnemyNear(Var(53)),Pos Y <= (-10 - (EnemyNear(Var(53)),Vel Y * 25) - (EnemyNear(Var(53)),const(movement.yaccel) * 325))
trigger1 = p2dist X <= 15 + (EnemyNear(Var(53)),Vel X * 25) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = (Helper(8900+id),fvar(facing = 1) <= 90 && p2dist X = [-60,320]) || p2dist X >= -60 + (EnemyNear(Var(53)),Vel X * 25) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = EnemyNear(Var(53)),Pos Y >= (-115 - (EnemyNear(Var(53)),Vel Y * 27) - (EnemyNear(Var(53)),const(movement.yaccel) * 378))
trigger2 = EnemyNear(Var(53)),Pos Y <= (-10 - (EnemyNear(Var(53)),Vel Y * 27) - (EnemyNear(Var(53)),const(movement.yaccel) * 378))
trigger2 = p2bodydist X <= 40 + (EnemyNear(Var(53)),Vel X * 27) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = p2dist X >= -10 + (EnemyNear(Var(53)),Vel X * 27) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger3 = EnemyNear(Var(53)),Pos Y >= (-50 - (EnemyNear(Var(53)),Vel Y * 29) - (EnemyNear(Var(53)),const(movement.yaccel) * 435))
trigger3 = EnemyNear(Var(53)),Pos Y <= (-10 - (EnemyNear(Var(53)),Vel Y * 29) - (EnemyNear(Var(53)),const(movement.yaccel) * 435))
trigger3 = p2bodydist X <= 65 + (EnemyNear(Var(53)),Vel X * 29) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger3 = p2dist X >= 10 + (EnemyNear(Var(53)),Vel X * 29) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)

;---

;���[���X���b�V���[(�΋�)
[State -1, taiku]
type = ChangeState
value = 1000
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist || random <= 300
triggerall = EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),movetype != H && var(1) <= 0
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = var(52) >= 20
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
 triggerall = (stateno = [15,16]) || Vel X = 0 || statetype = C || var(52) >= 20
 triggerall = var(49) > 25 || random <= 500 || (stateno = [15,16]) || var(52) >= 20
 triggerall = var(59) >= 2 || random <= 700 || (stateno = [15,16]) || var(52) >= 20
 triggerall = var(59) >= 2 || random <= 150
 triggerall = EnemyNear(Var(53)),Vel Y >= 0 || random <= 150 || var(52) >= 20
 triggerall = var(44) > 500 || (random <= 800 && var(44) = [300,499]) || random <= 600 || var(52) >= 20
 triggerall = random <= 200 || (life <= 300 && random <= 350) || (random <= 450 && stateno = [15,16]) || var(52) >= 20
trigger1 = EnemyNear(Var(53)),Pos Y >= (-100 - (EnemyNear(Var(53)),Vel Y * 7) - (EnemyNear(Var(53)),const(movement.yaccel) * 28))
trigger1 = EnemyNear(Var(53)),Pos Y <= (-10 - (EnemyNear(Var(53)),Vel Y * 7) - (EnemyNear(Var(53)),const(movement.yaccel) * 28))
trigger1 = !inguarddist || EnemyNear(Var(53)),Pos Y <= (-70 - (EnemyNear(Var(53)),Vel Y * 7) - (EnemyNear(Var(53)),const(movement.yaccel) * 28))
trigger1 = p2dist X <= 15 + (EnemyNear(Var(53)),Vel X * 7) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = (Helper(8900+id),fvar(facing = 1) <= 90 && p2dist X = [-60,320]) || p2dist X >= -70 + (EnemyNear(Var(53)),Vel X * 7) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = var(58) := 1
trigger2 = EnemyNear(Var(53)),Pos Y >= (-100 - (EnemyNear(Var(53)),Vel Y * 9) - (EnemyNear(Var(53)),const(movement.yaccel) * 45))
trigger2 = EnemyNear(Var(53)),Pos Y <= (-80 - (EnemyNear(Var(53)),Vel Y * 9) - (EnemyNear(Var(53)),const(movement.yaccel) * 45))
trigger2 = !inguarddist
trigger2 = p2bodydist X <= 80 + (EnemyNear(Var(53)),Vel X * 9) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = p2dist X >= -55 + (EnemyNear(Var(53)),Vel X * 9) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = var(58) := 1
trigger3 = EnemyNear(Var(53)),Pos Y >= (-100 - (EnemyNear(Var(53)),Vel Y * 11) - (EnemyNear(Var(53)),const(movement.yaccel) * 66))
trigger3 = EnemyNear(Var(53)),Pos Y <= (-80 - (EnemyNear(Var(53)),Vel Y * 11) - (EnemyNear(Var(53)),const(movement.yaccel) * 66))
trigger3 = !inguarddist
trigger3 = p2bodydist X <= 70 + (EnemyNear(Var(53)),Vel X * 11) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger3 = p2dist X >= -25 + (EnemyNear(Var(53)),Vel X * 11) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger3 = var(58) := 1

;���Ⴊ�݋��p���`(�΋�)
[State -1, taiku]
type = ChangeState
value = 410
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist || random <= 300
triggerall = EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),movetype != H && var(1) <= 0
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
 triggerall = var(49) > 25 || random <= 500 || (stateno = [15,16])
 triggerall = var(59) >= 2 || random <= 700 || (stateno = [15,16])
 triggerall = var(59) >= 2 || random <= 150
 triggerall = EnemyNear(Var(53)),Vel Y >= 0 || random <= 700
 triggerall = var(44) > 500 || (random <= 800 && var(44) = [300,499]) || random <= 600
 triggerall = random <= 200 || (life <= 300 && random <= 350) || (random <= 450 && stateno = [15,16])
trigger1 = EnemyNear(Var(53)),Pos Y >= (-60 - (EnemyNear(Var(53)),Vel Y * 4) - (EnemyNear(Var(53)),const(movement.yaccel) * 10))
trigger1 = EnemyNear(Var(53)),Pos Y <= ( 0 - (EnemyNear(Var(53)),Vel Y * 4) - (EnemyNear(Var(53)),const(movement.yaccel) * 10))
trigger1 = !inguarddist
trigger1 = p2bodydist X <= 35 + (EnemyNear(Var(53)),Vel X * 4) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = (EnemyNear(Var(53)),Vel Y > 0 && EnemyNear(Var(53)),Pos Y >= -60 && p2dist X = [1,320]) || p2dist X >= 10 + (EnemyNear(Var(53)),Vel X * 4) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = EnemyNear(Var(53)),Pos Y >= (-70 - (EnemyNear(Var(53)),Vel Y * 7) - (EnemyNear(Var(53)),const(movement.yaccel) * 28))
trigger2 = EnemyNear(Var(53)),Pos Y <= (-15 - (EnemyNear(Var(53)),Vel Y * 7) - (EnemyNear(Var(53)),const(movement.yaccel) * 28))
trigger2 = !inguarddist || EnemyNear(Var(53)),Pos Y <= (-80 - (EnemyNear(Var(53)),Vel Y * 7) - (EnemyNear(Var(53)),const(movement.yaccel) * 28))
trigger2 = p2bodydist X <= 25 + (EnemyNear(Var(53)),Vel X * 7) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 7) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)

;�ߋ���������p���`(�΋�)
[State -1, taiku]
type = ChangeState
value = 200
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),movetype != H && var(1) <= 0
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
 triggerall = var(49) > 25 || random <= 500 || (stateno = [15,16])
 triggerall = var(59) >= 2 || random <= 700 || (stateno = [15,16])
 triggerall = var(59) >= 2 || random <= 150
 triggerall = EnemyNear(Var(53)),Vel Y >= 0 || random <= 700
 triggerall = var(44) > 500 || (random <= 800 && var(44) = [300,499]) || random <= 600
 triggerall = random <= 200 || (life <= 300 && random <= 350) || (random <= 450 && stateno = [15,16])
trigger1 = EnemyNear(Var(53)),Pos Y >= (-55 - (EnemyNear(Var(53)),Vel Y * 4) - (EnemyNear(Var(53)),const(movement.yaccel) * 10))
trigger1 = EnemyNear(Var(53)),Pos Y <= (5 - (EnemyNear(Var(53)),Vel Y * 4) - (EnemyNear(Var(53)),const(movement.yaccel) * 10))
trigger1 = p2bodydist X <= 50 + (EnemyNear(Var(53)),Vel X * 4) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = (EnemyNear(Var(53)),Vel Y >= 0 && EnemyNear(Var(53)),Pos Y >= -60 && p2dist X = [1,320]) || p2dist X >= 5 + (EnemyNear(Var(53)),Vel X * 4) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)

;�������������L�b�N(�΋�)
[State -1, taiku]
type = ChangeState
value = 240
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A && p2dist X > 50
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),movetype != H && var(1) <= 0
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
 triggerall = var(49) > 25 || random <= 500 || (stateno = [15,16])
 triggerall = var(59) >= 2 || random <= 700 || (stateno = [15,16])
 triggerall = var(59) >= 2 || random <= 150
 triggerall = EnemyNear(Var(53)),Vel Y >= 0 || random <= 700
 triggerall = var(44) > 500 || (random <= 800 && var(44) = [300,499]) || random <= 600
 triggerall = random <= 50 || (life <= 300 && random <= 80)
trigger1 = EnemyNear(Var(53)),Pos Y >= (-70 - (EnemyNear(Var(53)),Vel Y * 16) - (EnemyNear(Var(53)),const(movement.yaccel) *136))
trigger1 = EnemyNear(Var(53)),Pos Y <= (-10 - (EnemyNear(Var(53)),Vel Y * 13) - (EnemyNear(Var(53)),const(movement.yaccel) * 91))
trigger1 = p2bodydist X <= 75 + (EnemyNear(Var(53)),Vel X * 13) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = p2dist X >= 60 + (EnemyNear(Var(53)),Vel X * 13) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)

;�n�C�W�����v(�u�X���b�V���[�΋�p)
[State -1]
type = ChangeState
value = 68
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = power >= 1000
triggerall = power >= 2000 || EnemyNear(Var(53)),life <= 220
triggerall = EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),movetype != H && var(1) <= 0
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
 triggerall = var(49) > 25 || random <= 500 || (stateno = [15,16])
 triggerall = var(59) >= 2 || random <= 700 || (stateno = [15,16])
 triggerall = var(59) >= 2 || random <= 150
 triggerall = EnemyNear(Var(53)),Vel Y >= 0 || random <= 700
 triggerall = var(44) > 500 || (random <= 800 && var(44) = [300,499]) || random <= 600
 triggerall = random <= 200 || (life <= 300 && random <= 350) || (random <= 450 && stateno = [15,16])
triggerall = NumHelper(8900+id)
triggerall = p2dist X = [20,320]
triggerall = p2bodydist X > 60 || EnemyNear(Var(53)),Vel X <= 0
trigger1 = EnemyNear(Var(53)),Pos Y >= (-40 - (EnemyNear(Var(53)),Vel Y * 10) - (EnemyNear(Var(53)),const(movement.yaccel) * 55))
trigger1 = EnemyNear(Var(53)),Pos Y <= (-10 - (EnemyNear(Var(53)),Vel Y * 10) - (EnemyNear(Var(53)),const(movement.yaccel) * 55))
trigger1 = (Helper(8900+id),fvar(facing = -1) <= 90 && p2dist X = [-5,320]) || p2bodydist X <= 50 + (EnemyNear(Var(53)),Vel X * 10) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 10) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = var(56) := 5
trigger2 = EnemyNear(Var(53)),Pos Y >= (-40 - (EnemyNear(Var(53)),Vel Y * 13) - (EnemyNear(Var(53)),const(movement.yaccel) * 91))
trigger2 = EnemyNear(Var(53)),Pos Y <= (-10 - (EnemyNear(Var(53)),Vel Y * 13) - (EnemyNear(Var(53)),const(movement.yaccel) * 91))
trigger2 = (Helper(8900+id),fvar(facing = -1) <= 130 && p2dist X = [-5,320]) || p2bodydist X <= 100 + (EnemyNear(Var(53)),Vel X * 13) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 13) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = var(56) := 6
trigger3 = EnemyNear(Var(53)),Pos Y >= (-30 - (EnemyNear(Var(53)),Vel Y * 16) - (EnemyNear(Var(53)),const(movement.yaccel) * 136))
trigger3 = EnemyNear(Var(53)),Pos Y <= (-10 - (EnemyNear(Var(53)),Vel Y * 16) - (EnemyNear(Var(53)),const(movement.yaccel) * 136))
trigger3 = (Helper(8900+id),fvar(facing = -1) <= 160 && p2dist X = [-5,320]) || p2bodydist X <= 130 + (EnemyNear(Var(53)),Vel X * 16) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger3 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 16) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger3 = var(56) := 7
trigger4 = EnemyNear(Var(53)),Pos Y >= (-30 - (EnemyNear(Var(53)),Vel Y * 19) - (EnemyNear(Var(53)),const(movement.yaccel) * 190))
trigger4 = EnemyNear(Var(53)),Pos Y <= (-10 - (EnemyNear(Var(53)),Vel Y * 19) - (EnemyNear(Var(53)),const(movement.yaccel) * 190))
trigger4 = (Helper(8900+id),fvar(facing = -1) <= 190 && p2dist X = [-5,320]) || p2bodydist X <= 160 + (EnemyNear(Var(53)),Vel X * 19) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger4 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 19) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger4 = var(56) := 8

[State -1]
type = varset
triggerall = var(56) = [5,8]
trigger1 = roundstate != 2 || movetype = H || statetype = L || stateno = [3000,3599]
trigger2 = movetype = A || stateno = 52
trigger3 = EnemyNear(Var(53)),statetype != A
var(56) = 0

;V�X���b�V���[
[State Twister Drive]
type = ChangeState
value = ifelse(power >= 2000 && EnemyNear(Var(53)),life > 220 && (EnemyNear(Var(53)),life <= 320 || power >= 3000),3050,3000)
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = power >= 1000
triggerall = p2dist X = [1,320]
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
trigger1 = Pos Y < -8 && var(56) = 5
trigger1 = var(58) := 2
trigger2 = Pos Y < -16 && var(56) = 6
trigger2 = var(58) := 2
trigger3 = Pos Y <= -24 && var(56) = 7
trigger3 = var(58) := 2
trigger4 = Pos Y < -30 && var(56) = 8
trigger4 = var(58) := 2

;V�X���b�V���[(��΋�)
[State -1]
type = ChangeState
value = ifelse(power >= 2000 && EnemyNear(Var(53)),life > 220 && (EnemyNear(Var(53)),life <= 320 || power >= 3000),3050,3000)
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = power >= 1000
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),facing = -facing
triggerall = p2dist X = [1,320]
triggerall = Pos Y >= -130
triggerall = random <= 50 || (var(49) > 15 && random <= 100) || (var(49) > 25 && random <= 300) || var(49) > 40
trigger1 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 3) - (EnemyNear(Var(53)),const(movement.yaccel) * 6))
trigger1 = Pos Y < -4
trigger1 = p2bodydist X <= 45 + (EnemyNear(Var(53)),Vel X * 3) + Vel X * 3
trigger1 = p2dist X > 0 + (EnemyNear(Var(53)),Vel X * 3) + Vel X * 3
trigger1 = Pos Y + (Vel Y * 0) - 16 <= EnemyNear(Var(53)),Pos Y + (EnemyNear(Var(53)),Vel Y * 3) + (EnemyNear(Var(53)),const(movement.yaccel) * 6)
trigger1 = var(58) := 2
trigger2 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 5) - (EnemyNear(Var(53)),const(movement.yaccel) * 15))
trigger2 = Pos Y < -12
trigger2 = p2bodydist X <= 70 + (EnemyNear(Var(53)),Vel X * 5) + Vel X * 5
trigger2 = p2dist X > 0 + (EnemyNear(Var(53)),Vel X * 5) + Vel X * 5
trigger2 = Pos Y + (Vel Y * 0) - 8 <= EnemyNear(Var(53)),Pos Y + (EnemyNear(Var(53)),Vel Y * 5) + (EnemyNear(Var(53)),const(movement.yaccel) * 15)
trigger2 = var(58) := 2
trigger3 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 7) - (EnemyNear(Var(53)),const(movement.yaccel) * 28))
trigger3 = Pos Y < -20
trigger3 = p2bodydist X <= 90 + (EnemyNear(Var(53)),Vel X * 7) + Vel X * 7
trigger3 = p2dist X > 0 + (EnemyNear(Var(53)),Vel X * 7) + Vel X * 7
trigger3 = Pos Y + (Vel Y * 0) - 0 <= EnemyNear(Var(53)),Pos Y + (EnemyNear(Var(53)),Vel Y * 7) + (EnemyNear(Var(53)),const(movement.yaccel) * 28)
trigger3 = var(58) := 2
trigger4 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 9) - (EnemyNear(Var(53)),const(movement.yaccel) * 45))
trigger4 = Pos Y < -28
trigger4 = p2bodydist X <= 110 + (EnemyNear(Var(53)),Vel X * 9) + Vel X * 9
trigger4 = p2dist X > 0 + (EnemyNear(Var(53)),Vel X * 9) + Vel X * 9
trigger4 = Pos Y + (Vel Y * 0) + 8 <= EnemyNear(Var(53)),Pos Y + (EnemyNear(Var(53)),Vel Y * 9) + (EnemyNear(Var(53)),const(movement.yaccel) * 45)
trigger4 = var(58) := 2
trigger5 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 11) - (EnemyNear(Var(53)),const(movement.yaccel) * 66))
trigger5 = Pos Y < -36
trigger5 = p2bodydist X <= 130 + (EnemyNear(Var(53)),Vel X * 11) + Vel X * 11
trigger5 = p2dist X > 0 + (EnemyNear(Var(53)),Vel X * 11) + Vel X * 11
trigger5 = Pos Y + (Vel Y * 0) + 16 <= EnemyNear(Var(53)),Pos Y + (EnemyNear(Var(53)),Vel Y * 13) + (EnemyNear(Var(53)),const(movement.yaccel) * 66)
trigger5 = var(58) := 2
trigger6 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 13) - (EnemyNear(Var(53)),const(movement.yaccel) * 91))
trigger6 = Pos Y < -44
trigger6 = p2bodydist X <= 155 + (EnemyNear(Var(53)),Vel X * 13) + Vel X * 13
trigger6 = p2dist X > 0 + (EnemyNear(Var(53)),Vel X * 13) + Vel X * 13
trigger6 = Pos Y + (Vel Y * 0) + 24 <= EnemyNear(Var(53)),Pos Y + (EnemyNear(Var(53)),Vel Y * 13) + (EnemyNear(Var(53)),const(movement.yaccel) * 91)
trigger6 = var(58) := 2
trigger7 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 15) - (EnemyNear(Var(53)),const(movement.yaccel) * 120))
trigger7 = Pos Y < -52
trigger7 = p2bodydist X <= 175 + (EnemyNear(Var(53)),Vel X * 15) + Vel X * 15
trigger7 = p2dist X > 0 + (EnemyNear(Var(53)),Vel X * 15) + Vel X * 15
trigger7 = Pos Y + (Vel Y * 0) + 32 <= EnemyNear(Var(53)),Pos Y + (EnemyNear(Var(53)),Vel Y * 15) + (EnemyNear(Var(53)),const(movement.yaccel) * 120)
trigger7 = var(58) := 2
trigger8 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 17) - (EnemyNear(Var(53)),const(movement.yaccel) * 153))
trigger8 = Pos Y < -60
trigger8 = p2bodydist X <= 200 + (EnemyNear(Var(53)),Vel X * 17) + Vel X * 17
trigger8 = p2dist X > 0 + (EnemyNear(Var(53)),Vel X * 17) + Vel X * 17
trigger8 = Pos Y + (Vel Y * 0) + 40 <= EnemyNear(Var(53)),Pos Y + (EnemyNear(Var(53)),Vel Y * 17) + (EnemyNear(Var(53)),const(movement.yaccel) * 153)
trigger8 = var(58) := 2

;�{���e�b�N�����`���[(�΋�)
[State -1, taiku]
type = ChangeState
value = 1300
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A && p2bodydist X > 60
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),movetype != H && var(1) <= 0
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
 triggerall = Vel X <= 0 || var(52) >= 20
 triggerall = var(49) > 25 || random <= 500 || (stateno = [15,16])
 triggerall = var(59) >= 2 || random <= 700 || (stateno = [15,16])
 triggerall = EnemyNear(Var(53)),Vel Y >= 0 || random <= 700
 triggerall = var(44) > 500 || (random <= 800 && var(44) = [300,499]) || random <= 600
 triggerall = random <= 200 || (life <= 300 && random <= 350) || (random <= 450 && stateno = [15,16])
trigger1 = EnemyNear(Var(53)),Pos Y >= (-120 - (EnemyNear(Var(53)),Vel Y * 23) - (EnemyNear(Var(53)),const(movement.yaccel) * 276))
trigger1 = EnemyNear(Var(53)),Pos Y <= (-80 - (EnemyNear(Var(53)),Vel Y * 23) - (EnemyNear(Var(53)),const(movement.yaccel) * 276))
trigger1 = p2bodydist X <= 65 + (EnemyNear(Var(53)),Vel X * 23) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = p2dist X >= 30 + (EnemyNear(Var(53)),Vel X * 23) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = var(58) := 2

;---------------------------------------------------------------------------
;�󒆒ǌ�

;�G�󒆋�炢�����x���f
[State -2];
Type = VarSet
TriggerAll = fvar(39) != 0.5
TriggerAll = RoundState = 2
TriggerAll = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),movetype = H
TriggerAll = EnemyNear(Var(53)),ctrl = 0 && EnemyNear(Var(53)),stateno != [120,159]
TriggerAll = movehit
Trigger1 = stateno = 1000 || stateno = 1200 || stateno = 2000
fvar(39) = 0.5

[State -2];
Type = VarSet
TriggerAll = fvar(39) != 0.5
TriggerAll = RoundState = 2
TriggerAll = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),movetype = H
TriggerAll = EnemyNear(Var(53)),ctrl = 0 && EnemyNear(Var(53)),stateno != [120,159]
Trigger1 = projhittime(3260) = 1
fvar(39) = 0.5

;�G�󒆋�炢�����x���f
[State -2];
Type = VarSet
TriggerAll = fvar(39) != 0.47
TriggerAll = RoundState = 2
TriggerAll = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),movetype = H
TriggerAll = EnemyNear(Var(53)),ctrl = 0 && EnemyNear(Var(53)),stateno != [120,159]
TriggerAll = movehit
Trigger1 = stateno = 1110 || stateno = 1120 || stateno = 3110
fvar(39) = 0.47

;�G�󒆋�炢�����x���f
[State -2];
Type = VarSet
TriggerAll = fvar(39) != 0.47
TriggerAll = RoundState = 2
TriggerAll = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),movetype = H
TriggerAll = EnemyNear(Var(53)),ctrl = 0 && EnemyNear(Var(53)),stateno != [120,159]
trigger1 = numhelper(1300)
trigger1 = helper(1300),stateno = 1260 && helper(1300),movehit = 1
trigger2 = numhelper(1300)
trigger2 = helper(1300),stateno = [1300,1399]
trigger2 = helper(1300),var(19) >= 1
trigger2 = helper(1300),numhelper(1315)
trigger3 = numhelper(1300)
trigger3 = helper(1300),stateno = [1300,1399]
trigger3 = helper(1300),var(19) >= 1
trigger3 = helper(1300),numhelper(1325)
trigger4 = numhelper(2)
trigger4 = helper(2),stateno = 1630
fvar(39) = 0.47

;�G�󒆋�炢�����x���f
[State -2];
Type = VarSet
TriggerAll = fvar(39) != 0.45
TriggerAll = RoundState = 2
TriggerAll = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),movetype = H
TriggerAll = EnemyNear(Var(53)),ctrl = 0 && EnemyNear(Var(53)),stateno != [120,159]
TriggerAll = movehit
Trigger1 = stateno = 290 || stateno = 690
Trigger2 = stateno = [200,699]
fvar(39) = 0.45


[State -2];���Z�b�g
Type = VarSet
TriggerAll = fvar(39) != 0
Trigger1 = RoundState != 2
Trigger2 = EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),movetype = A
Trigger3 = EnemyNear(Var(53)),ctrl || EnemyNear(Var(53)),stateno = [120,159]
fvar(39) = 0

;-----

;EX�C�������O���e�ǌ����f
[State -2]
type = VarSet
triggerall = var(35) = 0
triggerall = RoundState = 2
triggerall = NumHelper(8900+id)
triggerall = Helper(8900+id),fvar(facing = -1) <= 120
trigger1 = stateno = 1100 || stateno = 2100
trigger1 = prevstateno = 1000 || prevstateno = 2000
var(35) = 1

[State -2]
type = VarSet
triggerall = var(35) = 1
triggerall = RoundState = 2
trigger1 = stateno = 1110 || stateno = 2110
trigger1 = movehit
trigger1 = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),movetype = H
trigger1 = EnemyNear(Var(53)),ctrl = 0 && EnemyNear(Var(53)),stateno != [120,159]
var(35) = 2

[State -2];���Z�b�g
type = VarSet
triggerall = var(35) != 0
trigger1 = RoundState != 2
trigger2 = EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),movetype = A
trigger3 = EnemyNear(Var(53)),ctrl || EnemyNear(Var(53)),stateno = [120,159]
trigger4 = stateno = 2600
var(35) = 0


;�{���e�b�N�����`���[�ǌ����f
[State -2]
type = VarSet
triggerall = var(34) = 0
triggerall = RoundState = 2
trigger1 = numhelper(1300)
trigger1 = projcontacttime(1315) = 1
trigger2 = numhelper(2300)
trigger2 = projcontacttime(2315) = 1
var(34) = 1

;���Z�b�g
[State -2]
type = VarSet
triggerall = var(34) >= 1
trigger1 = RoundState != 2
trigger2 = numhelper(1300) = 0
trigger3 = numhelper(1300)
trigger3 = helper(1300),var(4) >= 9 && var(5) <= 0
trigger4 = numhelper(1300)
trigger4 = helper(1300),var(4) >= 13 && var(5) >= 1
trigger5 = numhelper(2300)
trigger5 = helper(2300),var(4) >= 13
var(34) = 0


;EX�C�������O���e
[State -1]
type = ChangeState
value = 2600
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000
triggerall = var(13) = 0 && !inguarddist
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),ctrl = 0
triggerall = EnemyNear(Var(53)),stateno != 811 && EnemyNear(Var(53)),stateno != 830
triggerall = EnemyNear(Var(53)),stateno != 3021 && EnemyNear(Var(53)),stateno != 3071
triggerall = EnemyNear(Var(53)),stateno != 2125 && EnemyNear(Var(53)),stateno != 2521
triggerall = numpartner = 0 || fvar(39) > 0
triggerall = NumHelper(8900+id)
triggerall = numhelper(1300) = 0
triggerall = var(34) <= 0
triggerall = var(1) <= 0
trigger1 = EnemyNear(Var(53)),Pos Y >= (-90 - (EnemyNear(Var(53)),Vel Y * 18) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 171))
trigger1 = EnemyNear(Var(53)),Pos Y <= (-15 - (EnemyNear(Var(53)),Vel Y * 18) - (EnemyNear(Var(53)),const(movement.yaccel) * 171))
trigger1 = (Helper(8900+id),fvar(facing = -1) <= 90 && p2dist X = [-10,320])
trigger1 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 15) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
;trigger2 = (Helper(8900+id),fvar(facing = -1) <= 120 && p2dist X = [-10,320])
;trigger2 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 15) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
;trigger2 = var(35) = 2

;�O�����h�Z�C�o�[
[State -1]
type = ChangeState
value = 1100
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),ctrl = 0
triggerall = EnemyNear(Var(53)),stateno != 811 && EnemyNear(Var(53)),stateno != 830
triggerall = EnemyNear(Var(53)),stateno != 3021 && EnemyNear(Var(53)),stateno != 3071
triggerall = EnemyNear(Var(53)),stateno != 2125 && EnemyNear(Var(53)),stateno != 2521
triggerall = numpartner = 0 || fvar(39) > 0
triggerall = NumHelper(8900+id)
triggerall = var(34) <= 0
triggerall = var(1) <= 0
;triggerall = FrontEdgeBodyDist <= 60 || (FrontEdgeBodyDist <= 75 && EnemyNear(Var(53)),BackEdgeBodyDist <= 10)
trigger1 = EnemyNear(Var(53)),Pos Y >= (-60 - (EnemyNear(Var(53)),Vel Y * 24) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 300))
trigger1 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 21) - (EnemyNear(Var(53)),const(movement.yaccel) * 231))
trigger1 = (Helper(8900+id),fvar(facing = -1) <= 90 && p2dist X = [-5,320]) || p2bodydist X <= 130 + (EnemyNear(Var(53)),Vel X * 24) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = var(58) := 1

;EX�O�����h�Z�C�o�[
[State -1]
type = ChangeState
value = 2100
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000
triggerall = EnemyNear(Var(53)),life > floor(fvar(0) * 150)
triggerall = !inguarddist
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),ctrl = 0
triggerall = EnemyNear(Var(53)),stateno != 811 && EnemyNear(Var(53)),stateno != 830
triggerall = EnemyNear(Var(53)),stateno != 3021 && EnemyNear(Var(53)),stateno != 3071
triggerall = EnemyNear(Var(53)),stateno != 2125 && EnemyNear(Var(53)),stateno != 2521
triggerall = numpartner = 0 || fvar(39) > 0
triggerall = NumHelper(8900+id)
triggerall = var(34) <= 0
triggerall = var(1) <= 0
;triggerall = FrontEdgeBodyDist <= 60 || (FrontEdgeBodyDist <= 75 && EnemyNear(Var(53)),BackEdgeBodyDist <= 10)
trigger1 = EnemyNear(Var(53)),Pos Y >= (-50 - (EnemyNear(Var(53)),Vel Y * 18) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 171))
trigger1 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 18) - (EnemyNear(Var(53)),const(movement.yaccel) * 171))
trigger1 = (Helper(8900+id),fvar(facing = -1) <= 180 && p2dist X = [-5,320]) || p2bodydist X > 50 + (EnemyNear(Var(53)),Vel X * 24) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = (Helper(8900+id),fvar(facing = -1) <= 120 && p2dist X = [-5,320]) || p2bodydist X <= 150 + (EnemyNear(Var(53)),Vel X * 24) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = var(58) := 1

;���I�i�u���[�h
[State Slide Touch]
type = ChangeState
value = 3500
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = power >= 3000 || (var(29) >= 1 && var(20) > 0 && power >= 2000)
triggerall = var(20) > 0 || var(19) >= 1000
triggerall = roundno >= 3 || EnemyNear(Var(53)),life > 170
triggerall = var(20) > 0 || EnemyNear(Var(53)),life <= (450*fvar(0))
triggerall = roundno >= 3 || var(20) <= 150
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),ctrl = 0
triggerall = EnemyNear(Var(53)),stateno != 811 && EnemyNear(Var(53)),stateno != 830
triggerall = EnemyNear(Var(53)),stateno != 3021 && EnemyNear(Var(53)),stateno != 3071
triggerall = EnemyNear(Var(53)),stateno != 2125 && EnemyNear(Var(53)),stateno != 2521
triggerall = numpartner = 0 || fvar(39) > 0
triggerall = NumHelper(8900+id)
triggerall = var(34) <= 0
triggerall = var(1) <= 0
triggerall = (Helper(8900+id),fvar(facing = -1) > 90 && p2dist X = [-5,320]) || (var(20) = [1,60]) || EnemyNear(Var(53)),life <= (450*fvar(0))
trigger1 = EnemyNear(Var(53)),Pos Y >= (-40 - (EnemyNear(Var(53)),Vel Y * 11) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 66))
trigger1 = EnemyNear(Var(53)),Pos Y <= (-10 - (EnemyNear(Var(53)),Vel Y * 11) - (EnemyNear(Var(53)),const(movement.yaccel) * 66))
trigger1 = (Helper(8900+id),fvar(facing = -1) <= 90 && p2dist X = [-5,320]) || p2dist X <= 70 + (EnemyNear(Var(53)),Vel X * 11) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 11) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)

;�X���b�V���Z�C�o�[
[State -1]
type = ChangeState
value = 3100
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = power >= 1000
triggerall = power >= 2000 || EnemyNear(Var(53)),life <= 200
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),ctrl = 0
triggerall = EnemyNear(Var(53)),stateno != 811 && EnemyNear(Var(53)),stateno != 830
triggerall = EnemyNear(Var(53)),stateno != 3021 && EnemyNear(Var(53)),stateno != 3071
triggerall = EnemyNear(Var(53)),stateno != 2125 && EnemyNear(Var(53)),stateno != 2521
triggerall = numpartner = 0 || fvar(39) > 0
triggerall = NumHelper(8900+id)
triggerall = (Helper(8900+id),fvar(facing = -1) > 120 || (var(20) <= 0 && var(19) < 500) || p2dist X = [-320,-11])
triggerall = var(34) <= 0
triggerall = var(1) <= 0
triggerall = fvar(0) <= 0.75
trigger1 = EnemyNear(Var(53)),Pos Y >= (-60 - (EnemyNear(Var(53)),Vel Y * 27) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 378))
trigger1 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 24) - (EnemyNear(Var(53)),const(movement.yaccel) * 300))
trigger1 = (Helper(8900+id),fvar(facing = -1) <= 90 && p2dist X = [-5,320]) || p2bodydist X <= 130 + (EnemyNear(Var(53)),Vel X * 27) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = var(58) := 1


;�n�C�W�����v(�u�X���b�V���[�ǌ��p)
[State -1]
type = ChangeState
value = 68
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = power >= 1000
triggerall = power >= 2000 || EnemyNear(Var(53)),life <= 220
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),ctrl = 0
triggerall = EnemyNear(Var(53)),stateno != 811 && EnemyNear(Var(53)),stateno != 830
triggerall = EnemyNear(Var(53)),stateno != 3021 && EnemyNear(Var(53)),stateno != 3071
triggerall = EnemyNear(Var(53)),stateno != 2125 && EnemyNear(Var(53)),stateno != 2521
triggerall = numpartner = 0 || fvar(39) > 0
triggerall = NumHelper(8900+id)
triggerall = (Helper(8900+id),fvar(facing = -1) > 120 || (var(20) <= 0 && var(19) < 500) || p2dist X = [-320,-11])
triggerall = var(34) <= 0
triggerall = var(1) <= 0
trigger1 = EnemyNear(Var(53)),Pos Y >= (-30 - (EnemyNear(Var(53)),Vel Y * 10) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 55))
trigger1 = EnemyNear(Var(53)),Pos Y <= (-5 - (EnemyNear(Var(53)),Vel Y * 10) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 55))
trigger1 = (Helper(8900+id),fvar(facing = -1) <= 90 && p2dist X = [-5,320]) || p2bodydist X <= 50 + (EnemyNear(Var(53)),Vel X * 10) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 10) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = var(56) := 1
trigger2 = EnemyNear(Var(53)),Pos Y >= (-30 - (EnemyNear(Var(53)),Vel Y * 13) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 91))
trigger2 = EnemyNear(Var(53)),Pos Y <= (-5 - (EnemyNear(Var(53)),Vel Y * 13) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 91))
trigger2 = (Helper(8900+id),fvar(facing = -1) <= 130 && p2dist X = [-5,320]) || p2bodydist X <= 100 + (EnemyNear(Var(53)),Vel X * 13) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 13) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = var(56) := 2
trigger3 = EnemyNear(Var(53)),Pos Y >= (-30 - (EnemyNear(Var(53)),Vel Y * 16) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 136))
trigger3 = EnemyNear(Var(53)),Pos Y <= (-5 - (EnemyNear(Var(53)),Vel Y * 16) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 136))
trigger3 = (Helper(8900+id),fvar(facing = -1) <= 160 && p2dist X = [-5,320]) || p2bodydist X <= 130 + (EnemyNear(Var(53)),Vel X * 16) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger3 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 16) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger3 = var(56) := 3
trigger4 = EnemyNear(Var(53)),Pos Y >= (-30 - (EnemyNear(Var(53)),Vel Y * 19) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 190))
trigger4 = EnemyNear(Var(53)),Pos Y <= (-5 - (EnemyNear(Var(53)),Vel Y * 19) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 190))
trigger4 = (Helper(8900+id),fvar(facing = -1) <= 190 && p2dist X = [-5,320]) || p2bodydist X <= 160 + (EnemyNear(Var(53)),Vel X * 19) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger4 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 19) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger4 = var(56) := 4

[State -1]
type = varset
triggerall = var(56) = [1,4]
trigger1 = roundstate != 2 || movetype = H || statetype = L || stateno = [3000,3599]
trigger2 = movetype = A || stateno = 52
trigger3 = EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),movetype = A
trigger4 = EnemyNear(Var(53)),ctrl || EnemyNear(Var(53)),stateno = [120,159]
var(56) = 0

;V�X���b�V���[
[State Twister Drive]
type = ChangeState
value = ifelse(power >= 2000 && EnemyNear(Var(53)),life > 220 && (EnemyNear(Var(53)),life <= 320 || power >= 3000),3050,3000)
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = power >= 1000
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
trigger1 = Pos Y < -8 && var(56) = 1
trigger1 = var(58) := 2
trigger2 = Pos Y < -16 && var(56) = 2
trigger2 = var(58) := 2
trigger3 = Pos Y <= -24 && var(56) = 3
trigger3 = var(58) := 2
trigger4 = Pos Y < -30 && var(56) = 4
trigger4 = var(58) := 2

;�O�����h�Z�C�o�[
[State -1]
type = ChangeState
value = 1100
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = var(34) <= 0
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),ctrl = 0
triggerall = EnemyNear(Var(53)),stateno != 811 && EnemyNear(Var(53)),stateno != 830
triggerall = EnemyNear(Var(53)),stateno != 3021 && EnemyNear(Var(53)),stateno != 3071
triggerall = EnemyNear(Var(53)),stateno != 2125 && EnemyNear(Var(53)),stateno != 2521
triggerall = numpartner = 0 || fvar(39) > 0
triggerall = NumHelper(8900+id)
triggerall = var(1) <= 0
trigger1 = EnemyNear(Var(53)),Pos Y >= (-60 - (EnemyNear(Var(53)),Vel Y * 24) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 300))
trigger1 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 21) - (EnemyNear(Var(53)),const(movement.yaccel) * 231))
trigger1 = (Helper(8900+id),fvar(facing = -1) <= 110 && p2dist X = [-5,320]) || p2bodydist X <= 130 + (EnemyNear(Var(53)),Vel X * 24) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 24) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = var(58) := 1

;���Ⴊ�݋��p���`
[State -1, taiku]
type = ChangeState
value = 410
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),ctrl = 0
triggerall = EnemyNear(Var(53)),stateno != 811 && EnemyNear(Var(53)),stateno != 830
triggerall = EnemyNear(Var(53)),stateno != 3021 && EnemyNear(Var(53)),stateno != 3071
triggerall = EnemyNear(Var(53)),stateno != 2125 && EnemyNear(Var(53)),stateno != 2521
triggerall = numpartner = 0 || fvar(39) > 0
triggerall = NumHelper(8900+id)
triggerall = var(34) <= 0
triggerall = var(1) <= 0
triggerall = var(20) <= 0 && var(19) < 500
triggerall = p2dist X >= 0
triggerall = EnemyNear(Var(53)),Pos Y >= (0 - (EnemyNear(Var(53)),Vel Y * 9) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 45))
triggerall = EnemyNear(Var(53)),Pos Y >= (0 - (EnemyNear(Var(53)),Vel Y * 16) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 136))
triggerall = random <= 500
trigger1 = EnemyNear(Var(53)),Pos Y >= (-50 - (EnemyNear(Var(53)),Vel Y * 4) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 10))
trigger1 = Helper(8900+id),fvar(facing = -1) < 90 && p2bodydist X <= 30
trigger1 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 4) - (EnemyNear(Var(53)),const(movement.yaccel) * 10))
trigger2 = EnemyNear(Var(53)),Pos Y >= (-90 - (EnemyNear(Var(53)),Vel Y * 5) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 15))
trigger2 = Helper(8900+id),fvar(facing = -1) < 90 && p2bodydist X <= 30
trigger2 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 5) - (EnemyNear(Var(53)),const(movement.yaccel) * 15))
trigger2 = EnemyNear(Var(53)),life > 15 && var(19) < 425

;���[���X���b�V���[
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),ctrl = 0
triggerall = EnemyNear(Var(53)),stateno != 811 && EnemyNear(Var(53)),stateno != 830
triggerall = EnemyNear(Var(53)),stateno != 3021 && EnemyNear(Var(53)),stateno != 3071
triggerall = EnemyNear(Var(53)),stateno != 2125 && EnemyNear(Var(53)),stateno != 2521
triggerall = numpartner = 0 || fvar(39) > 0
triggerall = NumHelper(8900+id)
triggerall = var(34) <= 0
triggerall = var(1) <= 0
triggerall = EnemyNear(Var(53)),Pos Y >= (-5 - (EnemyNear(Var(53)),Vel Y * 9) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 45)) || (var(20) > 0 || var(19) >= 425)
triggerall = EnemyNear(Var(53)),Pos Y >= (-5 - (EnemyNear(Var(53)),Vel Y * 16) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 136)) || (var(20) > 0 || var(19) >= 425)
trigger1 = Helper(8900+id),fvar(facing = -1) > 90 || p2bodydist X > 30 || var(20) > 0 || var(19) >= 500
trigger1 = EnemyNear(Var(53)),Pos Y >= (-100 - (EnemyNear(Var(53)),Vel Y * 9) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 45))
trigger1 = Helper(8900+id),fvar(facing = -1) > 110 || EnemyNear(Var(53)),Pos Y >= (-40 - (EnemyNear(Var(53)),Vel Y * 9) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 45))
trigger1 = EnemyNear(Var(53)),Pos Y <= (-5 - (EnemyNear(Var(53)),Vel Y * 9) - (EnemyNear(Var(53)),const(movement.yaccel) * 45))
trigger1 = (Helper(8900+id),fvar(facing = -1) <= 90 && p2dist X = [-5,320]) || p2bodydist X <= 50 + (EnemyNear(Var(53)),Vel X * 9) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 9) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = var(58) := 2
trigger2 = EnemyNear(Var(53)),Pos Y >= (-100 - (EnemyNear(Var(53)),Vel Y * 7) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 28))
trigger2 = Helper(8900+id),fvar(facing = -1) > 110 || EnemyNear(Var(53)),Pos Y >= (-40 - (EnemyNear(Var(53)),Vel Y * 9) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 45))
trigger2 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 7) - (EnemyNear(Var(53)),const(movement.yaccel) * 28))
trigger2 = (Helper(8900+id),fvar(facing = -1) <= 90 && p2dist X = [-5,320]) || p2bodydist X <= 40 + (EnemyNear(Var(53)),Vel X * 7) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 7) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = var(58) := 1

;���W�����v(�u�X���b�V���[�ǌ��p)
[State -1]
type = ChangeState
value = 65
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),ctrl = 0
triggerall = EnemyNear(Var(53)),stateno != 811 && EnemyNear(Var(53)),stateno != 830
triggerall = EnemyNear(Var(53)),stateno != 3021 && EnemyNear(Var(53)),stateno != 3071
triggerall = EnemyNear(Var(53)),stateno != 2125 && EnemyNear(Var(53)),stateno != 2521
triggerall = NumHelper(8900+id)
triggerall = (Helper(8900+id),fvar(facing = -1) > 120)
triggerall = var(34) <= 0
triggerall = var(1) <= 0
trigger1 = EnemyNear(Var(53)),Pos Y >= (-75 - (EnemyNear(Var(53)),Vel Y * 9) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 45))
trigger1 = EnemyNear(Var(53)),Pos Y <= (-10 - (EnemyNear(Var(53)),Vel Y * 9) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 45))
trigger1 = p2bodydist X <= 120 + (EnemyNear(Var(53)),Vel X * 9) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 9) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = var(56) := 13
trigger2 = EnemyNear(Var(53)),Pos Y >= (-65 - (EnemyNear(Var(53)),Vel Y * 8) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 36))
trigger2 = EnemyNear(Var(53)),Pos Y <= (-10 - (EnemyNear(Var(53)),Vel Y * 8) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 36))
trigger2 = p2bodydist X <= 90 + (EnemyNear(Var(53)),Vel X * 8) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 8) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = var(56) := 12

;�󒆋��L�b�N(��΋�)
[State -1]
type = ChangeState
value = 640
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
trigger1 = var(56) = 12

;���Ⴊ�݋��p���`
[State -1, taiku]
type = ChangeState
value = 410
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),ctrl = 0
triggerall = EnemyNear(Var(53)),stateno != 811 && EnemyNear(Var(53)),stateno != 830
triggerall = EnemyNear(Var(53)),stateno != 3021 && EnemyNear(Var(53)),stateno != 3071
triggerall = EnemyNear(Var(53)),stateno != 2125 && EnemyNear(Var(53)),stateno != 2521
triggerall = NumHelper(8900+id)
triggerall = var(34) <= 0
triggerall = var(1) <= 0
triggerall = var(20) <= 0
triggerall = p2dist X >= 0
trigger1 = EnemyNear(Var(53)),Pos Y >= (-40 - (EnemyNear(Var(53)),Vel Y * 4) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 10))
trigger1 = Helper(8900+id),fvar(facing = -1) < 90 && p2bodydist X <= 30
trigger1 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 4) - (EnemyNear(Var(53)),const(movement.yaccel) * 10))

;---------------------------------------------------------------------------
;MAX�L�����Z���R���{

;�N�C�b�N�E�n�C�p�[�h���C�u���[�h����
[State -1, Jump Strong Kick]
type = ChangeState
value = 901
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = var(20) = 0 && var(19) >= 1000
triggerall = power >= 4000 && EnemyNear(Var(53)),life < 800
triggerall = EnemyNear(Var(53)),life > 300 || EnemyNear(Var(53)),teammode = single && roundno >= 3
triggerall = stateno = [200,499]
triggerall = movehit
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype != A
trigger1 = stateno = 215 && animelem = 5 ,>= 1
trigger1 = var(32) := 1
trigger2 = stateno = 245 && animelem = 6 ,>= 1
trigger2 = var(32) := 1
trigger3 = stateno != 215 && stateno != 245 && power >= 4000
trigger3 = p2bodydist X <= 10 || stateno = 210 || stateno = 240 || stateno = 410
trigger3 = var(32) := 1

[State -1]
type = varset
triggerall = var(32) = 1
trigger1 = roundstate != 2 || movetype = H || statetype = L || stateno = [2500,2599]
trigger2 = EnemyNear(Var(53)),ctrl || EnemyNear(Var(53)),movetype = A || EnemyNear(Var(53)),stateno = [120,159]
var(32) = 0

;���I�i�u���[�h(MAX�L�����Z��)
[State Slide Touch 0]
type = ChangeState
value = 3500
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 || (var(29) >= 1 && var(20) > 0 && power >= 2000)
triggerall = var(20) > 0
triggerall = NumTarget(3100)
triggerall = Target(3100),stateno = [3120,3121]
triggerall = stateno = 3106 && time = 66
trigger1 = EnemyNear(Var(53)),life > 20 || (EnemyNear(Var(53)),teammode = single && roundno >= 3)
trigger1 = var(32) = 1

;�O�����h�Z�C�o�[
[State Scramble Dash 2]
type = ChangeState
value = 1100
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = var(20) > 0
triggerall = movehit = [1,6]
triggerall = stateno = 1000 || stateno = 2000
triggerall = p2dist X = [1,320]
triggerall = EnemyNear(Var(53)),Pos Y >= -20
triggerall = var(32) = 1
trigger1 = var(58) := 2

;���[���X���b�V���[�E�h���C�u�L�����Z��
[State Scramble Dash 3]
type = ChangeState
value = 1000
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = var(20) > 0
triggerall = movehit = [1,6]
triggerall = stateno = 1110 || (stateno = 2110 && animelem = 6, >= 1)
triggerall = NumHelper(8900+id)
triggerall = Helper(8900+id),fvar(facing = -1) > 100
triggerall = var(32) = 1
trigger1 = var(58) := 2

;---------------------------------------------------------------------------
;�h���C�u�L�����Z���R���{

;�N�C�b�N�E�n�C�p�[�h���C�u���[�h����
[State -1, Jump Strong Kick]
type = ChangeState
value = 901
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = var(20) = 0 && var(19) >= 1000
triggerall = stateno = [200,499]
triggerall = movehit
triggerall = var(59) >= 2 || stateno = 215 || stateno = 245
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype != A
triggerall = EnemyNear(Var(53)),life > 150
triggerall = power < 1000 || (EnemyNear(Var(53)),life > 270 && power = [1000,1999]) || (EnemyNear(Var(53)),life > 370 && power >= 2000)
;triggerall = (EnemyNear(Var(53)),life <= 410 && power >= 1000) || (EnemyNear(Var(53)),life <= 900 && power >= 4000)
trigger1 = stateno = 215 && animelem = 5 ,>= 1
trigger2 = stateno = 245 && animelem = 6 ,>= 1
trigger3 = stateno != 215 && stateno != 245
trigger3 = p2bodydist X <= 10 || stateno = 210 || stateno = 240 || stateno = 410

;���I�i�u���[�h
[State Slide Touch 0]
type = ChangeState
value = 3500
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 || (var(29) >= 1 && var(20) > 0 && power >= 2000)
triggerall = var(20) > 0
triggerall = movehit = 1 && p2dist X = [1,320]
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),Pos Y >= -20
triggerall = EnemyNear(Var(53)),Vel Y <= 0
triggerall = stateno = 1000 || stateno = 2000 || stateno = 1110 || (stateno = 3110 && animelem = 4, >= 1)
triggerall = EnemyNear(Var(53)),life <= 450 || var(20) = [1,250]
trigger1 = EnemyNear(Var(53)),life > 150 || (EnemyNear(Var(53)),teammode = single && roundno >= 3)
trigger1 = (var(20) = [1,250]) || (EnemyNear(Var(53)),teammode = single && roundno >= 3)

;���I�i�u���[�h(MAX�L�����Z��)
[State Slide Touch 0]
type = ChangeState
value = 3500
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 || (var(29) >= 1 && var(20) > 0 && power >= 2000)
triggerall = var(20) > 0
triggerall = NumTarget(3100)
triggerall = Target(3100),stateno = [3120,3121]
triggerall = EnemyNear(Var(53)),life <= 550 || power >= 3500
triggerall = stateno = 3106 && time = 66
trigger1 = EnemyNear(Var(53)),life > 20 || (EnemyNear(Var(53)),teammode = single && roundno >= 3)

;�O�����h�Z�C�o�[
[State Scramble Dash 2]
type = ChangeState
value = 1100
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = var(20) > 0 || var(19) >= 500
triggerall = movehit = [1,6]
triggerall = stateno = 1000 || stateno = 2000
triggerall = p2dist X = [1,320]
triggerall = var(20) > 0 || var(50) != 2 ;canrecover����t���O
triggerall = (Helper(8900+id),fvar(facing = -1) <= 120 && p2dist X = [-10,320]) || EnemyNear(Var(53)),Pos Y >= -40
triggerall = EnemyNear(Var(53)),Vel Y <= 0
trigger1 = EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),Pos Y >= -40
trigger1 = (Helper(8900+id),fvar(facing = -1) <= 120 && p2dist X = [1,320])
trigger1 = var(58) := 2
trigger2 = EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),Pos Y >= -40
trigger2 = EnemyNear(Var(53)),life <= 50
trigger2 = var(58) := 2
trigger3 = EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),Pos Y >= -40
trigger3 = power < 1000
trigger3 = var(20) > 0 || var(19) >= 800
trigger3 = var(58) := 2
trigger4 = EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),Pos Y >= -40
trigger4 = var(20) > 170
trigger4 = var(58) := 2
;
trigger5 = (Helper(8900+id),fvar(facing = -1) <= 120 && p2dist X = [1,320])
trigger5 = var(58) := 2
trigger6 = EnemyNear(Var(53)),life <= 50
trigger6 = var(58) := 2
trigger7 = power < 1000
trigger7 = var(20) > 0 || var(19) >= 800
trigger7 = var(58) := 2
trigger8 = var(20) > 170
trigger8 = var(58) := 2

;���[���X���b�V���[�E�h���C�u�L�����Z��
[State Scramble Dash 3]
type = ChangeState
value = 1000
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = var(20) > 0 || var(19) >= 500
triggerall = movehit = [1,6]
triggerall = stateno = 1110 || (stateno = 2110 && animelem = 6, >= 1)
triggerall = FrontEdgeBodyDist > 60 && Helper(8900+id),fvar(facing = -1) > 90
triggerall = NumHelper(8900+id)
triggerall = Helper(8900+id),fvar(facing = -1) > 100
trigger1 = EnemyNear(Var(53)),life <= 50
trigger1 = var(58) := 1
trigger2 = var(20) > 0
trigger2 = var(58) := 1

;�X���b�V���Z�C�o�[
[State Slide Touch]
type = ChangeState
value = 3100
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000
triggerall = power >= 3000 || EnemyNear(Var(53)),life <= 200
triggerall = var(20) > 0 || var(19) >= 500
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),Vel Y <= 0
triggerall = p2dist X = [1,320]
triggerall = movehit = [1,6]
triggerall = (var(20) = [1,150]) || EnemyNear(Var(53)),life <= 130
triggerall = NumHelper(8900+id)
triggerall = Helper(8900+id),fvar(facing = -1) > 100 || stateno = 1000 || stateno = 2000
triggerall = stateno = 1000 || stateno = 2000 || stateno = 1110 || (stateno = 2110 && animelem = 6, >= 1)
triggerall = stateno != 1110 || var(35) != 2 || var(13) != 0 || Helper(8900+id),fvar(facing = -1) > 120
trigger1 = EnemyNear(Var(53)),Pos Y < -20
trigger1 = var(58) := 1
trigger2 = EnemyNear(Var(53)),Pos Y >= -20
trigger2 = var(58) := 2

;�O�����h�Z�C�o�[
[State Scramble Dash 2]
type = ChangeState
value = 1100
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = var(20) > 0 || var(19) >= 500
triggerall = movehit = [1,6]
triggerall = stateno = 1000 || stateno = 2000
triggerall = p2dist X = [1,320]
triggerall = var(20) > 0 || var(50) != 2 ;canrecover����t���O
triggerall = EnemyNear(Var(53)),Vel Y <= 0
trigger1 = EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),Pos Y >= -40
trigger1 = var(20) > 0 || var(19) >= 900
trigger1 = var(58) := 2
trigger2 = var(20) > 0 || var(19) >= 900
trigger2 = var(58) := 1

;---------------------------------------------------------------------------
;�n��R���{

;���[���X���b�V���[(�h���C�u�L�����Z���R���{�p)
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H || EnemyNear(Var(53)),statetype = A
triggerall = movehit || (movecontact && EnemyNear(Var(53)),statetype = A)
triggerall = EnemyNear(Var(53)),statetype != A || var(1) <= 0
triggerall = var(20) > 170
trigger1 = stateno = 200 && var(57) = 0
trigger1 = var(58) := 2
trigger2 = stateno = 210 && animelem = 4,>=0
trigger2 = var(58) := 2
trigger3 = stateno = 215 && animelem = 5 ,>= 1
trigger3 = var(58) := 2
trigger4 = stateno = 245 && animelem = 6 ,>= 1
trigger4 = var(58) := 2
trigger5 = stateno = 400 && var(57) = 0
trigger5 = var(58) := 2
trigger6 = stateno = 410 && animelem = 2,>=0
trigger6 = var(58) := 2

;�O�����h�Z�C�o�[
[State -1, a]
type = ChangeState
value = 1100
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),statetype != A
triggerall = movecontact = 1
triggerall = (moveguarded = 1 && random <= 550)
trigger1 = stateno = 210
trigger1 = var(58) := 2
trigger2 = stateno = 215 && animelem = 5 ,>= 1
trigger2 = var(58) := 2
trigger3 = stateno = 245 && animelem = 6 ,>= 1
trigger3 = var(58) := 2
trigger4 = stateno = 410
trigger4 = var(58) := 2
trigger5 = stateno = 290
trigger5 = var(58) := 2

;�O�����h�Z�C�o�[
[State -1, a]
type = ChangeState
value = 1100
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),statetype = A || p2bodydist X > 80
triggerall = p2dist X = [1,320]
triggerall = movecontact = 0 && random <= 300
trigger1 = stateno = 290 && animelem = 10, = 1
trigger1 = var(58) := 2

;���Ⴊ�ݎ�p���`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = var(20) > 0
triggerall = movehit = 1
triggerall = FrontEdgeBodyDist > 70
triggerall = p2bodydist X <= 0
trigger1 = stateno = 200 || stateno = 400
trigger2 = stateno = 430

;���[���X���b�V���[
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H || EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),statetype != A || var(1) <= 0
triggerall = movehit = 1
triggerall = var(20) > 0
trigger1 = stateno = 200
trigger1 = var(58) := 2
trigger2 = stateno = 215 && animelem = 5 ,>= 1
trigger2 = var(58) := 2
trigger3 = stateno = 230
trigger3 = var(58) := 2
trigger4 = stateno = 245 && animelem = 6 ,>= 1
trigger4 = var(58) := 2
trigger5 = stateno = 400
trigger5 = var(58) := 2
trigger6 = stateno = 410
trigger6 = var(58) := 2

;�X�g���C�N�A�[�` (�L�����Z����)
[State -1, a]
type = ChangeState
value = 255
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),statetype != A
trigger1 = stateno = 215 && movehit && animelem = 5 ,>= 1
trigger2 = stateno = 245 && movehit && animelem = 6 ,>= 1
trigger3 = stateno = 230 && movehit
trigger4 = stateno = 410 && movecontact = 1
trigger6 = stateno = 215 && moveguarded = 1
trigger6 = random <= 100
trigger7 = stateno = 245 && moveguarded = 1
trigger7 = random <= 100
trigger8 = stateno = 400 && moveguarded = 1
trigger8 = random <= 100
trigger9 = stateno = 230 && moveguarded = 1
trigger9 = var(59) = 1 && random <= 250


;X�L�����o�[1(�ǒ[�R���{)
[State Scramble Dash]
type = ChangeState
value = 1250
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = FrontEdgeBodyDist <= 40 || Helper(8900+id),fvar(facing = -1) <= 70
triggerall = var(20) > 0 || var(50) != 2 ;canrecover����t���O
trigger1 = stateno = 255 && movehit

;EXV�X���b�V���[(�X�g���C�N�A�[�`�q��)
[State Twister Drive]
type = ChangeState
value = 3050
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = power >= 2000
triggerall = EnemyNear(Var(53)),statetype != A || var(1) <= 0
triggerall = var(50) = 2 || FrontEdgeBodyDist > 60 || EnemyNear(Var(53)),life <= 320
triggerall = power >= 3000 || EnemyNear(Var(53)),life <= 320
triggerall = EnemyNear(Var(53)),life > 180 || (EnemyNear(Var(53)),teammode = single && roundno >= 3)
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
trigger1= stateno = 255 && movehit

;V�X���b�V���[(�X�g���C�N�A�[�`�q��)
[State Twister Drive]
type = ChangeState
value = 3000
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = power >= 1000
triggerall = EnemyNear(Var(53)),statetype != A || var(1) <= 0
triggerall = var(50) = 2 || FrontEdgeBodyDist > 60 || EnemyNear(Var(53)),life <= 320
triggerall = power >= 2000 || EnemyNear(Var(53)),life <= 220
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
trigger1= stateno = 255 && movehit
trigger1= var(58) := 2

;X�L�����o�[(�X�g���C�N�A�[�`�q��)
[State Scramble Dash]
type = ChangeState
value = 1200
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = EnemyNear(Var(53)),movetype = H || FrontEdgeBodyDist > 60
trigger1 = stateno = 255 && movehit

;--------

;������L�b�N
[State -1, Crouching Light Punch]
type = ChangeState
value = 230
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = movecontact = 1
triggerall = movehit || (var(59) = 1 && random <= 500)
triggerall = EnemyNear(Var(53)),statetype != A
trigger1 = stateno = 200
trigger1 = p2bodydist X <= 15
trigger2 = stateno = 400
trigger2 = p2bodydist X <= 15
trigger3 = stateno = 430
trigger3 = p2bodydist X <= 10

;���Ⴊ�ݎ�L�b�N
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),statetype != A
triggerall = movehit || (movecontact = 1 && (random <= 500 || EnemyNear(Var(53)),statetype = S && random <= 800))
trigger1 = stateno = 200
trigger2 = stateno = 400
trigger3 = stateno = 430
trigger3 = p2bodydist X <= 30 || (p2bodydist X <= 35 && FrontEdgeBodyDist > 45)

;���[���X���b�V���[
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H || EnemyNear(Var(53)),statetype = A
triggerall = movehit || (movecontact && EnemyNear(Var(53)),statetype = A)
triggerall = EnemyNear(Var(53)),statetype = A && var(1) <= 0
trigger1 = stateno = 200
trigger1 = movecontact = 1 && var(52) >= 20
trigger1 = var(58) := 2
trigger2 = stateno = 210 && animelem = 4,>=0
trigger2 = var(58) := 2
trigger3 = stateno = 215 && animelem = 5 ,>= 1
trigger3 = var(58) := 2
trigger4 = stateno = 245 && animelem = 6 ,>= 1
trigger4 = var(58) := 2
trigger5 = stateno = 400
trigger5 = var(58) := 2
trigger6 = stateno = 410 && animelem = 2,>=0
trigger6 = var(58) := 2

;EXX�L�����o�[(�ł�)
[State Scramble Dash]
type = ChangeState
value = 2200
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = power >= 1000
triggerall = power >= 3000 || EnemyNear(Var(53)),life <= 50 || power >= 2000 && random <= 200
trigger1 = stateno = 255 && moveguarded = 1

;�{���e�b�N�����`���[(�ǒ[���n�U��)
[State -1, taiku]
type = ChangeState
value = 1300
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = Helper(8900+id),fvar(facing = -1) < 110 && p2bodydist X <= 70
triggerall = p2dist X >= 0
triggerall = EnemyNear(Var(53)),statetype = A
trigger1 = stateno = 410 && movecontact
trigger1 = var(58) := 1

;--------------------------------------------------------------------------
;�n��ǌ��i�q�b�g�m��j

;���W�����v(�ǌ��p)
[State -1]
type = ChangeState
value = ifelse(p2bodydist X > 30,65,62)
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno = 5910
triggerall = EnemyNear(Var(53)),time <= 30
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = p2dist X = [1,320]
trigger1 = p2bodydist X <= 80

;�W�����v���p���`
[State -1]
type = ChangeState
value = ifelse(p2dist X < 0 || Vel X != 0,610,640)
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno = 5910
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || (movetype != H && stateno = [120,149])
trigger1 = Vel Y > 3

;�ߗ������p���`
[State -1]
type = ChangeState
value = 215
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno = 5910
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = p2dist X = [1,55]
trigger1 = p2bodydist X <= 10

;�_�b�V��
[State -1]
type = ChangeState
value = 100
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = stateno != 100
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno = 5910
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || stateno = 21 || stateno = 22
triggerall = stateno != 901
trigger1 = (p2dist X = [1,320]) && p2bodydist X = [2,180]

;�ߗ������p���`
[State -1]
type = ChangeState
value = 215
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype = S
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = (p2dist X = [1,55]) || (stateno = 52 && ctrl)
triggerall = EnemyNear(Var(53)),statetype = S
trigger1 = EnemyNear(Var(53)),GetHitVar(hittime) = 4
trigger2 = EnemyNear(Var(53)),GetHitVar(hittime) >= 4 && p2bodydist X <= 1

;�ߗ������L�b�N
[State -1]
type = ChangeState
value = 245
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = (p2dist X = [1,55]) || (stateno = 52 && ctrl)
trigger1 = EnemyNear(Var(53)),GetHitVar(hittime) = 4
trigger2 = EnemyNear(Var(53)),GetHitVar(hittime) >= 4 && p2bodydist X <= 1

;���Ⴊ�݋��p���`
[State -1]
type = ChangeState
value = 410
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = p2bodydist X = [-5,25]
triggerall = (p2dist X = [1,320]) || (stateno = 52 && ctrl)
trigger1 = EnemyNear(Var(53)),GetHitVar(hittime) <= 2 && random <= 150
trigger2 = EnemyNear(Var(53)),GetHitVar(hittime) = [2,3]

;������L�b�N
[State -1]
type = ChangeState
value = 230
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = p2bodydist X = [26,40]
triggerall = (p2dist X = [1,320]) || (stateno = 52 && ctrl)
trigger1 = EnemyNear(Var(53)),GetHitVar(hittime) = [4,5]

;���Ⴊ�݋��L�b�N
[State -1]
type = ChangeState
value = 440
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = p2bodydist X = [26,55]
triggerall = (p2dist X = [1,320]) || (stateno = 52 && ctrl)
trigger1 = EnemyNear(Var(53)),GetHitVar(hittime) = [5,6]

;���Ⴊ�ݎ�L�b�N
[State -1]
type = ChangeState
value = 430
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = p2bodydist X = [26,55]
triggerall = (p2dist X = [1,320]) || (stateno = 52 && ctrl)
trigger1 = EnemyNear(Var(53)),GetHitVar(hittime) <= 2 && random <= 150
trigger2 = EnemyNear(Var(53)),GetHitVar(hittime) = [2,3]

;�_�b�V��
[State -1]
type = ChangeState
value = 100
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (movetype != H && stateno = [120,149])
triggerall = (p2dist X = [1,320]) || (stateno = 52 && ctrl)
triggerall = stateno != [100,101]
trigger1 = EnemyNear(Var(53)),GetHitVar(hittime) > 5 && p2bodydist X <= 80
trigger2 = EnemyNear(Var(53)),GetHitVar(hittime) > 6 && p2bodydist X <= 87
trigger3 = EnemyNear(Var(53)),GetHitVar(hittime) > 7 && p2bodydist X <= 94
trigger4 = EnemyNear(Var(53)),GetHitVar(hittime) > 8 && p2bodydist X <= 101
trigger5 = EnemyNear(Var(53)),GetHitVar(hittime) > 9 && p2bodydist X <= 108
trigger6 = EnemyNear(Var(53)),GetHitVar(hittime) >10 && p2bodydist X <= 115
trigger7 = EnemyNear(Var(53)),GetHitVar(hittime) >11 && p2bodydist X <= 122
trigger8 = EnemyNear(Var(53)),GetHitVar(hittime) >12 && p2bodydist X <= 129
trigger9 = EnemyNear(Var(53)),GetHitVar(hittime) >13 && p2bodydist X <= 136
trigger10= EnemyNear(Var(53)),GetHitVar(hittime) >14 && p2bodydist X <= 143

;--------------------------------------------------------------------------
;�n��ǌ��i�����j

;-----------------------
;�ԍ������J���Ă݂���

;�o�N�X�e
[State -1]
type = ChangeState
value = 105
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = (p2dist X = [1,320])
triggerall = p2bodydist X > 45 && p2bodydist X <= 160
triggerall = BackEdgeBodyDist > 70
triggerall = EnemyNear(Var(53)),teammode = single || EnemyNear(Var(53)),numpartner = 0
trigger1 = random <= 400 || EnemyNear(Var(53)),stateno = [120,159]
trigger1 = random <= 500
trigger1 = EnemyNear(Var(53)),movetype = H
trigger1 = (EnemyNear(Var(53)),GetHitVar(hittime) <= 0)

;-----------------------

;�G�K�[�h��Ԏ��A�W�����v���邩�ǂ����̔��f
[State -1]
type = varset
triggerall = var(40) = 0
triggerall = roundstate = 2 && statetype != A && !inguarddist
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno = [120,159]
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101])
triggerall = movetype != A
triggerall = (p2dist X = [1,320]) && EnemyNear(Var(53)),facing = -facing
trigger1 = EnemyNear(Var(53)),GetHitVar(hittime) >= 1
var(40) = ifelse((p2bodydist X < 5 + EnemyNear(Var(53)),GetHitVar(hittime) * 2.4) && random <= 300,3,ifelse(random <= 100 || (EnemyNear(Var(53)),statetype = C && random < 300),2,1))
;var(40) = [1:���i] [2:���i] [3:����]

[State -1]
type = varset
triggerall = var(40) = [1,3]
trigger1 = roundstate != 2 || movetype = H || statetype = L
trigger2 = (stateno = [41,43]) || (stateno = [61,63]) || stateno = 65 || stateno = 68 || statetype = A || movetype = A
trigger3 = EnemyNear(Var(53)),statetype = A
trigger4 = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
trigger5 = EnemyNear(Var(53)),statetype = L
trigger6 = var(40) = [1,2]
trigger6 = EnemyNear(Var(53)),ctrl || EnemyNear(Var(53)),movetype = A
var(40) = 0

;-----------------------
;����

; �ʏ퓊��
[State -1]
type = ChangeState
value = ifelse(EnemyNear(Var(53)),StateType = A,215,ifelse(BackedgeBodyDist < 160,820,800))
triggerall = Var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),MoveType != H && EnemyNear(Var(53)),statetype != L
triggerall = EnemyNear(Var(53)),StateType != A || (EnemyNear(Var(53)),Pos Y >= -30 && var(49) <= 5)
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || stateno = 21 || stateno = 22 || (movetype != H && stateno = [120,149])
trigger1 = p2bodydist X < 5
trigger1 = EnemyNear(Var(53)),movetype != A || EnemyNear(Var(53)),time <= 5 || EnemyNear(Var(53)),animtime >= -5
trigger1 = var(40) = 3

;-----------------------
;���i

;���W�����v���(���蒆�i)
[State -1]
type = ChangeState
value = 63
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno = [120,159]
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = (p2dist X = [1,320])
triggerall = BackEdgeBodyDist > 60
triggerall = p2bodydist X <= 10 && random <= 600
trigger1 = var(40) = 2
trigger1 = var(56) := 12

;--

;�����W�����v
[State -1]
type = ChangeState
value = 41
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno = [120,159]
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = (p2dist X = [1,320])
triggerall = p2bodydist X = [-5,20]
triggerall = random <= 200
trigger1 = var(40) = 2
trigger1 = var(56) := 13

;�m�[�}���W�����v�O
[State -1]
type = ChangeState
value = 42
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno = [120,159]
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = (p2dist X = [1,320])
triggerall = (Helper(8900+id),fvar(facing = -1) <= 90) || p2dist X = [80,110]
triggerall = random <= 300
trigger1 = var(40) = 2
trigger1 = var(56) := 10

;���W�����v
[State -1]
type = ChangeState
value = 62
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno = [120,159]
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = (p2dist X = [1,320])
triggerall = (Helper(8900+id),fvar(facing = -1) <= 90) || p2dist X = [90,130]
trigger1 = var(40) = 2
trigger1 = var(56) := 11

;���W�����v
[State -1]
type = ChangeState
value = 65
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno = [120,159]
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = (p2dist X = [1,320])
triggerall = p2dist X = [131,180]
trigger1 = var(40) = 2
trigger1 = var(56) := 11

[State -1]
type = varset
triggerall = var(56) = [10,12]
trigger1 = roundstate != 2 || movetype = H || statetype = L
trigger2 = movetype = A || stateno = 52 || stateno = 610
var(56) = 0

;�󒆋��p���`
[State -1]
type = ChangeState
value = 610
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
trigger1 = Vel Y > -1
trigger1 = var(56) = 10
trigger2 = Vel Y > 0
trigger2 = var(56) = 11
trigger3 = var(56) = 12

;-----------------------
;���i

;���Ⴊ�ݎ�L�b�N
[State -1]
type = ChangeState
value = 430
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno = [120,159]
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = (p2dist X = [1,320]) && p2bodydist X <= 55
triggerall = var(40) != 3
triggerall = p2bodydist X <= 10 || (p2bodydist X <= 20 && random <= 200) || random <= 100 || var(40) = 1
trigger1 = (EnemyNear(Var(53)),GetHitVar(hittime) = [1,2])
trigger2 = EnemyNear(Var(53)),statetype = S
trigger3 = var(40) = 1

;���Ⴊ�ݎ�p���`
[State -1]
type = ChangeState
value = 400
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno = [120,159]
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = (p2dist X = [1,320]) && p2bodydist X <= 25
triggerall = var(40) != 3
triggerall = random <= 100
trigger1 = (EnemyNear(Var(53)),GetHitVar(hittime) = [1,2])

;--------------------------------------------------------------------------
;���n�d��

;���Ⴊ�ݎ�L�b�N
[State -1]
type = ChangeState
value = 430
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),movetype != A && EnemyNear(Var(53)),statetype != L
triggerall = (EnemyNear(Var(53)),stateno = [15020,15040]) && EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),Pos Y >= (0 - (EnemyNear(Var(53)),Vel Y * 1) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 1))
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = p2bodydist X <= 70 + (EnemyNear(Var(53)),Vel X * 1) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 1) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = random <= 250

;���Ⴊ�݋��p���`
[State -1]
type = ChangeState
value = 410
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),movetype != A && EnemyNear(Var(53)),statetype != L
triggerall = (EnemyNear(Var(53)),stateno = [15020,15040]) && EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),Pos Y >= (0 - (EnemyNear(Var(53)),Vel Y * 1) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 1))
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = p2bodydist X <= 35 + (EnemyNear(Var(53)),Vel X * 1) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 1) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = random <= 200

;�����W�����v(���蒆�i���L�b�N�p)
[State -1]
type = ChangeState
value = 41
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A && BackEdgeBodyDist > 60
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),movetype != A && EnemyNear(Var(53)),statetype != L
triggerall = (EnemyNear(Var(53)),stateno = [15020,15040]) && EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),Pos Y >= (0 - (EnemyNear(Var(53)),Vel Y * 6) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 21))
triggerall = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 5) - (ifelse(fvar(39) <= 0,EnemyNear(Var(53)),const(movement.yaccel),fvar(39)) * 15))
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = p2bodydist X <= 45 + (EnemyNear(Var(53)),Vel X * 6) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = p2dist X >= 0 + (EnemyNear(Var(53)),Vel X * 6) * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = random <= 200
trigger1 = var(56) := 13

;�_�b�V��
[State -1]
type = ChangeState
value = 100
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = stateno != 100
triggerall = EnemyNear(Var(53)),movetype = H
triggerall = random <= 500 || EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = ctrl || stateno = 1 || stateno = 21 || stateno = 22
triggerall = stateno != 901
triggerall = (p2dist X = [1,320]) && p2bodydist X = [2,150]
trigger1 = random <= 50 + 50*EnemyNear(Var(53)),GetHitVar(hittime)

;--------------------------------------------------------------------------
;�N���U��

;���Ⴊ�ݎ�L�b�N
[State -1]
type = ChangeState
value = 430
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),stateno = 5120 && EnemyNear(Var(53)),animtime = [-3,0]
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = p2bodydist X <= 60 ;&& random <= 600

;�o�N�X�e
[State -1]
type = ChangeState
value = 105
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A && BackEdgeBodyDist > 50
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),stateno = 5120 && EnemyNear(Var(53)),animtime = [-11,-10]
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = p2bodydist X <= 80
trigger1 = random <= 100

;--

;��돬�W�����v(���蒆�i���p���`�p)
[State -1]
type = ChangeState
value = 63
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A && BackEdgeBodyDist > 60
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),stateno = 5120 && EnemyNear(Var(53)),animtime = -5
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = p2bodydist X <= 20 && random <= 300
trigger1 = var(56) := 9

;�����W�����v(���蒆�i���L�b�N�p)
[State -1]
type = ChangeState
value = 41
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A && BackEdgeBodyDist > 60
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),stateno = 5120 && EnemyNear(Var(53)),animtime = -5
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = p2bodydist X <= 30 && random <= 200
trigger1 = var(56) := 13

;�󒆋��p���`(���蒆�i)
[State -1]
type = ChangeState
value = 610
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
trigger1 = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
trigger1 = var(56) = 9

[State -1]
type = varset
triggerall = var(56) = 9
trigger1 = roundstate != 2 || movetype = H || statetype = L || stateno = 610
trigger2 = movetype = A || stateno = 52
var(56) = 0

;--

;�{���e�b�N�����`���[
[State -1]
type = ChangeState
value = ifelse(power >= 1000 && (EnemyNear(Var(53)),life < 100 || power >= 3000 && random <= 500),2300,1300)
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),Vel X = 0 && EnemyNear(Var(53)),Vel Y = 0
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = p2bodydist X = [35,65]
trigger1 = EnemyNear(Var(53)),stateno != 5120 && EnemyNear(Var(53)),statetype = L
trigger1 = random <= 100
trigger1 = var(58) := 1
trigger2 = EnemyNear(Var(53)),stateno = 5120 && EnemyNear(Var(53)),animtime = [-30,-20]
trigger2 = EnemyNear(Var(53)),time = [1,2]
trigger2 = random <= 250
trigger2 = var(58) := 1

;�C�������O���e
[State -1]
type = ChangeState
value = ifelse(random < 500,1610,1600)
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist && NumHelper(2) = 0
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = EnemyNear(Var(53)),stateno != 5120 && EnemyNear(Var(53)),statetype = L
trigger1 = p2bodydist X >= 160
trigger1 = random <= 80
trigger2 = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),statetype = A
trigger2 = EnemyNear(Var(53)),Pos Y >= -50 && EnemyNear(Var(53)),stateno = [120,159]
trigger2 = EnemyNear(Var(53)),ctrl = 0 && var(50) != 2
trigger2 = ifelse(EnemyNear(Var(53)),facing = -facing,EnemyNear(Var(53)),Vel X < 0,EnemyNear(Var(53)),Vel X > 0)
trigger2 = p2bodydist X >= 120
trigger2 = random <= 80

;--------------------------------------------------------------------------
;�V�X�e�����̑�

; �ʏ퓊��
[State -1]
type = ChangeState
value = ifelse(EnemyNear(Var(53)),StateType = A,215,ifelse(BackedgeBodyDist < 160,820,800))
triggerall = Var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),MoveType != H && EnemyNear(Var(53)),statetype != L
triggerall = EnemyNear(Var(53)),StateType != A || (EnemyNear(Var(53)),Pos Y >= -30 && var(49) <= 5)
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || stateno = 21 || stateno = 22 || (movetype != H && stateno = [120,149])
trigger1 = p2bodydist X < 5
trigger1 = EnemyNear(Var(53)),movetype != A || EnemyNear(Var(53)),time <= 5 || EnemyNear(Var(53)),animtime >= -5
trigger1 = random <= 20 || (var(59) >= 2 && random <= 50) || (EnemyNear(Var(53)),animtime = -1 && random <= 80)

;��荞��
[State -1]
type = ChangeState
value = 700
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype != H && EnemyNear(Var(53)),facing = -facing
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || stateno = 21 || stateno = 22 || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = !(EnemyNear(Var(53)),HitDefAttr = ,NT,ST,HT)
trigger1 = var(59) >= 2 && P2Dist X = [81,140]
trigger1 = EnemyNear(Var(53)),movetype = A && EnemyNear(Var(53)),AnimTime <= -37
trigger1 = var(37) = 0 || var(37) = 2
trigger1 = random <= 30
trigger1 = var(37) := 1
trigger2 = var(59) >= 2 && P2Dist X = [-5,80]
trigger2 = EnemyNear(Var(53)),movetype = A && EnemyNear(Var(53)),AnimTime <= -37
trigger2 = random <= 150 || (random <= 300 && life <= 400)
trigger3 = enemy,numproj || (EnemyNear(Var(53)),numhelper && EnemyNear(Var(53)),movetype = A && !(EnemyNear(Var(53)),HitDefAttr = SCA))
trigger3 = EnemyNear(Var(53)),time >= 15
trigger3 = P2BodyDist X >= 160 && inguarddist && random <= 50
trigger3 = var(38) = 0 || var(38) = 2
trigger3 = var(38) := 1

;��荞�ݐ��۔���
[State -1]
Type = VarSet
triggerall= var(37) = 1
triggerall= roundstate=2
trigger1 = movetype = A
var(37) = 2
IgnoreHitPause = 1

;��荞�ݐ��۔���
[State -1]
Type = VarSet
triggerall= var(37) = 1
triggerall= roundstate=2
trigger1 = movetype = H && stateno != [120,159]
var(37) = 3
IgnoreHitPause = 1

;��荞�ݐ��۔���
[State -1]
Type = VarSet
triggerall= var(37) = 1
triggerall= roundstate=2
trigger1 = movetype = A
var(38) = 2
IgnoreHitPause = 1

;��荞�ݐ��۔���
[State -1]
Type = VarSet
triggerall= var(38) = 1
triggerall= roundstate=2
trigger1 = movetype = H && stateno != [120,159]
var(38) = 3
IgnoreHitPause = 1

;�K�[�h�L�����Z���ً}���
[State -1]
type = ChangeState
value = 700
triggerall = var(59) >= 1
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000
triggerall = (stateno = [150,151])
triggerall = EnemyNear(Var(53)),statetype != A && EnemyNear(Var(53)),movetype = A
triggerall = EnemyNear(Var(53)),statetype != A && EnemyNear(Var(53)),facing = -facing
triggerall = FrontEdgeBodyDist >= 60
triggerall = p2dist X <= 80 || (EnemyNear(Var(53)),Vel X > 0 && p2dist X <= 90)
triggerall = teammode = single || teammode = turns
triggerall = EnemyNear(Var(53)),AnimTime <= -37 || (EnemyNear(Var(53)),time <= 7 && var(59) <= 1)
trigger1 = BackEdgeBodyDist <= 20 || EnemyNear(Var(53)),life <= 50 || power >= 3000 || EnemyNear(Var(53)),AnimTime <= -37
trigger1 = random <= 20 || (EnemyNear(Var(53)),life <= 50 && random <= 50)

;�K�[�h�L�����Z���ӂ���΂��U��
[State -1]
type = ChangeState
value = 291
triggerall = var(59) >= 1
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000
triggerall = (stateno = [150,151])
triggerall = EnemyNear(Var(53)),statetype != A && EnemyNear(Var(53)),movetype = A
triggerall = EnemyNear(Var(53)),animtime <= -5 && EnemyNear(Var(53)),statetype != A && EnemyNear(Var(53)),facing = -facing
triggerall = p2dist X <= 70 || (EnemyNear(Var(53)),Vel X > 0 && p2dist X <= 80)
trigger1 = BackEdgeBodyDist <= 20 || EnemyNear(Var(53)),life <= 50 || power >= 3000
trigger1 = random <= 5 || (EnemyNear(Var(53)),life <= 50 && random <= 30)
trigger2 = numpartner && EnemyNear(Var(53)),numpartner
trigger2 = partner,life > 0 && fvar(37) = [1,120]
trigger2 = BackEdgeBodyDist <= 20 || EnemyNear(Var(53)),life <= 50 || power >= 2000 || random <= 400
trigger2 = random <= 50 || (partner,movetype = H && partner,stateno != [120,159])
trigger3 = EnemyNear(Var(53)),stateno = var(48)
trigger3 = var(48) >= 1000 && EnemyNear(Var(53)),time <= 15
trigger3 = random <= 10 || (power >= 2000 && random <= 40)
trigger4 = EnemyNear(Var(53)),stateno = var(45)
trigger4 = (var(45) = [1,999]) && EnemyNear(Var(53)),time <= 15
trigger4 = random <= 10 || (power >= 2000 && random <= 40)

;����
[State -1]
type = ChangeState
value = 100
triggerall = var(59) >= 1
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),movetype != A
triggerall = !inguarddist && stateno != [100,101]
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || stateno = 21 || stateno = 22
trigger1 = (p2bodydist X = [150,180]) && random <= 30
trigger1 = power >= 1000 || var(20) > 0 || random <= 200 || var(18) >= 60
trigger2 = (p2bodydist X = [180,320]) && random <= 50
trigger2 = power >= 1000 || var(20) > 0 || random <= 200 || var(18) >= 60
trigger3 = (EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),statetype = A) || EnemyNear(Var(53)),statetype = L
trigger3 = (p2bodydist X = [81,180]) && random <= 80
trigger3 = teammode = single || teammode = turns
trigger3 = power >= 1000 || var(20) > 0 || random <= 200 || var(18) >= 60
trigger4 = EnemyNear(Var(53)),statetype = A
trigger4 = EnemyNear(Var(53)),stateno = [15020,15040]
trigger4 = (p2bodydist X = [0,240]) && p2dist X = [10,120]
trigger4 = random <= 100
trigger4 = teammode = single || teammode = turns

;----

;��э���
[State -1]
Type = VarSet
triggerall= var(43) = 0 || var(43) = 2
triggerall= roundstate=2
triggerall= stateno = 50 && time = 1 && statetype = A
trigger1 = prevstateno = 42 || prevstateno = 62 || prevstateno = 65 || prevstateno = 68
var(43) = 1

;��э���
[State -1]
Type = VarSet
triggerall= var(43) = 1
trigger1 = roundstate != 2 || movecontact || stateno = [2000,2999]
trigger2 = stateno = 52 || statetype != A
var(43) = 0

;���ăt���O
[State -1]
Type = VarSet
triggerall= var(43) = 1
triggerall = roundstate = 2
trigger1 = movetype = H && stateno != [120,159]
var(43) = 2

;���W�����v
[State -1, Dush Low Jump]
Type = ChangeState
value = 65
triggerall = Var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),statetype != A || (EnemyNear(Var(53)),Pos Y >= -40 && (EnemyNear(Var(53)),Vel Y < 0 || EnemyNear(Var(53)),movetype != A))
triggerall = EnemyNear(Var(53)),StateType != L && EnemyNear(Var(53)),facing = -facing
triggerall = var(43) != 2 || random <= 100
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || stateno = 21 || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = (EnemyNear(Var(53)),Vel X <= 0 && p2bodydist X <= 220 && p2dist X > 160) || (EnemyNear(Var(53)),Vel X > 0 && p2bodydist X <= 260 && p2dist X > 200)
trigger1 = EnemyNear(Var(53)),movetype != H
trigger1 = random <= 50 || (EnemyNear(Var(53)),statetype = C && random <= 80)

[State -1, Low Jump]
Type = ChangeState
value = 62
triggerall = Var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),statetype != A || (EnemyNear(Var(53)),Pos Y >= -40 && (EnemyNear(Var(53)),Vel Y < 0 || EnemyNear(Var(53)),movetype != A))
triggerall = EnemyNear(Var(53)),StateType != L && EnemyNear(Var(53)),facing = -facing
triggerall = var(43) != 2 || random <= 100
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || stateno = 21 || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = (EnemyNear(Var(53)),Vel X <= 0 && p2bodydist X <= 180 && p2dist X > 90) || (EnemyNear(Var(53)),Vel X > 0 && p2bodydist X <= 220 && p2dist X > 130)
trigger1 = EnemyNear(Var(53)),movetype != H
trigger1 = random <= 50 || (EnemyNear(Var(53)),statetype = C && random <= 80)

[State -1, Nomal Jump]
Type = ChangeState
value = 42
triggerall = Var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = EnemyNear(Var(53)),statetype != A || (EnemyNear(Var(53)),Pos Y >= -40 && (EnemyNear(Var(53)),Vel Y < 0 || EnemyNear(Var(53)),movetype != A))
triggerall = EnemyNear(Var(53)),StateType != L && EnemyNear(Var(53)),facing = -facing
triggerall = var(43) != 2 || random <= 100
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || stateno = 21 || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = (EnemyNear(Var(53)),Vel X <= 0 && p2dist X <= 110 && p2dist X > 90) || (EnemyNear(Var(53)),Vel X > 0 && p2dist X <= 150 && p2dist X > 130)
trigger1 = !inguarddist
trigger1 = EnemyNear(Var(53)),movetype != H
trigger1 = random <= 25

[State -1, High Jump]
Type = ChangeState
value = 68
triggerall = Var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A && EnemyNear(Var(53)),facing = -facing
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || stateno = 21 || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = var(43) != 2 || random <= 100
trigger1 = (EnemyNear(Var(53)),Vel X <= 0 && p2dist X <= 130 && p2dist X > 100) || (EnemyNear(Var(53)),Vel X > 0 && p2dist X <= 170 && p2dist X > 140)
trigger1 = !inguarddist
trigger1 = EnemyNear(Var(53)),movetype != H &&  EnemyNear(Var(53)),statetype != A
trigger1 = random <= 25
;��ѓ������
trigger2 = EnemyNear(Var(53)),movetype != H || EnemyNear(Var(53)),stateno = [120,159] 
trigger2 = EnemyNear(Var(53)),StateType != L
trigger2 = P2Dist X >= 120
trigger2 = Enemy,NumProj
trigger2 = EnemyNear(Var(53)),StateType != A && !inguarddist
trigger2 = random <= 40
trigger3 = EnemyNear(Var(53)),movetype = A && EnemyNear(Var(53)),statetype != A
trigger3 = P2Dist X >= 120 && EnemyNear(Var(53)),animtime <= -30 && !inguarddist
trigger3 = var(59) >= 2 || EnemyNear(Var(53)),time >= 10
trigger3 = random <= 20 || (random <= 40 && EnemyNear(Var(53)),stateno = [1000,1999])
trigger4 = EnemyNear(Var(53)),numhelper && EnemyNear(Var(53)),movetype = A
trigger4 = !(EnemyNear(Var(53)),HitDefAttr = SCA) && !inguarddist
trigger4 = EnemyNear(Var(53)),time >= 10
trigger4 = random <= 10 || (EnemyNear(Var(53)),animtime <= -30 && random <= 50)

;--------------------------------------------------------------------------
;�n�㌡��

;�K�[�h����
[State -1]
Type = VarSet
triggerall= var(54) = 0
triggerall= roundstate=2
trigger1 = movetype = H && stateno = [120,159]
var(54) = 1
IgnoreHitPause = 1

[State -1] ;���Z�b�g
Type = VarSet
triggerall= var(54) != 0
trigger1 = !inguarddist || movetype = A
trigger2 = EnemyNear(Var(53)),ctrl || EnemyNear(Var(53)),time = 1 || EnemyNear(Var(53)),movetype = H
trigger3 = roundstate != 2
trigger4 = numhelper(20000)
trigger4 = helper(20000),var(2) = 5
var(54) = 0
IgnoreHitPause = 1

;�^�b�O��E�����ʒu���f
[State -1]
Type = VarSet
triggerall = Var(39) = 0
Triggerall = numpartner
Trigger1 = Partner,Life > 0
Trigger1 = Partner,StateType = S || Partner,StateType = C
Trigger1 = Facing*(Pos X - Partner,Pos X) < -35
var(39) = 1
IgnoreHitPause = 1

[State -1];���Z�b�g
Type = VarSet
triggerall = Var(39) = 1
Trigger1 = !numpartner
Trigger2 = Partner,Life <= 0
Trigger3 = Partner,StateType = A || Partner,StateType = L
Trigger4 = Facing*(Pos X - Partner,Pos X) >= -35
var(39) = 0
IgnoreHitPause = 1

;----

;�G�U���X�J�蔻�f
[State -1]
Type = VarAdd
triggerall = var(42) = 0 || var(41) >= 1
trigger1 = roundstate = 2 && numenemy
trigger1 = EnemyNear(Var(53)),stateno = [200,999]
trigger1 = EnemyNear(Var(53)),movetype = A
trigger1 = EnemyNear(Var(53)),time >= 3
trigger1 = EnemyNear(Var(53)),HitDefAttr = SC, NA
var(41) = 1
IgnoreHitPause = 1

[State -1] ;���Z�b�g
Type = VarSet
triggerall = var(41) != 0
trigger1 = movetype = H
trigger2 = EnemyNear(Var(53)),ctrl || EnemyNear(Var(53)),time = 1 || EnemyNear(Var(53)),movetype = H
trigger3 = roundstate != 2
trigger4 = EnemyNear(Var(53)),movetype = A && EnemyNear(Var(53)),stateno >= 1000 && !(EnemyNear(Var(53)),HitDefAttr = SCA)
var(41) = 0
IgnoreHitPause = 1

;�G�U���X�J�蔻�f
[State -1]
Type = VarSet
trigger1 = roundstate = 2 && numenemy
var(42) = ifelse((EnemyNear(Var(53)),HitDefAttr = SC, NA),1,0)
IgnoreHitPause = 1

;----

;���݂̍U��̔��f(�U��)
[State -1]
Type = VarSet
triggerall = var(33) != 1
triggerall = roundstate = 2
trigger1 = movetype = A
var(33) = 1

;���݂̍U��̔��f(���)
[State -1]
Type = VarSet
triggerall= var(33) != 2
triggerall= roundstate=2
trigger1 = movetype = H
var(33) = 2

[State -1];���Z�b�g
Type = VarSet
triggerall= var(33) != 0
trigger1 = roundstate != 2
var(33) = 0

;----------

;���W�����v(�������L�b�N�p)
[State -1]
type = ChangeState
value = 63
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2dist X = [1,320])
triggerall = (p2bodydist X = [0,100])
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = !inguarddist && var(55) = 0
triggerall = EnemyNear(Var(53)),movetype = I
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype != A || (EnemyNear(Var(53)),Vel Y > 0 && EnemyNear(Var(53)),Pos Y = [-10,0]) || var(49) <= 10
triggerall = BackEdgeBodyDist > 60
triggerall = var(33) = 2
triggerall = NumHelper(8900+id)
triggerall = Helper(8900+id),fvar(facing = 1) > 100
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = (random = [0,50])
trigger1 = var(56) := 13

;�󒆋��L�b�N(��΋�)
[State -1]
type = ChangeState
value = 640
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
trigger1 = var(56) = 13

[State -1];���Z�b�g
Type = VarSet
triggerall= var(56) = 13
trigger1 = roundstate != 2 || movetype = H || statetype = L
trigger2 = movetype = A || stateno = 640
var(56) = 0

;---

;���W�����v(���蒆�i)
[State -1]
type = ChangeState
value = 63
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2dist X = [1,320])
triggerall = (p2bodydist X = [-5,5])
triggerall = !inguarddist && var(55) = 0
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = EnemyNear(Var(53)),movetype = I
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype != A || (EnemyNear(Var(53)),Vel Y > 0 && EnemyNear(Var(53)),Pos Y = [-10,0]) || (var(59) = 1 && var(49) <= 5)
triggerall = BackEdgeBodyDist > 80
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = (random = [0,25]) || (EnemyNear(Var(53)),statetype = C && random = [0,70])
trigger1 = var(56) := 12

;�����W�����v(���蒆�i)
[State -1]
type = ChangeState
value = 41
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2dist X = [1,320])
triggerall = (p2bodydist X = [-5,40])
triggerall = !inguarddist && var(55) = 0
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = EnemyNear(Var(53)),movetype = I
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype != A || (EnemyNear(Var(53)),Vel Y > 0 && EnemyNear(Var(53)),Pos Y = [-10,0]) || (var(59) = 1 && var(49) <= 5)
triggerall = BackEdgeBodyDist > 80
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = (random = [0,15]) || (EnemyNear(Var(53)),statetype = C && random = [0,50])
trigger1 = var(56) := 13

;���Ⴊ�ݎ�L�b�N
[State -1]
type = ChangeState
value = 430
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2dist X = [1,320]) || (stateno = 52 && ctrl)
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = (p2bodydist X = [-5,65]) || (var(59) = 1 && p2bodydist X = [66,85])
triggerall = (p2bodydist X = [-5,65]) || (random <= 100)
triggerall = numhelper(8900+ID)
triggerall = !inguarddist||var(39)=1||var(41)> 5||(var(36)=0&&EnemyNear(Var(53)),time<=10)||(var(36)=1&&EnemyNear(Var(53)),time<=5)||helper(8900+ID),var(31)=1||helper(8900+ID),var(51)=1||(helper(8900+ID),var(0)=0&&var(54)=1)
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype != A || (EnemyNear(Var(53)),Vel Y > 0 && EnemyNear(Var(53)),Pos Y = [-10,0]) || (var(59) = 1 && var(49) <= 5)
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = p2bodydist X <= 30 || random <= 100
trigger1 = (random = [0,30]) || (helper(8900+ID),var(31) = 1 && random = [0,80])

;�ߋ����������L�b�N
[State -1]
type = ChangeState
value = 245
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2bodydist X = [-5,25])
triggerall = (p2dist X = [1,55]) || (stateno = 52 && ctrl)
triggerall = !inguarddist
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype != A || (EnemyNear(Var(53)),Vel Y > 0 && EnemyNear(Var(53)),Pos Y = [-20,0]) || (var(59) = 1 && var(49) <= 5)
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = (random = [0,30])

;���Ⴊ�݋��p���`
[State -1]
type = ChangeState
value = 410
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2bodydist X = [-5,35])
triggerall = (p2dist X = [1,320]) || (stateno = 52 && ctrl)
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = numhelper(8900+ID)
triggerall = !inguarddist||var(39)=1||var(41)> 5||(var(36)=0&&EnemyNear(Var(53)),time<=10)||(var(36)=1&&EnemyNear(Var(53)),time<=5)||helper(8900+ID),var(31)=1||helper(8900+ID),var(51)=1||(helper(8900+ID),var(0)=0&&var(54)=1)
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype != A || (EnemyNear(Var(53)),Vel Y > 0 && EnemyNear(Var(53)),Pos Y = [-20,0]) || (var(59) = 1 && var(49) <= 8)
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = (random = [0,30]) || (helper(8900+ID),var(31) = 1 && random = [0,100])

;���Ⴊ�ݎ�p���`
[State -1]
type = ChangeState
value = 400
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2bodydist X = [-5,35])
triggerall = (p2dist X = [1,320]) || (stateno = 52 && ctrl)
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = numhelper(8900+ID)
triggerall = !inguarddist||var(39)=1||var(41)> 5||(var(36)=0&&EnemyNear(Var(53)),time<=10)||(var(36)=1&&EnemyNear(Var(53)),time<=5)||helper(8900+ID),var(31)=1||helper(8900+ID),var(51)=1||(helper(8900+ID),var(0)=0&&var(54)=1)
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype != A || (EnemyNear(Var(53)),Vel Y > 0 && EnemyNear(Var(53)),Pos Y = [-20,0]) || (var(59) = 1 && var(49) <= 5)
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = (random = [0,40]) || (helper(8900+ID),var(31) = 1 && random = [0,100])

;������p���`
[State -1]
type = ChangeState
value = 200
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2dist X = [1,320]) && (p2bodydist X = [10,40])
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype = S || (EnemyNear(Var(53)),Vel Y > 0 && EnemyNear(Var(53)),Pos Y = [-35,-10]) || (var(59) = 1 && var(49) <= 5)
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = (random = [0,30])

;�ӂ��Ƃ΂��U��
[State -1]
type = ChangeState
value = 290
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2dist X = [1,320]) && (p2bodydist X = [80,125])
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype != A || (EnemyNear(Var(53)),Vel Y > 0 && EnemyNear(Var(53)),Pos Y = [-35,-10]) || (var(59) = 1 && var(49) <= 5)
trigger1 = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = (random = [0,5])

;------------------------------------------

;���Ⴊ�ݎ�L�b�N(����)
[State -1]
type = ChangeState
value = 430
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2dist X = [51,320]) && (p2bodydist X = [66,120])
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),Vel X >= 0 && EnemyNear(Var(53)),facing = -facing
triggerall = Enemynear(var(53)),statetype != L && Enemynear(var(53)),movetype != H
triggerall = Enemynear(var(53)),statetype != A || (var(59) = 1 && var(49) <= 5)
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = (random = [0,10]) || (random <= 20 && p2bodydist X <= 90 + Enemynear(var(53)),Vel X * 4)
trigger1 = var(38) = 0
trigger1 = var(38) := 1
trigger2 = var(38) = 1
trigger2 = var(38) := 2

;�O�����h�Z�C�o�[�i�����Ԃ��ρj
[State -1]
type = ChangeState
value = ifelse(power >= 4500,2100,1100)
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2dist X = [1,320]) && p2bodydist X = [80,320]
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),Vel X >= 0 && EnemyNear(Var(53)),facing = -facing
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype != A || (var(59) = 1 && var(49) <= 5)
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = Enemynear(var(53)),teammode = single || Enemynear(var(53)),teammode = turns
triggerall = (random = [0,10]) || (random <= 20 && Enemynear(var(53)),Vel X > 0)
trigger1 = var(38) = 0
trigger1 = var(38) := 1 && var(58) := 2
trigger2 = var(38) = 1
trigger2 = var(38) := 2 && var(58) := 2

;�{���e�b�N�����`���[�i�����Ԃ��ρj
[State -1]
type = ChangeState
value = 1300
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2dist X = [1,320]) && p2bodydist X = [110,200]
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),Vel X >= 0 && EnemyNear(Var(53)),facing = -facing
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype != A || (var(59) = 1 && var(49) <= 5)
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = life > 600
triggerall = Enemynear(var(53)),teammode = single || Enemynear(var(53)),teammode = turns
triggerall = (random = [0,10]) || (random <= 20 && p2bodydist X <= 80 + Enemynear(var(53)),Vel X * 5)
trigger1 = var(38) = 0
trigger1 = var(38) := 1 && var(58) := 2
trigger2 = var(38) = 1
trigger2 = var(38) := 2 && var(58) := 2

;�t���O���Z�b�g
[State -1, jump]
type = VarSet
triggerall = var(38) = [1,2]
trigger1 = roundstate != 2
trigger2 = movecontact
var(38) = 0

;�������W�����v(�W�����v����)
[State -1]
type = ChangeState
value = 61
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2dist X = [1,320])
triggerall = (p2bodydist X = [60,130])
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = !inguarddist
triggerall = EnemyNear(Var(53)),movetype = I
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype != A || (var(59) = 1 && var(49) <= 5)
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
trigger1 = (random = [0,15])
trigger1 = var(38) = 0
trigger1 = var(38) := 1 && var(56) := 14
trigger2 = var(38) = 1 && random <= 100
trigger2 = var(38) := 2 && var(56) := 14

;�󒆋��L�b�N(��΋�)
[State -1]
type = ChangeState
value = 640
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
triggerall = Pos Y <= -40 || EnemyNear(Var(53)),statetype = A
trigger1 = var(56) = 14

[State -1];���Z�b�g
Type = VarSet
triggerall= var(56) = 14
trigger1 = roundstate != 2 || movetype = H || statetype = L
trigger2 = movetype = A || stateno = 640
var(56) = 0

;�o�N�X�e(�l�q��)
[State -1]
type = ChangeState
value = 105
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2dist X = [1,320]) && p2bodydist X = [90,130]
triggerall = (EnemyNear(Var(53)),stateno != [15020,15040])
triggerall = !inguarddist
triggerall = BackEdgeBodyDist > 60
triggerall = EnemyNear(Var(53)),Vel X >= 0 && EnemyNear(Var(53)),facing = -facing
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype != A || (var(59) = 1 && var(49) <= 5)
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101]) || (movetype != H && stateno = [120,149])
triggerall = Enemynear(var(53)),teammode = single || Enemynear(var(53)),teammode = turns
triggerall = (random = [0,10])
trigger1 = var(38) = 0
trigger1 = var(38) := 1 && var(58) := 2
trigger2 = var(38) = 1
trigger2 = var(38) := 2 && var(58) := 2

;---------

;�K�[�h(�K�[�h���x���Q�ȏ�)
[state -1, Guard]
type = ChangeState
value = 120
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = var(36) >= 2
triggerall = stateno != [120,159]
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (stateno = [100,101])
triggerall = time >= 10 || EnemyNear(Var(53)),numproj
triggerall = !EnemyNear(Var(53)),HitDefAttr = SCA, NT,ST,HT
trigger1 = EnemyNear(Var(53)),numproj && InGuardDist
trigger2 = (EnemyNear(Var(53)),HitDefAttr = SCA, NA,SA,HA) && InGuardDist
trigger2 = random <= ifelse(EnemyNear(Var(53)),statetype = A, 300, 150)
trigger3 = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),movetype = A
trigger3 = (EnemyNear(Var(53)),Pos Y = [-150,-30]) && p2dist X = [-30,10]
trigger3 = random <= 150
trigger4 = EnemyNear(Var(53)),numhelper && InGuardDist
trigger4 = !(EnemyNear(Var(53)),HitDefAttr = SCA)
trigger4 = EnemyNear(Var(53)),time >= 10 || EnemyNear(Var(53)),ctrl || EnemyNear(Var(53)),stateno = [0,199]
trigger5 = numhelper(20000)
trigger5 = helper(20000),var(2) = 5
trigger5 = EnemyNear(Var(53)),numhelper || EnemyNear(Var(53)),numproj

;�K�[�h(�K�[�h���x���P)
[state -1, Guard]
type = ChangeState
value = 120
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = var(36) = 1
triggerall = stateno != [120,159]
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22])
triggerall = time >= 10 || EnemyNear(Var(53)),numproj
triggerall = time > 20 || EnemyNear(Var(53)),time > 20 || stateno = 1 || (stateno = [15,16]) || stateno = 22
triggerall = !EnemyNear(Var(53)),HitDefAttr = SCA, NT,ST,HT
trigger1 = EnemyNear(Var(53)),numproj && InGuardDist
trigger2 = (EnemyNear(Var(53)),HitDefAttr = SCA, NA,SA,HA) && InGuardDist
trigger2 = random <= ifelse(EnemyNear(Var(53)),statetype = A, 150, 50)
trigger3 = EnemyNear(Var(53)),numhelper && InGuardDist
trigger3 = !(EnemyNear(Var(53)),HitDefAttr = SCA)
trigger3 = EnemyNear(Var(53)),time >= 10 || EnemyNear(Var(53)),ctrl || EnemyNear(Var(53)),stateno = [0,199]
trigger4 = numhelper(20000)
trigger4 = helper(20000),var(2) = 5
trigger4 = EnemyNear(Var(53)),numhelper || EnemyNear(Var(53)),numproj

;------------

;�_�b�V��(�{���e�b�N�����`���[�ǌ��p)
[State -1]
type = ChangeState
value = 100
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !inguarddist
triggerall = ctrl || stateno = 1 || (stateno = [15,16]) || (stateno = [21,22]) || (movetype != H && stateno = [120,149])
triggerall = stateno != 100
triggerall = EnemyNear(Var(53)),movetype = H && EnemyNear(Var(53)),stateno != [120,159]
triggerall = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),ctrl = 0
triggerall = EnemyNear(Var(53)),stateno != 811 && EnemyNear(Var(53)),stateno != 830
triggerall = EnemyNear(Var(53)),stateno != 3021 && EnemyNear(Var(53)),stateno != 3071
triggerall = EnemyNear(Var(53)),stateno != 2125 && EnemyNear(Var(53)),stateno != 2521
triggerall = var(34) >= 1
trigger1 = p2dist X = [1,320]
trigger1 = p2bodydist X > 5

;�����i����_�E�����j
[State -1, Walk]
type = ChangeState
value = 21
triggerall = var(59)>=1
triggerall = roundstate=2 && statetype!=A
triggerall = !InGuardDist
triggerall = stateno != 20 && stateno != 21 && stateno != [100,101]
triggerall = stateno != [120,159]
triggerall = stateno != 901
triggerall = EnemyNear(Var(53)),statetype = L
triggerall = ctrl || stateno = 22
trigger1 = p2bodydist X > 65 && time > 10
trigger1 = time > 20 || random <= 80
trigger2 = p2bodydist X >= 65 && EnemyNear(Var(53)),stateno = 5120 && time > 5

;�����i����_�E�����j
[State -1, Walk]
type = ChangeState
value = 22
triggerall = var(59)>=1
triggerall = roundstate=2 && statetype!=A
triggerall = !InGuardDist
triggerall = stateno != 20 && stateno != 22 && stateno != [100,101]
triggerall = stateno != [120,159]
triggerall = stateno != 901
triggerall = EnemyNear(Var(53)),statetype = L
trigger1 = ctrl || stateno = 21
trigger1 = p2bodydist X < 35 && time > 5

;�����i�ԍ��������j
[State -1, Walk]
type = ChangeState
value = 21
triggerall = var(59)>=1
triggerall = roundstate=2 && statetype!=A
triggerall = !InGuardDist
triggerall = stateno != 20 && stateno != 21 && stateno != [100,101]
triggerall = stateno != [120,159]
triggerall = stateno != 901
trigger1 = stateno = 22 && time >= 30
trigger1 = EnemyNear(Var(53)),Vel X > 0 && EnemyNear(Var(53)),facing = -facing
trigger1 = time >= 50 || random <= 20

;�����E���(�ԍ�������)
[State -1, Walk]
type = ChangeState
value = 22
triggerall = var(59) >= 1
triggerall = roundstate=2 && statetype!=A
triggerall = !InGuardDist
triggerall = stateno != 20 && stateno != 22 && stateno != 100
triggerall = stateno != [120,159]
triggerall = stateno != 901
triggerall = ctrl || (stateno = 21 && time > 5)
trigger1 = EnemyNear(Var(53)),statetype = A && EnemyNear(Var(53)),movetype != H
trigger1 = (EnemyNear(Var(53)),stateno = [0,999]) && EnemyNear(Var(53)),Pos Y = [-150,-20]
trigger1 = p2dist X <= 90 && time > 5
trigger1 = random <= 50 || EnemyNear(Var(53)),facing = facing || (p2bodydist X <= 0 && random <= 100)
trigger2 = EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),Vel X > 0
trigger2 = EnemyNear(Var(53)),time <= 15 && EnemyNear(Var(53)),movetype != H
trigger2 = EnemyNear(Var(53)),facing = -facing && BackEdgeBodyDist > 40
trigger2 = p2dist X = [80,110]
trigger2 = random <= 1 || (var(59) = 1 && random <= 5)
trigger3 = EnemyNear(Var(53)),statetype != A
trigger3 = EnemyNear(Var(53)),Vel X <= 0
trigger3 = EnemyNear(Var(53)),time <= 30 && EnemyNear(Var(53)),movetype != H
trigger3 = EnemyNear(Var(53)),facing = -facing && BackEdgeBodyDist > 40
trigger3 = p2dist X = [130,160]
trigger3 = random <= 5 || (var(59) = 1 && random <= 10)

;����
[State -1, Walk]
type = ChangeState
value = ifelse(EnemyNear(var(53)),movetype = H || p2bodydist X <= 75 || EnemyNear(var(53)),statetype = A || BackEdgeBodyDist <= 30 || random < 500 || prevstateno = 22,21,22)
triggerall = var(59) >= 1
triggerall = roundstate=2 && statetype!=A
triggerall = ctrl
triggerall = stateno != 901
triggerall = !InGuardDist
triggerall = stateno != 20
triggerall = stateno != 21 && stateno != 22
triggerall = stateno != [120,159]
triggerall = p2bodydist X > 0
triggerall = EnemyNear(Var(53)),statetype != A || p2bodydist X >= 20 || p2bodydist X >= 30 || (EnemyNear(var(53)),movetype = H && p2bodydist X > 5)
triggerall = EnemyNear(var(53)),statetype != A || EnemyNear(var(53)),facing = -facing || p2bodydist X >= 30 || (EnemyNear(var(53)),movetype = H && p2bodydist X > 5)
trigger1 = random <= 50 || ((p2bodydist X > 40 || EnemyNear(var(53)),facing = facing) && random <= 700) || EnemyNear(var(53)),movetype = H

;����[�͂�
[State -1]
Type = ChangeState
Value = ifelse(FrontEdgeBodyDist <= 50,105,ifelse(BackEdgeBodyDist <= 50,700,199))
TriggerAll = var(59) >= 1
TriggerAll = RoundState = 3
TriggerAll = !MatchOver || FrontEdgeBodyDist <= 30 || BackEdgeBodyDist <= 30
TriggerAll = life > 600 || FrontEdgeBodyDist <= 30 || BackEdgeBodyDist <= 30
TriggerAll = StateType != A
TriggerAll = P2Life < Life
TriggerAll = Ctrl 
TriggerAll = EnemyNear(var(53)),statetype != A || time > 10
Trigger1 = StateNo != 199 && var(51) = 0
Trigger1 = var(51) := 1

;����[�͂t���O���Z�b�g
[State -1]
type = VarSet
triggerall = var(51) != 0
trigger1 = roundstate != 3
var(51) = 0

;--------------------------------------------------------------------------
;��

;�u�X���b�V���[
[State Scramble Dash]
type = ChangeState
value = ifelse(power >= 2000 && EnemyNear(Var(53)),life > 220 && (EnemyNear(Var(53)),life <= 320 || power >= 3000),3050,3000)
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = power >= 1000
triggerall = movehit = 1 && var(1) <= 0
trigger1= stateno = 600 || stateno = 630 || stateno = 640
trigger1= Vel Y < 0 && var(1) <= 0
trigger1= Pos Y - 20 <= EnemyNear(Var(53)),Pos Y
trigger1= var(58) := 2
trigger2= stateno = 640 && anim = 640
trigger2= Vel Y < 0 && EnemyNear(Var(53)),statetype != A
trigger2= var(58) := 2

;X�L�����o�[2
[State Scramble Dash]
type = ChangeState
value = 1250
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = movehit = 1 && var(1) <= 0
trigger1= stateno = 600 || stateno = 630 || stateno = 640
trigger1= Vel Y < 0
trigger1= p2bodydist X <= 10
trigger1= Pos Y <= EnemyNear(Var(53)),Pos Y
trigger2= stateno = 640 && anim = 640 && p2bodydist X <= 10
trigger2= Vel Y < 0 && EnemyNear(Var(53)),statetype != A

;X�L�����o�[1
[State Scramble Dash]
type = ChangeState
value = 1200
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = movecontact = 1 && var(1) <= 0
trigger1= stateno = 640 && anim = 640
trigger1= Vel Y < 0 && EnemyNear(Var(53)),statetype != A

;----------------

;�󒆋��L�b�N(��΋�)
[State -1]
type = ChangeState
value = 640
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
triggerall = !(vel x = 0 && var(16) <= 0)
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),facing = -facing
triggerall = var(56) != [5,8]
triggerall = random <= 100
trigger1 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 4) - (EnemyNear(Var(53)),const(movement.yaccel) * 10))
trigger1 = Pos Y <= (-20 - (Vel Y * 4) - (const(movement.yaccel) * 10))
trigger1 = p2bodydist X <= 65 + (EnemyNear(Var(53)),Vel X * 4) + Vel X * 4
trigger1 = p2dist X > 0 + (EnemyNear(Var(53)),Vel X * 4) + Vel X * 4
trigger1 = Pos Y + (Vel Y * 4) + (const(movement.yaccel) * 10) - 30 <= EnemyNear(Var(53)),Pos Y + (EnemyNear(Var(53)),Vel Y * 4) + (EnemyNear(Var(53)),const(movement.yaccel) * 10)
trigger2 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 10) - (EnemyNear(Var(53)),const(movement.yaccel) * 55))
trigger2 = Pos Y <= (-20 - (Vel Y * 10) - (const(movement.yaccel) * 55))
trigger2 = p2bodydist X <= 65 + (EnemyNear(Var(53)),Vel X * 10) + Vel X * 10
trigger2 = p2dist X > 0 + (EnemyNear(Var(53)),Vel X * 10) + Vel X * 10
trigger2 = Pos Y + (Vel Y * 10) + (const(movement.yaccel) * 55) - 30 <= EnemyNear(Var(53)),Pos Y + (EnemyNear(Var(53)),Vel Y * 10) + (EnemyNear(Var(53)),const(movement.yaccel) * 55)

;�󒆋��p���`(��΋�)
[State -1]
type = ChangeState
value = 610
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),facing = -facing
triggerall = var(56) != [5,8]
triggerall = random <= 100
trigger1 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 5) - (EnemyNear(Var(53)),const(movement.yaccel) * 15))
trigger1 = Pos Y <= (-20 - (Vel Y * 5) - (const(movement.yaccel) * 15))
trigger1 = p2bodydist X <= 45 + (EnemyNear(Var(53)),Vel X * 5) + Vel X * 5
trigger1 = p2dist X > -80 + (EnemyNear(Var(53)),Vel X * 5) + Vel X * 5
trigger1 = Pos Y + (Vel Y * 5) + (const(movement.yaccel) * 15) - 10 <= EnemyNear(Var(53)),Pos Y + (EnemyNear(Var(53)),Vel Y * 5) + (EnemyNear(Var(53)),const(movement.yaccel) * 15)

;�󒆎�L�b�N(��΋�)
[State -1]
type = ChangeState
value = 630
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),facing = -facing
triggerall = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 5) - (EnemyNear(Var(53)),const(movement.yaccel) * 15))
triggerall = Pos Y <= (-20 - (Vel Y * 5) - (const(movement.yaccel) * 15))
triggerall = var(56) != [5,8]
trigger1 = p2bodydist X <= 65 + (EnemyNear(Var(53)),Vel X * 5) + Vel X * 5
trigger1 = p2dist X > 0 + (EnemyNear(Var(53)),Vel X * 5) + Vel X * 5
trigger1 = Pos Y + (Vel Y * 5) + (const(movement.yaccel) * 15) - 70 <= EnemyNear(Var(53)),Pos Y + (EnemyNear(Var(53)),Vel Y * 5) + (EnemyNear(Var(53)),const(movement.yaccel) * 15)
trigger1 = Pos Y + (Vel Y * 5) + (const(movement.yaccel) * 15) >= EnemyNear(Var(53)),Pos Y + (EnemyNear(Var(53)),Vel Y * 5) + (EnemyNear(Var(53)),const(movement.yaccel) * 15)
trigger1 = random <= 100

;�󒆋��L�b�N�E����(��΋�)
[State -1]
type = ChangeState
value = 640
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
triggerall = (vel x = 0 && var(16) <= 0)
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),statetype = A
triggerall = EnemyNear(Var(53)),facing = -facing
triggerall = var(56) != [5,8]
triggerall = random <= 100
trigger1 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 4) - (EnemyNear(Var(53)),const(movement.yaccel) * 10))
trigger1 = Pos Y <= (-20 - (Vel Y * 4) - (const(movement.yaccel) * 10))
trigger1 = p2bodydist X <= 50 + (EnemyNear(Var(53)),Vel X * 4) + Vel X * 4
trigger1 = p2dist X > 0 + (EnemyNear(Var(53)),Vel X * 4) + Vel X * 4
trigger1 = Pos Y + (Vel Y * 4) + (const(movement.yaccel) * 10) - 10 <= EnemyNear(Var(53)),Pos Y + (EnemyNear(Var(53)),Vel Y * 4) + (EnemyNear(Var(53)),const(movement.yaccel) * 10)
trigger2 = EnemyNear(Var(53)),Pos Y <= (0 - (EnemyNear(Var(53)),Vel Y * 10) - (EnemyNear(Var(53)),const(movement.yaccel) * 55))
trigger2 = Pos Y <= (-20 - (Vel Y * 10) - (const(movement.yaccel) * 55))
trigger2 = p2bodydist X <= 50 + (EnemyNear(Var(53)),Vel X * 10) + Vel X * 10
trigger2 = p2dist X > 0 + (EnemyNear(Var(53)),Vel X * 10) + Vel X * 10
trigger2 = Pos Y + (Vel Y * 10) + (const(movement.yaccel) * 55) - 10 <= EnemyNear(Var(53)),Pos Y + (EnemyNear(Var(53)),Vel Y * 10) + (EnemyNear(Var(53)),const(movement.yaccel) * 55)

;---

;�W�����v���p���`(�΂߃W�����v��)
[State -1]
type = ChangeState
value = 610
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),stateno != 5910
triggerall = EnemyNear(Var(53)),movetype != H || EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),stateno = [120,159]
triggerall = EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),Pos Y >= -20
triggerall = -(Vel Y * 5) - (const(movement.yaccel) * 10) < 0
triggerall = Pos Y <= (-1 - (Vel Y * 5) - (const(movement.yaccel) * 15))
triggerall = Pos Y >= (0 - (Vel Y * 15) - (const(movement.yaccel) * 120))
triggerall = p2bodydist X <= 45 + Vel X * 5 + EnemyNear(Var(53)),Vel X * 5 * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
triggerall = p2dist X > -80 + Vel X * 5 + EnemyNear(Var(53)),Vel X * 5 * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = EnemyNear(Var(53)),statetype != C
trigger1 = random <= 20 || EnemyNear(Var(53)),ctrl && random <= 70 || p2dist X <= 10 + Vel X * 4 + EnemyNear(Var(53)),Vel X * 4 * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger2 = Pos Y >= (-5 - (Vel Y * 11) - (const(movement.yaccel) * 66))

;�W�����v���L�b�N(�΂߃W�����v��)
[State -1]
type = ChangeState
value = 640
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = !(vel x = 0 && var(16) <= 0)
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),stateno != 5910
triggerall = EnemyNear(Var(53)),movetype != H || EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),stateno = [120,159]
triggerall = EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),Pos Y >= -20
triggerall = p2dist X = [1,320]
triggerall = -(Vel Y * 5) - (const(movement.yaccel) * 10) < 0
triggerall = Pos Y <= (-1 - (Vel Y * 4) - (const(movement.yaccel) * 10))
triggerall = Pos Y >= (0 - (Vel Y * 15) - (const(movement.yaccel) * 120))
triggerall = p2bodydist X <= 75 + Vel X * 12 + EnemyNear(Var(53)),Vel X * 12 * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
triggerall = p2dist X > 30 + Vel X * 4 + EnemyNear(Var(53)),Vel X * 4 * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = EnemyNear(Var(53)),statetype != C || random <= 80
trigger1 = random <= 20 || ((EnemyNear(Var(53)),ctrl || EnemyNear(Var(53)),stateno = [0,119]) && random <= 70) || (p2bodydist X > 120 && random <= 60)
trigger2 = Pos Y >= (-5 - (Vel Y * 10) - (const(movement.yaccel) * 55))

;�W�����v���L�b�N(�����W�����v��)
[State -1]
type = ChangeState
value = 640
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = (vel x = 0 && var(16) <= 0)
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),stateno != 5910
triggerall = EnemyNear(Var(53)),movetype != H || EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),stateno = [120,159]
triggerall = EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),Pos Y >= -20
triggerall = p2dist X = [1,320]
triggerall = -(Vel Y * 5) - (const(movement.yaccel) * 10) < 0
triggerall = Pos Y <= (-1 - (Vel Y * 4) - (const(movement.yaccel) * 10))
triggerall = Pos Y >= (0 - (Vel Y * 18) - (const(movement.yaccel) * 171))
triggerall = p2bodydist X <= 40 + Vel X * 4 + EnemyNear(Var(53)),Vel X * 4 * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
triggerall = p2dist X > -80 + Vel X * 4 + EnemyNear(Var(53)),Vel X * 4 * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
trigger1 = EnemyNear(Var(53)),statetype != C
trigger1 = random <= 20 || EnemyNear(Var(53)),ctrl && random <= 70
trigger2 = Pos Y >= (-5 - (Vel Y * 12) - (const(movement.yaccel) * 78))

;�W�����v�ӂ��Ƃ΂��U��
[State -1]
type = ChangeState
value = 690
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),stateno != 5910
triggerall = EnemyNear(Var(53)),movetype != H || EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),stateno = [120,159]
triggerall = EnemyNear(Var(53)),statetype != A || EnemyNear(Var(53)),Pos Y >= -20
triggerall = Pos Y <= (-1 - (Vel Y * 15) - (const(movement.yaccel) * 120))
triggerall = Pos Y >= (0 - (Vel Y * 30) - (const(movement.yaccel) * 465))
triggerall = p2bodydist X <= 60 + Vel X * 37 + EnemyNear(Var(53)),Vel X * 37 * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
triggerall = p2dist X > 70 + Vel X * 15 + EnemyNear(Var(53)),Vel X * 15 * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
triggerall = p2dist X > 50 + Vel X * 24 + EnemyNear(Var(53)),Vel X * 24 * ifelse(EnemyNear(Var(53)),facing = -facing,1,-1)
triggerall = p2dist X > -100
trigger1 = EnemyNear(Var(53)),statetype != C
trigger1 = random <= 10 || EnemyNear(Var(53)),ctrl && random <= 25
trigger2 = Pos Y >= (-5 - (Vel Y * 24) - (const(movement.yaccel) * 300))
trigger2 = random <= 20 || EnemyNear(Var(53)),ctrl && random <= 40

;X�L�����o�[2
[State -1]
type = ChangeState
value = 1200
triggerall = var(59) >= 1 && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = !inguarddist
triggerall = ctrl || (movetype != H && (stateno = 50 || stateno = [120,149]))
triggerall = EnemyNear(Var(53)),statetype != L && EnemyNear(Var(53)),statetype != A
triggerall = EnemyNear(Var(53)),movetype != H
triggerall = EnemyNear(Var(53)),ctrl || EnemyNear(Var(53)),stateno = [0,119]
triggerall = p2dist X = [1,320]
triggerall = Vel Y < 0 || random <= 100
trigger1 = Pos Y = [-70,-60]
trigger1 = (p2bodydist X = [90,100]) || (EnemyNear(Var(53)),Vel X > 0 && p2bodydist X = [110,130])
trigger1 = random <= 200

;-----------

[state -1, Guard]
type = ChangeState
value = 120
triggerall = var(59) >= 1
triggerall = roundstate = 2
triggerall = InGuardDist
triggerall = ctrl && stateno != [120,159]
triggerall = statetype = A
triggerall = !(EnemyNear(Var(53)),HitDefAttr = SCA, NT,ST,HT)
triggerall = Vel Y > 0 || Pos Y < -80
trigger1 = EnemyNear(Var(53)),numproj
trigger2 = EnemyNear(Var(53)),HitDefAttr = SCA, NA,SA,HA
trigger2 = random <= ifelse(EnemyNear(Var(53)),statetype = A, 400, 200)
trigger3 = EnemyNear(Var(53)),numhelper && inguarddist
trigger3 = !(EnemyNear(Var(53)),HitDefAttr = SCA)
trigger3 = EnemyNear(Var(53)),time >= 10 || EnemyNear(Var(53)),ctrl || EnemyNear(Var(53)),stateno = [0,199]


;---------------------------------------------------------------------------
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;�v���C���[����
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;���I�i�u���[�h
[State Slide Touch]
type = ChangeState
value = 3500
triggerall = var(59) <= 0
triggerall = power >= 3000 || (var(29) >= 1 && var(20) > 0 && power >= 2000)
triggerall = var(20) > 0 || var(19) >= 1000
triggerall = command = "���I�i�u���[�h" || fvar(10) = 3500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact = [1,5]
trigger3 = stateno = 215 && movecontact = [1,5]
trigger4 = stateno = 230 && movecontact = [1,5]
trigger5 = stateno = 245 && movecontact = [1,5]
trigger6 = stateno = 400 && movecontact = [1,5]
trigger7 = stateno = 410 && movecontact = [1,5]
trigger8 = stateno = 440 && movecontact = [1,5]
trigger9 = stateno = 290
trigger9 = (movecontact = [1,5]) || (animelem=8,>0 && animelem=11,<0)
trigger10= stateno = 1000 && (movecontact = [1,5])
trigger11= stateno = 2000 && (movecontact = [1,5])
trigger12= stateno = 1110 && (movecontact = [1,5])
trigger13= stateno = 2110 && (movecontact = [1,5])

;---------------------------------------------------------------------------
;�X���b�V���Z�C�o�[
[State Slide Touch]
type = ChangeState
value = 3100
triggerall = var(59) <= 0
triggerall = power >= 1000
triggerall = command = "�X���b�V���Z�C�o�[" || fvar(10) = 3100
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact = [1,5]
trigger3 = stateno = 215 && movecontact = [1,5]
trigger4 = stateno = 230 && movecontact = [1,5]
trigger5 = stateno = 245 && movecontact = [1,5]
trigger6 = stateno = 400 && movecontact = [1,5]
trigger7 = stateno = 410 && movecontact = [1,5]
trigger8 = stateno = 440 && movecontact = [1,5]
trigger9 = stateno = 290
trigger9 = (movecontact = [1,5]) || (animelem=8,>0 && animelem=11,<0)

trigger10= stateno = 1000 && movecontact = [1,5]
trigger10= var(20) > 0 || var(19) >= 500
trigger11= stateno = 2000 && movecontact = [1,5]
trigger11= var(20) > 0 || var(19) >= 500
trigger12= stateno = 1110 && movecontact = [1,5]
trigger12= var(20) > 0 || var(19) >= 500
trigger13= stateno = 2110 && movecontact = [1,5]
trigger13= var(20) > 0 || var(19) >= 500

;---------------------------------------------------------------------------
;MAXV�X���b�V���[
[State Twister Drive]
type = ChangeState
value = 3050
triggerall = var(59) <= 0
triggerall = command = "MAXV�X���b�V���[" || fvar(10) = 3050
triggerall = power >= 2000
triggerall = statetype = A
trigger1 = ctrl

trigger2= stateno = 255 && movecontact = [1,5]
trigger3= stateno = 600 && movecontact = [1,5]
trigger4= stateno = 630 && movecontact = [1,5]
trigger5= stateno = 640 && movecontact = [1,5]
trigger6= stateno = 690 && movecontact = [1,5]

trigger7 = stateno = 1200
trigger7 = animelem = 6, > 1 && animelem = 8, < 0
trigger7 = var(20) > 0 || var(19) >= 500
trigger8 = stateno = 1250
trigger8 = movecontact = [1,5]
trigger8 = var(20) > 0 || var(19) >= 500

;---------------------------------------------------------------------------
;V�X���b�V���[
[State Twister Drive]
type = ChangeState
value = 3000
triggerall = var(59) <= 0
triggerall = command = "V�X���b�V���[" || fvar(10) = 3000
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl

trigger2= stateno = 255 && movecontact = [1,5]
trigger3= stateno = 600 && movecontact = [1,5]
trigger4= stateno = 630 && movecontact = [1,5]
trigger5= stateno = 640 && movecontact = [1,5]
trigger6= stateno = 690 && movecontact = [1,5]

trigger7 = stateno = 1200
trigger7 = animelem = 6, > 1 && animelem = 8, < 0
trigger7 = var(20) > 0 || var(19) >= 500
trigger8 = stateno = 1250
trigger8 = movecontact = [1,5]
trigger8 = var(20) > 0 || var(19) >= 500

;===========================================================================
;---------------------------------------------------------------------------
;EXX�L�����o�[
[State Scramble Dash]
type = ChangeState
value = 2200
triggerall = var(59) <= 0
triggerall = power >= 1000
triggerall = command = "X�L�����o�[EX" || fvar(10) = 2200
triggerall = numhelper(2200) = 0
triggerall = statetype = A
trigger1 = ctrl
trigger2= stateno = 255 && movecontact = [1,5]
trigger3= stateno = 600 && movecontact = [1,5]
trigger4= stateno = 630 && movecontact = [1,5]
trigger5= stateno = 640 && movecontact = [1,5]
trigger6= stateno = 690 && movecontact = [1,5]

;---------------------------------------------------------------------------
;X�L�����o�[2
[State Scramble Dash]
type = ChangeState
value = 1250
triggerall = var(59) <= 0
triggerall = command = "X�L�����o�[2" || fvar(10) = 1250
triggerall = statetype = A
trigger1 = ctrl
trigger2= stateno = 255 && movecontact = [1,5]
trigger3= stateno = 600 && movecontact = [1,5]
trigger4= stateno = 630 && movecontact = [1,5]
trigger5= stateno = 640 && movecontact = [1,5]
trigger6= stateno = 690 && movecontact = [1,5]

;---------------------------------------------------------------------------
;X�L�����o�[1
[State Scramble Dash]
type = ChangeState
value = 1200
triggerall = var(59) <= 0
triggerall = command = "X�L�����o�[1" || fvar(10) = 1200
triggerall = statetype = A
trigger1 = ctrl
trigger2= stateno = 255 && movecontact = [1,5]
trigger3= stateno = 600 && movecontact = [1,5]
trigger4= stateno = 630 && movecontact = [1,5]
trigger5= stateno = 640 && movecontact = [1,5]
trigger6= stateno = 690 && movecontact = [1,5]

;---------------------------------------------------------------------------
;EX�O�����h�Z�C�o�[�E�h���C�u�L�����Z��
[State Scramble Dash]
type = ChangeState
value = 2100
triggerall = var(59) <= 0
triggerall = power >= 1000
triggerall = command = "�O�����h�Z�C�o�[EX" || fvar(10) = 2100
triggerall = statetype != A
triggerall = var(20) > 0 || var(19) >= 500
triggerall = movehit || var(20) > 0
trigger1 = stateno = 1000 && movehit = [1,10]
trigger2 = stateno = 2000 && movehit = [1,10]

;---------------------------------------------------------------------------
;EX�O�����h�Z�C�o�[
[State Scramble Dash]
type = ChangeState
value = 2100
triggerall = var(59) <= 0
triggerall = power >= 1000
triggerall = command = "�O�����h�Z�C�o�[EX" || fvar(10) = 2100
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact = [1,5]
trigger3 = stateno = 215 && movecontact = [1,5]
trigger4 = stateno = 230 && movecontact = [1,5]
trigger5 = stateno = 245 && movecontact = [1,5]
trigger6 = stateno = 400 && movecontact = [1,5]
trigger7 = stateno = 410 && movecontact = [1,5]
trigger8 = stateno = 440 && movecontact = [1,5]
trigger9 = stateno = 290
trigger9 = (movecontact = [1,5]) || (animelem=8,>0 && animelem=11,<0)

;---------------------------------------------------------------------------
;�O�����h�Z�C�o�[�E�h���C�u�L�����Z��
[State Scramble Dash]
type = ChangeState
value = 1100
triggerall = var(59) <= 0
triggerall = command = "�O�����h�Z�C�o�[" || fvar(10) = 1100
triggerall = statetype != A
triggerall = var(20) > 0 || var(19) >= 500
triggerall = movehit || var(20) > 0
trigger1 = stateno = 1000 && movehit = [1,10]
trigger2 = stateno = 2000 && movehit = [1,10]

;---------------------------------------------------------------------------
;�O�����h�Z�C�o�[
[State Scramble Dash]
type = ChangeState
value = 1100
triggerall = var(59) <= 0
triggerall = command = "�O�����h�Z�C�o�[" || fvar(10) = 1100
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact = [1,5]
trigger3 = stateno = 215 && movecontact = [1,5]
trigger4 = stateno = 230 && movecontact = [1,5]
trigger5 = stateno = 245 && movecontact = [1,5]
trigger6 = stateno = 400 && movecontact = [1,5]
trigger7 = stateno = 410 && movecontact = [1,5]
trigger8 = stateno = 440 && movecontact = [1,5]
trigger9 = stateno = 290
trigger9 = (movecontact = [1,5]) || (animelem=8,>0 && animelem=11,<0)

;---------------------------------------------------------------------------
;EX���[���X���b�V���[�E�h���C�u�L�����Z��
[State Scramble Dash]
type = ChangeState
value = 2000
triggerall = var(59) <= 0
triggerall = power >= 1000
triggerall = command = "���[���X���b�V���[EX" || fvar(10) = 2000
triggerall = statetype != A
triggerall = var(20) > 0 || var(19) >= 500
triggerall = movehit || var(20) > 0
trigger1 = stateno = 1110 && movehit = [1,10]
trigger2 = stateno = 2110 && movehit = [1,10]

;---------------------------------------------------------------------------
;EX���[���X���b�V���[
[State Scramble Dash]
type = ChangeState
value = 2000
triggerall = var(59) <= 0
triggerall = power >= 1000
triggerall = command = "���[���X���b�V���[EX" || fvar(10) = 2000
triggerall = statetype != A
trigger1 = ctrl || stateno = 40
trigger2 = stateno = 200 && movecontact = [1,5]
trigger3 = stateno = 215 && movecontact = [1,5]
trigger4 = stateno = 230 && movecontact = [1,5]
trigger5 = stateno = 245 && movecontact = [1,5]
trigger6 = stateno = 400 && movecontact = [1,5]
trigger7 = stateno = 410 && movecontact = [1,5]
trigger8 = stateno = 440 && movecontact = [1,5]
trigger9 = stateno = 290
trigger9 = (movecontact = [1,5]) || (animelem=8,>0 && animelem=11,<0)

;---------------------------------------------------------------------------
;���[���X���b�V���[�E�h���C�u�L�����Z��
[State Scramble Dash]
type = ChangeState
value = 1000
triggerall = var(59) <= 0
triggerall = command = "���[���X���b�V���[" || fvar(10) = 1000
triggerall = statetype != A
triggerall = var(20) > 0 || var(19) >= 500
triggerall = movehit || var(20) > 0
trigger1 = stateno = 1110 && movehit = [1,10]
trigger2 = stateno = 2110 && movehit = [1,10]

;---------------------------------------------------------------------------
;���[���X���b�V���[
[State Scramble Dash]
type = ChangeState
value = 1000
triggerall = var(59) <= 0
triggerall = command = "���[���X���b�V���[" || fvar(10) = 1000
triggerall = statetype != A
trigger1 = ctrl || stateno = 40
trigger2 = stateno = 200 && movecontact = [1,5]
trigger3 = stateno = 215 && movecontact = [1,5]
trigger4 = stateno = 230 && movecontact = [1,5]
trigger5 = stateno = 245 && movecontact = [1,5]
trigger6 = stateno = 400 && movecontact = [1,5]
trigger7 = stateno = 410 && movecontact = [1,5]
trigger8 = stateno = 440 && movecontact = [1,5]
trigger9 = stateno = 290
trigger9 = (movecontact = [1,5]) || (animelem=8,>0 && animelem=11,<0)

;---------------------------------------------------------------------------
;EX�{���e�b�N�����`���[
[State Slide Touch]
type = ChangeState
value = 2300
triggerall = var(59) <= 0
triggerall = power >= 1000
triggerall = command = "�{���e�b�N�����`���[EX" || fvar(10) = 2300
triggerall = statetype != A
triggerall = numhelper(1300) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact = [1,5]
trigger3 = stateno = 215 && movecontact = [1,5]
trigger4 = stateno = 230 && movecontact = [1,5]
trigger5 = stateno = 245 && movecontact = [1,5]
trigger6 = stateno = 400 && movecontact = [1,5]
trigger7 = stateno = 410 && movecontact = [1,5]
trigger8 = stateno = 440 && movecontact = [1,5]
trigger9 = stateno = 290
trigger9 = (movecontact = [1,5]) || (animelem=8,>0 && animelem=11,<0)

;---------------------------------------------------------------------------
;�{���e�b�N�����`���[�E��
[State Slide Touch]
type = ChangeState
value = 1300
triggerall = var(59) <= 0
triggerall = command = "�{���e�b�N�����`���[" || fvar(10) = 1300
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact = [1,5]
trigger3 = stateno = 215 && movecontact = [1,5]
trigger4 = stateno = 230 && movecontact = [1,5]
trigger5 = stateno = 245 && movecontact = [1,5]
trigger6 = stateno = 400 && movecontact = [1,5]
trigger7 = stateno = 410 && movecontact = [1,5]
trigger8 = stateno = 440 && movecontact = [1,5]
trigger9 = stateno = 290
trigger9 = (movecontact = [1,5]) || (animelem=8,>0 && animelem=11,<0)

;---------------------------------------------------------------------------
;EX�C�������O���e
[State Slide Touch]
type = ChangeState
value = 2600
triggerall = var(59) <= 0
triggerall = power >= 1000
triggerall = command = "�C�������O���eEX" || fvar(10) = 2600
triggerall = statetype != A
triggerall = Numhelper(2)=0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact = [1,5]
trigger3 = stateno = 215 && movecontact = [1,5]
trigger4 = stateno = 230 && movecontact = [1,5]
trigger5 = stateno = 245 && movecontact = [1,5]
trigger6 = stateno = 400 && movecontact = [1,5]
trigger7 = stateno = 410 && movecontact = [1,5]
trigger8 = stateno = 440 && movecontact = [1,5]
trigger9 = stateno = 290
trigger9 = (movecontact = [1,5]) || (animelem=8,>0 && animelem=11,<0)

;---------------------------------------------------------------------------
;�C�������O���e�E��
[State Slide Touch]
type = ChangeState
value = 1600
triggerall = var(59) <= 0
triggerall = command = "�C�������O���eA" || fvar(10) = 1600
triggerall = statetype != A
triggerall = Numhelper(2)=0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact = [1,5]
trigger3 = stateno = 215 && movecontact = [1,5]
trigger4 = stateno = 230 && movecontact = [1,5]
trigger5 = stateno = 245 && movecontact = [1,5]
trigger6 = stateno = 400 && movecontact = [1,5]
trigger7 = stateno = 410 && movecontact = [1,5]
trigger8 = stateno = 440 && movecontact = [1,5]
trigger9 = stateno = 290
trigger9 = (movecontact = [1,5]) || (animelem=8,>0 && animelem=11,<0)


;---------------------------------------------------------------------------
;�C�������O���e�E��
[State Slide Touch]
type = ChangeState
value = 1610
triggerall = var(59) <= 0
triggerall = command = "�C�������O���eB" || fvar(10) = 1610
triggerall = statetype != A
triggerall = Numhelper(2)=0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact = [1,5]
trigger3 = stateno = 215 && movecontact = [1,5]
trigger4 = stateno = 230 && movecontact = [1,5]
trigger5 = stateno = 245 && movecontact = [1,5]
trigger6 = stateno = 400 && movecontact = [1,5]
trigger7 = stateno = 410 && movecontact = [1,5]
trigger8 = stateno = 440 && movecontact = [1,5]
trigger9 = stateno = 290
trigger9 = (movecontact = [1,5]) || (animelem=8,>0 && animelem=11,<0)


;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;�K�[�h�L�����Z���ӂ���΂��U��
[State -1, 290]
type = ChangeState
value = 291
triggerall = var(59) <= 0
triggerall = command = "�ӂ���΂�"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;�ӂ���΂��U��
[State -1, 290]
type = ChangeState
value = 290
triggerall = var(59) <= 0
triggerall = command = "�ӂ���΂�" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆂ӂ���΂��U��
[State -1, Jump Strong Kick]
type = ChangeState
value = 690
triggerall = var(59) <= 0
triggerall = command = "�ӂ���΂�"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl


;---------------------------------------------------------------------------
;�n�C�p�[�h���C�u���[�h����
[State -1, Jump Strong Kick]
type = ChangeState
value = 900
triggerall = var(59) <= 0
triggerall = command = "MAX"
triggerall = statetype != A
trigger1 = var(20) = 0 && var(19) >= 1000
trigger1 = ctrl

;---------------------------------------------------------------------------
;�N�C�b�N�E�n�C�p�[�h���C�u���[�h����
[State -1, Jump Strong Kick]
type = ChangeState
value = 901
triggerall = var(59) <= 0
triggerall = command = "MAX"
triggerall = statetype != A
trigger1 = var(20) = 0 && var(19) >= 1000
trigger1 = stateno = [200,499]
trigger1 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;�ً}�����
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = var(59) <= 0
triggerall = command = "�ً}�����"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;�K�[�h�L�����Z���ً}�����
[State -1, 701]
type = ChangeState
value = 701
triggerall = var(59) <= 0
triggerall = command = "�ً}�����"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
;---------------------------------------------------------------------------
;�ً}���O
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = var(59) <= 0
triggerall = command = "�ً}���O"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;�K�[�h�L�����Z���ً}���O
[State -1, 700]
type = ChangeState
value = 700
triggerall = var(59) <= 0
triggerall = command = "�ً}���O"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;�_�E�����
[State -1, Taunt]
type = ChangeState
value = 702
triggerall = var(59) <= 0
triggerall = command = "�ً}���O"
triggerall = alive && canrecover
trigger1 = stateno = 5050
trigger1 = pos y >=-40
trigger1 = vel y > 0
;---------------------------------------------------------------------------
;Run Fwd
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) <= 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) <= 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;���I�i�N���b�V��
[State -1, Kung Fu Throw]
type = ChangeState
value = ifelse(command = "b",820,800)
triggerall = var(59) <= 0
triggerall = command = "y" || command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 5
trigger1 = p2statetype != A
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;�X�g���C�N�A�[�`
[State -1, a]
type = ChangeState
value = 250
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holdfwd" ;|| command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�X�g���C�N�A�[�` (�L�����Z����)
[State -1, a]
type = ChangeState
value = 255
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holdfwd" ;|| command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact = [1,5]
trigger2 = stateno = 215 && movecontact = [1,5]
trigger3 = stateno = 230 && movecontact = [1,5]
trigger4 = stateno = 245 && movecontact = [1,5]
trigger5 = stateno = 400 && movecontact = [1,5]
trigger6 = stateno = 410 && movecontact = [1,5]
trigger7 = stateno = 440 && movecontact = [1,5]
trigger8 = stateno = 290 && movecontact = [1,5]

;===========================================================================
;---------------------------------------------------------------------------
;������������p���`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && (animelem=3,>0 && animelem=6,<0)
trigger3 = stateno = 400 && (animelem=4,>0 && animelem=6,<0)
trigger4 = stateno = 430 && (animelem=2,>0 && animelem=5,<0)

;---------------------------------------------------------------------------
;�������������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X >55
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�ߋ����������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X <=55
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;������L�b�N
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && (animelem=3,>0 && animelem=6,<0)
trigger3 = stateno = 400 && (animelem=4,>0 && animelem=6,<0)
trigger4 = stateno = 430 && (animelem=2,>0 && animelem=5,<0)

;---------------------------------------------------------------------------
;�������������L�b�N1
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X >55
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�ߋ����������L�b�N
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X <=55
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;����
[State -1, Taunt]
type = ChangeState
value = 199
triggerall = var(59) <= 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;���Ⴊ�ݎ�p���`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && (animelem=3,>0 && animelem=6,<0)
trigger3 = stateno = 400 && (animelem=4,>0 && animelem=6,<0)
trigger4 = stateno = 430 && (animelem=2,>0 && animelem=5,<0)

;---------------------------------------------------------------------------
;���Ⴊ�݋��p���`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;���Ⴊ�ݎ�L�b�N
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && (animelem=3,>0 && animelem=6,<0)
trigger3 = stateno = 400 && (animelem=4,>0 && animelem=6,<0)
trigger4 = stateno = 430 && (animelem=2,>0 && animelem=5,<0)

;---------------------------------------------------------------------------
;���Ⴊ�݋��L�b�N
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆎�p���`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) <= 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) <= 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) <= 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆋��L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) <= 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
