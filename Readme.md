# Verilog Components Repository

Welcome to the **Verilog Components Repository** created for students taking Digital Design at BITS Pilani, Goa Campus. This repository contains fundamental digital logic components implemented using Verilog, designed to assist fellow students in understanding and building essential circuits.

**Note**: Some components are yet to be added due to time constraints but will be updated with their respective circuits after midsem exams.

## Components Included

1. **Adders**
   - Half Adder
   - Full Adder
   - 4 Bit Full Adder

2. **Multiplexers (MUX)**
   - 2:1 MUX
   - 4:1 MUX
   - 8:1 MUX

3. **Demultiplexers (DeMUX)**
   - 1:2 DeMUX
   - 1:4 DeMUX
   - 1:8 DeMUX

4. **Flip Flops**
   - D Flip Flop
   - T Flip Flop
   - SR Flip Flop

5. **Latches**
   - SR Latch
   - D Latch

6. **Encoders**
   - Decimal to BCD
   - Octal to Binary
   - Priority Encoder

7. **Decoders**
   - 2:4 Decoder
   - 3:8 Decoder

*Note*: Some components like advanced adders, decoders, and multiplexers will be added after the midsemester exams along with detailed circuit diagrams and explanations.

## Usage

1. Clone the repository:
        ```bash
        git https://github.com/aniketsona23/DD-Verilog
        ```
Compile the Verilog files using your preferred Verilog simulator (e.g., Icarus Verilog, ModelSim, or Xilinx Vivado).

Example with Icarus Verilog:
        ```bash
        iverilog -o output_file.vvp file_name.v
        vvp output_file.vvp
        ```
Testbench files are provided for most components to verify their functionality.

## Repository Structure

```
verilog-components/
├── adders/
├── subtractors/
├── mux/
├── demux/
├── flipflops/
├── latches/
├── encoders/
├── decoders/
└── testbenches/
```

Each folder contains Verilog (.v) files for the corresponding component along with their testbenches.

## Future Updates

    Advanced circuits and additional components will be uploaded after the midsem exams.
    Circuit diagrams and in-depth explanations will accompany the code to enhance understanding.

## Contribution

If you'd like to contribute by adding new components, improving the existing code, or adding more test cases, feel free to submit a pull request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.