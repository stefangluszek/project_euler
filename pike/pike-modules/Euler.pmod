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

//! Returns the Nth prime.
//! O(N log N)
//! A much faster solution would be to use the sieve of Eratosthenes.
int nth_prime(int n)
{
    int counter;
    if (n < 1)
        return -1;
    if (n == 1)
        return 2;
    array(int) found_primes = ({ 2 });
    int i = 3;

    while (sizeof(found_primes) < n)
    {
        bool is_prime = true;
        foreach (found_primes, int p)
        {
            counter++;
            if (i % p == 0)
            {
                is_prime = false;
                continue;
            }
        }
        if (is_prime)
            found_primes += ({ i });
        i += 2;
    }

    return found_primes[-1];
}
