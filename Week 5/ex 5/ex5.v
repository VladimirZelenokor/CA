module ex5	
(
input clk ,
input d,
output q,
output q_n
);

wire n1;

ex4 master
(
	. clk ( ~ clk ) ,
	.d ( d ) ,
		.q ( n1 )
);
ex4 slave 
(
	. clk ( clk ) ,
	.d ( n1 ) ,
	.q ( q ) ,
	.q_n ( q_n )
);
endmodule 
