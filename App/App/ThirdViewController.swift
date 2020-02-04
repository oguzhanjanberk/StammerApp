//
//  ThirdViewController.swift
//  App
//
//  Created by Oguzhan Janberk on 06/02/2019.
//  Copyright © 2019 Oguzhan Janberk. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit


class ThirdViewController: UIViewController {

    // adds AV audio
     var musicEffect: AVAudioPlayer = AVAudioPlayer()
    
   override func viewDidLoad() {
        super.viewDidLoad()

            // Do any additional setup after loading the view.
    
        //finds the music file from path
        let musicFile = Bundle.main.path(forResource: "Surah As - Saffat By Ameer Shamim ᴴᴰ", ofType: ".mp3")
        
        do {
            try musicEffect = AVAudioPlayer(contentsOf: URL( fileURLWithPath: musicFile!))
        }
        
        catch {
            print(error)
        }
    }
    
    
  
    //plays video that is from path

    @IBAction func SpeechVideo(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "stutter", ofType: "mov")
        {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlay = AVPlayerViewController()
            videoPlay.player = video
            
            present(videoPlay, animated: true, completion:
                {
                    video.play()
            })
            
        }
    }
    
    
  
    
    
//plays the music from button
    @IBAction func Play(_ sender: Any) {
        musicEffect.play()
    }
    
    //stops the music from button
    @IBAction func Stop(_ sender: Any) {
        musicEffect.stop()
    }

    
    
    // link to a website
    @IBAction func website(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https:www.freefromstutter.com/blog/stuttering-3-practical-tips-how-to-remove-speech-impediments")! as URL, options: [:], completionHandler:nil)
    }
    
    
}





