import euler
import math

def smallest_multiple(n):
  """
  Solution based on problem 5 overview on projecteuler.net.
  N = p[1]^a[1] * p[2]^a[2] ...
  a[i] = log(n) / log(p[i])
  """
  primes = euler.find_n_primes(n)
  res = 1

  # Calculate the exponent for each factor.
  for p in primes:
    e = int(math.floor(math.log(n) / math.log(p)))
    res = res * pow(p, e)

  return res

if __name__ == "__main__":
  print str(smallest_multiple(20))
