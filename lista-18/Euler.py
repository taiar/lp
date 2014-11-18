import collections, itertools, timeit
def problem62():
    cubes = collections.defaultdict(list)
    for i in itertools.count(1):
        c = cubes[''.join(sorted(str(i ** 3)))]
        c.append(i)
        if len(c) == 5:
            return c

print problem62()
#timeit.timeit("problem62()", "from __main__ import problem62", number=1)