module Re(
   input Sensor_Frontal,
   input Sensor_Direito,
	input Sensor_Esquerdo,
	input Sensor_Trazeiro,
	input Saida_Erro,
	output Saida
);
	wire Saida_Frontal_Direito;
	and(Saida_Frontal_Direito, Sensor_Frontal, Sensor_Direito);
	
	wire Saida_Frontal_Esquerdo;
	and(Saida_Frontal_Esquerdo, Sensor_Frontal, Sensor_Esquerdo);
	
	wire OR_Saida_Lados_Frontal;
	or(OR_Saida_Lados_Frontal, Saida_Frontal_Direito, Saida_Frontal_Esquerdo, Sensor_Frontal);
	
	wire NOT_Saida_Erro;
	not(NOT_Saida_Erro, Saida_Erro);
	
	and(Saida, OR_Saida_Lados_Frontal, NOT_Saida_Erro);
	
endmodule