import "./pike-modules/";

int main()
{
    System.Timer t = System.Timer();
    werror("%d in: %f\n", Euler.nth_prime(10001), t->get());
    werror("%d in: %f\n", Euler.nth_prime_sieve(10001), t->get());
    return 0;
}
