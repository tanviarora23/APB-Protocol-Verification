`include "uvm_macros.svh"
import uvm_pkg::*;

class apb_env extends uvm_env;

  `uvm_component_utils(apb_env)

  apb_agent agent;

  function new(string name = "apb_env",
               uvm_component parent);
    super.new(name, parent);
  endfunction

endclass
