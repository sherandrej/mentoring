def bubbleSort(arr):
    n = len(arr)
    # Traverse through all array elements
    for iter in range(n - 1):
        # range(n) also work but outer loop will repeat one time more than needed.
        # Last iter elements are already in place
        for jter in range(0, n - iter - 1):

            # traverse the array from 0 to n-i-1
            # Swap if the element found is greater
            # than the next element
            if arr[jter] > arr[jter + 1]:
                arr[jter], arr[jter + 1] = arr[jter + 1], arr[jter]


def inp():
    # input_string = input('Enter elements of a list separated by space \n')   # user_list = input_string.split()
    user_list = input('Enter elements of a list separated by space \n').split()
    for counter in range(len(user_list)):
        # convert each item to int type
        user_list[counter] = int(user_list[counter])
    return user_list
