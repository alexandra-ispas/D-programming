import std.stdio;
import std.range;
struct MyStack(T)
{
    T[] arr;

    bool empty()
    {
        return (arr.length == 0);
    }

    T front() {
        return arr[$ - 1];
    }

    void popFront() {
        arr = arr[0..$ -1];
    }

    MyStack!(T) save() {
        return this;
    }

    T back(){
        return arr[0];
    }

    void popBack(){
        arr = arr[1..$];
    }

    ref T opIndex(size_t index) {
        return arr[index];
    }

    size_t length(){
        return arr.length;
    }
}

void main() {

    int[] arr = [1, 2, 3, 4, 5, 6];
    auto s1 = MyStack!(int)(arr);

    foreach (int key; s1)
    {
        writeln(key);
    }

    static assert(isInputRange!(MyStack!(int)));
    static assert(isForwardRange!(MyStack!(int)));
    static assert(isBidirectionalRange!(MyStack!(int)));
    static assert(isRandomAccessRange!(MyStack!(int)));
}