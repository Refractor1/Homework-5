# Part 1: Reproduce the Bug

## Task 1: Download the Quartus Prime archive here: hw5.qar You are starting with this Quartus Prime project. It is a a .qar archive file that can be directly imported into Quartus Prime.

## Task 2: Make sure the project compiles. Compile the project and program the FPGA. What happens?

**Nothing happens at all.**

## Task 3: Run test_PC using vsim in the WHiDL container. Make sure you can reproduce the bug.

**The test fails consistently.**

## Task 4: Convert the machine code of the program LED_ROM.vhdl back to Hack assembly. What should the program do if the CPU is working correctly?

**The program should light up a single LED, specifically LED0**

# Part 2: Debug and Repair

## First, create a formal test case that demonstrates the CPU malfunction. This will help our QA team verify the fix and prevent regression in future updates. Your test should fail with the current implementation.

**Problem identified as the 16bit adder, and the test file is test_Adder.vhdl**

## Once you've documented the issue with your test, implement the necessary fixes to get the CPU working correctly. Remember to include a detailed explanation of your solution - we'll need this for our engineering documentation.

**The issue was the output indices of the 16bit adder were reversed, producing backwards outputs from the addition.**

# Part 3: The Demo Display

## Great work on fixing that CPU bug! Now, RetroTech's marketing team needs a flashy demo for next week's university showcase. They want something that clearly demonstrates the CPU's capabilities to the visiting professors and students.

## Your task: Create an eye-catching binary counter display using our development board's 10 LEDs. The marketing team specifically requested that the counter should tick up once every 1/10th of a second - "Not too fast to miss, but not so slow it puts people to sleep," as they put it.

## Technical Requirements:

##    Use all 10 LEDs to display the current counter value in binary
##    Ensure the counter increments exactly every 1/10th of a second
##    The display should run continuously during the demo

## Engineering Notes:

##    Our CPU runs at 50 MHz (one instruction per clock cycle)
##    You'll need to work within the constraints of our 16-bit registers
##    Hint: Consider using nested loops for precise timing control

**Demo completed, the delay loops take precisely 5 million clock cycles to resolve. So the iterator will take 5000008 clock cycles to increase by 1.**