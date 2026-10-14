# RTL-to-GDS-Implementation-of-a-Low-Power-Configurable-Multi-Clock-Digital-System
RTL-to-GDS implementation of a low-power configurable multi-clock digital system, including RTL design, verification, synthesis, DFT, and physical design. 

![Place and Route Results](Result/PnR.jpg)

# Introduction

The **Low-Power Configurable Multi-Clock Digital System** is a digital system that receives commands from a master through the `UART_RX` interface, processes them using the ALU or Register File, and transmits the operation results back to the master through the `UART_TX` interface.

![System Architecture](System.png)

The system supports configurable operation modes, arithmetic and logical computations, register file access, and communication through a UART-based protocol.

## Supported Operations

### 1. ALU Operations

The ALU supports the following operations:

- Addition
- Subtraction
- Multiplication
- Division
- Bitwise AND, OR, NAND, NOR, XOR, and XNOR
- Comparison: `A = B`
- Comparison: `A > B`
- Logical right shift: `A >> 1`
- Logical left shift: `A << 1`

### 2. Register File Operations

- Register File Write
- Register File Read

## Supported Commands

The master communicates with the system using the following command types.

### 1. Register File Write Command — 3 Frames

Writes data to a specified register file address.

| Frame | Field | Description |
|---|---|---|
| Frame 0 | `RF_Wr_Addr` | Target register address |
| Frame 1 | `RF_Wr_Data` | Data to be written |
| Frame 2 | `RF_Wr_CMD` (`0xAA`) | Write command identifier |

### 2. Register File Read Command — 2 Frames

Requests data from a specified register file address. The command contains the read command identifier and the target address.

### 3. ALU Operation Command with Operands — 4 Frames

Requests an ALU operation with operands. The command includes the operation identifier and the required operand data.

### 4. ALU Operation Command without Operands — 2 Frames

Requests an ALU operation that uses operands already stored in the system's configuration or operand registers.

## System Specifications

| Parameter | Specification |
|---|---|
| Reference Clock (`REF_CLK`) | 50 MHz |
| UART Clock (`UART_CLK`) | 3.6864 MHz |
| Clock Divider Enable | Always enabled (`1`) |
| Communication Interface | UART RX / UART TX |

## Sequence of Operation

1. **Initial Configuration:** The testbench configures the system through Register File write commands targeting addresses `0x2` and `0x3`.
2. **Command Transmission:** The master, represented by the testbench, sends Register File or ALU commands.
3. **Command Reception:** `UART_RX` receives the transmitted command frames and forwards the decoded information for processing by `SYS_CTRL`.
4. **Command Processing:** `SYS_CTRL` coordinates the requested operation using the ALU or Register File.
5. **Result Transmission:** The system returns the operation result to the master through `UART_TX`.

## Register File Address Map

The Register File address space is divided into configuration/operand registers and general-purpose registers.

| Address Range | Purpose |
|---|---|
| `0x0` – `0x3` | Reserved for configuration and ALU operands |
| `0x4` – `0x15` | General-purpose Register File read/write operations |

The testbench should verify the supported commands, configuration sequence, data processing, and result transmission.

## Clock Domain Crossing (CDC) and Synchronization

The system includes dedicated synchronization modules and an asynchronous FIFO to support reliable communication between different clock domains.

### 1. Data Synchronizer (`DATA_SYNC`)
- Synchronizes signals between clock domains according to the implemented synchronization scheme.
- Helps reduce the risk of metastability during clock domain crossings.
- Provides synchronized outputs in the destination clock domain.

### 2. Reset Synchronizer (`RST_SYNC`)
- Supports asynchronous reset assertion and synchronous reset deassertion.
- Ensures reset release is synchronized with the destination clock.
- Improves reset reliability across sequential logic.

### 3. Asynchronous FIFO (`FIFO`)
- Provides data buffering between independent clock domains.
- Uses separate write and read clock domains.
- Supports data transfer between the producer and consumer.
- Uses CDC techniques to synchronize FIFO status information between clock domains.

### 4. Flip-Flop Synchronizer (`DF_SYNC`)
- Uses configurable flip-flop stages and data width to synchronize signals.
- Helps reduce the risk of metastability when signals cross into a destination clock domain.

