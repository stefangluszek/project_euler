int main(int c, array(string) v)
{
    int sum;
    int limit = (int)v[1];

    for (int i = 3; i < limit; i += 3)
    {
        sum += i;
    }

    for (int i = 5; i < limit; i+= 5)
    {
        if (i % 3 != 0)
            sum += i;
    }

    werror("%d\n", sum);
    return 0;
}
