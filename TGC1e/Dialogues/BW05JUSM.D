BEGIN ~BW05JUSM~

IF ~Global("BW05_TGC1","GLOBAL",-11)
!See([ENEMY.0.0])~ THEN BEGIN 0
  SAY @514
  IF ~~ THEN REPLY @515 GOTO 2
  IF ~~ THEN REPLY @516 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @517
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @518
  IF ~~ THEN REPLY @519 GOTO 3
  IF ~~ THEN REPLY @520 GOTO 3
  IF ~~ THEN REPLY @521 GOTO 3
  IF ~~ THEN REPLY @522 GOTO 4
  IF ~~ THEN REPLY @523 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @240
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @524
  IF ~~ THEN REPLY @525 GOTO 6
  IF ~~ THEN REPLY @526 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @527
  IF ~~ THEN REPLY @528 GOTO 6
  IF ~~ THEN REPLY @530 DO ~SetGlobal("FlamEnemy","GLOBAL",1)
Enemy()
~ GOTO 17
  IF ~~ THEN REPLY @531 GOTO 18
END

IF ~~ THEN BEGIN 6
  SAY @532
  IF ~~ THEN REPLY @533 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @534
  IF ~~ THEN DO ~SetGlobal("BW05_TGC1","GLOBAL",1)
SetGlobal("BW05_BanditAttack","GLOBAL",1)
CreateCreature("BW05GRA0",[929.1928],2)
CreateCreature("BW05BAAT",[887.2075],2)
CreateCreature("BW05BAAT",[873.2033],2)
CreateCreature("BW05BAAT",[865.1999],2)
CreateCreature("BW05BAAT",[852.1961],2)
CreateCreature("BW05BAAT",[829.1929],2)
CreateCreature("BW05BAAT",[788.1902],2)
~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @535
  IF ~~ THEN EXTERN ~BW05GRAC~ 3
END

IF ~Global("BW05_JusamLastTalk","GLOBAL",0)
!Global("BW05_SuddenAttack","GLOBAL",1)
!Global("BW05_FFEnemy","Global",1)
See([ENEMY.0.0])~ THEN BEGIN 9
  SAY @370
  IF ~~ THEN EXIT
END

IF ~!See([ENEMY.0.0])
Global("BW05_TGC1","GLOBAL",2)~ THEN BEGIN 10
  SAY @536
  IF ~~ THEN DO ~CreateCreature("BW05FFAN",[-1.-1],2)
~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @537
  IF ~~ THEN EXTERN ~BW05FFAN~ 0
END

IF ~~ THEN BEGIN 12
  SAY @538
  IF ~~ THEN EXTERN ~BW05FFAN~ 1
END

IF ~~ THEN BEGIN 13
  SAY @539
  IF ~~ THEN DO ~SetGlobal("BW05_TGC1","GLOBAL",3)
EscapeArea()
~ UNSOLVED_JOURNAL @540 EXTERN ~BW05FFAN~ 2
END

IF ~!See([ENEMY.0.0])
!Dead("BW05FFAP")
Global("BW05_TGC1","GLOBAL",5)~ THEN BEGIN 14
  SAY @541
  IF ~~ THEN REPLY @542 GOTO 19
  IF ~~ THEN REPLY @543 GOTO 19
END

IF ~!See([ENEMY.0.0])
Global("BW05_TGC1","GLOBAL",6)~ THEN BEGIN 15
  SAY @544
  IF ~~ THEN REPLY @545 GOTO 22
  IF ~~ THEN REPLY @546 GOTO 22
END

IF ~~ THEN BEGIN 17
  SAY @549
  IF ~~ THEN DO ~SetGlobal("BW05_TGC1","GLOBAL",-2)
EraseJournalEntry(@452)
EraseJournalEntry(@540)
EraseJournalEntry(@557)
EraseJournalEntry(@599)
Enemy()
~ SOLVED_JOURNAL @548 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @550
  IF ~~ THEN DO ~SetGlobal("BW05_TGC1","GLOBAL",-1)
EraseJournalEntry(@452)
EraseJournalEntry(@540)
EraseJournalEntry(@557)
EraseJournalEntry(@599)
EscapeArea()
~ SOLVED_JOURNAL @551 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @552
  IF ~~ THEN EXIT
END

IF ~!See([ENEMY.0.0])
Dead("BW05FFAP")
Global("BW05_TGC1","GLOBAL",5)~ THEN BEGIN 20
  SAY @553
  IF ~~ THEN DO ~SetGlobal("BW05_TGC1","GLOBAL",-1)
EraseJournalEntry(@540)
EraseJournalEntry(@599)
EscapeArea()
~ SOLVED_JOURNAL @554 EXIT
END

IF ~Global("BW05_SuddenAttack","GLOBAL",1)~ THEN BEGIN 21
  SAY @555
  IF ~~ THEN DO ~SetGlobal("BW05_SuddenAttack","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @556
  IF ~~ THEN REPLY @558 UNSOLVED_JOURNAL @557 GOTO 23
  IF ~~ THEN REPLY @559 UNSOLVED_JOURNAL @557 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @560
  IF ~~ THEN DO ~SetGlobal("BW05_TGC1","GLOBAL",7)
SetGlobal("BW05_TGC1_FAIInvaded","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~Global("BW05_JusamLastTalk","GLOBAL",1)~ THEN BEGIN 24
  SAY @561
  IF ~~ THEN DO ~SetGlobal("BW05_TGC1_FAIInvaded","GLOBAL",0)
~ EXIT
END

IF ~!See([ENEMY.0.0])
Global("BW05_BanditAttack","GLOBAL",1)~ THEN BEGIN 25
  SAY @562
  IF ~~ THEN EXIT
END

IF ~Global("BW05_TGC1","GLOBAL",0)
!See([ENEMY.0.0])~ THEN BEGIN 26
  SAY @514
  IF ~~ THEN REPLY @516 GOTO 1
END

IF ~Global("BW05_TGC1","GLOBAL",16)
!Global("BW05_FFEnemy","Global",1)~ THEN BEGIN 27
  SAY @563
  IF ~Dead("BW05TEVE")~ THEN REPLY @564 EXTERN ~BW05TERG~ 26
  IF ~!Dead("BW05TEVE")~ THEN REPLY @565 EXTERN ~BW05TERG~ 26
END

IF ~~ THEN BEGIN 28
  SAY @566
  IF ~~ THEN REPLY @567 GOTO 29
  IF ~~ THEN REPLY @568 GOTO 30
END

IF ~~ THEN BEGIN 29
  SAY @569
  IF ~~ THEN REPLY @570 GOTO 32
END

IF ~~ THEN BEGIN 30
  SAY @571
  IF ~~ THEN REPLY @570 GOTO 32
END

IF ~Global("BW05_TGC1","GLOBAL",16)
Global("BW05_FFEnemy","Global",1)~ THEN BEGIN 31
  SAY @572
  IF ~~ THEN DO ~SetGlobal("BW05_TGC1_FAIInvaded","GLOBAL",0)
EraseJournalEntry(@20016)
EraseJournalEntry(@452)
EraseJournalEntry(@540)
EraseJournalEntry(@548)
EraseJournalEntry(@557)
EraseJournalEntry(@599)
AddexperienceParty(17000)
ReputationInc(-1)
ActionOverride("BW05JER2",Polymorph(WYVERN))
ActionOverride("BW05RUD2",Polymorph(GNOLL))
~ SOLVED_JOURNAL @573 EXIT
END

IF ~~ THEN BEGIN 32
  SAY @574
  IF ~~ THEN EXTERN ~BW05TERG~ 27
END
