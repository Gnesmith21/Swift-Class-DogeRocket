//
//  ViewController.swift
//  Doge-ToTheMoon
//
//  Created by Gavin Nesmith on 5/13/21.
//  Copyright © 2021 Gavin Nesmith. All rights reserved.
//  basic app for class :D
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var Background: UIImageView!
    
    @IBOutlet weak var PowerBTN: UIButton!
    
    @IBOutlet weak var CloudContainer: UIView!
    
    @IBOutlet weak var Rocket: UIImageView!
    
    @IBOutlet weak var Dogelbl: UILabel!
    
    @IBOutlet weak var Tothemoonlbl: UILabel!
    
    var player: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    }


    @IBAction func PowerBtnPressed(_ sender: Any) {
        CloudContainer.isHidden = false
        PowerBTN.isHidden = true
        Background.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.Rocket.frame = CGRect(x: 0, y: 20, width: 414, height: 818)
        }) { (finished) in
            self.CloudContainer.isHidden = true
            self.Background.isHidden = false
            self.PowerBTN.isHidden = false
        }
        
    }
}

