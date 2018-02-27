import math

SUM_TO_FIND = 1000

def pythagorean_triple(m, n):
  a = pow(m, 2) - pow(n, 2)
  b = 2 * m * n
  c = pow(m, 2) + pow(n, 2)

  return [a, b, c]

def main():
  limit = int(math.floor(math.sqrt(SUM_TO_FIND)))
  for m in range(limit, 1, -1):
    for n in range(m - 1, 0, -1):
      if sum(pythagorean_triple(m, n)) == SUM_TO_FIND:
          res = reduce(lambda x, y: x * y, pythagorean_triple(m, n))
          print str(res)
          break


if __name__ == '__main__':
  main()
