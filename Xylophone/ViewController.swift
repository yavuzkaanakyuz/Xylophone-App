//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func cPressed(_ sender: UIButton) {

        playSound(soundFile: "C")
        
        }
    
    @IBAction func dPressed(_ sender: UIButton) {
        playSound(soundFile: "D")
    }
    
    
    @IBAction func ePressed(_ sender: UIButton) {
        playSound(soundFile: "E")
    }
    
    @IBAction func fPressed(_ sender: UIButton) {
        playSound(soundFile: "F")
    }
    
    
    @IBAction func gPressed(_ sender: UIButton) {
        playSound(soundFile: "G")
    }
    
    
    @IBAction func aPressed(_ sender: UIButton) {
        playSound(soundFile: "A")
    }
    
    
    @IBAction func bPressed(_ sender: UIButton) {
        playSound(soundFile: "B")
    }
    
    
    
    
    
    func playSound(soundFile: String) {
            let url = Bundle.main.url(forResource: soundFile, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player?.play()
                    
        }

}