### CDC Verification
- Clock domain crossings are analyzed using SpyGlass CDC.
- The design is checked for potential synchronization issues and unsafe crossings between clock domains.

## Functional Verification

### 1. Overview

The final system verification was performed using the `SYS_TB` testbench in QuestaSim. The testbench executes **9 test suites**, each targeting a different UART configuration. The DUT is reset before each suite to ensure independent and repeatable testing.

The verification covers three UART prescale values and three parity modes.

| Prescale | Even Parity | Odd Parity | Parity Disabled |
|---:|---|---|---|
| 32 | Suite 1 | Suite 2 | Suite 3 |
| 16 | Suite 4 | Suite 5 | Suite 6 |
| 8 | Suite 7 | Suite 8 | Suite 9 |

### 2. Test Cases

| Test Group | Cases per Suite | Description |
|---|---:|---|
| Configuration and Divider Register Reads | 2 | Read `REG2` (UART configuration) and `REG3` (TX divider ratio) and compare them with the reference model. |
| Register Read Operations | 6 | Verify reads from addresses 4, 5, 6, 7, 8, and 15 after writing the corresponding values. |
| ALU Operations with Operands (`0xCC`) | 11 | Verify ADD, SUB, MUL, DIV, AND, OR, XOR, equality comparison, greater-than comparison, right shift, and left shift. |
| ALU Operations without Operands (`0xDD`) | 4 | Verify ADD, MUL, NAND, and right shift using values stored in `REG0` and `REG1`. |
| No False Error Flags | 1 | Verify that `parity_error` and `framing_error` remain low during valid traffic. |
| Parity Error Injection | 1 | Inject an incorrect parity bit and verify that `parity_error` is asserted when parity is enabled. |
| Framing Error Injection | 1 | Send a frame with a low stop bit and verify that `framing_error` is asserted. |
| Recovery After Error Frames | 1 | Read address 4 after error injection to verify that the system continues to operate correctly. |

**Additional stimulus:** Each suite includes UART configuration writes to `REG2`. Register writes to addresses 4, 5, 6, 7, 8, and 15 are checked through the subsequent read operations.

### 3. Verification Summary

| Suite Type | Cases per Suite | Number of Suites | Total Cases |
|---|---:|---:|---:|
| Parity Enabled (Even / Odd) | 27 | 6 | 162 |
| Parity Disabled | 26 | 3 | 78 |
| **Total** | — | **9** | **240** |

The testbench executes **240 test cases** across all nine UART configurations.

### 4. Checking Methodology

- **UART output checking:** The testbench waits for UART transmission to begin, with a timeout of 80 TX clock periods. It samples `UART_TX_OUT` and compares the received frame against the expected frame, including the start bit, data bits, optional parity bit, and stop bit, using case equality (`===`).
- **Reference models:** `RF_MODEL` models the expected register-file contents, while the `ALU_LOW` function calculates the expected ALU result.
- **Error monitoring:** Event monitors detect rising edges of `parity_error` and `framing_error` and record whether each error flag was asserted.
- **Final test summary:** The testbench reports the total, passed, and failed test counts, followed by `ALL TESTS PASSED` or `SOME TESTS FAILED`.

### 5. Simulation Results

The following figures document the functional verification process and simulation results.

#### System Verification Summary

![Functional Verification Summary](Result/Functional_Verification.png)

#### Simulation Waveforms

The following waveform captures illustrate selected simulation signals and testbench activity.

![Waveform 1](Result/Wave1.png)

![Waveform 2](Result/wave2.png)

![Waveform 3](Result/wave3.png)

![Waveform 4](Result/wave4.png)

## Logic Synthesis

Logic synthesis was performed using **Synopsys Design Compiler** to transform the RTL description of `SYS_TOP` into a technology-mapped gate-level netlist using the target TSMC standard-cell libraries.

The synthesis flow included RTL elaboration, design linking and consistency checks, constraint application, logic optimization, technology mapping, and generation of the synthesized netlist and implementation files.

### Synthesis Configuration

