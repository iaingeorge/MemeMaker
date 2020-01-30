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
        topCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        giveCaptionName()
        
        bottomCaptionSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
    }

    let topChoices = [CaptionOption(caption: "You know what is neat?", emoji: "⏰"), CaptionOption(caption: "How fast can you go?", emoji: "🚄"), CaptionOption(caption: "You know what is beautiful?", emoji: "🌄")]
           
    let bottomChoices = [CaptionOption(caption: "Bunnys in hats", emoji: "🐰"), CaptionOption(caption: "Cats being sneaky", emoji: "🙀"), CaptionOption(caption: "Birds being flappy", emoji: "🦅")]
    
    func giveCaptionName() {
        topCaptionLabel.text = topChoices[topCaptionSegmentedControl.selectedSegmentIndex].caption
        bottomCaptionLabel.text = bottomChoices[bottomCaptionSegmentedControl.selectedSegmentIndex].caption
    }
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    @IBAction func segmentedControlAction(_ sender: Any) {
        giveCaptionName()
    }
}

