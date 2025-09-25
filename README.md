# Dart Score Calculator

A simple console-based score calculation program written in Dart that processes game data and calculates the final score based on specific rules.

## Description

This program takes three lines of input:
1. **Line 1**: Two integers `[n, initial_score]` where `n` is the number of challenges and `initial_score` is the starting score
2. **Line 2**: `n` integers representing the required scores for each challenge
3. **Line 3**: `n` integers representing the reward points for completing each challenge

The program calculates the final score by attempting challenges in ascending order of difficulty. If the current score is greater than or equal to the required score for a challenge, the player completes it and gains the corresponding reward points.

## Algorithm

1. Start with the initial score from input1[1]
2. Sort both the required scores (input2) and rewards (input3) in ascending order
3. For each challenge (from easiest to hardest):
   - If current score ≥ required score: add the reward to current score
   - Otherwise: skip the challenge
4. Output the final score

## Examples

### Example 1
```
Input:
4 2
8 9 3 2
5 4 1 3

Process:
- Initial score: 2
- Sorted requirements: [2, 3, 8, 9]
- Sorted rewards: [3, 1, 5, 4]
- Challenge 1: 2 ≥ 2 ✓ → Score: 2 + 3 = 5
- Challenge 2: 5 ≥ 3 ✓ → Score: 5 + 1 = 6
- Challenge 3: 6 < 8 ✗ → Score remains 6
- Challenge 4: 6 < 9 ✗ → Score remains 6

Output: 6
```

### Example 2
```
Input:
5 3
8 4 5 6 7
9 8 7 5 6

Output: 3
```

### Example 3
```
Input:
5 9
2 3 6 7 8
3 4 2 2 3

Output: 23
```

## Requirements

- Dart SDK 2.12.0 or higher

## Installation

1. Make sure you have Dart installed on your system. If not, download it from [dart.dev](https://dart.dev/get-dart)

2. Clone this repository:
```bash
git clone <your-repository-url>
cd <repository-name>
```

## Usage

### Running the Program

```bash
dart run main.dart
```

### Input Format

The program will prompt for three lines of input:

1. **Line 1**: `n initial_score` (space-separated integers)
   - `n`: Number of challenges
   - `initial_score`: Starting score

2. **Line 2**: `n` space-separated integers representing required scores for each challenge

3. **Line 3**: `n` space-separated integers representing reward points for each challenge

### Example Run

```
$ dart run main.dart
input line 1 : 
4 2
input line 2 : 
8 9 3 2
input line 3 : 
5 4 1 3
total score : 2, input2 : 2
total score : 5, input2 : 3
6
```

## Author

[Syams Rachman] - [syams.rachman@gmail.com]

---

**Note**: This appears to be a solution for a competitive programming problem or coding challenge. The algorithm efficiently solves the problem by sorting challenges by difficulty and greedily attempting them from easiest to hardest.