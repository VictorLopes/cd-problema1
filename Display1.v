module Display1(
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
	or(A, Erro, Girar);
	or(F, Erro, Girar);
	or(G, Erro, Re);
	or(C, Girar);
	or(D, Erro, Girar);
	or(E, Erro, Girar, Re);
	
	or(Acender, Erro, Re, Girar);
endmodule