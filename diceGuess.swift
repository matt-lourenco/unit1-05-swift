//
//  diceGuess.swift
//  This program asks you to guess the number that was rolled on a simulated
//     die.
//
//  Created by Matthew Lourenco on 12/02/18.
//  Copyright © 2018 MTHS. All rights reserved.
//

import Foundation

var numberOfGuesses: Int = 1
var input: String?
var guess: Int = 0

print("Guess the number that was rolled on the dice:")

while true {
	//Get user input and convert to integer
	input = readLine(strippingNewline: true)
	if let check = Int(input!), check != nil {
		guess = Int(input!)!
		break
	}
}

srand(UInt32(time(nil)))
var roll: Int = Int(random()%(6) + 1)

//Loop until guess is correct
while guess != roll {
	print("Wrong. Guess again:")
    input = readLine(strippingNewline: true)
	if let check = Int(input!), check != nil {
		guess = Int(input!)!
		numberOfGuesses = numberOfGuesses + 1
	} else {
		print("Please enter a number")
	}
}

if numberOfGuesses == 1 {
	print("Congrats you got it! The number was \(roll)! It took you \(numberOfGuesses) guess.")
} else {
	print("Congrats you got it! The number was \(roll)! It took you \(numberOfGuesses) guesses.")
}
