namespace a
{
    int b()
    {
    }
}

int b() 
{
    a::b();
    return a::b();
}
