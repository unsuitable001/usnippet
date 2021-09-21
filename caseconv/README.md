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

### License

MIT License
