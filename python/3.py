def find_factor(n):
  if n % 2 == 0:
    return 2
  for i in xrange(3, n, 2):
    if n % i == 0:
      return i
  return n

def largest_factor(n):
  if n <= 1:
    return -1
  while True:
    f = find_factor(n)
    if f == n:
      return n
    n = n / f;

def main():
  print str(largest_factor(600851475143))

if __name__ == "__main__":
  main()
