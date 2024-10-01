module Proj(
    input Ligar,
    input Bateria,
    input Sensor_Frontal,
    input Sensor_Direito,
	 input Sensor_Esquerdo,
	 input Sensor_Trazeiro,
	 output A,
	 output B,
	 output C,
	 output D,
	 output E,
	 output F,
	 output G,
	 output P,
	 output Digito1,
	 output RoboLigado
);	
	wire Ligado, NOT_Bateria;
	not(NOT_Bateria, Bateria);
	and(Ligado, Ligar, NOT_Bateria);
	
	and(RoboLigado, Ligar, NOT_Bateria);
	
	wire Saida_Erro;
	Erro erro(Sensor_Frontal, Sensor_Direito, Sensor_Esquerdo, Sensor_Trazeiro, Saida_Erro);
	
	wire Saida_Re;
	Re re(Sensor_Frontal, Sensor_Direito, Sensor_Esquerdo, Sensor_Trazeiro, Saida_Erro, Saida_Re);
	
	wire Saida_Girar;
	Girar girar(Sensor_Frontal, Sensor_Direito, Sensor_Esquerdo, Sensor_Trazeiro, Saida_Erro, Saida_Re, Saida_Girar);
	
	// Para saida como LEDs, por cada uma das saidas como parametro do modulo e comentar o wire abaixo
	// Refazer a pinagem indicando o LED corretamente
	wire Saida_Erro_Ligado, Saida_Re_Ligado, Saida_Girar_Ligado;
	and(Saida_Erro_Ligado, Saida_Erro, Ligado);
	and(Saida_Re_Ligado, Saida_Re, Ligado);
	and(Saida_Girar_Ligado, Saida_Girar, Ligado);
	
	// Caso seja optado utilizar a saida dos LEDs, comentar a parte abaixo para o display de 7 segmentos
	wire SA, SB, SC, SD, SE, SF, SG;
	Display1 display1(Saida_Erro_Ligado, Saida_Re_Ligado, Saida_Girar_Ligado, SA, SB, SC, SD, SE, SF, SG, Digito1);
	
	// Recurso tecnico pra acender os pinos (invertendo o sinal)
	not(A, SA);
	not(B, SB);
	not(C, SC);
	not(D, SD);
	not(E, SE);
	not(F, SF);
	not(G, SG);
	not(P, 0);
endmodule
