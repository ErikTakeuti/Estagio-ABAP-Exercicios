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