class apb_transaction extends uvm_sequence_item;

    rand bit PWRITE;

    rand bit [7:0] PADDR;

    rand bit [31:0] PWDATA;

    bit [31:0] PRDATA;

endclass
