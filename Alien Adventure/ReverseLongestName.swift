//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        var myMax = 0
        for i in 0..<inventory.count{
            if(inventory[i].name.characters.count > inventory[myMax].name.characters.count){
                myMax = i
            }
    
            
        }
        //print (inventory)
        if (inventory == []){
            return ""
        }
        let reversedName = String(inventory[myMax].name.characters.reverse())
        return reversedName
    
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"