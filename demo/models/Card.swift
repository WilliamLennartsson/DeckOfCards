//
//  Card.swift
//  demo
//
//  Created by William Lennartsson on 2019-04-05.
//  Copyright © 2019 William Lennartsson. All rights reserved.
//

import Foundation

struct Card {
    let suite: String
    let rank: String
    
    func toString () -> String {
        return "\(suite) of \(rank)"
    }
}
