#!/usr/bin/python3

from ext_modules import inp, bubbleSort


def seven_print(s_arr):
    for i in range(len(s_arr)):
        if s_arr[i] > 7:
            print("% d" % s_arr[i])


if __name__ == '__main__':
    arr = inp()
    print("elements greater 7 are: ")
    seven_print(arr)

    print("Sorted array is:")
    bubbleSort(arr)
    for i in range(len(arr)):
        print("% d" % arr[i])
