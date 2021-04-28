; EXTERNAL DEPENDENCIES
INCLUDE		Irvine32.inc
INCLUDELIB	Irvine32.lib

; EXECUTION MODE PARAMETERS
.386
.model flat, stdcall
.stack 4096

; PROTOTYPES
ExitProcess PROTO, dwExitCode:DWORD

; DATA SEGMENT
.data
integer_1Text		BYTE		"The value in 'integer_1' is    : ", 0	
integer_1			DWORD		10d

integer_2Text		BYTE		"The value in 'integer_2' is    : ",0	
integer_2			DWORD		50d

byte_1Text			BYTE		"The value in 'byte_1' is       : ",0
byte_1				BYTE		30d, 0
byte_2Text			BYTE		"The value in 'byte_2' is       : ",0
byte_2				BYTE		70d, 0

intermediate_1Text  byte		"The value in 'intermediate_1' is :", 0
intermediate_1		DWORD		0
intermediate_2Text  byte		"The value in 'intermediate_2' is :", 0
intermediate_2		DWORD		0
intermediate_3Text  byte		"The value in 'intermediate_3' is :", 0
intermediate_3		DWORD		0

phrasePracticeOne	byte		"Practice Expression #01",0
phrasePracticeTwo	byte		"Practice Expression #02",0
phrasePracticeThree	byte		"Practice Expression #03",0
phrasePracticeFour	byte		"Practice Expression #04",0

practiceOneARM		byte		"-(integer_1 + integer_2)", 0		
practiceTwoARM		byte		"integer_2 - integer_1 + 2(integer_2)", 0
practiceThreeARM    byte		"integer_1 + byte_1 - integer_2",0
practiceFourARM		byte		"byte_2 - byte_1 + 2(integer_2 - byte_1)",0

line				byte		"------------------------------------" ,0

phrase_plus			BYTE		"+", 0
phrase_minus		BYTE		"-", 0

; CODE SEGMENT

.code
main PROC
	; YOUR CODE GOES HERE...

	;Showing the values of integer_1, integer_2, byte_1, byte_2
	MOV EDX, offset integer_1Text
	CALL WriteString
	MOV EDX, OFFSET phrase_plus
	CALL WriteString
	MOV EAX, integer_1
	
	CALL WriteDec
	call crlf


	mov edx, offset integer_2Text
	call writestring
	mov edx, offset phrase_plus
	call writestring
	mov eax, integer_2
	call writedec	
	call crlf

	mov edx, offset byte_1Text
	call writestring
	mov edx, offset phrase_plus
	call writestring
	movzx eax, byte_1
	call writedec
	call crlf

	mov edx, offset byte_1Text
	call writestring
	mov edx, offset phrase_plus
	call writestring
	movzx eax, byte_2
	call writedec
	call crlf
	call crlf

; Start of Practice Expression #01

mov edx, offset phrasePracticeOne
call writestring
call crlf
mov edx, offset line
call writestring
call crlf
mov edx, offset practiceOneArm ;-(integer_1 + integer_2)
call writestring
call crlf
mov edx, offset intermediate_1Text
call writestring
MOV EDX, OFFSET phrase_plus
CALL WriteString
MOV intermediate_1, 0d
mov eax, integer_1
add eax, integer_2
MOV intermediate_1, eax
call writedec
call crlf 

mov edx,offset intermediate_2text
call writestring
mov edx, offset phrase_plus
call writeString
MOV intermediate_2, 0d
mov eax, intermediate_2
call writedec
call crlf

mov edx,offset intermediate_3text
call writestring
mov edx, offset phrase_plus
call writeString
MOV intermediate_3, 0d
mov eax, intermediate_3
call writedec
call crlf

;Start of Practice Expression #02
mov edx, offset phrasePracticeTwo
call writestring
call crlf
mov edx, offset line
call writestring
call crlf
mov edx, offset practiceTwoArm ;-(intermediate_1)
call writestring
call crlf
call crlf

;Start of Practice Expression #03
mov edx, offset phrasePracticeThree
call writestring
call crlf
mov edx, offset line
call writestring
call crlf
mov edx, offset practiceThreeArm ;integer_1 - integer_1 + 2(integer_2)
call writestring
call crlf
call crlf

;Start of Practice Expression #04
mov edx, offset phrasePracticeFour
call writestring
call crlf
mov edx, offset line
call writestring
call crlf
mov edx, offset practiceFourArm ;integer_2 - integer_1 + intermediate_1
call writestring
call crlf
call crlf





	; Return to OS.
	INVOKE ExitProcess, 0
main ENDP

showOperandContents PROC
	; YOUR CODE GOES HERE...
showOperandContents ENDP

showIntermediateContents PROC
	; YOUR CODE GOES HERE...
showIntermediateContents ENDP

END main