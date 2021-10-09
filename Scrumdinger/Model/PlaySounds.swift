//
//  PlaySounds.swift
//  Scrumdinger
//
//  Created by MANAS VIJAYWARGIYA on 25/09/21.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSounds(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Couldn't find the file")
        }
    }
}
