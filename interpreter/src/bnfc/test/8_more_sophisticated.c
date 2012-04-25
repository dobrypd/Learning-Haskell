int fun1(int a, int b){
    return a *b;
}

int fun2(int a, int b){
    struct dupa {
        int a;
        int b;
        int c;
    } d;
    a += 2;
    d.a = 1;
    d.b = 4;
    d.c = d.a + d.c;
    return a;
}