- **Synthesis Tool:** Synopsys Design Compiler
- **Top Module:** `SYS_TOP`
- **Target Technology:** TSMC 130 nm standard-cell library
- **Synthesis Script:** [`syn_script.tcl`](Syn/syn_script.tcl)
- **Timing Constraints:** Defined in [`cons.tcl`](Syn/cons.tcl)
- **Clock Domains:** `REF_CLK`, `UART_CLK`, and their generated clocks
- **Timing Analysis:** Setup and hold timing reports generated under the specified operating conditions

### Synthesis Results

| Metric | Result |
|---|---:|
| Total cell instances | 1,910 |
| Combinational cells | 1,491 |
| Sequential cells | 381 |
| Total cell area | 21,999.58 |
| Reported setup-path slack | 4.23 ns |
| Reported hold-path slack | 0.33 ns |
| Constraint violations | no violated constraints |


### Synthesis Reports

The synthesis reports are available in the [`Syn_Reports`](Syn/reports) directory.

The reports include:

- **Area Report (`area.rpt`):** Cell-count statistics and hierarchical area distribution.
- **Power Report (`power.rpt`):** Estimated switching, internal, leakage, and total power.
- **Setup Timing Report (`setup.rpt`):** Maximum-delay timing paths.
- **Hold Timing Report (`hold.rpt`):** Minimum-delay timing paths.
- **Clock Report (`clocks.rpt`):** Clock periods, generated clocks, and clock attributes.
- **Constraint Report (`constraints.rpt`):** Reported timing-constraint violations.

Additional generated files include the synthesized gate-level netlist, Design Compiler database, SDF, and exported SDC constraints.

## Formal Verification — Post-Synthesis

Formal equivalence checking was performed using **Synopsys Formality** to verify that the synthesized gate-level netlist of `SYS_TOP` is functionally equivalent to the original RTL reference design.

The verification flow used the RTL source files as the reference design and the synthesized Verilog netlist generated by Design Compiler as the implementation design. The synthesis guidance file (`SYS_TOP.svf`) was provided to assist Formality in correlating RTL transformations with the synthesized implementation.

### Verification Configuration

- **Formal Verification Tool:** Synopsys Formality
- **Top Module:** `SYS_TOP`
- **Reference Design:** RTL source files
- **Implementation Design:** Synthesized gate-level netlist (`SYS_TOP.v`)
- **Technology:** TSMC 130 nm standard-cell libraries
- **Synthesis Guidance:** `SYS_TOP.svf`
- **Verification Flow:** Design setup, compare-point matching, and formal equivalence checking

### Formal Verification Results

| Metric | Result |
|---|---:|
| Passing compare points | 364 |
| Failing compare points | 0 |
| Aborted compare points | 0 |
| Unverified compare points | 0 |
| Overall result | **PASS** |

All 364 reported compare points passed, with no failing, aborted, or unverified compare points. This confirms that the synthesized implementation is formally equivalent to the RTL reference design for the checked design points.

### Verification Reports

The Formality reports are available in the [`Post_Syn_FM_Reports`](Post_Syn_FM/reports) directory.

The Formality flow generates the following reports:

- **`passing_points.rpt`:** Lists compare points successfully proven equivalent.
- **`failing_points.rpt`:** Lists compare points that fail equivalence checking.
- **`aborted_points.rpt`:** Lists compare points for which the verification process was aborted.
- **`unverified_points.rpt`:** Lists compare points that were not verified.

The main verification script is `syn_fm_script.tcl`, and the execution log is saved as `logs/syn_fm_log.log`.

## Design for Test (DFT)

Design for Test (DFT) was implemented using **Synopsys Design Compiler** to introduce scan-based test structures into the `SYS_TOP` design, improving controllability and observability for manufacturing test.

The flow includes scan configuration, test-protocol generation, pre-DFT design-rule checking, scan insertion, incremental optimization, post-DFT DRC, and fault-coverage estimation.

### DFT Configuration

| Parameter | Configuration |
|---|---|
| Top Module | `SYS_TOP_DFT` |
| EDA Tool | Synopsys Design Compiler |
| Target Technology | TSMC 130 nm standard-cell library |
| Scan Style | Multiplexed flip-flop |
| Clock Mixing | `no_mix` |
| Maximum Scan Chain Length | 100 |
| Scan Clock | `scan_clk` |
| Scan Enable | `SE` |
| Scan Input / Output | `SI` / `SO` |
| Test Mode | `test_mode` |
| Scan Clock Period | 100 ns (10 MHz) |

