typedef struct {
    bit [7:0] vec_in[3:0];//changing the number of vectors for testing purpose
    bit [2:0]left;//reg for storing the MSB index
    bit [2:0]right;//reg for storing the LSB index
} encoder_func_in;

typedef struct {
    bit [2:0]vec_index;//will hold the selected vector index
    bit [7:0] vector;//will hold the selected vector
} encoder_func_out;


