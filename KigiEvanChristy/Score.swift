//
//  Score.swift
//  KigiEvanChristy
//
//  Created by Evan Elkin on 10/11/16.
//  Copyright © 2016 Evan Elkin and Christy Smith. All rights reserved.
//

import Foundation
import UIKit


class Player {
    
    var score: Int
    var name: String
    
    init(_ newName: String){
        name = newName
        score = 0
    }
    func getName() -> String {
        return name
    }
    func changeScore(_ newScore: Int){
        score = newScore
    }
    
}

class AllPlayers {
    
    var players: [Player] = []
    
    init(_ names:[String]){
        for i in 0..<names.count {
        players.append(Player(names[i]))
    }
    
    
    func getPlayer (_ position: Int) -> Player {
        return players[position]
    }
   
    
    
}
}
