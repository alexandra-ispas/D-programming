import std.stdio;

struct VeryBigStruct { 
    int a; 
}   // but still empty

void gun(VeryBigStruct* c) @safe
{
    // do whatever
}

/**
    we must take address of parameter 'a' in order to be able to call the
    function 'gun' correctly, so this operations cannot be replaced, and the
    function can only be assigned the '@trusted' attribute
*/
void func(VeryBigStruct a) @trusted
{
    gun(&a);
    writeln((&a.a)[2]);
}

void main() @safe
{
    func(VeryBigStruct());
}
