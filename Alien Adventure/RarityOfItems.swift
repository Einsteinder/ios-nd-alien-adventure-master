//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var itemRarityDic:[UDItemRarity:Int]
            itemRarityDic = [.Common :0, .Uncommon:0,.Rare:0,.Legendary:0]
        var commonValue = 0
        var uncommonValue = 0
        var rareValue = 0
        var legendaryValue = 0
        for item in inventory{
            if item.rarity.hashValue == 0 {
                commonValue += 1
                itemRarityDic.updateValue(commonValue, forKey: .Common)
            }
            if item.rarity.hashValue == 1 {
                uncommonValue += 1
                itemRarityDic.updateValue(uncommonValue, forKey: .Uncommon)
            }
            if item.rarity.hashValue == 2 {
                rareValue += 1
                itemRarityDic.updateValue(rareValue, forKey: .Rare)
            }
            if item.rarity.hashValue == 3 {
                legendaryValue += 1
                itemRarityDic.updateValue(legendaryValue, forKey: .Legendary)
            }
        
        }
        return itemRarityDic
            
        }
    
    }


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"