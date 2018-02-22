int sum_sq_diff(int n)
{
    int sum_of_squares = 0;
    int square_of_sum = 0;

    for (int i = 1; i <= n; i++)
    {
        sum_of_squares += pow(i, 2);
        square_of_sum += i;
    }
    return pow(square_of_sum, 2) - sum_of_squares;
}

int main()
{
    werror("%d\n", sum_sq_diff(100));
    return 0;
}
