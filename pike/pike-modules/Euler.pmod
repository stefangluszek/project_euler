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

int nth_prime_sieve(int n)
{
    mapping(int:bool) removed = ([ ]);
    //! Not sure if there is a good way of knowing what's the highest
    //! possible value of the nth prime. For now, until I find out use
    //! an arbitrary number that works for 10001 primes.
    int limit = 12 * n;
    int last_prime;
    int found_primes;

    void remove_multiples_of(int k)
    {
        for (int i = k; i < limit; i += k)
            removed[i] = 1;
    };

    if (n < 1)
        return -1;

    int i = 2;
    while (found_primes < n)
    {
        i++;
        if (!removed[i])
        {
            found_primes++;
            last_prime = i;
            remove_multiples_of(i);
        }
    }

    return last_prime;
}
