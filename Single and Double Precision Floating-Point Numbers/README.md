# Single and Double Precision Floating-Point Numbers

The exercises focus on polynomial evaluation, linear interpolation with floating-point values, and square root calculation using iterative methods.

---

### `horner_method.asm`

**Objective:**  
Evaluates a polynomial at a given point using Horner’s method for efficient computation.

**Techniques Used:**  
- Floating-point arithmetic (`add.s`, `mul.s`)  
- Array access in memory  
- Iterative evaluation  

**Output:**  
The calculated value of the polynomial at the given input.

**Potential Applications:**  
- Efficient evaluation of polynomials in numerical methods.  
- Useful in scientific computing and engineering calculations.

---

### `linear_interpolation_float.asm`

**Objective:**  
Computes the interpolated value of a point using floating-point linear interpolation.

**Techniques Used:**  
- Floating-point subtraction, multiplication, division, and addition  
- Register-based computation  
- Memory load/store for floats  

**Output:**  
Interpolated floating-point value `yp` corresponding to the input `xp`.

**Potential Applications:**  
- Demonstrates linear interpolation for continuous values.  
- Applicable in graphics, simulations, and numerical analysis.

---

### `sqrt.asm`

**Objective:**  
Calculates the square root of a floating-point number using an iterative approximation method.

**Techniques Used:**  
- Iterative approximation (`xi_1 = 0.5 * (xi + z/xi)`)  
- Floating-point arithmetic and comparisons  
- Absolute value computation  
- Conditional branching  

**Output:**  
Computed square root of input `z` and the approximation error compared to the built-in square root function.

**Potential Applications:**  
- Demonstrates iterative methods for numerical computation.  
- Useful for understanding convergence and precision handling in floating-point operations.
