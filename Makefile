COMPILE=compile
CLEAN = clean

compile:
	vcs -sverilog priority_encoder.sv
	./simv

clean:
	rm -rf simv simv.daidir/ csrc/ ucli.key


