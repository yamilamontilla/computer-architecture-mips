# Control Structures

Contains programs that illustrate common control flow techniques, including loops, conditional branching, and arithmetic operations. The exercises focus on implementing algorithmic logic efficiently using MIPS Assembly instructions.

## Programs Included

---

### `fibonacci.asm`

**Objective:**  
Calculates the n-th term of the Fibonacci sequence using a for-loop structure.

**Concepts Applied:**  
- Loop implementation (`for`)  
- Register manipulation  
- Arithmetic operations (addition)  
- Memory storage of results  

**Description:**  
Initializes two registers for the first two terms of the Fibonacci sequence and iterates from 2 to `n`. In each iteration, it computes the next term as the sum of the previous two, updates the registers, and continues until the final term is calculated. The result is then stored in memory.

**Output:**  
Stores the n-th Fibonacci number in memory.

**Potential Applications:**  
- Demonstrates loop usage in assembly.  
- Serves as a reference for sequence computation.  
- Illustrates step-by-step arithmetic updates using registers.

---

### `gcd_lcm.asm`

**Objective:**  
Computes the greatest common divisor (GCD) and least common multiple (LCM) of two integers.

**Concepts Applied:**  
- Do-while loops  
- Conditional branching  
- Division and modulo operations  
- Arithmetic calculations for LCM  

**Description:**  
Reads two integers and iteratively computes the remainder to determine the GCD using the Euclidean algorithm. Once the GCD is found, the LCM is calculated as `(x * y) / GCD`. Results are stored in memory, and the program exits cleanly.

**Output:**  
- GCD and LCM of the two input integers stored in memory.

**Potential Applications:**  
- Demonstrates conditional and loop structures for mathematical computations.  
- Provides a model for implementing integer algorithms in assembly.  
- Useful for learning register management in iterative calculations.

---

### `maximum1.asm`

**Objective:**  
Finds the maximum between two integers using a simple conditional statement.

**Concepts Applied:**  
- Conditional branching (`if`)  
- Comparison instructions (`slt`)  
- Register and memory operations  

**Description:**  
Loads two integers and compares them. If the second integer is larger than the first, the maximum value is updated. The final maximum is stored in memory, and the program exits.

**Output:**  
Stores the larger of the two integers in memory.

**Potential Applications:**  
- Demonstrates conditional comparisons and branching in MIPS.  
- Provides a reference for implementing simple decision-making logic.

---

### `maximum2.asm`

**Objective:**  
Determines the maximum of two integers using an if-else structure.

**Concepts Applied:**  
- Conditional branching (`if-else`)  
- Register operations and value movement  
- Memory storage  

**Description:**  
Checks whether the first integer is greater than or equal to the second. Depending on the condition, it stores the appropriate maximum value in memory and exits.

**Output:**  
Stores the larger integer in memory based on the condition.

**Potential Applications:**  
- Illustrates if-else logic in assembly.  
- Serves as a template for decision-making constructs.  
- Demonstrates clean program flow with conditional execution.
---

### `ones.asm`

**Objective:**  
Counts the number of `1` bits in a 32-bit integer.

**Concepts Applied:**  
- Bitwise operations (`AND`, `shift`)  
- Loops (`while`)  
- Register manipulation  
- Memory storage of results  

**Description:**  
Initializes a counter and a mask with the highest bit set. It iteratively checks each bit of the input integer by performing a bitwise AND with the mask. If the result is non-zero, the counter is incremented. The mask is shifted left in each iteration until all bits are checked. The total number of `1`s is stored in memory.

**Output:**  
Number of `1` bits in the input integer.

**Potential Applications:**  
- Demonstrates bit-level operations and counting.  
- Useful for low-level programming, error detection, and performance-critical applications.

---

### `perfect_number.asm`

**Objective:**  
Determines whether a given integer is a perfect number.

**Concepts Applied:**  
- Loop structures (`while`)  
- Conditional branching (`if`)  
- Division and modulo operations  
- Summation and comparison  

**Description:**  
Iterates from 2 to `n - 1`, summing all divisors of `n`. After the loop, it checks if the sum of divisors equals `n`. The result (`1` if perfect, `0` otherwise) is stored in memory.

**Output:**  
- `1` if the input integer is perfect.  
- `0` otherwise.

**Potential Applications:**  
- Demonstrates use of loops and conditional checks for arithmetic algorithms.  
- Useful for teaching number theory concepts in low-level programming.

---

### `series_term.asm`

**Objective:**  
Calculates a term of a numeric series based on iterative multiplication and conditional subtraction.

**Concepts Applied:**  
- Loops (`for`)  
- Conditional branching (`if`)  
- Multiplication and modulo operations  
- Register and memory usage  

**Description:**  
Initializes a series term as `1` and iterates from `1` to `n`. In each iteration, it doubles the current term. If the iteration index is even, the program subtracts `1` from the term. The final series term is stored in memory.

**Output:**  
Computed value of the series term for the input `n`.

**Potential Applications:**  
- Demonstrates loop control with conditional operations.  
- Useful for understanding series calculations and low-level arithmetic manipulations.

---

### `triangle.asm`

**Objective:**  
Checks if three integers can form a valid triangle.

**Concepts Applied:**  
- Conditional logic with multiple comparisons  
- Arithmetic addition  
- Register and memory usage  

**Description:**  
Computes sums of all pairs of side lengths and compares them with the third side to verify the triangle inequality. If all conditions are satisfied, it stores `1` in memory; otherwise, it stores `0`.

**Output:**  
- `1` if the three sides form a valid triangle.  
- `0` otherwise.

**Potential Applications:**  
- Demonstrates compound conditional statements in assembly.  
- Useful as a reference for geometric checks and logical operations in low-level code.
