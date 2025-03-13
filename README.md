**Coding style for D language inspired by C/C++ and hungarian notation.**

Not complete, just in case.

## ZST10-DStyle

| **Aspect**           | **Rule** |
|----------------------|---------|
| **Import Order**     | STD → Third-Party → Project |
| **Visibility**       | Private (default) |
| **Indentation**      | Spaces |
| **Line Length**      | Not maximal value |
| **Braces Style**     | K&R (large projects) or 1TBS/OTBS |
| **Blank Lines**      | Between major blocks (e.g., SOMETHING_MASSIVE [2 blank lines] ETC) or not used |
| **DDoc Comments**    | `///` |
| **Inline Comments**  | `//` |
| **Error Handling**   | Exceptions / Exceptions based on checks |
| **Naming - Variables** | `camelCase` for local, `g_CamelCase` for globals |
| **Naming - Constants** | `SCREAMING_SNAKE_CASE` |
| **Naming - Immutable** | Prefixed with `IM_` |
| **Naming - Aliases**  | `al_PascalCase` |
| **Naming - Structs**  | `PascalCase` |
| **Naming - Classes**  | `PascalCase` |
| **Naming - Interfaces** | `PascalCase` |
| **Naming - Enums**    | `PascalCase` |
| **Function Naming**   | `PascalCAse` |
| **Temporary Variables** | Prefixed with `t_` |
| **Global Variables**  | Prefixed with `g_` |
| **Struct/Class Members** | Prefixed with `m_` |
| **Function-utility created only for supporting other function** | Prefixed with `_` |
| **Enums**            | PascalCase (`EnumValue`) |

## **Example**
```d
import std.stdio;

// import MyModule.SomethingImportant;

// Import Order: STD -> Third-Party -> Project
// Visibility: Private (default)
// Identantion:   spaces
// Line length: NO MAX
// Braces: K&R (bigger projects) or 1TBS/OTBS
// Blank lines: Split it between blocks in code (E.G SOMETHING_MASSIVE [2 BLANK LINES] ETC) or not used at all.
// DDOC: ///
// Inline comments: //
// Error handling: Exceptions/Exceptions based on checks

void PrintMe()
{
    writeln("PrintMe");
}

struct MyStruct
{
    string m_StructMember;

    string GetStructMember() {
        return m_StructMember;
    }
}

class MyClass
{
    string m_ClassMember;

    string GetClassMember() {
        return m_ClassMember;
    }
}

interface MyInterface
{
    string Foo();
}

enum MyEnum
{
    WhateverOne,
    WhateverTwo,
    WhateverThree
}

void _Func() {
    write("I exist only for ");
}

void TheFunc() {
    _Func();

    write("TheFunc\n");
}

void main()
{
    string myVariable;
    string g_MyVariable; // Global variables for future usage.
    const string MY_CONST;
    immutable string IM_MY_CONST;
    alias al_Integer = int;

    foreach(char t_Chr; "I'm temporary!") {
        write(t_Chr);
    }

    writeln();

    PrintMe();
    TheFunc();
}
```
