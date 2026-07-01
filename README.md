# APB-Protocol-Verification
# APB Protocol Verification

## Overview
This repository contains my learning and implementation of the AMBA APB protocol using SystemVerilog and UVM.

## Goals
- Understand APB protocol
- Learn SystemVerilog
- Build a UVM verification environment
- Add Assertions (SVA)
- Implement Functional Coverage

## Project Status
🚧 Work in Progress

## Planned Folder Structure

rtl/
tb/
uvm/
assertions/
coverage/
waveforms/

## Tools
- SystemVerilog
- - UVM
- QuestaSim / EDA Playground





## flow_chart
                 APB Master
                     │
                     ▼
              +---------------+
              | APB Slave DUT |
              +---------------+
                     ▲
                     │
              ----------------
              │              │
         Driver          Monitor
              │              │
         Sequencer      Scoreboard
              │
          Sequence
              │
             Test



APB_UVM_Verification/
│
├── rtl/          ← DUT (Design Under Test)
│      apb_slave.sv
│
├── tb/           ← Testbench files
│      apb_if.sv
│      top.sv
│
├── uvm/          ← UVM classes
│      apb_transaction.sv
│      apb_driver.sv
│      apb_monitor.sv
│      apb_agent.sv
│      apb_env.sv
│      apb_test.sv
│
├── assertions/
├── coverage/
└── README.md
