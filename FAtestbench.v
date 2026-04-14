//Testbench for Full Adder Module

module testbench;
    
    //tb signals
    reg a;
	 reg b;
	 reg cin;
    wire sum;
	 wire cout;
    
    // instantiate full adder module
    full_adder dut(
        .sum(sum),
        .cout(cout),
        .A(a),
        .B(b),
        .cin(cin)
    );
    
    // apply stimuli
    initial begin
        
        a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10;
        
    end
    
endmodule