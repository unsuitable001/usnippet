# CaseConv

## Usage

1. Include the header.

```c
#include "caseconv/caseconv.h"
```

2. Use it in your project.

```c
// example.c

int main() {
    char str[] = "HelloWorld";
    toUpperCase(str);
    printf("%s\n", str);
    return 0;
}

```

3. Compile it.

```bash
gcc example.c caseconv/caseconv.c
```

Note: Relative paths mentioned in the example are based on repository root. Do not forget to alter them as per your need.

### License

MIT License
