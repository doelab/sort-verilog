# SystemVerilog Sorting Network Generator

This tool generates SystemVerilog code for sorting networks based on a JSON specification. It supports both pipelined and combinational implementations, with configurable data types and widths.

## Features

- Generates SystemVerilog code for sorting networks
- Supports both signed and unsigned data types
- Configurable data width (default: 32 bits)
- Optional pipelining for improved timing
- Includes testbench with automatic verification
- Input specification via JSON format

## Usage

```bash
python src/main.py [options] [--file input.json]
```

### Command Line Options

- `--file`: Input JSON file (default: read from stdin)
- `--data-type`: Data type (`unsigned` or `signed`, default: `unsigned`)
- `--width`: Data width in bits (default: 32)
- `--pipeline`: Pipeline stages in hex format (default: 0x0)
- `--output-file`: Output SystemVerilog file (default: stdout)

### Input JSON Format

The input JSON format follows the specification from [SorterHunter](https://github.com/bertdobbelaere/SorterHunter). Currently, only sorting networks from the "Sorter" folder are supported. Support for other network types (median networks, etc.) is planned for future releases.

Example format:
```json
{
    "N": 8,           // Number of inputs to sort
    "D": 6,           // Number of stages
    "L": 12,          // Number of comparison pairs
    "nw": [           // List of comparison pairs
        [0, 1],
        [2, 3],
        // ... more pairs
    ]
}
```

### Example

```bash
# Generate unsigned 32-bit sorting network
python src/main.py --file input.json --data-type unsigned --width 32

# Generate signed 16-bit pipelined sorting network
python src/main.py --file input.json --data-type signed --width 16 --pipeline 0x3F
```

## Generated Code

The generator creates two SystemVerilog modules:

1. `sorting_network`: The main sorting network implementation
   - Configurable data type and width
   - Optional pipelining for each stage
   - Input ports: `clk`, `data_0` through `data_N-1`
   - Output ports: `sort_0` through `sort_N-1`

2. `sort_tb`: Testbench module
   - Generates random test vectors
   - Verifies sorting correctness
   - Reports success/failure statistics

## Implementation Details

- Uses combinational logic for non-pipelined stages
- Implements pipelined stages using `always_ff` blocks
- Automatically handles stage grouping to avoid conflicts
- Includes verification logic in testbench
- Supports both signed and unsigned comparisons

## Requirements

- Python 3.x
- SystemVerilog simulator (for testing generated code)

## License

[Add your license information here]
