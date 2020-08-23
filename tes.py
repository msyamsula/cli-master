from random import randint

capital_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
normal_string = "abcdefghijklmnopqrstuvwxyz"

def integer(min, max):
    number = randint(min, max)
    print(number)
    # print()

def array(n, min, max):
    arr = [ 0 for i in range(n)]
    for i in range(n):
        arr[i] = randint(min,max)

    for i in range(n):
        print(arr[i], end=' ')
    print()

def grid(r,c,min,max):
    single_row = [0 for i in range(c)]
    grid = [ single_row for i in range(r) ]
    for i in range(r):
        for j in range(c):
            grid[i][j] = randint(min, max)
            print(grid[i][j], end=' ')
        print()

def string_capital(n):
    s = ""
    for i in range(n):
        s += chr(randint(65,90))

    print(s)

def string(n):
    s = ""
    for i in range(n):
        s+=chr(randint(97,122))

    print(s)

def string_space(n):
    for i in range(n):
        a = chr(randint(97,122))
        print(a, end=' ')
    print()

def string_space_capital(n):
    for i in range(n):
        a = chr(randint(65,90))
        print(a, end=' ')
    print()

def string_grid_space(r,c,choices=capital_string):
    n = len(choices)
    for i in range(r):
        for j in range(c):
            r = randint(0,n-1)
            print(choices[r], end=' ')
        print()

def string_grid(r,c,choices=capital_string):
    n = len(choices)
    for i in range(r):
        row = ""
        for j in range(c):
            r = randint(0,n-1)
            row += choices[r]
        print(row)

if __name__ == "__main__":
    """ 
        How to use to create:
            1. integer  ----  integer(min, max)
            2. array  ----- array(length, min, max)
            3. 2d integer grid with space ----- grid(row, col, min, max)
            4. capital string ---- string_capital(length)
            5. normal string ----- string(length)
            6. normal string with space  ----- string_space(length)
            7. capital string with space ------ string_space_capital(length)
            8. 2d grid string with space ---- string_grid_space(row, col, choices)
            9. 2d grid string without space ---- string_grid(row, col, choices)
                choices is list of acceptable character, default = capital A-Z
                if grid can only contain X, O use ['O', 'X']
    """
    T = 1
    # print(T)
    for i in range(T):
        n = randint(1,20)
        k = randint(1,5)
        print(n, k)
        for i in range(n):
            print(randint(1,20), randint(0,1), randint(0,1))

        