def find_n_primes(n):
  """Returns a set containing all primes that are smaller than n.
  NOTE: O(N log N)
  """
  primes = [ ]

  if n < 2:
    return None;

  primes.append(2)

  for i in range(3, n + 1, 2):
    is_prime = True
    for p in primes:
      if i % p is 0:
        is_prime = False
        continue
    if is_prime:
      primes.append(i)
  return primes
