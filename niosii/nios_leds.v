module nios_leds (
	input  wire        clk,                   // clk_clk_in.clk
	input  wire        reset_n,               // clk_clk_in_reset.reset_n
	output wire [24:0] R,  							// pio_led_external_connection.export
	output wire [24:0] G,  							// pio_led_external_connection.export
	output wire [24:0] B  							// pio_led_external_connection.export
);	

	nios_qsys_file (
		.clk_clk(clk),          		// clk.clk
		.red_led_export(R),   			// red_led.export
		.green_led_export(G), 			// green_led.export
		.blue_led_export(B),  			// blue_led.export
		.reset_reset_n(reset_n)     	// reset.reset_n
	);

//	nios_qsys_file (
//		.clk(clk_clk),          		// clk.clk
//		.R(red_led_export),   			// red_led.export
//		.G(green_led_export), 			// green_led.export
//		.B(blue_led_export),  			// blue_led.export
//		.reset_n(reset_reset_n)     	// reset.reset_n
//	);
endmodule // End of module