import math

def find_n_primes(n):
  """
  Returns a set containing all primes that are smaller than n.
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

def is_prime(n):
  """Returns True if n is a prime, False otherwise"""
  if n <= 1:
    return False
  if n < 4:
    return True
  if n % 2 == 0:
    return False
  if n < 9:
    return True
  if n % 3 == 0:
    return False

  limit = int(math.floor(math.sqrt(n)))
  i = 5
  while i <= limit:
    if n % i == 0:
      return False
    if n % (i + 2) == 0:
      return False
    i += 6
  return True

def nth_prime(n):
  if n == 1:
    return 2
  primes_found = 1
  counter = 1
  while primes_found < n:
    counter += 2
    if is_prime(counter) is True:
      primes_found += 1
  return counter
