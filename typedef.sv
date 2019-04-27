typedef struct {
    logic [7:0] vec_in[3:0];//changing the number of vectors for testing purpose
    logic [2:0]left;//reg for storing the MSB index
    logic [2:0]right;//reg for storing the LSB index
} encoder_func_in;

typedef struct {
    logic [2:0]vec_index;//will hold the selected vector index
    logic [7:0] vector;//will hold the selected vector
} encoder_func_out;


