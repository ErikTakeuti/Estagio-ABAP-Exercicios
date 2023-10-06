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