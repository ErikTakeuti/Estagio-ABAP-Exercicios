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