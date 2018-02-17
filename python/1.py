def sum_multiples_3_5(limit):
  total = 0

  for i in range(3, limit, 3):
    total += i

  for i in range(5, limit, 5):
    if (i % 3 != 0):
      total += i

  return total


def main():
  print str(sum_multiples_3_5(1000))

if __name__ == "__main__":
  main()
