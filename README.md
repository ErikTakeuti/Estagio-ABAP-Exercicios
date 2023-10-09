# Estagio-ABAP-Exercicios

### 1. Escreva um algoritmo que armazene o valor 10 em uma variável A e o valor 20 em uma variável B. A seguir (utilizando apenas atribuições entre variáveis) troque os seus conteúdos fazendo com que o valor que está em A passe para B e vice-versa. Ao final, escrever os valores que ficaram armazenados nas variáveis.Não tem tela de seleção;

```abap
REPORT zprog_ex1_02.

*1. Escreva um algoritmo que armazene o valor 10 em uma variável A e o valor 20 em uma
*variável B. A seguir (utilizando apenas atribuições entre variáveis) troque os seus
*conteúdos fazendo com que o valor que está em A passe para B e vice-versa. Ao final,
*escrever os valores que ficaram armazenados nas variáveis.
*a. Não tem tela de seleção

DATA: lv_va    TYPE i,
      lv_vb    TYPE i,
      lv_tempa TYPE i,
      lv_tempb TYPE i.

lv_va = 10.
lv_vb = 20.

lv_tempa = lv_va.
lv_tempb = lv_vb.

lv_vb = lv_tempa.
lv_va = lv_tempb.

WRITE: 'O valor de A é: ', lv_va.
WRITE: / 'O valor de B é: ' , lv_vb.
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### 2. A jornada de trabalho semanal de um funcionário é de 40 horas. O funcionário que trabalhar mais de 40 horas receberá hora extra, cujo cálculo é o valor da hora regular com um acréscimo de 50%. Escreva um algoritmo que leia o número de horas trabalhadas em um mês, o salário por hora e escreva o salário total do funcionário, que deverá ser acrescido das horas extras, caso tenham sido trabalhadas (considere que o mês possua 4 semanas exatas). Criar uma tela de seleção com PARAMETERS para entrada de dados / A tela deve ter os elementos de textos corretamente escritos;

```abap
REPORT zprog_ex2_02.

*2. A jornada de trabalho semanal de um funcionário é de 40 horas. O funcionário que
*trabalhar mais de 40 horas receberá hora extra, cujo cálculo é o valor da hora regular
*com um acréscimo de 50%. Escreva um algoritmo que leia o número de horas trabalhadas
*em um mês, o salário por hora e escreva o salário total do funcionário, que deverá ser
*acrescido das horas extras, caso tenham sido trabalhadas (considere que o mês possua
*4 semanas exatas)
*a. Criar uma tela de seleção com PARAMETERS para entrada de dados
*b. A tela deve ter os elementos de textos corretamente escritos

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
PARAMETERS: lv_hrst  TYPE i,
            lv_horas TYPE p.
SELECTION-SCREEN  END OF BLOCK b1.

DATA: lv_sala TYPE p.

IF lv_hrst > 160.
  lv_sala = ( ( ( 160 ) * lv_horas ) + ( ( ( lv_hrst - 160 ) * ( lv_horas * '1.5' ) ) ) ).

ELSE.
  lv_sala = lv_hrst  * lv_horas .
ENDIF.

WRITE: 'O seu salário é de: ' , lv_sala.
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### 3. Faça um algoritmo para ler: quantidade atual em estoque, quantidade máxima em estoque e quantidade mínima em estoque de um produto. Calcular e escrever a quantidade média ((quantidade média = quantidade máxima + quantidade mínima) / 2). Se a quantidade em estoque for maior ou iguala quantidade média escrever a mensagem 'Não efetuar compra', senão escrever a mensagem 'Efetuar compra'.Criar uma tela de seleção com PARAMETERS para entrada de dados / A tela deve ter os elementos de textos corretamente escritos;

```abap
REPORT zprog_ex3_02.

*Faça um algoritmo para ler: quantidade atual em estoque, quantidade máxima em
*estoque e quantidade mínima em estoque de um produto. Calcular e escrever a
*quantidade média ((quantidade média = quantidade máxima + quantidade mínima) / 2).
*Se a quantidade em estoque for maior ou igual
*a quantidade média escrever a mensagem 'Não efetuar compra', senão escrever a
*mensagem 'Efetuar compra'.
*a. Criar uma tela de seleção com PARAMETERS para entrada de dados
*b. A tela deve ter os elementos de textos corretamente escritos

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
PARAMETERS: lv_qtdua TYPE i,
            lv_qtdmx TYPE i,
            lv_qtdmn TYPE i.
SELECTION-SCREEN END OF BLOCK b1.

DATA: lv_medi TYPE i.

lv_medi = ( lv_qtdmx + lv_qtdmn ) / 2.

IF lv_qtdua >= lv_medi.
  WRITE: 'NÃO EFETUAR COMPRA'.
ELSE.
  WRITE: 'EFETUAR COMPRA'.
ENDIF.
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### 4. Escreva um algoritmo para ler o número total de eleitores de um município, o número de votos brancos, nulos e válidos. Calcular e escrever o percentual que cada um representa em relação ao total de eleitores. Criar uma tela de seleção com PARAMETERS para entrada de dados / A tela deve ter os elementos de textos corretamente escritos;

```abap
REPORT zprog_ex4_02.

