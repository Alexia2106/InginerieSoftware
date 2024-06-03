method test(x:int, y:int) returns (z:int)
{
    assume(x==y);
    z:=x-y;
    assert(z==0);
}
