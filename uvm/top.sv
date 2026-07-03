`include "uvm_macros.svh"
import uvm_pkg::*;

module top;

  logic PCLK;

  apb_if apbif(PCLK);

  apb_slave dut(
      .PCLK(PCLK),
      .PRESETn(apbif.PRESETn),
      .PSEL(apbif.PSEL),
      .PENABLE(apbif.PENABLE),
      .PWRITE(apbif.PWRITE),
      .PADDR(apbif.PADDR),
      .PWDATA(apbif.PWDATA),
      .PRDATA(apbif.PRDATA),
      .PREADY(apbif.PREADY),
      .PSLVERR(apbif.PSLVERR)
  );

  initial begin
    PCLK = 0;
    forever #5 PCLK = ~PCLK;
  end

  initial begin
    apbif.PRESETn = 0;
    #20;
    apbif.PRESETn = 1;
  end

  initial begin
    uvm_config_db#(virtual apb_if)::set(null, "*", "vif", apbif);
    run_test("apb_test");
  end

endmodule
