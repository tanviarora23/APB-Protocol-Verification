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

    if(!uvm_config_db#(virtual apb_if)::get(this, "", "vif", vif))
        `uvm_fatal("NOVIF", "Virtual Interface not found");

endfunction

  // Run Phase
 task run_phase(uvm_phase phase);

    forever begin

        seq_item_port.get_next_item(tr);

        vif.PSEL    <= 1;
        vif.PENABLE <= 0;
        vif.PADDR   <= tr.addr;
        vif.PWDATA  <= tr.data;
        vif.PWRITE  <= tr.write;

        @(posedge vif.PCLK);

        vif.PENABLE <= 1;

        @(posedge vif.PCLK);

        vif.PSEL    <= 0;
        vif.PENABLE <= 0;

        seq_item_port.item_done();

    end

endtask

endclass
