//
//  ViewController.swift
//  AnimationPratice
//
//  Created by Denis Denisov on 11/3/24.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {

    @IBOutlet var mainView: SpringView!
    @IBOutlet var configAnimationLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 10
    }

    @IBAction func actionButtonDidTapped(_ sender: UIButton) {
        let animation = Animation.getRandomAnimation()
        
        
    }
    
}

