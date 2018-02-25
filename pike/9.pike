constant sum_to_find = 1000;

//! Based on Euclid's formula.
//! m > n > 0
//! a = m^2 - n^2, b = 2mn, c = m^2 + n^2
array(int) pythagorean_triple(int m, int n)
{
    int a = pow(m, 2) - pow(n, 2);
    int b = 2 * m * n;
    int c = pow(m, 2) + pow(n, 2);

    return ({ a, b, c });
}

int main()
{
    //! sqrt because c = m^2 + n^2 and this can't be larger
    //! than a + b + c.
    int limit = (int)floor(sqrt((float)sum_to_find));

    for (int m = limit; m >= 2; m--)
    {
        for (int n = m - 1; n >= 1; n--)
        {
            if (`+(@pythagorean_triple(m, n)) == sum_to_find)
            {
                werror("%d\n", `*(@pythagorean_triple(m, n)));
                break;
            }
        }
    }
    return 0;
}
