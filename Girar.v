module Girar(
   input Sensor_Frontal,
   input Sensor_Direito,
	input Sensor_Esquerdo,
	input Sensor_Trazeiro,
	input Saida_Erro,
	input Saida_Re,
	output Saida
);
	wire Saida_Direito_Esquerdo;
	or(Saida_Direito_Esquerdo, Sensor_Direito, Sensor_Esquerdo);
	
	wire NOT_Saida_Erro_Re;
	nor(NOT_Saida_Erro_Re, Saida_Erro, Saida_Re);
	
	and(Saida, Saida_Direito_Esquerdo, NOT_Saida_Erro_Re);
	
endmodule