//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func solveTrivia(capitalOfStates : [String:String]) -> String {
        var capital = ""
        var count = 0
        for (key,value) in capitalOfStates {
            let state = key.lowercaseString
            let capitals = value.lowercaseString
            let charactersOfState = Array(state.characters)
            let  charactersaOfCapital = Array(capitals.characters)
            
            for character in charactersaOfCapital{
                if !(charactersOfState.contains(character)){
                    count += 1
                }
            }
            if (count == charactersaOfCapital.count) {
                capital = key
            }
            count = 0
        }
        print(capital)
        return capital
        }

}