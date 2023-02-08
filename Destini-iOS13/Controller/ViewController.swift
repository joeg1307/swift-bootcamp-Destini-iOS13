//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadStory()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        storyBrain.chooseStory(userChoice: userChoice)
        loadStory()
    }
    
    func loadStory(){
        storyLabel.text = storyBrain.getCurrentStoryTitle()
        
        choice1Button.setTitle(storyBrain.getCurrentStoryChoice1Text(), for: .normal)
        choice2Button.setTitle(storyBrain.getCurrentStoryChoice2Text(), for: .normal)
    }
    
}