*4. Escreva um algoritmo para ler o número total de eleitores de um município, o número de
*votos brancos, nulos e válidos. Calcular e escrever o percentual que cada um representa
*em relação ao total de eleitores.
*a. Criar uma tela de seleção com PARAMETERS para entrada de dados
*b. A tela deve ter os elementos de textos corretamente escritos

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
PARAMETERS: lv_tdsel TYPE i,
            lv_tdsbr TYPE i,
            lv_tdsnu TYPE i,
            lv_tdsva TYPE i.
SELECTION-SCREEN END OF BLOCK b1.

DATA: p_bra TYPE p DECIMALS 1.
p_bra = ( lv_tdsbr * 100 ) / lv_tdsel.

DATA: p_null TYPE p DECIMALS 1.
p_null = ( lv_tdsnu * 100 ) / lv_tdsel.

DATA: p_vall TYPE p DECIMALS 1.
p_vall = ( lv_tdsva * 100 ) / lv_tdsel.

WRITE: 'PERCENTUAL DOS VOTOS BRANCOS:' ,  p_bra  , '%'.
WRITE: / 'PERCENTUAL DOS VOTOS NULOS:' ,  p_null , '%'.
WRITE: / 'PERCENTUAL DOS VOTOS VÁLIDOS:', p_vall , '%'.
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### 5. Faça um programa que leia três números, verifique (usando if e else) e mostre o maior e o menor deles. Criar uma tela de seleção com PARAMETERS para entrada de dados / A tela deve ter os elementos de textos corretamente escritos;

```abap
REPORT zprog_ex5_02.

*5. Faça um programa que leia três números, verifique (usando if e else) e mostre o maior e
*o menor deles;
*a. Criar uma tela de seleção com PARAMETERS para entrada de dados
*b. A tela deve ter os elementos de textos corretamente escritos

SELECTION-SCREEN BEGIN OF BLOCK b1.
PARAMETERS: lv_n1 TYPE i,
            lv_n2 TYPE i,
            lv_n3 TYPE i.
SELECTION-SCREEN END OF BLOCK b1.

*MAIOR NÚEMRO
IF ( lv_n1 >= lv_n2 ) AND ( lv_n1 >= lv_n3 ).
  WRITE: 'O MAIOR NÚEMRO É: ' , lv_n1.

ELSEIF ( lv_n2 >= lv_n1 ) AND ( lv_n2 >= lv_n3 ).
  WRITE: 'O MAIOR NÚEMRO É: ' , lv_n2.

ELSEIF ( lv_n3 >= lv_n1 ) AND ( lv_n3 >= lv_n2 ).
  WRITE: 'O MAIOR NÚEMRO É: ' , lv_n3.
ENDIF.

*MENOR NÚEMRO
IF ( lv_n1 <= lv_n2 ) AND ( lv_n1 <= lv_n3 ).
  WRITE: / 'O MENOR NÚEMRO É: ' , lv_n1.

ELSEIF ( lv_n2 <= lv_n1 ) AND ( lv_n2 <= lv_n3 ).
  WRITE: / 'O MENOR NÚEMRO É: ' , lv_n2.

ELSEIF ( lv_n3 <= lv_n1 ) AND ( lv_n3 <= lv_n1 ).
  WRITE: / 'O MENOR NÚEMRO É: ' , lv_n3.
ENDIF.
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### 6. Faça um programa para a leitura de duas notas parciais de um aluno. A mensagem “Aprovado”, se a média alcançada for maior ou igual a sete / A mensagem “Aprovado com Distinção”, se a média for igual a dez / A mensagem “Reprovado” se a média for menor de do que sete. Criar uma tela de seleção com PARAMETERS para entrada de dados /  A tela deve ter os elementos de textos corretamente escritos;

```abap
REPORT zprog_ex6_02.

*6. Faça um programa para a leitura de duas notas parciais de um aluno.
*• A mensagem “Aprovado”, se a média alcançada for maior ou igual a sete;
*• A mensagem “Aprovado com Distinção”, se a média for igual a dez;
*• A mensagem “Reprovado” se a média for menor de do que sete;
*o Criar uma tela de seleção com PARAMETERS para entrada de dados
*o A tela deve ter os elementos de textos corretamente escritos

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
PARAMETERS: lv_n1 TYPE p DECIMALS 1,
            lv_n2 TYPE p DECIMALS 1.
SELECTION-SCREEN END OF BLOCK b1.

DATA: lv_med TYPE p DECIMALS 1.

lv_med = ( lv_n1 + lv_n2 ) / 2.

IF ( lv_med = 10 ).
  WRITE: 'APROVADO COM DISTINÇÃO'.
  WRITE: lv_med.

ELSEIF ( lv_med > 7 ).
  WRITE: 'APROVADO'.
  WRITE: lv_med.
ENDIF.

IF ( lv_med <= 7 ).
  WRITE: 'REPROVADO'.
  WRITE: lv_med.
ENDIF.
```
