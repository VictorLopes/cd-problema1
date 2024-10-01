module Display3(
	input Erro,
	input Re,
	input Girar,
	output E,
	output G,
	output Acender
);
	or(G, Erro, Girar);
	or(E, Erro, Girar);
	
	nor(Acender, Erro, Girar);
endmodule