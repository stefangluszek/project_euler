import math

def reverse_int(n):
  res = 0
  while n > 0:
    res = 10 * res + n % 10
    n /= 10
  return res

def is_palindrome_int(n):
  return reverse_int(n) == n

# All palindromes are divisible by 11
# I didn't find this out myself, once I solved the
# problem 4 in pike this idea becae available in the
# poblem overview:
# P = 100000x + 10000y + 1000z + 100z + 10y + x
# P = 100001x + 1001y + 1100z
# P = 11(9091x + 910y + 100z)
def largest_palindrome(digits):
  limit = (10 ** digits) - 1
  limit *= limit
  # find the largest number that divides by 11
  for i in range(limit, 0, -1):
    if i % 11 == 0:
      limit = i
      break
  while is_palindrome_int(limit) == False:
    limit -= 11
  return limit

def main():
  print str(largest_palindrome(3))

if __name__ == "__main__":
  main()
