//
//  FirstViewController.swift
//  KigiEvanChristy
//
//  Created by Evan Elkin on 10/10/16.
//  Copyright © 2016 Evan Elkin and Christy Smith. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var thePlayersStack: UIStackView!
    
    var names: [String]
    
    var players: [UITextField] = []
    
    var count = 1
    
    var yPos: CGFloat = 0
    
    let spacing: CGFloat = 1
    
    let maxPlayers: CGFloat = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //creation of players is done programatically, not hard-coded
    @IBAction func addNewPlayer(_ sender: UIButton) {
        
        let textFieldHeight = thePlayersStack.frame.height / maxPlayers
        
        let player = UITextField(frame: CGRect(x: 0, y: yPos,
            width: thePlayersStack.frame.width, height: textFieldHeight))
        
        
        //player.backgroundColor =
        player.placeholder = "Player \(count)"
        //player.font =
        player.minimumFontSize = 16
        //player.textColor =
        player.textAlignment = .center
        
        
        thePlayersStack.addSubview(player)
        
        players.append(player)
        
        count += 1
        yPos += textFieldHeight + spacing
    }

}

