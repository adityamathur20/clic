//This file contains the interface for all the module for clic


interface Ifc;
    
    logic [7:0] input_vec[3:0];


    //interface for the encoder
    modport encoder(
        input input_vec
    );



endinterface
