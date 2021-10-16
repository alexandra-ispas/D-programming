import std.stdio;

/** Find the majority element in a string array 
    using builtin associative arrays. **/
string majority_element(string[int] arr){
    // import std.algorithm.sorting : sort;
    int count = 0;
    string candidate = "";
    foreach(string str ; arr.byValue()){
        if(count == 0)
            candidate = str;
        count += (str == candidate) ? 1 : -1;
    }
    return candidate;
}

void main(){
    string[int] arr;// = ["ana", "are", "ana", "mere", "ana", "pere", "ana", "ana"];
    arr[0] = "ana";
    arr[1] = "are";
    arr[2] = "ana";
    arr[3] = "mere";
    arr[4] = "ana";
    arr[5] = "pere";
    arr[6] = "ana";
    arr[7] = "ana";
    writeln(majority_element(arr));
}
