DIGITS = 13

def largest_product(d):
  digits = map(int, list(d))

  if len(digits) == DIGITS:
    return reduce(lambda x, y: x * y, digits)

  last_product = 0
  max_product = 0

  for i in range(0, len(digits) - DIGITS + 1):
    j = i + DIGITS - 1
    if last_product == 0:
      last_product = reduce(lambda x, y: x * y, digits[i:j + 1])
    else:
      last_product = last_product / digits[i - 1] * digits[j]
    max_product = max(max_product, last_product)
  return max_product

def largest_product_split_by_0(d):
  parts = d.split('0')
  largest = 0
  for p in parts:
    if len(p) >= DIGITS:
      largest = max(largest, largest_product(p))
  return largest

def main():
  with open('./data/8.txt', 'r') as f:
    data = f.read()
    data = data.strip()
    data = data.replace('\n', '')
    print str(largest_product(data))
    print str(largest_product_split_by_0(data))

if __name__ == '__main__':
  main()
