//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        var itemList = [UDItem]()
        for item in inventory{
            if let hDate = item.historicalData["PlanetOfOrigin"] as? String {
                if hDate == planet{
                    itemList.append(item)
                    
                }
            }else{
                return nil
            }
        }
        
        var age = 0
        if itemList == [] {
            return nil
        }
        var longestItem:UDItem = itemList[0]
            for item in itemList{
                if let cabonAge = item.historicalData["CarbonAge"] as? Int {
                    if cabonAge > age {
                        age = cabonAge
                        longestItem = item
                    }
                }
                
            }
        return longestItem
     
    }
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"