.Model small
.stack 100h
.data
var db "     $"
nam db 10,10, "         PROGRAM FOR REVIEW$"
v db 10,10,13,'Enter the no. for review: $'
a db 10,10,13,'1 for Excellent$'
v1 db 10,10,13,'Excellent$'
b db 10,13,'2 for Good$'
v2 db 10,10,13,'Good$'
c db 10,13,'3 for Fair$'
v3 db 10,10,13,'Fair$'
d db 10,13,'4 for Nice$'
v4 db 10,10,13,'Nice$'
e db 10,13,'5 for Bad$'
v5 db 10,10,13,'Bad$'
.code
	start:

	Mov ax,@data
	Mov ds,ax
	
	;set graphic mode
	Mov ax,6
	int 10h		; int 10h used for screen manipulation 
	
	;Set background Color
	mov ah,0
	mov al,04h
	int 10h

	mov ah,0bh
	mov bh,00h
	mov bl,4
	int 10h
	
	;draw line
	Mov ah,0ch
	Mov al,1            ;hight
	Mov cx,0
	mov dx,3
	L1: 
	int 10h
	inc cx
	cmp cx,637
	jle l1
	int 10h

	
	;draw line
	Mov ah,0ch
	Mov al,1
	Mov cx,0
	mov dx,190
	L2: 
	int 10h
	inc cx
	cmp cx,637
	jle l2
	int 10h
	
	mov ah,09
	mov dx,offset nam
	int 21h
	
	mov ah,09
	mov dx,offset a
	int 21h
	
	mov ah,09
	mov dx,offset b
	int 21h
	
	mov ah,09
	mov dx,offset c
	int 21h
	
	mov ah,09
	mov dx,offset d
	int 21h
	
	mov ah,09
	mov dx,offset e
	int 21h
	
	mov ah,09
	mov dx,offset v
	int 21h
	
	mov ah,01
	int 21h
	
	cmp al,'1'
	je j1
	
	cmp al,'2'
	je j2
	
	cmp al,'3'
	je j3
	
	cmp al,'4'
	je j4
	
	cmp al,'5'
	je j5
	

	
	j1:
	mov ah,09
	mov dx,offset v1
	int 21h
	Mov ah,4ch
	int 21h
	loop j1
	
	j2:
	mov ah,09
	mov dx,offset v2
	int 21h
	Mov ah,4ch
	int 21h
	loop j2
	
	j3:
	mov ah,09
	mov dx,offset v3
	int 21h
	Mov ah,4ch
	int 21h
	loop j3
	
	j4:
	mov ah,09
	mov dx,offset v4
	int 21h
	Mov ah,4ch
	int 21h
	loop j4
	
	j5:
	mov ah,09
	mov dx,offset v5
	int 21h
	Mov ah,4ch
	int 21h
	loop j5
	
	Mov ah,4ch
	int 21h
	
	end start
	
	
