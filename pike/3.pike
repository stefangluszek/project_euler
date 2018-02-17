//! Find the largest prime factor of 600851475143.
//! https://projecteuler.net/problem=3
//! Well we were lucky 600851475143 was not a prime and that it had
//! several factors under 10000 or otherwise we would be still waiting
//! for the result.

int find_factor(int n)
{
    for (int i = 2; i < n; i++)
    {
        if (n % i == 0)
            return i;
    }
    return n;
}

int largest_factor(int n)
{
    if (n <= 1)
        return -1;

    while (true)
    {
        int f = find_factor(n);
        if (f == n)
            return n;
        n /= f;
    }
}

int main()
{
    int n = 600851475143;
    werror("%O\n", largest_factor(n));
}
