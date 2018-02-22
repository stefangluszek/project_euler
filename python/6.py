def sum_sq_diff(n):
  # sum of squares: Sn = (n * (n + 1) * (2n +1)) / 6
  # http://mathforum.org/library/drmath/view/56920.html
  sum_of_squares = (n * (n + 1) * (2 * n + 1)) / 6;
  square_of_sum = n * (n +1) / 2;
  return pow(square_of_sum, 2) - sum_of_squares

def main():
  print str(sum_sq_diff(100))

if __name__ == "__main__":
  main()
