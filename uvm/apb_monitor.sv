`include "uvm_macros.svh"
import uvm_pkg::*;

class apb_monitor extends uvm_monitor;

  `uvm_component_utils(apb_monitor)

  virtual apb_if vif;
  apb_transaction tr;

  function new(string name = "apb_monitor",
               uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  endfunction

  task run_phase(uvm_phase phase);
    super.run_phase(phase);
  endtask

endclass
