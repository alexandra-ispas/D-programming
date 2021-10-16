import std.stdio : writeln;

int* p;

void foo()
{
    int a = 7;
    p = &a;   
}

void boo()
{
    int b = 9;
    p = &b;
}

void main()
{
    foo();
    /*
        a = 7
        p = address of a
    */
    int b;
    const int* s = p;
    /*
        s = p = address of a
    */
    //s = &b;   --> error: cannot modify const exp s;
    writeln(*s);
    /*
        writes value at the address of a -> writes a -> 7
    */
    boo();
    /*
        b = 9;
        p = address of b -> s = address of b
    */
    writeln(*s);
    /*
        writes value at the address of b -> 9
    */
}
