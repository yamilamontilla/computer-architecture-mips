# Integer Data Types

The exercises cover bitwise operations, arithmetic expressions, boolean logic, and basic linear interpolation using integer registers.

---

### `bit_shifts.asm`

**Objective:**  
Performs various bit manipulation operations including left shift, right shift, arithmetic shift, and bit rotations.

**Techniques Used:**  
- Logical and arithmetic bit shifts (`sllv`, `srlv`, `srav`)  
- Bit rotation (`rol`, `ror`)  
- Register and memory operations  

**Output:**  
Six integer results corresponding to the different bit operations applied to the input.

**Potential Applications:**  
- Demonstrates low-level data manipulation.  
- Useful for understanding efficient computation with binary data and bit-level algorithms.

---

### `boolean_expression.asm`

**Objective:**  
Evaluates a combined boolean expression involving comparisons and bitwise operations.

**Techniques Used:**  
- Boolean comparisons (`<=`)  
- Bitwise AND (`&`)  
- Logical OR (`||`)  
- Conditional value storage in registers  

**Output:**  
An integer `0` or `1` representing the boolean result of the expression.

**Potential Applications:**  
- Shows how to implement boolean logic using integer registers.  
- Useful for control flow and decision-making operations in low-level programming.

---

### `change_sign.asm`

**Objective:**  
Changes the sign of an integer using two’s complement representation.

**Techniques Used:**  
- Bitwise XOR (`^`)  
- Addition to compute two’s complement  
- Memory storage of result  

**Output:**  
The integer with its sign inverted.

**Potential Applications:**  
- Demonstrates fundamental two’s complement arithmetic.  
- Useful for implementing arithmetic negation and integer manipulation in assembly.

---

### `integer_expression.asm`

**Objective:**  
Calculates a combined arithmetic expression involving subtraction and multiplication.

**Techniques Used:**  
- Integer addition, subtraction, multiplication  
- Register-based computation  
- Expression evaluation using MIPS arithmetic instructions  

**Output:**  
Single integer result of the arithmetic expression `w = x - y * (z + 2)`.

**Potential Applications:**  
- Shows how to implement complex integer expressions in MIPS.  
- Useful for low-level evaluation of arithmetic formulas in assembly.

---

### `linear_interpolation.asm`

**Objective:**  
Computes the y-coordinate of a point using linear interpolation between two known points.

**Techniques Used:**  
- Integer subtraction and multiplication  
- Division and addition  
- Register-based computation  

**Output:**  
Interpolated integer `yp` corresponding to the input `xp`.

**Potential Applications:**  
- Demonstrates practical integer-based linear interpolation.  
- Useful in graphics, digital signal processing, and numerical computations where floating-point operations may be limited.
