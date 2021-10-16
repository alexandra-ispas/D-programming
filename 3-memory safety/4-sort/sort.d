import std.stdio;
import std.algorithm;
import std.traits;


/**
    Implement a generic sorting algorithm for dynamic arrays. 
    The arrays can be immutable/const/mutable.
    *The array element type can be any type that is ordering comparable.
    *The qualifier (mutable/const/immutabe) applies to both the array and the elements.
    *You must use template constraints and/or static ifs.
    Recommendation: use 2 template overloads (one for mutable and one for const/immutable); 
    the mutable version does in-place sorting, the const/immutable version creates 
    a new array and returns it.
*/
auto generic_sort(T)(T[] arr)
if(isOrderingComparable! T)
{
    static if(isMutable! T){
        return arr.sort;
    } else {
        return arr.dup.sort;
    }
}

void main () 
{
    int[] arr1 = [1, 5, 7, 8, 4, 8, 12, 9, 2, 0];
    writeln(generic_sort(arr1));
    immutable long[] arr2 = [112, 123, 345, 99, 6, 34, 2];
    writeln(generic_sort(arr2));
}
