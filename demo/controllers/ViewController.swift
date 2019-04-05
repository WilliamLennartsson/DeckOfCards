//
//  ViewController.swift
//  demo
//
//  Created by William Lennartsson on 2019-04-05.
//  Copyright © 2019 William Lennartsson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var deck = Deck()
    
    let cardButton: UIButton = {
        let button = UIButton(frame: .zero)
        
        button.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI(){
        let size = view.frame.size
        let width = size.width
        let height = size.height
        
        let frame = CGRect(x: width / 2 - 50, y: height / 2 - 50, width: 100, height: 100)
        cardButton.frame = frame
        cardButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        view.addSubview(cardButton)
        
    }
    
    @objc func buttonPressed(_ sender: UIButton){
        print("hallej")
        let newCard = deck.drawTopCard()
        cardButton.setTitle(newCard.toString(), for: .normal)
    }

    

}

