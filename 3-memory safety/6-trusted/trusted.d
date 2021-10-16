import std.stdio;

extern(C) size_t read(int, void*, size_t);

auto safeRead(char[] a) @trusted
{
    return read(0, cast(void*)a, a.length);
}

void main() @safe
{
    char[] a;
    a.length = 5;
    // auto b = read(0, cast(void*)a, a.length);
    auto b = safeRead(a);
    a[b-1] = '\0';
    writeln(a);
}
