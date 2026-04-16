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
    
    
				// Full_Adder
				assign sum = A ^ B ^ cin;
				assign cout = (A & B) | (cin & ( A ^ B));
    
endmodule