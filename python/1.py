import sys

limit = int(sys.argv[1])

total = 0

for i in range(3, limit, 3):
  total += i

for i in range(5, limit, 5):
  if (i % 3 != 0):
    total += i

print str(total) 
