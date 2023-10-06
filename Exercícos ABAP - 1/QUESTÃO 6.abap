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