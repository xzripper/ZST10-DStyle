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
