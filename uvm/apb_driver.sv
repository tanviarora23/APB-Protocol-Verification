`include "uvm_macros.svh"
import uvm_pkg::*;

class apb_driver extends uvm_driver #(apb_transaction);

  `uvm_component_utils(apb_driver)

  // Virtual Interface
  virtual apb_if vif;

  // Transaction Handle
  apb_transaction tr;

  // Constructor
  function new(string name = "apb_driver",
               uvm_component parent);
    super.new(name, parent);
  endfunction

  // Build Phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  endfunction

  // Run Phase
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
  endtask

endclass
