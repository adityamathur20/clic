package functions;
    
//including the include files

`include "typedef.sv"

//this is the encoder function which will do binary search 
function encoder_func_out encoder_function (input encoder_func_in func_in);

        encoder_func_out out;
        encoder_func_out out1;
        encoder_func_in in1;
        encoder_func_out out2;
        encoder_func_in in2;
        $display("input vec: %x, initital left: %x, initial right %x",func_in.vec_in[3],func_in.left,func_in.right);
        if(func_in.left == (func_in.right-1))
            begin
                    out.vector       = func_in.vec_in[func_in.left];
                    out.vec_index = func_in.left;
                return out;//return
            end
        else
            begin

                //testing
                $display("in the else \n");


                 //this is the 1st instance of the recursive call

                 in1.vec_in        = func_in.vec_in;
                 in1.left          = func_in.left;
                 in1.right         = (func_in.right+func_in.left)/2;//
                 $display("1st recursive call");
                 $display("inputs right: %x, left: %x\n",in1.right,in1.left);
                 out1              = encoder_function(in1);



                 //this is the 2nd instance of the recursive call
                 in2.vec_in        = func_in.vec_in;
                 in2.right         = func_in.right;
                 in2.left          = (func_in.right+func_in.left)/2;//
                 $display("2nd recursive call");
                 $display("inputs right: %x, left: %x\n",in2.right,in2.left);
                 out2              = encoder_function(in2);

                 //testing
                 //********************
                    $display("out1: %x\n",out1.vector);
                    $display("out2: %x\n",out2.vector);
                 //********************
                 if(out1.vector>out2.vector)
                     return out1;//return 1
                 else
                     return out2;//return 2

            end

    
endfunction:encoder_function


endpackage:functions
