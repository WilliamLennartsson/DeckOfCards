//
//  Deck.swift
//  demo
//
//  Created by William Lennartsson on 2019-04-05.
//  Copyright © 2019 William Lennartsson. All rights reserved.
//

import Foundation

class Deck {
    var cards = [Card]()
    
    let suites = ["🐠", "🐳", "🐊", "🐝"]
    let ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king", "A"]
    
    init() {
        newDeck()
    }
    
    func newDeck(){
        for suite in suites {
            for rank in ranks {
                let card = Card(suite: suite, rank: rank)
                print(card)
                cards.append(card)
            }
        }
    }
    
    func drawTopCard() -> Card{
        let topCard = cards.removeFirst()
        return topCard
    }
    
}
