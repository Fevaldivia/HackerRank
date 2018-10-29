//: Playground - noun: a place where people can play
// Objective
// In this challenge, you'll work with arithmetic operators. Check out the Tutorial tab for learning materials and an instructional video!

// Task
// Given the meal price (base cost of a meal), tip percent (the percentage of the meal price being added as tip), and tax percent (the percentage of the meal price being added as tax) for a meal, find and print the meal's total cost.

//    Note: Be sure to use precise values for your calculations, or you may end up with an incorrectly rounded result!

import Foundation

// Complete the solve function below.
func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
    var tipResult = (meal_cost * Double(tip_percent)) / 100
    var taxResult = (meal_cost * Double(tax_percent)) / 100
    var result = meal_cost + tipResult + taxResult
    var receipt = Int(result.rounded(.toNearestOrAwayFromZero))
    
    print(receipt)
    
}

guard let meal_cost = Double((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let tip_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let tax_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

solve(meal_cost: meal_cost, tip_percent: tip_percent, tax_percent: tax_percent)
