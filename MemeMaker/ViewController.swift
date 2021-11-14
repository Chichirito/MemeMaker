//
//  ViewController.swift
//  MemeMaker
//
//  Created by Михаил Селиванов on 14.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var emotions = ["like", "hate", "want"]
    
    @IBOutlet weak var firstChoiceSegment: UISegmentedControl!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var imageBobView: UIImageView!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var secondChoiceSegment: UISegmentedControl!
    var topChoices = [CaptionOption]()
    var bottomChoices = [CaptionOption]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTopSegmentControl()
        configureBottomSegmentControle()
    }
    
    func configureTopSegmentControl(){
        firstChoiceSegment.removeAllSegments()
        
        let option1 = CaptionOption(emoji: "🕶", text: "You know what is cool?", fileName: "firstPicture")
        let option2 = CaptionOption(emoji: "💥", text: "You  know what makes me mad?", fileName: "thirdPicture")
        let option3 = CaptionOption(emoji: "🖤", text: "You know what i love?", fileName: "secondPicture")
        topChoices = [option1, option2, option3]
        
        for choice in topChoices{
            firstChoiceSegment.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        firstChoiceSegment.selectedSegmentIndex = 0
        topLabel.text = topChoices[0].text
    }
    
    @IBAction func choiceOfFirstSegment(_ sender: UISegmentedControl) {
        let currentChoice = topChoices[sender.selectedSegmentIndex]
        topLabel.text = currentChoice.text
        imageBobView.image = UIImage(named: currentChoice.fileName)
    }
    
    @IBAction func choiceOfSecondSegment(_ sender: UISegmentedControl) {
        let currentChoice = bottomChoices[sender.selectedSegmentIndex]
        bottomLabel.text = currentChoice.text
    }
    
    func configureBottomSegmentControle(){
        secondChoiceSegment.removeAllSegments()
        
        let option1 = CaptionOption(emoji: "🐱", text: "Cats wearing hats", fileName: "firstPicture")
        let option2 = CaptionOption(emoji: "🐶", text: "Dogs carrying logs", fileName: "firstPicture")
        let option3 = CaptionOption(emoji: "🐵", text: "Monkeys being funky", fileName: "firstPicture")
        bottomChoices = [option1, option2, option3]
        for choice in bottomChoices{
            secondChoiceSegment.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        secondChoiceSegment.selectedSegmentIndex = 0
        bottomLabel.text = bottomChoices[0].text
    }
    
}

