#!/usr/bin/python3
import shush
import time

m1 = shush.Motor(0)
m1.enable_motor()
m2 = shush.Motor(1)
m2.enable_motor()


# This function takes the target position as an input.
# It prints the current position and the iteration.
# The motor spins until it gets to the target position
# before allowing the next command.
def spin(motor, target):
    motor.go_to(target)

    i = 0

    while motor.get_position() != target:
        print(motor.get_position())
        print(i)
        i += 1


while True:
    # Spin 5 rotations from start
    spin(m1, 256000)

    time.sleep(0.5)
    # Spin back 5 rotations to starting point
    spin(m1, 0)

    time.sleep(0.5)
    # Spin 5 rotations from start
    spin(m2, 256000)

    time.sleep(0.5)
    # Spin back 5 rotations to starting point
    spin(m2, 0)

    time.sleep(0.5)
