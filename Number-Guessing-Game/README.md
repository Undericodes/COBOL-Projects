# Number Guessing Game

This project implements a simple number guessing game using COBOL. The game generates a random number between 1 and 100, and the user must guess the number.

## Features

- Generates a random number between 1 and 100.
- Prompts the user to guess the number.
- Provides feedback on whether the guess is too high, too low, or correct.
- Allows the user to keep guessing until they find the correct number.

## Files

- `Guessing-Game.cbl`: The main COBOL source code for the guessing game.

## Running the Program

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/YOUR_USERNAME/cobol-projects.git
    cd cobol-projects/Number-Guessing-Game
    ```

2. **Compile the COBOL Program:**

    ```bash
    cobc -x Guessing-Game.cbl -o Guessing-Game
    ```

3. **Run the Compiled Program:**

    ```bash
    ./Guessing-Game
    ```

4. **Play the Game:**

    - Follow the prompts to enter your guesses.
    - The program will provide feedback on each guess.
    - Continue guessing until you find the correct number.

## Example

Enter a number between 1 and 100:
50
Too low! Try again:
75
Too high! Try again:
62
Correct! You guessed the number in 3 attempts.
