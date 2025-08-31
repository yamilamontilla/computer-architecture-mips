# Code Optimization

Focuses on efficient computation of factorials using iterative and procedural techniques. The programs demonstrate how to implement arithmetic operations with minimal instructions, manage registers effectively, and structure loops and function calls for optimized performance.

## Programs Included

---

### `factorial.asm`

**Objective:**  
Implements a factorial function that calculates `n!` for a given integer `n`.

**Concepts Applied:**  
- Loop structures  
- Register management  
- Multiplication operations  
- Function definition and return handling  

**Description:**  
The `factorial` function initializes variables for the loop counter and accumulator, then iteratively multiplies the accumulator by the counter until it reaches the input value `n`. The result is returned in the designated register.

**Output:**  
The computed factorial value of the input integer `n`.

**Potential Applications:**  
- Illustrates efficient looping and multiplication in low-level code.  
- Provides a model for function-based computation in assembly.  
- Can be used as a reference for performance-aware algorithm implementation.

---

### `main_factorial.asm`

**Objective:**  
Handles program input and output, and calls the `factorial` function.

**Concepts Applied:**  
- Conditional branching  
- Function calls and return addresses  
- Memory access with load and store instructions  
- System calls for program termination  

**Description:**  
The main program reads an integer `n` from memory, checks if it is non-negative, and calls the `factorial` function. The resulting factorial is stored in memory. If the input is negative, the program exits with a return value of `-1`.

**Output:**  
- Factorial result stored in memory for non-negative input.  
- Returns `-1` if the input is negative.

**Potential Applications:**  
- Demonstrates integration of function calls with conditional logic.  
- Shows practical usage of memory operations and system calls.  
- Serves as a template for small-scale arithmetic programs requiring validation.
