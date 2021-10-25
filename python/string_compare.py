#!/usr/bin/python3

input_string = input('Type your text below \n').strip()  # user_list = input_string.split()
lo_input_string = input_string.lower()
if lo_input_string == "python":
    print('Python - лучший язык программирования')
elif lo_input_string == "bash":
    print('Bash - лучший язык программирования')
else:
    print('Не удалось распознать строку')

# print(lo_input_string)
