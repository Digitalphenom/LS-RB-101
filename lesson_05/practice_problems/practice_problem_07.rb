a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a


# initially both the arr and a referenced the integer 2, after 2 was incremented by 2 a new object was assigned to the array which caused the local variable arr to no longer contain a reference to the integer 2. This means that `a` still reference 2. so when we decrement the final value in the nested array, we are decrementing by 2. # [4, [3, 8]]