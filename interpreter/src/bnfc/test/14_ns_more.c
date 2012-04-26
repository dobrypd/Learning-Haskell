namespace a
{
    bool f(int v)
    {
        int a;
        a = 5;
        return true;
    }
    bool g(int h)
    {
        return false;
    }
}
namespace b
{
    bool f()
    {
        int g =5;
        return (g * 7) > 5;
    }
    int g(bool a)
    {
        return 10;
    }
}

int main()
{
    if (b::f()) 
    {
        if (a::f())
        {
            return b::g(a::g(4));
        }
    }
}
