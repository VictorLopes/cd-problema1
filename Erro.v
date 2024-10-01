module Erro(
   input Sensor_Frontal,
   input Sensor_Direito,
	input Sensor_Esquerdo,
	input Sensor_Trazeiro,
	output Saida
);
	wire Ligado;
	and(Ligado, Ligar, Bateria);

	wire Saida_Frontal_Trazeiro;
	and(Saida_Frontal_Trazeiro, Sensor_Frontal, Sensor_Trazeiro);
	
	wire Saida_Direita_Trazeiro;
	and(Saida_Direita_Trazeiro, Sensor_Direito, Sensor_Trazeiro);
	
	wire Saida_Esquerda_Trazeiro;
	and(Saida_Esquerda_Trazeiro, Sensor_Esquerdo, Sensor_Trazeiro);
	
	wire Saida_Direita_Esquerda;
	and(Saida_Direita_Esquerda, Sensor_Direito, Sensor_Esquerdo);
	
	or(Saida, Saida_Direita_Trazeiro, Saida_Esquerda_Trazeiro, Saida_Direita_Esquerda, Saida_Frontal_Trazeiro);
	
endmodule