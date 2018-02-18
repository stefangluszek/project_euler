bool is_palindrome(int n)
{
    return (string)n == reverse((string)n);
}

int largest_palindrome(int digits)
{
    int start = pow(10, digits - 1);
    int end = pow(10, digits);
    int largest_pal;

    for (int i = start; i < end; i++)
    {
        for (int j = start; j <= i; j++)
        {
            if (is_palindrome(i * j))
                largest_pal = max(largest_pal, i * j);
        }
    }
    return largest_pal;
}

int main()
{
    werror("%d\n", largest_palindrome(3));
}
