//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")!
        let itemArray = NSArray(contentsOfURL: dataFileURL)!
        var itemIdList: [Int]=[]
        for item in itemArray{
            if let name = item["Name"] as?String {
                if let itemId = item["ItemID"] as?Int{
                    if name.lowercaseString.containsString("laser"){
                        itemIdList.append(itemId)
                        
                    }else{
                        if let dataDic = item["HistoricalData"] as?[String:Int]{
                            if dataDic["CarbonAge"] < 30{
                                itemIdList.append(itemId)
                            }
                        }
                    }
                }
            }
        }
        return itemIdList
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"