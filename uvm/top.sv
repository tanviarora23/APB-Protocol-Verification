`include "uvm_macros.svh"
import uvm_pkg::*;

module top;

  logic PCLK;

  apb_if apbif(PCLK);

  initial begin
    PCLK = 0;
    forever #5 PCLK = ~PCLK;
  end

  initial begin
    run_test("apb_test");
  end

endmodule
