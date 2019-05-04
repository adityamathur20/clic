# clic



#Core-Local Interrupt Controller for RISCV compliant cores, support upto 1024 interrupts
#This repo will directly enable the user to have a plug and play feature, provided that all the required #changes on the core part are done w.r.t the specification e.g. change in the CSR supported by the core.

#Ideas

######typedef package will have all the different type of typedefs for all the packages.
######functions package which itself can include multiple function files
######Interface package which itself can include multiple interfaces for different buses and modules
######Top packages which will include all the packages for the design and will have the clic design.






#########################################FUNCTIONS_PACKAGES#####################################
    #This package will have fuctions related to 
    ##1.finding the max interrupt for main clic module
    ##2. 


#########################################INTERFACE_PACKAGES#####################################
    #This package wiil have the interfaces for all the different module and ports for core
    ##1. Interface for the main CLIC module to take vectors as input
    ##2. Interface for CORE BUS 
    
#########################################TYPEDEF_PACKAGES#####################################
    #This package will have the typedef for all the typedefs required for all the modules
    ##1. Typedef for the different memory mapped registers for main CLIC module
    ##2. Typedef for the different function declared.
    ##3. 
