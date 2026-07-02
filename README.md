# APB Protocol Verification using SystemVerilog & UVM

## Overview

This repository contains my learning and implementation of the AMBA APB (Advanced Peripheral Bus) protocol using SystemVerilog and UVM.

The goal of this project is to understand the complete UVM verification flow by developing a verification environment for an APB Slave.

---

## Objectives

- Learn the AMBA APB Protocol
- Learn SystemVerilog for Verification
- Understand UVM Architecture
- Build a Complete APB UVM Verification Environment
- Implement Assertions (SVA)
- Add Functional Coverage
- Simulate and Verify APB Read/Write Transactions

---

## Project Progress

### Completed

- ✅ APB Interface
- ✅ APB Transaction
- ✅ APB Sequence
- ✅ APB Driver (Skeleton)
- ✅ APB Sequencer
- ✅ APB Monitor (Skeleton)
- ✅ APB Agent
- ✅ APB Environment

### In Progress

- ⏳ APB Scoreboard
- ⏳ APB Test
- ⏳ Top Module
- ⏳ RTL APB Slave
- ⏳ Assertions
- ⏳ Functional Coverage

---

## Project Flow

```
                  Test
                    │
                    ▼
               Environment
                    │
                    ▼
                  Agent
          ┌─────────┴─────────┐
          │                   │
          ▼                   ▼
     Sequencer            Monitor
          │                   │
          ▼                   ▼
      Sequence          Scoreboard
          │
          ▼
        Driver
          │
          ▼
     APB Interface
          │
          ▼
      APB Slave DUT
```

---

## Project Structure

```
APB_UVM_Verification
│
├── rtl/
│   └── apb_slave.sv
│
├── tb/
│   ├── apb_if.sv
│   └── top.sv
│
├── uvm/
│   ├── apb_transaction.sv
│   ├── apb_sequence.sv
│   ├── apb_sequencer.sv
│   ├── apb_driver.sv
│   ├── apb_monitor.sv
│   ├── apb_agent.sv
│   ├── apb_env.sv
│   ├── apb_scoreboard.sv
│   └── apb_test.sv
│
├── assertions/
│
├── coverage/
│
└── README.md
```

---

## Tools Used

- SystemVerilog
- UVM (Universal Verification Methodology)
- QuestaSim
- EDA Playground
- Git
- GitHub

---

## Learning Outcomes

Through this project, I am learning:

- APB Protocol
- SystemVerilog for Verification
- UVM Components
- Transaction-Level Verification
- Driver and Monitor Implementation
- Agent and Environment Creation
- Scoreboard Design
- Assertions (SVA)
- Functional Coverage

---

## Repository Status

🚧 This project is currently under active development.

New components and features will be added progressively as I continue learning UVM.
