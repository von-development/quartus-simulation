create_clock -name "virtual_clock" -period 10.0
set_input_delay -clock virtual_clock 0.0 [all_inputs]
set_output_delay -clock virtual_clock 0.0 [all_outputs]
