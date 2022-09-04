/*
* CABEÇALHO *

Alunos:	Lucas Santos Rodrigues (20213001521)
			Marcela Caram (20213006528)
			Vinícius Ferreira (20213005208)

Projeto: TestBench Registrador Não Bloqueante
Data: 24/01/2022

Entradas: TB_in, TB_clear, TB_clock;
Saídas: TB_Q0,TB_Q1,TB_Q2,TB_Q3;
*/

module TB_regis_nao_bloq;
 
	reg TB_clear, TB_clock, TB_in;
	wire TB_Q3,TB_Q2,TB_Q1,TB_Q0;


// parameter stop_time = 1000;
// initial # stop_time ;

    registrador_nao_bloqueante dut(TB_in,TB_clear,TB_clock,TB_Q0,TB_Q1,TB_Q2,TB_Q3);
 
  initial
  begin
	TB_clear = 1'b0;		TB_clock = 1'b0;    	TB_in = 1'b0;	 #20
	TB_clear = 1'b1;		TB_clock = 1'b1;  	TB_in = 1'b0; 	 #20
	TB_clear = 1'b0;		TB_clock = 1'b0;  	TB_in = 1'b1; 	 #20
	TB_clear = 1'b0;		TB_clock = 1'b1;  	TB_in = 1'b1; 	 #20
	TB_clear = 1'b0;		TB_clock = 1'b0;  	TB_in = 1'b0; 	 #20
	TB_clear = 1'b0;		TB_clock = 1'b1;  	TB_in = 1'b0;	 #20
	TB_clear = 1'b0;		TB_clock = 1'b0; 		TB_in = 1'b0;	 #20
	TB_clear = 1'b0;		TB_clock = 1'b1;  	TB_in = 1'b0;	 #20
	TB_clear = 1'b0;		TB_clock = 1'b0; 	 	TB_in = 1'b0;	 #20
	TB_clear = 1'b0;		TB_clock = 1'b1; 		TB_in = 1'b0;	 #20
   TB_clear = 1'b0;		TB_clock = 1'b0; 	 	TB_in = 1'b0;	 #20
	TB_clear = 1'b0;		TB_clock = 1'b1; 		TB_in = 1'b0;	 #20
	TB_clear = 1'b0;		TB_clock = 1'b0; 	 	TB_in = 1'b0;	 #20
	TB_clear = 1'b0;		TB_clock = 1'b1; 		TB_in = 1'b0;	 #20;
  end
//always 
//begin
 // #35  TB_clock =  !TB_clock ; 
  
  //#10    TB_in = !   TB_in;
 
 // end
endmodule