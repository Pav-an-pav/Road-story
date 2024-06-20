//
//  ViewController.swift
//  Road-story
//
//  Created by Anna Pavlova on 06.06.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice1Button: UIButton!
    var story = StoryBrain()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        choice1Button.layer.cornerRadius = 20
        choice2Button.layer.cornerRadius = 20
        
        updateUI()
        
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        story.nextStory(userChoice)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = story.getTitleStory()
        choice1Button.setTitle(story.getChoicesText(1), for: .normal)
        choice2Button.setTitle(story.getChoicesText(2), for: .normal)
    }
    
}

