//
//  StatusMenuController.swift
//  Radio SRF Player
//
//  Created by Stefan Zweifel on 23.10.16.
//  Copyright © 2016 Stefan Zweifel. All rights reserved.
//

import Cocoa
import AVFoundation

class StatusMenuController: NSObject {
    
    @IBOutlet weak var statusMenu: NSMenu!
    
    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    var avPlayer: AVPlayer!
    
    override func awakeFromNib() {
        let icon = NSImage(named: "statusIcon")
        
        icon?.isTemplate = true // best for dark mode
        statusItem.image = icon
        statusItem.menu = statusMenu
 
    }
    
    @IBAction func quitClicked(sender: NSMenuItem) {
        NSApplication.shared().terminate(self)
    }
    
    @IBAction func playRadioSRF1(_ sender: NSMenuItem) {
        avPlayer = AVPlayer.init(url: NSURL(string: "http://stream.srg-ssr.ch/m/drs1/mp3_128")! as URL)
        avPlayer.play()
    }
    
    @IBAction func playRadioSrf2(_ sender: NSMenuItem) {
        avPlayer = AVPlayer.init(url: NSURL(string: "http://stream.srg-ssr.ch/m/drs2/mp3_128")! as URL)
        avPlayer.play()
    }
    
    @IBAction func playRadioSrf3(_ sender: NSMenuItem) {
        avPlayer = AVPlayer.init(url: NSURL(string: "http://stream.srg-ssr.ch/m/drs3/mp3_128")! as URL)
        avPlayer.play()
    }

    
    @IBAction func playRadioSrf4(_ sender: NSMenuItem) {
        avPlayer = AVPlayer.init(url: NSURL(string: "http://stream.srg-ssr.ch/m/drs4news/mp3_128")! as URL)
        avPlayer.play()
    }
    
    @IBAction func playRadioSrfVirus(_ sender: NSMenuItem) {
        avPlayer = AVPlayer.init(url: NSURL(string: "http://stream.srg-ssr.ch/m/drsvirus/mp3_128")! as URL)
        avPlayer.play()
    }
    
    @IBAction func stopPlayback(_ sender: NSMenuItem) {
        avPlayer.pause();
    }
    
}
