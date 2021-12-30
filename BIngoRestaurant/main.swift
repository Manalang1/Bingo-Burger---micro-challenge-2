//
//  main.swift
//  BIngoRestaurant
//
//  Created by Manal Alangari on 26/12/2021.
//

import Foundation

var nextChoice = true
var orderList = [String]()
while nextChoice == true{
    print("-----------------------------------")
    print("Hello, Welcome to BINGO Burgers!")
    print("-----------------------------------")
    print("1. Dispaly menu")
    print("2. Ready to order")
    print("3. Display the total price")
    print("4. Display menu items calories")
    print("5. Exit")
    print("-----------------------------------")
    print("Enter your choice (1-5)")
    let userChoice = readLine()
    switch userChoice {
    case "1":
        print("          🍔 Menu 🍔")
        print("--------------------------")
        print("1. beef burger")
        print("2. krispy chiken burger")
        print("3. french frise")
        print("4. onion rings")
        print("5. soft drinks")
        print("6. apple pie")
        print("")
        fallthrough
    case "2":
        var nextOrder = true
        while nextOrder==true{
            print("What do you want to order🍴, enter choice (1-6)")
            let userOrder = readLine()
            switch userOrder {
            case "1":
                print("beef burger")
                orderList.append("beef burger")
            case "2":
                print("krispy chiken burger")
                orderList.append("krispy chiken burger")
            case "3":
                print("french frise")
                orderList.append("french frise")
            case "4":
                print("onion rings")
                orderList.append("onion rings")
            case "5":
                print("soft drinks")
                orderList.append("soft drinks")
            case "6":
                print("apple pie")
                orderList.append("apple pie")
            default:
                print("Item not in menu")
            }
            print("Do you want another item? yes/no")
            let anotherItem = readLine()
            if anotherItem == "yes"{
                nextOrder=true
            }
            else {
                nextOrder=false
                print("Thank you, we are preparing your food😋 and here is your order:")
                print("")
                print(orderList)
                print("")
            }
        }
        
    case "3":
        displayTotal()
    case "4":
        struct calories {
            var itemName:String
            var itemCalories:Int
        }
        let item1 = calories(itemName: "beef burger", itemCalories: 250)
        let item2 = calories(itemName: "krispy chiken burger", itemCalories: 210)
        let item3 = calories(itemName: "french frise", itemCalories: 312)
        let item4 = calories(itemName: "onion rings", itemCalories: 411)
        let item5 = calories(itemName: "soft drinks", itemCalories: 130)
        let item6 = calories(itemName: "apple pie", itemCalories: 75)

        print("🍔 \(item1.itemName) contains: \(item1.itemCalories) Cal")
        print("🍔 \(item2.itemName) contains: \(item1.itemCalories) Cal")
        print("🍟 \(item3.itemName) contains: \(item1.itemCalories) Cal")
        print("🧅 \(item4.itemName) contains: \(item1.itemCalories) Cal")
        print("🥤 \(item5.itemName) contains: \(item1.itemCalories) Cal")
        print("🥧 \(item6.itemName) contains: \(item1.itemCalories) Cal")
        print("")
    case "5":
        print("")
        print("Goodbye, have a nice day 👍🏼")
        print("")
        
    default:
        print("Choice must be from 1-5")
    }
    
    print("Do you want another choice? yes/no")
    let anotherChoice = readLine()
    if anotherChoice == "yes"{
        nextChoice=true
    }
    else {
        nextChoice=false
        print("Enjoy your meal🤍")
    }
    
}


func displayTotal()
{
    
    let itemsPrice = ["beef burger": 25, "krispy chiken burger": 30, "french frise": 10, "onion rings": 15, "soft drinks": 8, "apple pie": 12]
    var totalPrice = 0
     for item in orderList{
         for orders in itemsPrice.keys {
             if item == orders {
                 totalPrice += itemsPrice[orders]!
               
             }
         }
     }
     
     print("""
The total price for your order is:
 \(totalPrice) SAR
""")
}







