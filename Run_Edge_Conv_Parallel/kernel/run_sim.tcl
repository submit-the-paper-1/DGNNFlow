open_project Edge_Conv_Parallel_HLS

add_files src/dcl.hpp
add_files src/edge_conv_kernel.cpp
add_files src/edge_conv.cpp
add_files src/finalize.cpp
add_files src/globals.cpp
add_files src/load_inputs.cpp
add_files src/message_passing.cpp
add_files src/mp_to_ne_adapter.cpp
add_files src/node_transformation.cpp
add_files src/operators.cpp
add_files src/utils.hpp
set_top edge_conv_compute_kernel

add_files -tb testbench/tb.cpp
add_files -tb testbench/tb.hpp
add_files -tb testbench/tb_load.cpp
add_files -tb testbench/tb_helper.cpp
add_files -tb testbench/tb_helper.hpp
add_files -tb testbench/json.hpp
add_files -tb testbench/graph_results.json
add_files -tb testbench/graph_results_test.json

open_solution -flow_target vitis Solution_200MHz_Delphes
set_part xcu50-fsvh2104-2-e
create_clock -period 200MHz

csynth_design
cosim_design

exit
