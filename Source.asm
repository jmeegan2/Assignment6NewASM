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
byte_1				BYTE		30d
byte_2Text			BYTE		"The value in 'byte_2' is       : ",0
byte_2				BYTE		70

intermediate_1Text  byte		"The value in 'intermiate_1' is :", 0
intermediate_1		DWORD		0
intermediate_2Text  byte		"The value in 'intermiate_2' is :", 0
intermediate_2		DWORD		0
intermediate_3Text  byte		"The value in 'intermiate_3' is :", 0
intermediate_3		DWORD		0

phrasePracticeOne	byte		"Practice Expression #01",0
phrasePracticeTwo	byte		"Practice Expression #02",0
phrasePracticeThree	byte		"Practice Expression #03",0
phrasePracticeFour	byte		"Practice Expression #04",0

practiceOneARM		byte		"-(integer_1 + integer_2)", 0		
practiceTwoARM		byte		"integer_2 - integer_1 + 2(integer_2)", 0
practiceThreeARM    byte		"integer_1 + byte_1 - integer_2",0
practiceFourARM			byte	"byte_2 - byte_1 + 2(integer_2 - byte_1)",0

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
	;idkkkk
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