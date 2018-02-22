//! return primes that are smaller than n
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
