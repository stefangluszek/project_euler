def fib_sum(n):
  if (n <= 0):
    return -1

  a = 1
  b = 1
  total = 0;

  while b < n:
    b += a
    if b % 2 == 0:
      total += b
    a = b - a

  return total

def main(n):
  print str(fib_sum(int(n))) 

if __name__ == "__main__":
  from sys import argv
  main(argv[1])
