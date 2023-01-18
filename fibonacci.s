ADDI x2, x0, 10          # find fibonacci of last value
ADDI x1, x0, 1           # decrement value

fib:                     # recursive fibonacci function
    beq x2, 0, zeroLabel # handles if the passed value is 0
    beq x2, 1, oneLabel  # handles if the passed value is 1

    sub x2, x2, 1        # decrements the fib value
    sub sp, 4            # adds space to the stack
    sw x2, 4(sp)         # adds the value to the stack

    jal fib              # recursion

    sub sp, 4
    sw x2, 4(sp)

    lw x2, -8(sp)

zeroLabel:               # action performed when entered value is 0

oneLabel:                # action performed when entered value is 1