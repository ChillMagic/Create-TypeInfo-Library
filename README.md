# Create-TypeInfo-StaticLibrary
Create typeinfo static library with C. Using in CVM Project.

## Example:

### Input:

```
int int as md % cmp cov
long@int lint as md % cmp cov
long@long@int llint as md % cmp cov
int8_t int8 as md % cmp cov
int16_t int16 as md % cmp cov
int32_t int32 as md % cmp cov
int64_t int64 as md % cmp cov
```

### Output:

```c
#include <stdint.h>
#include <stdbool.h>
typedef long int lint;
typedef long long int llint;
typedef int8_t int8;
typedef int16_t int16;
typedef int32_t int32;
typedef int64_t int64;
int add_int(int a, int b) { return a + b; }
int sub_int(int a, int b) { return a - b; }
int mul_int(int a, int b) { return a * b; }
int div_int(int a, int b) { return a / b; }
int mod_int(int a, int b) { return a % b; }
bool cmp_l_int(int a, int b) { return a > b; }
bool cmp_le_int(int a, int b) { return a >= b; }
bool cmp_s_int(int a, int b) { return a < b; }
bool cmp_se_int(int a, int b) { return a <= b; }
bool cmp_e_int(int a, int b) { return a == b; }
int cov_int_int(int x) { return (int)x; }
lint cov_int_lint(int x) { return (lint)x; }
llint cov_int_llint(int x) { return (llint)x; }
int8 cov_int_int8(int x) { return (int8)x; }
int16 cov_int_int16(int x) { return (int16)x; }
int32 cov_int_int32(int x) { return (int32)x; }
int64 cov_int_int64(int x) { return (int64)x; }
lint add_lint(lint a, lint b) { return a + b; }
lint sub_lint(lint a, lint b) { return a - b; }
lint mul_lint(lint a, lint b) { return a * b; }
lint div_lint(lint a, lint b) { return a / b; }
lint mod_lint(lint a, lint b) { return a % b; }
bool cmp_l_lint(lint a, lint b) { return a > b; }
bool cmp_le_lint(lint a, lint b) { return a >= b; }
bool cmp_s_lint(lint a, lint b) { return a < b; }
bool cmp_se_lint(lint a, lint b) { return a <= b; }
bool cmp_e_lint(lint a, lint b) { return a == b; }
int cov_lint_int(lint x) { return (int)x; }
lint cov_lint_lint(lint x) { return (lint)x; }
llint cov_lint_llint(lint x) { return (llint)x; }
int8 cov_lint_int8(lint x) { return (int8)x; }
int16 cov_lint_int16(lint x) { return (int16)x; }
int32 cov_lint_int32(lint x) { return (int32)x; }
int64 cov_lint_int64(lint x) { return (int64)x; }
llint add_llint(llint a, llint b) { return a + b; }
llint sub_llint(llint a, llint b) { return a - b; }
llint mul_llint(llint a, llint b) { return a * b; }
llint div_llint(llint a, llint b) { return a / b; }
llint mod_llint(llint a, llint b) { return a % b; }
bool cmp_l_llint(llint a, llint b) { return a > b; }
bool cmp_le_llint(llint a, llint b) { return a >= b; }
bool cmp_s_llint(llint a, llint b) { return a < b; }
bool cmp_se_llint(llint a, llint b) { return a <= b; }
bool cmp_e_llint(llint a, llint b) { return a == b; }
int cov_llint_int(llint x) { return (int)x; }
lint cov_llint_lint(llint x) { return (lint)x; }
llint cov_llint_llint(llint x) { return (llint)x; }
int8 cov_llint_int8(llint x) { return (int8)x; }
int16 cov_llint_int16(llint x) { return (int16)x; }
int32 cov_llint_int32(llint x) { return (int32)x; }
int64 cov_llint_int64(llint x) { return (int64)x; }
int8 add_int8(int8 a, int8 b) { return a + b; }
int8 sub_int8(int8 a, int8 b) { return a - b; }
int8 mul_int8(int8 a, int8 b) { return a * b; }
int8 div_int8(int8 a, int8 b) { return a / b; }
int8 mod_int8(int8 a, int8 b) { return a % b; }
bool cmp_l_int8(int8 a, int8 b) { return a > b; }
bool cmp_le_int8(int8 a, int8 b) { return a >= b; }
bool cmp_s_int8(int8 a, int8 b) { return a < b; }
bool cmp_se_int8(int8 a, int8 b) { return a <= b; }
bool cmp_e_int8(int8 a, int8 b) { return a == b; }
int cov_int8_int(int8 x) { return (int)x; }
lint cov_int8_lint(int8 x) { return (lint)x; }
llint cov_int8_llint(int8 x) { return (llint)x; }
int8 cov_int8_int8(int8 x) { return (int8)x; }
int16 cov_int8_int16(int8 x) { return (int16)x; }
int32 cov_int8_int32(int8 x) { return (int32)x; }
int64 cov_int8_int64(int8 x) { return (int64)x; }
int16 add_int16(int16 a, int16 b) { return a + b; }
int16 sub_int16(int16 a, int16 b) { return a - b; }
int16 mul_int16(int16 a, int16 b) { return a * b; }
int16 div_int16(int16 a, int16 b) { return a / b; }
int16 mod_int16(int16 a, int16 b) { return a % b; }
bool cmp_l_int16(int16 a, int16 b) { return a > b; }
bool cmp_le_int16(int16 a, int16 b) { return a >= b; }
bool cmp_s_int16(int16 a, int16 b) { return a < b; }
bool cmp_se_int16(int16 a, int16 b) { return a <= b; }
bool cmp_e_int16(int16 a, int16 b) { return a == b; }
int cov_int16_int(int16 x) { return (int)x; }
lint cov_int16_lint(int16 x) { return (lint)x; }
llint cov_int16_llint(int16 x) { return (llint)x; }
int8 cov_int16_int8(int16 x) { return (int8)x; }
int16 cov_int16_int16(int16 x) { return (int16)x; }
int32 cov_int16_int32(int16 x) { return (int32)x; }
int64 cov_int16_int64(int16 x) { return (int64)x; }
int32 add_int32(int32 a, int32 b) { return a + b; }
int32 sub_int32(int32 a, int32 b) { return a - b; }
int32 mul_int32(int32 a, int32 b) { return a * b; }
int32 div_int32(int32 a, int32 b) { return a / b; }
int32 mod_int32(int32 a, int32 b) { return a % b; }
bool cmp_l_int32(int32 a, int32 b) { return a > b; }
bool cmp_le_int32(int32 a, int32 b) { return a >= b; }
bool cmp_s_int32(int32 a, int32 b) { return a < b; }
bool cmp_se_int32(int32 a, int32 b) { return a <= b; }
bool cmp_e_int32(int32 a, int32 b) { return a == b; }
int cov_int32_int(int32 x) { return (int)x; }
lint cov_int32_lint(int32 x) { return (lint)x; }
llint cov_int32_llint(int32 x) { return (llint)x; }
int8 cov_int32_int8(int32 x) { return (int8)x; }
int16 cov_int32_int16(int32 x) { return (int16)x; }
int32 cov_int32_int32(int32 x) { return (int32)x; }
int64 cov_int32_int64(int32 x) { return (int64)x; }
int64 add_int64(int64 a, int64 b) { return a + b; }
int64 sub_int64(int64 a, int64 b) { return a - b; }
int64 mul_int64(int64 a, int64 b) { return a * b; }
int64 div_int64(int64 a, int64 b) { return a / b; }
int64 mod_int64(int64 a, int64 b) { return a % b; }
bool cmp_l_int64(int64 a, int64 b) { return a > b; }
bool cmp_le_int64(int64 a, int64 b) { return a >= b; }
bool cmp_s_int64(int64 a, int64 b) { return a < b; }
bool cmp_se_int64(int64 a, int64 b) { return a <= b; }
bool cmp_e_int64(int64 a, int64 b) { return a == b; }
int cov_int64_int(int64 x) { return (int)x; }
lint cov_int64_lint(int64 x) { return (lint)x; }
llint cov_int64_llint(int64 x) { return (llint)x; }
int8 cov_int64_int8(int64 x) { return (int8)x; }
int16 cov_int64_int16(int64 x) { return (int16)x; }
int32 cov_int64_int32(int64 x) { return (int32)x; }
int64 cov_int64_int64(int64 x) { return (int64)x; }
```
