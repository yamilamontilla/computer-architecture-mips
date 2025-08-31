# Integer Arrays

The exercises focus on array copying, inversion, element-wise comparisons, and cumulative operations.

---

### `array_int_copy.asm`

**Objective:**  
Copies the contents of one integer array into another.

**Concepts Applied:**  
- Array traversal  
- Indexing via pointers  
- Loops (`for`)  
- Register usage  

**Description:**  
Iterates through an array of size `N` and copies each element to a second array in the same order.

**Output:**  
The destination array is an exact copy of the source array.

**Potential Applications:**  
- Demonstrates basic array handling in MIPS.  
- Useful for learning memory manipulation and loop implementation.

---

### `array_int_copy_inverse.asm`

**Objective:**  
Copies an array in reverse order into another array.

**Concepts Applied:**  
- Array traversal  
- Reverse indexing  
- Loops (`while`)  
- Pointer arithmetic  

**Description:**  
Traverses the source array from the first element to the last while storing elements in reverse order into the destination array.

**Output:**  
Destination array contains the source array elements in reversed order.

**Potential Applications:**  
- Illustrates reverse copying and memory address calculations.  
- Can be extended to algorithms requiring reversed data.

---

### `array_int_copy_min.asm`

**Objective:**  
Copies the element-wise minimum of two arrays into a third array.

**Concepts Applied:**  
- Array element comparisons  
- Conditional branching  
- Looping structures (`while`)  
- Register and memory usage  

**Description:**  
Iterates through two arrays of size `N`, compares elements at each index, and stores the smaller value in a new array.

**Output:**  
Third array contains the minimum of each corresponding pair of elements from the first two arrays.

**Potential Applications:**  
- Useful for array processing, element-wise operations, and low-level algorithm implementation.

---

### `array_int_cumulative_sum.asm`

**Objective:**  
Computes the cumulative sum of an integer array.

**Concepts Applied:**  
- Array traversal  
- Cumulative arithmetic operations  
- Loops (`while`)  
- Indexing with pointers  

**Description:**  
The first element of the destination array is the same as the source array. Each subsequent element is the sum of the current source element and all previous elements.

**Output:**  
Destination array contains cumulative sums of the source array.

**Potential Applications:**  
- Demonstrates summation and accumulation operations in arrays.  
- Useful for prefix sum computations and sequence analysis.
---

### `array_int_even_sum.asm`

**Objective:**  
Calculates the sum of all even elements in an array.

**Concepts Applied:**  
- Array traversal  
- Conditional checks (`if`)  
- Loops (`while`)  
- Register usage  

**Description:**  
Iterates through an array of size `N` and adds each even element to a cumulative sum, ignoring odd numbers.

**Output:**  
A single integer representing the sum of all even numbers in the array.

**Potential Applications:**  
- Demonstrates conditional accumulation in arrays.  
- Useful for learning selective processing of array elements.

---

### `array_int_minmax.asm`

**Objective:**  
Finds the minimum and maximum elements in an integer array.

**Concepts Applied:**  
- Array traversal  
- Comparison operations (`if`, `else`)  
- Loops (`for`)  
- Register-based storage  

**Description:**  
Initializes the first element as both minimum and maximum, then iterates through the rest of the array updating these values as needed.

**Output:**  
Two integers: the minimum and maximum values in the array.

**Potential Applications:**  
- Teaches basic comparison logic and array scanning.  
- Can be extended to statistical computations on datasets.

---

### `array_int_sum.asm`

**Objective:**  
Adds two integer arrays element-wise and stores the result in the first array.

**Concepts Applied:**  
- Element-wise array operations  
- Looping structures (`do-while`)  
- Register and memory manipulation  

**Description:**  
Iterates through two arrays of the same size, summing corresponding elements and storing the result back into the first array.

**Output:**  
The first array contains the element-wise sums of the two arrays.

**Potential Applications:**  
- Illustrates combining data from multiple arrays.  
- Useful for vector addition and numerical computation exercises.

---

### `array_sum_if_even.asm`

**Objective:**  
Computes the sum of an array and increments all elements if the sum is even.

**Concepts Applied:**  
- Array traversal  
- Conditional execution (`if`)  
- Loops (`while`)  
- Memory updates  

**Description:**  
First calculates the total sum of the array. If the sum is even, iterates through the array again incrementing each element by one.

**Output:**  
The array is updated only if the sum was even; otherwise, it remains unchanged.

**Potential Applications:**  
- Demonstrates conditional array modification based on a calculated property.  
- Useful for learning multi-step processing and conditional updates in arrays.
