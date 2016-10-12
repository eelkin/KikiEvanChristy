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
    
    var names: [String] = []
    
    var players: [UITextField] = []
    
    var buttons: [UIButton] = []
    
    var count = 1
    
    var yPos: CGFloat = 0
    
    let spacing: CGFloat = 1
    
    let maxPlayers: CGFloat = 5
    
    let playerMax: Int = 5 //because you can't compare an Int to CGFLoat
    
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
        
        if players.count < playerMax {
            let player = UITextField(frame: CGRect(x: 0, y: yPos,
                width: thePlayersStack.frame.width, height: textFieldHeight))
            
            
            //player.backgroundColor =
            player.placeholder = "Player \(count)"
            //player.font =
            player.minimumFontSize = 16
            //player.textColor =
            player.textAlignment = .center
            
            let button = UIButton(frame: CGRect(x:player.frame.width, y: yPos,
                width: 50, height: textFieldHeight))
            
            button.setTitle("Add", for: .normal)
            button.setTitleColor(.blue, for: .normal)
            button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            
            thePlayersStack.addSubview(player)
            thePlayersStack.addSubview(button)
        
            players.append(player)
            buttons.append(button)
        
            count += 1
            yPos += textFieldHeight + spacing
        }
    }
    
    func buttonAction(sender: UIButton!) {
        sender.backgroundColor = .green
        print("Hello")
        
        /*
         
        */
    }

}

