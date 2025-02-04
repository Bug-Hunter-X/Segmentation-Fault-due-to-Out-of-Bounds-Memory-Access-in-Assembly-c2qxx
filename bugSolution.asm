mov ecx, someVariable ; Get the value of ecx from somewhere
mov ebx, someOtherVariable ; Get the value of ebx from somewhere

; Add bounds checking before memory access
mov eax, someMemoryLimit ;Get a memory limit
cmp ecx, eax
jge handle_out_of_bounds ; Jump if ecx is >= the memory limit

mov eax, [ebx+ecx*4] ; Access the memory only if bounds are checked
jmp end_section

handle_out_of_bounds:
; Handle out of bounds error. Display an error message or take other appropriate action

end_section: