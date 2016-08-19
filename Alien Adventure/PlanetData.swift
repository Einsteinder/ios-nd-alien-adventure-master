//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        let planetData = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "json")!
        let rawDataJSON = NSData(contentsOfURL: planetData)!
        
        var planetDictionary: [[String:AnyObject]]
        do {
            planetDictionary = try! NSJSONSerialization.JSONObjectWithData(rawDataJSON, options: NSJSONReadingOptions()) as! [[String:AnyObject]]
        }
        var maxPlanet = ""
        var maxPoint = 0
        for planet in planetDictionary {
            if let name = planet["Name"] as?String {
                if let CommonItemsDetected = planet["CommonItemsDetected"] as?Int {
                    if let UncommonItemsDetected = planet["UncommonItemsDetected"] as?Int{
                        if let RareItemsDetected = planet["RareItemsDetected"] as?Int {
                            if let LegendaryItemsDetected = planet["LegendaryItemsDetected"] as?Int{
                                let point = (LegendaryItemsDetected * 4) + (RareItemsDetected * 3) + (UncommonItemsDetected * 2) + (CommonItemsDetected * 1)
                                if point > maxPoint {
                                    maxPoint = point
                                    maxPlanet = name
                                }
                                
                            }
                        }
                    }
                    
                }
            }
        }


        return maxPlanet
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"