//
//  SettingsViewController.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import UIKit

// MARK: - SettingsViewController: UIViewController

class SettingsViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var levelSegmentedControl: UISegmentedControl!
    @IBOutlet weak var startGameButton: UIButton!
    @IBOutlet weak var showBadgesLabel: UILabel!    
    @IBOutlet weak var showBadgesSwitch: UISwitch!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attributesDictionary: [String:AnyObject] = [
            NSFontAttributeName: UIFont(name: Settings.Common.Font, size: 18)!
        ]
        
        titleLabel.font = UIFont(name: Settings.Common.Font, size: 32)
        showBadgesLabel.font = UIFont(name: Settings.Common.Font, size: 20)
        showBadgesSwitch.onTintColor = UIColor.magentaColor()
        levelSegmentedControl.setTitleTextAttributes(attributesDictionary, forState: .Normal)
        Settings.Common.Level = levelSegmentedControl.selectedSegmentIndex
        startGameButton.titleLabel?.font = UIFont(name: Settings.Common.Font, size: 20)
        
        addTargets()
    }
    
    // MARK: Add Targets
    
    func addTargets() {
        levelSegmentedControl.addTarget(self, action: #selector(SettingsViewController.switchLevel(_:)), forControlEvents:.ValueChanged)
        startGameButton.addTarget(self, action: #selector(SettingsViewController.startGame), forControlEvents:.TouchDown )
        showBadgesSwitch.addTarget(self, action: #selector(SettingsViewController.showBadges(_:)), forControlEvents:.TouchUpInside )
        print("adding targets!")
    }
    
    // MARK: Implementing Actions
    
    func switchLevel(segmentControl: UISegmentedControl) {
        
        switch segmentControl.selectedSegmentIndex {
        case 0 :
            Settings.Common.Level = 0
        case 1:
            Settings.Common.Level = 1
        case 2:
            Settings.Common.Level = 2
        default:
            Settings.Common.Level = 3
            
        }
       // print (Settings.Common.Level)
        
        print("level control has changed!")
    }
    
    func showBadges(switchControl: UISwitch) {
        if switchControl.on == true{
            Settings.Common.ShowBadges = true
        }else{
            Settings.Common.ShowBadges = false
        }
       // print (Settings.Common.ShowBadges)
        print("show badges switch has changed!")
    }
    
    func startGame() {
        let alienAdventureViewController = self.storyboard!.instantiateViewControllerWithIdentifier("AlienAdventureViewController")
            as! AlienAdventureViewController
        self.presentViewController(alienAdventureViewController,
                                   animated: true, completion: nil)
        print("start button has been pressed!")
    }
}