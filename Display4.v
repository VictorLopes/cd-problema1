module Display4(
	input Erro,
	input Re,
	input Girar,
	output C,
	output D,
	output E,
	output G,
	output Acender
);
	or(G, Erro, Girar);
	or(E, Erro, Girar);
	or(D, Erro, Girar);
	or(C, Erro, Girar);
	
	nor(Acender, Erro, Girar);
endmodule