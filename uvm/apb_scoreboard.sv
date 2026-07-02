`include "uvm_macros.svh"
import uvm_pkg::*;

class apb_scoreboard extends uvm_scoreboard;

  `uvm_component_utils(apb_scoreboard)

  function new(string name="apb_scoreboard",
               uvm_component parent);
    super.new(name,parent);
  endfunction

endclass
