.MODEL small ;Define modelo de memoria
.STACK 64 ;Aloca um espaço de 64 bytes para a pilha

.DATA ;inicio da selçao de dados
message db 'Soldador', '$'; Define uma Menssagem

.CODE ; Inicio da seçao de codigo
main proc ; define o inicio do procedimento principal

mov ax, @data ;Carrega o endereço do segmento AX
mov ds, ax ;Move o valor em AX para o registrador DS

mov ah, 9h ;Preparar p registrador AH para a funçao 09h do DOS
mov dx, offset message ;vai fazer o deslocamento da msg DX

int 21h ; istruçao de interrupçao
main endp ; Marca o fim
end main ; indica o fim