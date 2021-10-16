import std.stdio;

struct Complex{
    int a;
    int b;

    void opAssign(Complex com)
    {
        this.a = com.a;
        this.b = com.b;
    }
    void opOpAssign(string op)(Complex com)
    if(op == "+" || op == "-" || op == "*" || op == "/")
    {
        static if(op == "+" || op == "-")
        {
            mixin("this.a " ~ op ~ "= com.a;");
            mixin("this.b " ~ op ~ "= com.b;");
        } else static if(op == "*"){
            int a1 = this.a;
            this.a = this.a * com.a - this.b * com.b;
            this.b = a1 * com.b + this.b * com.a;
        }  else static if(op == "/"){
            int a1 = this.a;
            this.a = (this.a * com.a + this.b * com.b) / (com.a * com.a + com.b * com.b);
            this.b = (this.b * com.a - a1 * com.b) / (com.a * com.a + com.b * com.b);
        }
    } 
}

void main(){
    Complex c1 = Complex(1, 2);
    Complex c2 = Complex(3, 4);

    c1 /= c2;
    writeln(c1);

}