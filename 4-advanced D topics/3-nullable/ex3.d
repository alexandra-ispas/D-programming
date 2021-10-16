import std.stdio;

struct Nullable(T)
{
    bool isNull;
    T value;

    T get() {
        assert(!isNull, "value is null\n");
        return value;
    }

    void opAssign(T t){
        if(t == T.init){
            isNull = true;
        } 
        value = t;
    }

    this(T t){
        opAssign(t);
    }

    alias value this;
}

void main()
{
    auto null1 = Nullable!(int)(2);
    writeln(null1);
    writeln(null1.get);


    auto null2 = Nullable!(int)(3);
    writeln(null2);
    writeln(null2.get);

    Nullable!(int) c = null1 + null2;
    writeln(c);
}