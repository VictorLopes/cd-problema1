module Display2(
	input Erro,
	input Re,
	input Girar,
	output A,
	output B,
	output C,
	output D,
	output E,
	output F,
	output G,
	output Acender
);
	or(A, Re, Girar);
	or(F, Re);
	or(G, Erro, Re);
	or(C, Girar);
	or(D, Re);
	or(E, Erro, Re);
	
	nor(Acender, Erro, Re, Girar);
endmodule