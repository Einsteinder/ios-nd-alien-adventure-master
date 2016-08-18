//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        var indexListOfS1 = [Int]()
        var indexListOfS2 = [Int]()
        var indexListOfShuffle = [Int]()
        
        
        if (s1 == "" && s2 == "" && shuffle == ""){
            return true
        }
        if ((s1.characters.count + s2.characters.count) != shuffle.characters.count){
           
            return false
        }else{
            for character in s1.characters{
                if (!shuffle.containsString(String(character))){
                    return false
                }
            }
            for character in s2.characters{
                if (!shuffle.containsString(String(character))){
                    return false
                }
            }
            for i in 0 ..< s1.characters.count {
                for j in 0 ..< shuffle.characters.count{
                    if (s1[s1.startIndex.advancedBy(i)] == shuffle[shuffle.startIndex.advancedBy(j)] ){
                        indexListOfS1.append(i)
                        indexListOfShuffle.append(j)
                        
                    }
                }
            }
            for i in 0 ..< indexListOfShuffle.count{
                for j in i+1 ..< indexListOfShuffle.count{
                    if (indexListOfShuffle[i]>indexListOfShuffle[j]){
                        return false
                    }
                }
            }
            var indexListOfShuffle = [Int]()
            
            for i in 0 ..< s2.characters.count {
                for j in 0 ..< shuffle.characters.count{
                    if (s2[s2.startIndex.advancedBy(i)] == shuffle[shuffle.startIndex.advancedBy(j)] ){
                        indexListOfS2.append(i)
                        indexListOfShuffle.append(j)
                        
                    }
                }
            }
            for i in 0 ..< indexListOfShuffle.count{
                for j in i+1 ..< indexListOfShuffle.count{
                    if (indexListOfShuffle[i]>indexListOfShuffle[j]){
                        return false
                    }
                }
            
            }
            
        }
       return true
    }
}
