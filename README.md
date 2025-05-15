# SystemVerilog Sorting Network Generator

This tool generates SystemVerilog code for sorting networks based on a JSON specification. It supports both pipelined and combinational implementations, with configurable data types and widths.

## Status

- Median networks: **Not working**
- Sorter, Low Max, Low Avg: **Working**
- Feel free to open an issue if you encounter any problems.
- 
## Usage

```bash
python src/main.py --help
```

### Command Line Options

- `--file`: Input JSON file (default: read from stdin)
- `--data-type`: Data type (`unsigned` or `signed`, default: `unsigned`)
- `--width`: Data width in bits (default: 32)
- `--pipeline`: Pipeline stages in hex format (default: 0x0)
- `--output-file`: Output SystemVerilog file (default: stdout)

### Input JSON Format

The input JSON format follows the specification from [SorterHunter](https://github.com/bertdobbelaere/SorterHunter). 

## Generated Code

The generator creates two SystemVerilog modules:

1. `sorting_network`: The main sorting network implementation
2. `sort_tb`: Testbench module

## Requirements

- Python 3.x
- SystemVerilog simulator: I have used Cadence Xcelium for testing, but it should work with any simulator that supports SystemVerilog.

## Credit

Thanks for the inspiration from [SorterHunter](https://github.com/bertdobbelaere/SorterHunter) and [SortHDL](https://github.com/Chris44442/sorthdl)

## License

MIT License (MIT)
