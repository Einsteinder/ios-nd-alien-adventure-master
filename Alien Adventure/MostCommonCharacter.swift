//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        if inventory == []{
            return nil
        }
        var characterDic = ["a":0,"b":0,"c":0,"d":0,"e":0,"f":0,"g":0,"h":0,"i":0,"j":0,"k":0,"l":0,"m":0,"n":0,"o":0,"p":0,"q":0,"r":0,"s":0,"t":0,"u":0,"v":0,"w":0,"x":0,"y":0,"z":0]
        for item in inventory{
            for character in item.name.lowercaseString.characters{
                let count = characterDic[String(character)]! + 1
                characterDic.updateValue(count, forKey: String(character))
            }
        }
        var sortedKeys = Array(characterDic.keys).sort({characterDic[$0]>characterDic[$1]})
        return Character(sortedKeys[0])

    }
}
