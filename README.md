# ft_printf
Descripción

ft_printf es una implementación personalizada de la función de la biblioteca estándar de C printf. Permite la salida formateada al flujo de salida estándar o a un flujo de archivo especificado según una cadena de formato y argumentos opcionales.
## Uso
Prototipo

    int ft_printf(const char *str, ...);

format: Una cadena terminada en nulo que contiene los caracteres y especificadores de formato que controlan cómo se convierten y formatean los argumentos posteriores para la salida.
Retorna el número de caracteres impresos (excluyendo el byte nulo utilizado para finalizar la salida en cadenas) o -1 si ocurre un error.

## Compilación

Puedes compilar el programa de la siguiente manera:

 bash

    gcc -Wall -Wextra -Werror tu_archivo.c -o tu_programa

Asegúrate de reemplazar tu_archivo.c con el nombre de tu archivo fuente y tu_programa con el nombre deseado del ejecutable.

## Ejemplo de Uso

```c

#include "libftprintf.h"

int main(void) {
    ft_printf("¡Hola, %s!\n", "mundo");
    ft_printf("La respuesta es %d.\n", 42);
    return (0);
}
```
