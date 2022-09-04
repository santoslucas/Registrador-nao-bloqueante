/*
* CABEÇALHO *

Alunos:	Lucas Santos Rodrigues (20213001521)
			Marcela Caram (20213006528)
			Vinícius Ferreira (20213005208)

Projeto: Registrador Não Bloqueante
Data: 24/01/2022

Entradas: in, clear, clock;
Saídas: Q0,Q1,Q2,Q3;
*/

module registrador_nao_bloqueante(in,clear,clock,Q0,Q1,Q2,Q3);
input in;
input clear;
input clock;

output reg Q0,Q1,Q2,Q3;

always@(posedge clock or posedge clear)
	begin
		if(clear)
			begin
				Q3 <= 1'b0; // reseta
				Q2 <= 1'b0; // reseta
				Q1 <= 1'b0; // reseta
				Q0 <= 1'b0; // reseta
			end
			
		else
			begin
				Q3 <= in; 	
				Q2 <= Q3;
				Q1 <= Q2;  
				Q0 <= Q1;
			end
	end
endmodule