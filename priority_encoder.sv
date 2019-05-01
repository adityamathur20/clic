//this is for testing purpose as of now, should be removed
`include "Ifc.sv"
`include "functions.sv"

//importing the packages
import functions::*;

module priority_encoder(Ifc.encoder encoder_if);
    
    encoder_func_in input_to_encoder;
    encoder_func_out output_of_encoder;


    assign input_to_encoder.vec_in=encoder_if.input_vec;
    assign input_to_encoder.right =3'h3;
    assign input_to_encoder.left  =3'h1; 

    assign output_of_encoder=encoder_function(input_to_encoder);
endmodule
module test;
    
    //intantiating the interface
    Ifc test_ifc();
    //instantiating encoder
    priority_encoder test_enc(test_ifc);



    reg [7:0] test_vec[3:0];//creating a test vec
    encoder_func_out index;
    initial begin
        test_vec[0]=8'h00;
        test_vec[1]=8'h01;
        test_vec[2]=8'h00;
        test_vec[3]=8'h03;

        #10
        //assigning the inputs to the interface
        test_ifc.input_vec=test_vec;
        
        //taking out the result from the module
        index=test_enc.output_of_encoder;

        $display("the index is : %x",index.vec_index);

    end
endmodule
