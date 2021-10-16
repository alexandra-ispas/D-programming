struct A
{
    int a;

    void foo() /* immutable */
    {
        a = a + 2;
    }
}

void main()
{
    /* immutable */A a;
    a.foo();
}

/**
this code does not compile because, if the instance is immutable, anything
referenced by 'this' will be made immutable, so the element a.a is immutable
and the function call 'a.foo()' tries to chance a.a's value.
*/
