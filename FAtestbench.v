//Testbench for Full Adder Module

module testbench;
    
    //tb signals
    reg A;
	 reg B;
	 reg cin;
    wire sum;
	 wire cout;
    
    // instantiate full adder module
    full_adder dut(
        .sum(sum),
        .cout(cout),
        .A(A),
        .B(B),
        .cin(cin)
    );
    
    // apply stimuli
    initial begin
        
        A=0; B=0; cin=0; #10;
        A=0; B=0; cin=1; #10;
        A=0; B=1; cin=0; #10;
        A=0; B=1; cin=1; #10;
        A=1; B=0; cin=0; #10;
        A=1; B=0; cin=1; #10;
        A=1; B=1; cin=0; #10;
        A=1; B=1; cin=1; #10;
        
    end
    
endmodule