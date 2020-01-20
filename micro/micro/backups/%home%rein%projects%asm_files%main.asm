section .data
	data db "PIZZA"
	data_len equ $-data

	err_open db "Could not open file!", 0xA
	err_open_len equ $-err_open

	err_write db "Could not write to file!", 0xA
	err_write_len equ $-err_write

	err_args db "Missing filename", 0xA
	err_args_len equ $-err_args

section .bss
	file resb 4

global _start
section .text

	_start:

		POP rax				; Command line parameter count
		cmp rax, 2			; program name, filename
		; push err_args_len	; Push error message buffer length
		;push err_args		; Push error message
		jne error			; Not enough arguments
		;add rsp, 16			; remove from stack again

		POP	rax				; Pop name of program
		POP word [file]		; Pop filename to rax

		mov rax, 4			; Use write syscall
		mov rbx, 1			; Write to stdout
		mov rcx, [file]		; Supply pointer to error message buffer
		mov rdx, 200		; Supply buffer length
		int 0x80

		mov rax, 5			; Open file
		mov rbx, [file]		; supply filename buffer pointer
		mov rcx, 1			; Read/Write
		int 0x80

		mov rax, 0x1		; Exit
		mov rbx, 0x1		; With error
		int 0x80

		;;
		cmp rax, 0			; Check if fd in rax > 0 (ok)
		jl create			; Attempt to create file when failed

		mov rbx, rax		; Store file descripter

		mov rax, 4			; Use write syscall
		mov rcx, data		; Supply pointer to buffer
		mov rdx, data_len	; Supply buffer length
		int 0x80

		cmp rax, 0			; Check if fd in rax > 0 (ok)
		push err_write_len	; Push error message buffer length
		push err_write		; Push error message
		jl error

		mov rax, 36			; Sync
		int 0x80

		mov rax, 6			; Close file
		int 0x80

		mov rax, 0x1		; Exit
		mov rbx, 0x0
		int 0x80

	create:
		push err_write		; Push error message buffer length
		push  err_write_len	; Push error message
		mov rax, 4			; Use write syscall
		mov rbx, 1			; Write to stdout
		POP rcx				; Supply pointer to error message buffer
		POP rdx				; Supply buffer length
		int 0x80

		mov rax, 0x1		; Exit
		mov rbx, 0x1		; With error
		int 0x80


	error:
		mov rax, 4			; Use write syscall
		mov rbx, 1			; Write to stdout
		POP rcx				; Supply pointer to error message buffer
		POP rdx				; Supply buffer length
		int 0x80

		mov rax, 0x1		; Exit
		mov rbx, 0x1		; With error
		int 0x80
