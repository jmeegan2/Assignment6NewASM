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
integer_1			DWORD		10
integer_2			DWORD		50
byte_1				BYTE		30
byte_2				BYTE		70
intermediate_1		DWORD		0
intermediate_2		DWORD		0
intermediate_3		DWORD		0

; CODE SEGMENT
.code
main PROC
	; YOUR CODE GOES HERE...

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