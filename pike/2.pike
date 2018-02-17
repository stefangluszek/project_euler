//! Calculates the sum of even Fibonnaci terms whose values do not
//! exceed four million.
//! https://projecteuler.net/problem=2
int fib_sum(int n)
{
    if (n <= 0)
        return -1;

    int a = 1;
    int b = 1;
    int sum = 0;

    while (b < n)
    {
        b += a;
        if (b % 2 == 0)
            sum += b;
        a = b - a;
    }
    return sum;
}

int main()
{
    werror("%d\n", fib_sum(4000000));
    return 0;
}
