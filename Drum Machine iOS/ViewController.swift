//
//  ViewController.swift
//  Drum Machine iOS
//
//  Created by Ash Oldham on 15/03/2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        sender.backgroundColor = UIColor.orange
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
            sender.backgroundColor = UIColor.systemBlue
        }
        
        let soundName = sender.currentTitle
        print(soundName!)
        playSound(soundName: soundName!)
    }
    
    func playSound(soundName: String!) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    

}

