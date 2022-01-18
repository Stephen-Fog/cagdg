*-----------------------------------------------------------
* Title      :Practical     8

* Written by :Stephen   Fogarty
* Date       :18/01/2022
* Description:Stuff and things
*-----------------------------------------------------------
    ORG    $1000

    
START:                  ; first instruction of program

* Put program code here


    *move.b  (a1)+, (a2)+
    *add.B #3, D3
     
     LEA NEXTLINE,A1
     MOVE.B  #14,D0
     TRAP    #15
     
     LEA text, A1
     MOVE #4,D0
     TRAP #15
     MOVE #14,D0
     TRAP #15
     MOVE #3,D0
     TRAP #15
     
     MOVE.B D1,HITPOINTS
     MOVE.B HITPOINTS,D4
     
     
     
l3:
     LEA guess,A1
     MOVE.B #14,D0
     TRAP #15
     
     MOVE #4,D0
     TRAP #15
     MOVE #14,D0
     TRAP #15
     MOVE #3,D0
     TRAP #15
     
     MOVE.B D1,guessNumber
     MOVE.B guessNumber  ,D4
     
     
     CMP.L D5,D6
     jmp l1
     LEA WRONG,A1
     MOVE.B  #14,D0
     TRAP    #15
     MOVE.B #15, D2
     jmp l2




l1: MOVE.B #0, D2
    
     jmp l3 LOOOP
l2:
    SIMHALT             ; halt simulator
text dc.b $0D,$0A
     dc.b 'HITPOINTS ARE NOW: ',0
NEXTLINE dc.b 'ENTER HITPIONTS: ',0
guess dc.b 'Guess a NuMbEr!: '
      dc.b $0D,$0A,0
WRONG dc.b 'WRONG!!!'
      dc.b $0D,$0A,0
     
     
HITPOINTS:     DS.W    1
NUMBER:     DS.W    1
guessNumber    DS.W    100

* Put variables and constants here

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
