REPORT zprog_ex2_02.
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

IF lv_hrst >= 160. "160 por conta de 4 semanas, ficaria 4 * 40 horas = 160 , horas total das semanas.
  lv_sala = ( ( ( 160 ) * lv_horas ) + ( ( ( lv_hrst - 160 ) * lv_horas ) * '0.5' ) ). "horas extras caso tenha passado ou atingido as 160 horas.
                "salario comum                 "hora extra      "valor da hora com acréscimo de 50%.
ELSE.
  lv_sala = lv_hrst  * lv_horas . "senão efetua um pagamento normal sem horas extras.
ENDIF.

WRITE: 'O seu salário é de: ' , lv_sala.
