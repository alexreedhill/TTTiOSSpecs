//
//  Menu.swift
//  TTTiOSSpecs
//
//  Created by Alex Hill on 7/31/14.
//  Copyright (c) 2014 Alex Hill. All rights reserved.
//

import Foundation

class Menu : Equatable {
    var character : String
    var aiType : String
    var firstPlayer : String
    
    public init(character : String, aiType : String, firstPlayer : String) {
        self.character = character
        self.aiType = aiType
        self.firstPlayer = firstPlayer
    }

    
    struct Static {
        static var instance: Menu?
    }
    
    class var sharedInstance: Menu {
    
    if !Static.instance {
        Static.instance = Menu(character: "X", aiType : "minimax", firstPlayer : "human")
    }
        return Static.instance!
    }
}

func == (lhs: Menu, rhs: Menu) -> Bool {
    return lhs === rhs
}