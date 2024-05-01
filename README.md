# Atividade 1:

Este é um breve guia sobre alguns conceitos fundamentais em linguagem assembly, incluindo as instruções "load", "store" e "halt", juntamente com uma breve explicação sobre a conversão de valores hexadecimais para caracteres ASCII.

## Load

A instrução "load" é utilizada em assembly para carregar dados da memória para um registrador ou para um local específico de armazenamento. É uma operação essencial para acessar e manipular dados na memória.

## Store

A instrução "store" em assembly é usada para armazenar o conteúdo de um registrador em um local específico da memória. Isso permite que dados sejam armazenados para uso posterior ou para comunicação com outros componentes do sistema.

## Halt

A instrução "halt" é utilizada para parar a execução do programa ou do processador. É comumente usada para encerrar o programa de forma controlada e pode colocar o processador em um estado de baixo consumo de energia.

## Conversão de Valores Hexadecimais para ASCII

A seção final do guia aborda a conversão de valores hexadecimais para caracteres ASCII. Isso é útil para entender como representações hexadecimais se traduzem em caracteres legíveis.
# Programa em Assembly

Este é um programa em assembly que carrega uma série de caracteres ASCII na memória, associando-os aos nomes "andr", e então encerra a execução.

## Instruções

O programa começa na posição de memória 000 e executa as seguintes operações:

- Carrega os valores ASCII correspondentes aos caracteres "R", "a", "f" e "a" em registradores.
- Armazena esses valores nas variáveis `name_r`, `name_a`, `name_f` e `name_a2`, respectivamente.
- Encerra a execução do programa.

![image](https://github.com/andrevinicus/Assembly/assets/102330781/e7c47fcb-1301-4630-8058-c214f1a02ec4)
![image](https://github.com/andrevinicus/Assembly/assets/102330781/a916616c-2fbb-4e69-b867-1f9dff555a61)

## Código Assembly

```assembly
org 000   ; Define o endereço de origem do programa como 000

load R    ; Carrega o valor hexadecimal 52 (ASCII para "R") em um registrador
store name_r   ; Armazena o valor do registrador na variável name_r

load a    ; Carrega o valor hexadecimal 61 (ASCII para "a") em um registrador
store name_a   ; Armazena o valor do registrador na variável name_a

load f    ; Carrega o valor hexadecimal 66 (ASCII para "f") em um registrador
store name_f   ; Armazena o valor do registrador na variável name_f

load a2   ; Carrega o valor hexadecimal 61 (ASCII para "a") em um registrador
store name_a2  ; Armazena o valor do registrador na variável name_a2

halt      ; Termina a execução do programa
```
# Explicação do Código Assembly para DOS

Este é um breve guia explicando um código assembly para DOS, que exibe a mensagem "Soldador" na tela.

## Modelo de Memória e Alocação de Pilha

- `.MODEL small`: Define o modelo de memória como "small", indicando que o programa estará em um único segmento de código e dados.
- `.STACK 64`: Aloca 64 bytes de espaço para a pilha do programa.

## Seção de Dados

- `.DATA`: Inicia a seção de dados do programa.
- `message db 'Soldador', '$'`: Define a variável `message` que armazena a string "Soldador" seguida por um caractere nulo ('$'), indicando o fim da string.

## Seção de Código

- `.CODE`: Inicia a seção de código do programa.
- `main proc`: Define o início do procedimento principal chamado `main`.

## Inicialização do Segmento de Dados

- `mov ax, @data`: Carrega o endereço do segmento de dados na variável `ax`.
- `mov ds, ax`: Move o valor contido em `ax` para o registrador de segmento de dados `ds`, configurando-o para apontar para a seção de dados do programa.

## Exibição da Mensagem

- `mov ah, 9h`: Prepara o registrador `ah` para a função 09h do DOS, que é responsável por exibir uma string.
- `mov dx, offset message`: Carrega o endereço da string `message` no registrador `dx`.
- `int 21h`: Chama a interrupção 21h do DOS para exibir a string.

## Término do Programa

- `main endp`: Marca o fim do procedimento `main`.
- `end main`: Indica o fim do programa.


![image](https://github.com/andrevinicus/Assembly/assets/102330781/bedb2bc8-ce3b-4a84-a411-5fc4e56e142c)
![image](https://github.com/andrevinicus/Assembly/assets/102330781/056af8ae-2a5a-4340-9790-016f78c5a862)





