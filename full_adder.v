/*
==========================================================
                       FULL ADDER
==========================================================
Description: Full Adder using gate-level modeling.
             
Design Engineer: 
	Jericho A. Rendon
	
	Date:
	10 April, 2026
==========================================================

==========================================================
*/

module full_adder(sum, cout, A, B, cin);
    
    // ports
    input A, B, cin;
    output sum, cout;
    
    // nets
    wire w1, w2, w3, w4;
    
    // sum 
    xor u5(w1, A, B);
    xor u4(sum, w1, cin);
    
    // cout
    and u3(w2, A, B);
    and u2(w3, w1, cin);
    or  u1(cout, w2, w3);
    
endmodule