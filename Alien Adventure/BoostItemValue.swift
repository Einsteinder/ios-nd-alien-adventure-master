//
//  BoostItemValue.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func boostItemValue(inventory: [UDItem]) -> [UDItem] {
        var list = inventory.map({$0.baseValue + 100})
        var UDItemList = [UDItem]()
        for item in inventory{
            UDItemList.append(item)
        }
        for i in 0..<UDItemList.count{
            UDItemList[i].baseValue = list[i]
        }
        return UDItemList
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"