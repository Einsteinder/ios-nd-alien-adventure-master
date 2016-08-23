//
//  RemoveDuplicates.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func removeDuplicates(inventory: [UDItem]) -> [UDItem] {
        var list = [UDItem]()
        list.append(inventory[0])
        for i in 1..<inventory.count {
            if list.contains(inventory[i]){
                continue
            }else{
                list.append(inventory[i])
            }
           
        }
        return list
    }
    
}
