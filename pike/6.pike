int sum_sq_diff(int n)
{
    // sum of squares: Sn = (n * (n + 1) * (2n +1)) / 6
    int sum_of_squares = (n * (n + 1) * (2 * n + 1)) / 6;
    // sum of n:  Sn = n(n + 1)/2
    int square_of_sum = n * (n +1) / 2;

    return pow(square_of_sum, 2) - sum_of_squares;
}

int main()
{
    werror("%d\n", sum_sq_diff(100));
    return 0;
}
