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
    @IBOutlet var configAnimationLabel: UILabel! {
        didSet {
            configAnimationLabel.text = animation.description
        }
    }
    
    private var animation = Animation.getRandomAnimation()

    @IBAction func actionButtonDidTapped(_ sender: UIButton) {
        
        mainView.animation = animation.preset
        mainView.curve = animation.curve
        mainView.force = animation.force
        mainView.duration = animation.duration
        mainView.rotate = animation.rotate
        mainView.x = animation.xAxis
        mainView.y = animation.yAxis
        mainView.animate()
        
        configAnimationLabel.text = animation.description
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}
