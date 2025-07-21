# 50%-duty-cycle-PWM-generator

💡 Objective
We are creating a PWM (Pulse Width Modulation) signal with a 50% duty cycle, using:

A simple counter driven by a clock.

Conditional logic to decide when the pwm_out signal should be 1 (ON) or 0 (OFF).

A testbench to simulate and print values for clk and pwm_out.

--We declare a 4-bit counter (0 to 15), driven by the clock.

The counter is used to keep track of how many clock cycles have passed.

Every time the clock goes high, the counter increments.

For the first 8 cycles (0 to 7), the output is HIGH.

For the next 8 cycles (8 to 15), the output is LOW.

This repeats again and again every 16 cycles → 50% ON, 50% OFF = 50% duty cycle.

Visualisation:
clk:      _/‾‾\_/‾‾\_/‾‾\_/‾‾\_/‾‾\_/‾‾\_/‾‾\_/‾‾\_/‾‾\_/‾‾\
counter:   0   1   2   3   4   5   6   7   8   9  10 ...
pwm_out:  _______________            ____________________
                 1's                       0's
