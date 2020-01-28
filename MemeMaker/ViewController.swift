//
//  ViewController.swift
//  MemeMaker
//
//  Created by Iain George on 2020-01-25.
//  Copyright © 2020 Iain George. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    let topChoices = [CaptionOption(caption: "What time is it", emoji: "⏰"), CaptionOption(caption: "Where are we?", emoji: "🏡"), CaptionOption(caption: "This is the way!", emoji: "🐰")]
           
    let bottomChoices = [CaptionOption]()
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    @IBAction func segmentedControlAction(_ sender: Any) {
    }
}

