# Segmentation Fault in Assembly Code

This repository demonstrates a common error in assembly programming: accessing memory outside the valid address range. The `bug.asm` file contains code that is prone to causing a segmentation fault.  The corrected version is in `bugSolution.asm`, which includes bounds checking to prevent the fault.

## How to Reproduce

1. Assemble the `bug.asm` file.
2. Run the resulting executable.  You should observe a segmentation fault.
3. Assemble and run `bugSolution.asm`.  This should execute without errors.

## Analysis

The bug stems from a lack of bounds checking before dereferencing a memory address. The corrected code adds a check to ensure the address falls within the allocated memory region before accessing it, thereby preventing the segmentation fault.