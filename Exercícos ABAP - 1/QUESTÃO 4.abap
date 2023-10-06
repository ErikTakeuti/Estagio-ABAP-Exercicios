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