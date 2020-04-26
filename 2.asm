        org     100h

section	.text

        mov	di,		0d
	mov	cx,		[len]

lupi:	mov	bl,		[comnt+di]
	mov	[di+200h],	h
	inc	di
	loop	lupi

	int	20h

section	.data
	comnt	db		"Me recupero"
	len	equ		$-comnt