//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
  
    
    func policingItems(inventory: [UDItem], policingFilter: UDItem throws -> Void) -> [UDPolicingError:Int] {
        var errorDic = [UDPolicingError.NameContainsLaser:0,UDPolicingError.ItemFromCunia:0,UDPolicingError.ValueLessThan10:0]
        var countNameContainError = 0
        var countItemFromError = 0
        var countValueLessError = 0
        
        for item in inventory{
            do{
                try policingFilter(item)
                
            } catch UDPolicingError.NameContainsLaser {
                countNameContainError += 1
                errorDic.updateValue(countNameContainError, forKey: UDPolicingError.NameContainsLaser)
            } catch UDPolicingError.ItemFromCunia {
                countItemFromError += 1
                errorDic.updateValue(countItemFromError, forKey: UDPolicingError.ItemFromCunia)
            } catch UDPolicingError.ValueLessThan10 {
                countValueLessError += 1
                errorDic.updateValue(countValueLessError, forKey: UDPolicingError.ValueLessThan10)
            } catch {
                print ("OtherError")
            }
        }
        
        return errorDic
    }    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"