
.text
.global main
.set MYSVNSEGENBASEADDR, 0X4BB03000
@.set MYSVNSEGBASEADDR, 0x4BB03004

main:
	LDR r0, =MYSVNSEGENBASEADDR

enable_svnseg:
	MOV r1, #0x1 @I believe this enables the SVNSEG
	STR r1, [r0]
	mov r1, #1
	str r1, [r0,#4]
	mov r2, #2
	str r2, [r0, #8]
	mov r3, #3
	str r3, [r0, #0x0C]
	mov r4, #4
	str r4, [r0, #0x10]

loop:
	b loop
.end






