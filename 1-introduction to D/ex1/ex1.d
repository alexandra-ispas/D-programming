import std.stdio;

/** binary search **/
int binarysearch2(const int[] arr, int l, int r, int x){
    int mid = l + (r - l) / 2;
    while (arr[mid] != x){
        if (r <= l || r < 0)
            return -1;
        if (arr[mid] > x)
            r = mid - 1;
        else
            l = mid + 1;
        mid = l + (r - l) / 2;
    }
    return mid;
}
/** fucntion for testing the binary search**/
void test(){
    int[] arr = [2, 3, 4, 10, 40];
    int n = cast(int) arr.length;
    printf("Test 1.... ");
    int x = 10;
    int result = binarysearch2(arr, 0, n - 1, x);
    assert(result == 3);
    printf("passed iterative...\n");
    printf("Test 2.... ");
    x = 5;
    result = binarysearch2(arr, 0, n - 1, x);
    assert(result == -1);
    printf("passed iterative...\n");
}

/** Main function */
int main()
{
    test();
    return 0;
}
