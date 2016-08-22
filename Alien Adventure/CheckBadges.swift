//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        var badgeRequestType = [UDRequestType]()
        for item in badges{
            badgeRequestType.append(item.requestType)
        }
        for i in 0..<requestTypes.count{
            if !badgeRequestType.contains(requestTypes[i]){
                return false
                
            }
        }
      
        return true
    }
    
}
