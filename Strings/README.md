# Strings

The exercises cover conversion between strings and integers, character counting, digit extraction, palindrome checking, and converting lowercase letters to uppercase.

---

### `atoi.asm`

**Objective:**  
Converts a string of numeric characters into its integer equivalent.

**Techniques Used:**  
- Character to integer conversion (`'0'` offset)  
- Looping through string elements  
- Accumulating result using multiplication and addition  

**Output:**  
Integer value corresponding to the numeric string.

**Potential Applications:**  
- Parsing numeric input from text.  
- Useful in basic interpreters or input validation routines.

---

### `str_character.asm`

**Objective:**  
Counts the occurrences of a specific character within a string.

**Techniques Used:**  
- Looping over string elements  
- Conditional checks for character equality  
- Counter accumulation  

**Output:**  
Number of times the specified character appears in the string.

**Potential Applications:**  
- Frequency analysis of characters.  
- Simple text processing tasks.

---

### `str_digits.asm`

**Objective:**  
Counts the number of digit characters (`0-9`) in a string.

**Techniques Used:**  
- Looping and character comparisons  
- Range checking for digits  
- Counter accumulation  

**Output:**  
Number of digit characters present in the string.

**Potential Applications:**  
- Validation or analysis of alphanumeric strings.  
- Useful for parsing mixed-format data.

---

### `str_palindrome.asm`

**Objective:**  
Determines whether a string is a palindrome (reads the same forwards and backwards).

**Techniques Used:**  
- Two-pointer approach from both ends of the string  
- Character comparison  
- Conditional branching  

**Output:**  
Stores a flag indicating `'S'` for palindrome or `'N'` otherwise.

**Potential Applications:**  
- String validation or pattern recognition.  
- Useful for simple algorithms in text processing.

---

### `str_to_upper.asm`

**Objective:**  
Converts all lowercase letters in a string to uppercase.

**Techniques Used:**  
- Iterating over string characters  
- Conditional checks for lowercase letters  
- ASCII arithmetic for conversion  

**Output:**  
Original string modified with all lowercase letters converted to uppercase.

**Potential Applications:**  
- Standardizing text input.  
- Useful in formatting and normalization tasks for text data.