### DFT Implementation Flow

1. **Design Setup:** Read the RTL source files, link the target libraries, and check design consistency.
2. **Scan Configuration:** Configure multiplexed scan flip-flops with clock mixing disabled and a maximum chain length of 100.
3. **Test Protocol Generation:** Define the scan signals and timing, then create the test protocol.
4. **Pre-DFT DRC:** Check the design for testability issues before scan insertion.
5. **Scan Insertion:** Insert scan structures using `insert_dft`.
6. **Post-DFT Optimization:** Perform incremental optimization using `compile -scan -incremental`.
7. **Post-DFT DRC:** Run test design-rule checks and estimate fault coverage.
8. **Output Generation:** Export the gate-level netlist, SDF, SDC, and synthesis reports.

### DFT Design Rule Checking Results

The post-DFT DRC reported one violation associated with a constant logic value at the clock-gating cell.

| Metric | Result |
|---|---:|
| Total DRC violations | 1 |
| Valid scan cells | 360 |
| Sequential cells checked by DFT DRC | 361 |
| Constant-value violations | 1 |
| Violation code | `TEST-505` |
| Affected instance | `CLK_GATE_DFT_INST/U0_TLATNCAX12M` |

The remaining 360 checked scan cells were reported as valid. The constant-value violation should be investigated before describing the DFT design as DRC-clean.

### Fault Coverage Estimation

The post-DFT coverage estimation processed 15,990 faults and reported the following results.

| Fault Classification | Count |
|---|---:|
| Detected | 15,721 |
| Possibly detected | 0 |
| Undetectable | 206 |
| ATPG untestable | 51 |
| Not detected | 12 |
| **Estimated test coverage** | **99.60%** |

The reported fault coverage is an estimate generated by Design Compiler. The tool notes that actual coverage may differ when a customized test protocol and test simulation library are used. Therefore, the 99.60% result should be interpreted as an estimated coverage metric, not as proof of complete fault detection in silicon.

### Post-DFT Synthesis Results

| Metric | Result |
|---|---:|
| Total cell instances | 1,952 |
| Combinational cells | 1,526 |
| Sequential cells | 381 |
| Buffer / inverter cells | 284 |
| Total cell area | 24,758.95 library area units |
| Reported setup slack | 18.52 ns |
| Reported hold slack | 0.42 ns |

The reported timing slacks are from the displayed pre-layout timing paths under the configured operating conditions and ideal-clock assumptions. These values do not represent post-route timing results.

### Clock Configuration

| Clock | Period |
|---|---:|
| `REF_CLK` | 20 ns |
| `ALU_CLK` | 20 ns |
| `UART_CLK` | 271.297 ns |
| `RX_CLK` | 271.297 ns |
| `TX_CLK` | 8,681.50 ns |
| `SCAN_CLK` | 100 ns |

Functional clock relationships and the scan clock are constrained separately in the timing constraints.

### Power Estimation

The synthesis power report estimates total power at **0.132 mW**. The report also warns that primary inputs and sequential-cell outputs have unannotated switching activity. Accordingly, this value is a preliminary estimate rather than a fully activity-annotated power measurement.

### Generated Files and Reports

The DFT flow generates the following files:

- `reports/area.rpt` — Cell statistics and hierarchical area distribution.
- `reports/power.rpt` — Estimated switching, internal, leakage, and total power.
- `reports/setup.rpt` — Maximum-delay timing paths.
- `reports/hold.rpt` — Minimum-delay timing paths.
- `reports/clocks.rpt` — Clock periods and generated-clock relationships.
- `netlists/SYS_TOP_DFT.v` — Synthesized gate-level Verilog netlist.
- `sdf/SYS_TOP_DFT.sdf` — Standard Delay Format file.
- `sdc/SYS_TOP_DFT.sdc` — Exported timing constraints.

The main script is `dft_script.tcl`, and the execution log is available in `log/dft.log`.
