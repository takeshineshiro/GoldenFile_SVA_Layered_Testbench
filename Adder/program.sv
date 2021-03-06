////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Module      : program.sv
// Project      : M.Tech-VLSI-Main-Project-Adder_Verification
// Description: 
// This is the program block.
// It sets up the environment and serves as a separator between testbench and DUT.
// The program block takes one parameter, an interface.
// This is where an object of environment class is created and the above interface is passed as a parameter to it.
// The number of simulations are specified here by setting the repeat_count variable of generator class via environment.
// Then the main task of environment is called to execute the transactions for specified number of times.
//
// Change history: 18/05/20 - V1.0 Initial working version created  (owner: Abhishek Kumar)
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

`include "environment.sv"
program test ( intf_adr intf ) ;
	environment env;
	initial begin
	  env = new ( intf ) ;
	  env.gen.repeat_count = 400;
	  env.main();
	end

endprogram