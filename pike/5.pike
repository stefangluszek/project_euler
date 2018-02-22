import "./pike-modules/";

int smallest_div(int n)
{
    // return -1 for anything less than 1
    if (n < 1)
        return -1;
    if (n == 1)
        return 1;

    // it must divide by all primes smaller than n
    int step = `*(@Euler.find_primes(n));

    int k = 0;
    while (true)
    {
        k += step;
        bool found = true;
        for (int i = 2; i <= n; i += 1)
        {
            if (k % i)
            {
                found = false;
                continue;
            }
        }
        if (found)
            return k;
    }
}

int main()
{
    werror("%d\n", smallest_div(20));
    return 0;
}
