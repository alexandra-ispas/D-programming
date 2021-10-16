void takePointer(int*) @safe {}
void takeRef(T)(ref T) @safe {} /* returns the reference of a value
                                   and the function is marked as 'safe'
                                   so this operation is illegal */

void func(T)(T a)
{
    static if(is(T == int))
        takePointer(&a); /* the 'func' function is not safe so it is ok to
                            take the address of 'a' here */
    else
        takeRef(a);
}

void main() @safe
{
    func(2);
    func("asd");
}
