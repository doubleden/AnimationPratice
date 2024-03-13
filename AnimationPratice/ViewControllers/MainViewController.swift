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
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var rotateLabel: UILabel!
    @IBOutlet var xAxisLabel: UILabel!
    @IBOutlet var yAxisLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 10
        updateLabelsForNextAnimation()
    }

    @IBAction func actionButtonDidTapped(_ sender: UIButton) {
        updateLabelsForNextAnimation()
        
        mainView.animation = animation.preset
        mainView.curve = animation.curve
        mainView.force = animation.force
        mainView.duration = animation.duration
        mainView.rotate = animation.rotate
        mainView.x = animation.xAxis
        mainView.y = animation.yAxis
        mainView.animate()
        
        animation = Animation.getRandomAnimation()
        
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

// MARK: - Private Methods
private extension MainViewController {
    func string(from number: Double) -> String {
        String(format: "%.2f", number)
    }
    
    func updateLabelsForNextAnimation() {
        presetLabel.text = "preset: \(animation.preset)"
        curveLabel.text = "curve : \(animation.curve)"
        forceLabel.text = "force: \(string(from: animation.force))"
        durationLabel.text = "duration: \(string(from: animation.duration))"
        rotateLabel.text = "rotate: \(string(from: animation.rotate))"
        xAxisLabel.text = "x: \(string(from: animation.xAxis))"
        yAxisLabel.text = "y: \(string(from: animation.yAxis))"
    }
}
