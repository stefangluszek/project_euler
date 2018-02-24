constant n_digits = 13;

int largest_product(string d)
{
    array(int) digits = map(d / "", lambda(string s){return (int)s;});
    int max_product;
    int last_product;

    if (sizeof(digits) == n_digits)
        return `*(@digits);

    for (int i = 0; i <= sizeof(digits) - n_digits; i++)
    {
        int j = i + n_digits - 1;

        //! We have already calculated the product of the last n
        //! digits, instead of calculating it all again, divide by
        //! the digit that fell out of the range and multiply by
        //! the next digit. Unfortunately if there was a 0 in the
        //! last product we need to calculate the product of all n
        //! digits again.
        if (!last_product)
        {
            last_product = `*(@digits[i..j]);
            max_product = max(last_product, max_product);
        }
        else
        {
            last_product = last_product / digits[i-1] * digits[j];
            max_product = max(max_product, last_product);
        }
    }
    return max_product;
}

//! If a 0 exists within the digits the product will be 0 as well.
//! The idea is to split the string by 0 and only analyze sub strings
//! that are longer than n.
int largest_product_split_by_0(string d)
{
    array(string) parts = d / "0";
    int largest;
    foreach (parts, string p)
    {
        if (sizeof(p) >= n_digits)
        {
            largest = max(largest, largest_product(p));
        }
    }
    return largest;
}
int main()
{
    string data = Stdio.read_file("./data/8.txt");
    data = String.trim_all_whites(data);
    data = data - "\n";
    //! Put all digits into an array of integers.
    System.Timer t = System.Timer();
    werror("%d max product split 0: in %f\n",
            largest_product_split_by_0(data), t->get());
    werror("%d max product: in: %f\n", largest_product(data), t->get());
    return 0;
}
