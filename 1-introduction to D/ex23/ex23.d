module ex23;
import std.stdio;

/** functions which returns the median element
    of an unsorted integer array **/
int median_element(int[] arr){
    import std.algorithm.sorting : sort;
    import std.algorithm.iteration;
    import std.algorithm.mutation : copy;

    // sort the array and eliminate duplicates
    arr.length -= arr.sort.uniq().copy(arr).length;

    // get the (n + 1)/2th element
    auto res = arr[(arr.length + 1) / 2];
    return res;
}

void main(){
    int[] arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    writeln(median_element(arr));
}
