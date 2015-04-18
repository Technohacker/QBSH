'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'QBSH: A QuickBASIC Shell
'FREEWARE
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
CLS

'LOGO
COLOR 4
LOCATE 5, 35
PRINT "Q"

COLOR 10
LOCATE 5, 37
PRINT "B"

COLOR 9
LOCATE 6, 35
PRINT "S"

COLOR 14
LOCATE 6, 37
PRINT "H"

'END OF LOGO
'WELCOME SCREEN

COLOR 15
LOCATE 8, 30
PRINT "WELCOME TO QBSH"

LOCATE 9, 29
PRINT "LOGIN WITH ADMIN"

LOCATE 11, 29
PRINT "USERNAME: ADMIN"

LOCATE 12, 29
INPUT "PASSWORD: ", PASS$

SELECT CASE PASS$
    CASE "abc123"
        LOCATE 15, 32
        PRINT "WELCOME"
        SLEEP 2
        GOTO 10
    CASE ELSE
        LOCATE 15, 15
        PRINT "WRONG PASSWORD. CHECK SOURCE CODE FOR PASSWORD"
        END
    END SELECT

'END OF WELCOME SCREEN

10 CLS
PRINT "TYPE 'HELP' FOR HELP"
PRINT
0 INPUT "ENTER COMMAND: ", INSTRUCTION$
INST$ = UCASE$(INSTRUCTION$)

SELECT CASE INST$
    CASE "HELP"

        PRINT
        PRINT "            HELP"
        PRINT "CALCULATOR       OPENS CALCULATOR"
        PRINT "SHUTDOWN         SHUTS DOWN THE OS"
        PRINT "TIME             SHOWS THE TIME"
        PRINT "DATE             SHOWS THE DATE"
        PRINT

    CASE "TIME"

        PRINT "TIME IS "; TIME$
        PRINT

    CASE "DATE"

        PRINT "DATE IS "; DATE$
        PRINT

    CASE "SHUTDOWN"

        INPUT "DO YOU WANT TO SHUTDOWN? (Y/N)", YN$

        SELECT CASE UCASE$(YN$)
            CASE "Y"
                PRINT
                PRINT "*************************************SHUTTING DOWN******************************"
                SLEEP 2
                END

            CASE "N"

                PRINT
                GOTO 0

        END SELECT

    CASE "CALCULATOR"

        PRINT
        PRINT "Welcome to the Calculator"
        PRINT "Enter two numbers each separated by a comma: (n,n)"
        INPUT "", num1, num2
        PRINT
        PRINT "Choose a basic operation:"
        PRINT "1> Add 2> Subtract 3> Multiply 4> Divide"
        INPUT "Type a menu selection number from 1 to 4"; opNo%
        SELECT CASE opNo%
            CASE 1: answer = num1 + num2
            CASE 2: answer = num1 - num2
            CASE 3: answer = num1 * num2
            CASE 4: answer = num1 / num2
        END SELECT
        PRINT "The answer is: "; answer
        PRINT

END SELECT

GOTO 0

