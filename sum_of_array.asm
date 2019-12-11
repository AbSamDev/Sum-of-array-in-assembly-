Include Irvine32.inc

.data
arr dword 20,99,132,9,3
arrlen dword ?

.code
arrAdder proto, arr: ptr dword, arrlen:dword
main proc
	mov eax,lengthof arr
	mov arrlen,eax
	invoke arrAdder,arr,arrlen

	call writeint
	call waitmsg
	exit
main endp
arrAdder proc, arr1: ptr dword, arrlen1:dword
mov esi,arr1
mov ecx,arrlen1
mov eax,0
L1:
add eax,[esi]
add esi,4
loop L1
ret
arrAdder endp

end main
