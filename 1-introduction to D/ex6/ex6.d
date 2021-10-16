private struct Result;
//     int a;
//     string b;
// }

Result fun(int a, string b) {
    
    struct Result {
        int a;
        string b;
        this(int a, string b){
            this.a = a;
            this.b = b;
        }
    }

    Result res = Result(a, b);
    return res; 
}

void main() {
    Result k = fun(1, "foo");
}