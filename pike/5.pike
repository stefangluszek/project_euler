array(int) find_primes(int n)
{
    if (n < 2)
        return 0;

    array(int) found_primes = ({ 2 });

    if (n == 2)
        return found_primes;

    for (int i = 3; i < n; i += 2)
    {
        bool is_prime = true;
        if (i == 2)
            found_primes += ({ 2 });

        // check if it divides by any of the smaller primes
        foreach (found_primes, int p)
        {
            if (i % p == 0)
            {
                is_prime = false;
                continue;
            }
        }
        if (is_prime)
            found_primes += ({ i });
    }
    return found_primes;
}

int smallest_div(int n)
{
    // return -1 for anything less than 1
    if (n < 1)
        return -1;
    if (n == 1)
        return 1;

    // it must divide by all primes smaller than n
    int step = `*(@find_primes(n));

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
