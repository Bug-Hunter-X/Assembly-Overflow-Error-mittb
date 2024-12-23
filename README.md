# Assembly Overflow Error

This repository demonstrates an assembly overflow error where the addition of two 16-bit values results in an overflow. The error occurs when the sum of two 16-bit values exceeds the maximum value that can be stored in a 16-bit register (65535).

## Bug Description

The bug is present in the `bug.asm` file. The `add ax, bx` instruction performs addition in the AX register. If the values in AX and BX are large enough, their sum could exceed 65535. This results in an overflow where the upper bits are discarded, leading to an incorrect result.

## Solution

The solution (`bugSolution.asm`) handles this overflow by checking for possible overflow conditions before the addition and using appropriate techniques like conditional branching and extended registers to prevent data loss.