# Create-TypeInfo-StaticLibrary
Create typeinfo static library with C. Using in CVM Project.

## Example:

### Input:

```
bool bool equ cov
char char asi cmp equ cov

int int as md % cmp equ cov
long@int lint as md % cmp equ cov
long@long@int llint as md % cmp equ cov
int8_t int8 as md % cmp equ cov
int16_t int16 as md % cmp equ cov
int32_t int32 as md % cmp equ cov
int64_t int64 as md % cmp equ cov

float float as md cmp equ cov
double double as md cmp equ cov
long@double ldouble as md cmp equ cov
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
typedef long double ldouble;

bool cmp_e_bool(bool a, bool b) { return a == b; }
bool cov_bool_bool(bool x) { return (bool)x; }
char cov_bool_char(bool x) { return (char)x; }
int cov_bool_int(bool x) { return (int)x; }
lint cov_bool_lint(bool x) { return (lint)x; }
llint cov_bool_llint(bool x) { return (llint)x; }
int8 cov_bool_int8(bool x) { return (int8)x; }
int16 cov_bool_int16(bool x) { return (int16)x; }
int32 cov_bool_int32(bool x) { return (int32)x; }
int64 cov_bool_int64(bool x) { return (int64)x; }
float cov_bool_float(bool x) { return (float)x; }
double cov_bool_double(bool x) { return (double)x; }
ldouble cov_bool_ldouble(bool x) { return (ldouble)x; }
char add_char(char a, int b) { return a + b; }
int sub_char(char a, char b) { return a - b; }
bool cmp_l_char(char a, char b) { return a > b; }
bool cmp_le_char(char a, char b) { return a >= b; }
bool cmp_s_char(char a, char b) { return a < b; }
bool cmp_se_char(char a, char b) { return a <= b; }
bool cmp_e_char(char a, char b) { return a == b; }
bool cov_char_bool(char x) { return (bool)x; }
char cov_char_char(char x) { return (char)x; }
int cov_char_int(char x) { return (int)x; }
lint cov_char_lint(char x) { return (lint)x; }
llint cov_char_llint(char x) { return (llint)x; }
int8 cov_char_int8(char x) { return (int8)x; }
int16 cov_char_int16(char x) { return (int16)x; }
int32 cov_char_int32(char x) { return (int32)x; }
int64 cov_char_int64(char x) { return (int64)x; }
float cov_char_float(char x) { return (float)x; }
double cov_char_double(char x) { return (double)x; }
ldouble cov_char_ldouble(char x) { return (ldouble)x; }
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
bool cov_int_bool(int x) { return (bool)x; }
char cov_int_char(int x) { return (char)x; }
int cov_int_int(int x) { return (int)x; }
lint cov_int_lint(int x) { return (lint)x; }
llint cov_int_llint(int x) { return (llint)x; }
int8 cov_int_int8(int x) { return (int8)x; }
int16 cov_int_int16(int x) { return (int16)x; }
int32 cov_int_int32(int x) { return (int32)x; }
int64 cov_int_int64(int x) { return (int64)x; }
float cov_int_float(int x) { return (float)x; }
double cov_int_double(int x) { return (double)x; }
ldouble cov_int_ldouble(int x) { return (ldouble)x; }
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
bool cov_lint_bool(lint x) { return (bool)x; }
char cov_lint_char(lint x) { return (char)x; }
int cov_lint_int(lint x) { return (int)x; }
lint cov_lint_lint(lint x) { return (lint)x; }
llint cov_lint_llint(lint x) { return (llint)x; }
int8 cov_lint_int8(lint x) { return (int8)x; }
int16 cov_lint_int16(lint x) { return (int16)x; }
int32 cov_lint_int32(lint x) { return (int32)x; }
int64 cov_lint_int64(lint x) { return (int64)x; }
float cov_lint_float(lint x) { return (float)x; }
double cov_lint_double(lint x) { return (double)x; }
ldouble cov_lint_ldouble(lint x) { return (ldouble)x; }
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
bool cov_llint_bool(llint x) { return (bool)x; }
char cov_llint_char(llint x) { return (char)x; }
int cov_llint_int(llint x) { return (int)x; }
lint cov_llint_lint(llint x) { return (lint)x; }
llint cov_llint_llint(llint x) { return (llint)x; }
int8 cov_llint_int8(llint x) { return (int8)x; }
int16 cov_llint_int16(llint x) { return (int16)x; }
int32 cov_llint_int32(llint x) { return (int32)x; }
int64 cov_llint_int64(llint x) { return (int64)x; }
float cov_llint_float(llint x) { return (float)x; }
double cov_llint_double(llint x) { return (double)x; }
ldouble cov_llint_ldouble(llint x) { return (ldouble)x; }
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
bool cov_int8_bool(int8 x) { return (bool)x; }
char cov_int8_char(int8 x) { return (char)x; }
int cov_int8_int(int8 x) { return (int)x; }
lint cov_int8_lint(int8 x) { return (lint)x; }
llint cov_int8_llint(int8 x) { return (llint)x; }
int8 cov_int8_int8(int8 x) { return (int8)x; }
int16 cov_int8_int16(int8 x) { return (int16)x; }
int32 cov_int8_int32(int8 x) { return (int32)x; }
int64 cov_int8_int64(int8 x) { return (int64)x; }
float cov_int8_float(int8 x) { return (float)x; }
double cov_int8_double(int8 x) { return (double)x; }
ldouble cov_int8_ldouble(int8 x) { return (ldouble)x; }
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
bool cov_int16_bool(int16 x) { return (bool)x; }
char cov_int16_char(int16 x) { return (char)x; }
int cov_int16_int(int16 x) { return (int)x; }
lint cov_int16_lint(int16 x) { return (lint)x; }
llint cov_int16_llint(int16 x) { return (llint)x; }
int8 cov_int16_int8(int16 x) { return (int8)x; }
int16 cov_int16_int16(int16 x) { return (int16)x; }
int32 cov_int16_int32(int16 x) { return (int32)x; }
int64 cov_int16_int64(int16 x) { return (int64)x; }
float cov_int16_float(int16 x) { return (float)x; }
double cov_int16_double(int16 x) { return (double)x; }
ldouble cov_int16_ldouble(int16 x) { return (ldouble)x; }
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
bool cov_int32_bool(int32 x) { return (bool)x; }
char cov_int32_char(int32 x) { return (char)x; }
int cov_int32_int(int32 x) { return (int)x; }
lint cov_int32_lint(int32 x) { return (lint)x; }
llint cov_int32_llint(int32 x) { return (llint)x; }
int8 cov_int32_int8(int32 x) { return (int8)x; }
int16 cov_int32_int16(int32 x) { return (int16)x; }
int32 cov_int32_int32(int32 x) { return (int32)x; }
int64 cov_int32_int64(int32 x) { return (int64)x; }
float cov_int32_float(int32 x) { return (float)x; }
double cov_int32_double(int32 x) { return (double)x; }
ldouble cov_int32_ldouble(int32 x) { return (ldouble)x; }
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
bool cov_int64_bool(int64 x) { return (bool)x; }
char cov_int64_char(int64 x) { return (char)x; }
int cov_int64_int(int64 x) { return (int)x; }
lint cov_int64_lint(int64 x) { return (lint)x; }
llint cov_int64_llint(int64 x) { return (llint)x; }
int8 cov_int64_int8(int64 x) { return (int8)x; }
int16 cov_int64_int16(int64 x) { return (int16)x; }
int32 cov_int64_int32(int64 x) { return (int32)x; }
int64 cov_int64_int64(int64 x) { return (int64)x; }
float cov_int64_float(int64 x) { return (float)x; }
double cov_int64_double(int64 x) { return (double)x; }
ldouble cov_int64_ldouble(int64 x) { return (ldouble)x; }
float add_float(float a, float b) { return a + b; }
float sub_float(float a, float b) { return a - b; }
float mul_float(float a, float b) { return a * b; }
float div_float(float a, float b) { return a / b; }
bool cmp_l_float(float a, float b) { return a > b; }
bool cmp_le_float(float a, float b) { return a >= b; }
bool cmp_s_float(float a, float b) { return a < b; }
bool cmp_se_float(float a, float b) { return a <= b; }
bool cmp_e_float(float a, float b) { return a == b; }
bool cov_float_bool(float x) { return (bool)x; }
char cov_float_char(float x) { return (char)x; }
int cov_float_int(float x) { return (int)x; }
lint cov_float_lint(float x) { return (lint)x; }
llint cov_float_llint(float x) { return (llint)x; }
int8 cov_float_int8(float x) { return (int8)x; }
int16 cov_float_int16(float x) { return (int16)x; }
int32 cov_float_int32(float x) { return (int32)x; }
int64 cov_float_int64(float x) { return (int64)x; }
float cov_float_float(float x) { return (float)x; }
double cov_float_double(float x) { return (double)x; }
ldouble cov_float_ldouble(float x) { return (ldouble)x; }
double add_double(double a, double b) { return a + b; }
double sub_double(double a, double b) { return a - b; }
double mul_double(double a, double b) { return a * b; }
double div_double(double a, double b) { return a / b; }
bool cmp_l_double(double a, double b) { return a > b; }
bool cmp_le_double(double a, double b) { return a >= b; }
bool cmp_s_double(double a, double b) { return a < b; }
bool cmp_se_double(double a, double b) { return a <= b; }
bool cmp_e_double(double a, double b) { return a == b; }
bool cov_double_bool(double x) { return (bool)x; }
char cov_double_char(double x) { return (char)x; }
int cov_double_int(double x) { return (int)x; }
lint cov_double_lint(double x) { return (lint)x; }
llint cov_double_llint(double x) { return (llint)x; }
int8 cov_double_int8(double x) { return (int8)x; }
int16 cov_double_int16(double x) { return (int16)x; }
int32 cov_double_int32(double x) { return (int32)x; }
int64 cov_double_int64(double x) { return (int64)x; }
float cov_double_float(double x) { return (float)x; }
double cov_double_double(double x) { return (double)x; }
ldouble cov_double_ldouble(double x) { return (ldouble)x; }
ldouble add_ldouble(ldouble a, ldouble b) { return a + b; }
ldouble sub_ldouble(ldouble a, ldouble b) { return a - b; }
ldouble mul_ldouble(ldouble a, ldouble b) { return a * b; }
ldouble div_ldouble(ldouble a, ldouble b) { return a / b; }
bool cmp_l_ldouble(ldouble a, ldouble b) { return a > b; }
bool cmp_le_ldouble(ldouble a, ldouble b) { return a >= b; }
bool cmp_s_ldouble(ldouble a, ldouble b) { return a < b; }
bool cmp_se_ldouble(ldouble a, ldouble b) { return a <= b; }
bool cmp_e_ldouble(ldouble a, ldouble b) { return a == b; }
bool cov_ldouble_bool(ldouble x) { return (bool)x; }
char cov_ldouble_char(ldouble x) { return (char)x; }
int cov_ldouble_int(ldouble x) { return (int)x; }
lint cov_ldouble_lint(ldouble x) { return (lint)x; }
llint cov_ldouble_llint(ldouble x) { return (llint)x; }
int8 cov_ldouble_int8(ldouble x) { return (int8)x; }
int16 cov_ldouble_int16(ldouble x) { return (int16)x; }
int32 cov_ldouble_int32(ldouble x) { return (int32)x; }
int64 cov_ldouble_int64(ldouble x) { return (int64)x; }
float cov_ldouble_float(ldouble x) { return (float)x; }
double cov_ldouble_double(ldouble x) { return (double)x; }
ldouble cov_ldouble_ldouble(ldouble x) { return (ldouble)x; }
```
