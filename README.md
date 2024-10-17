
## ft_printf

### Description
**ft_printf** is a custom implementation of the C standard library function `printf`. It allows formatted output to the standard output stream or a specified file stream, based on a format string and optional arguments. This project replicates the behavior of `printf` while focusing on flexibility and adherence to specific requirements.

---

## Usage

### Prototype:
```c
int ft_printf(const char *str, ...);
```

- **str**: A null-terminated string that contains the characters and format specifiers, controlling how the arguments are converted and formatted for output.

### Return Value:
- The function returns the total number of characters printed (excluding the null byte used to end output to strings).
- Returns **-1** if an error occurs.

---

## Supported Format Specifiers:
The following format specifiers are implemented in **ft_printf**:

- **%c**: Character
- **%s**: String
- **%p**: Pointer address
- **%d / %i**: Signed decimal integer
- **%u**: Unsigned decimal integer
- **%x / %X**: Unsigned hexadecimal integer (lowercase/uppercase)
- **%%**: Print a literal '%' character

---

## Compilation

To compile a program using **ft_printf**, use the following command:
```bash
gcc -Wall -Wextra -Werror your_file.c ft_printf.c ft_printf_utils.c -o your_program
```

- Replace **your_file.c** with your source file.
- Replace **your_program** with the desired name for the executable.

---

## Example Usage

```c
#include "libftprintf.h"

int main(void) {
    ft_printf("Hello, %s!\n", "world");
    ft_printf("The answer is %d.\n", 42);
    ft_printf("Pointer address: %p\n", (void *)&main);
    return (0);
}
```

In this example:
- The `%s` specifier inserts the string `"world"`.
- The `%d` specifier prints the integer `42`.
- The `%p` specifier prints the memory address of the `main` function.

---

## Notes
- **ft_printf** should handle different edge cases (e.g., null pointers, large numbers) similarly to the standard `printf` function.
- The implementation of **ft_printf** does not use standard library functions like `printf` itself, ensuring a low-level, custom handling of format specifiers and output.
- 
