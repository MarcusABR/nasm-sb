# nasm-sb
Repositório de NASM para a disciplina de software 

# Integrantes G1

180076272 - Jonas de Souza Fagundes

190031891 - Kayran Vieira de Oliveira

200043722 - Thais Fernanda de Castro Garcia

190034084 - Marcus Vinicius Oliveira de Abrantes

160125260 - Ingrid Lorraine Rodrigues da Silva

190126892 - Thiago Elias dos Reis

# NASM
Repositório de duas tarefas:

Pré-processador:
- 2 - Construa macros para simular o comando switch em C
  
Montador NASM:
- 1 - Exemplifique como debugar um programa em NASM usando um software de debug

## Baixando o GDB
Para baixar o GDB em distribuições Debian/Ubuntu:
```
sudo apt-get install gdb
```
## Compilando os arquivos exemplo.asm ou switch.asm
Tendo em vista que os códigos somente foram testados no linux, utilize os seguintes comandos:
```
nasm -g -f elf64 -o src/nome_do_arquivo.o src/nome_do_arquivo.asm
ld nome_do_arquivo.o -o nome_do_arquivo
./nome_do_arquivo
```

## Debug utilizando o GDB

Criando um executável do programa:
```
nasm -g -f elf64 -o exemplo.o exemplo.asm
ld exemplo.o -o exemplo
```
Após compilar o programa em Assembly, rode o GDB:
```
gdb -q exemplo
```
Os breakpoints são definidos usando o comando `break` ou `b`. Para gerar um breakpoint em uma label ou linha, use o seguinte comando:
```
break <linha>   # ou break <nome-da-label> 
```
Após definição dos breakpoints, execute o programa com o comando: 
```
run
```
Para a visualização da interface pelo terminal:
```
layout asm
```
Para executar a próxima linha durante a execução do GDB, use o comando `step`: 
```
step 
```
Para o próximo breakpoint, ou até o fim da execução, caso não hajam mais breakpoints, use o comando a seguir:
```
continue 
```
### Conteúdo dos registradores
Para visualizar os registradores, basta usar o comando:
```
layout regs
```

### Conteúdo da memória
Para ver o conteúdo da memória, primeiro, é necessário listar as variáveis definidas:
```
i var
```
Em sequencia, é necessário usar o comando `x` com os parâmetros do tamanho e do tipo de dado na forma:
```
x/<tam><tipo> &<endereço> #ou &<var> 
```
Então, para ver o conteúdo no endereço 0x2000, por exemplo:
```
x/s &0x2000
```
### Finalizar o GDB
Por fim, para Finalizar o debugger, e preciso usar o comando `quit` ou `q`.
Para mais detalhes do funcionamento do debugger GDB, consulte o [manual do programa](http://www.gnu.org/software/gdb/documentation/), ou execute o comando`man gdb` ou utilize o comando `help` durante a execução.
