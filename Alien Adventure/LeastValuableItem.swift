//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        if (inventory == []) {
            return nil
        }
        var indexOfMin = 0
        var myMin = inventory[0].baseValue
        for i in 0..<inventory.count{
            if (inventory[i].baseValue < myMin){
                myMin = inventory[i].baseValue
                indexOfMin = i
            }
        }
        return inventory[indexOfMin]
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"