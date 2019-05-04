module clic#(parameter CLICINTCTLBITS=8, number_of_interrupts=1024);
    
    typedef bit [CLICINTCTLBITS-1:0] clicintctl [number_of_interrupts-1:0];//clic control register
    logic clicintip [number_of_interrupts-1:0];//interrupt pending bits
    logic clicintie [number_of_interrupts-1:0];//interrrupt enable bits



    //cliccfg register layout

    //    bits    field
    //    7       reserved (WARL 0)
    //    6:5     nmbits[1:0]
    //    4:1     nlbits[3:0]
    //      0     nvbits


    //with the configuration below 
    // 2 bit of clicintctl will be for mode selection
    // 5 bits of clicintctl will be for level
    // remaining 1 bit will be for the priority of the interrupt

    logic [7:0] cliccfg;
    assign cliccfg[7]  =0;
    assign cliccfg[6:5]=2'b01;//means that 1 bit in clicintctl will be for mode selection,hence 2 modes aer supported

    assign cliccfg[4:1]=4'b0101;//means that 5 buts of clicintctl will be used for levels
    assign cliccfg[0]  =0;//means that hardware vectoring is not supported by default



    
endmodule
