//
//  Animation.swift
//  AnimationPratice
//
//  Created by Denis Denisov on 11/3/24.
//

struct Animation: CustomStringConvertible{
    let preset: String
    let curve: String
    
    let force: Double
    let duration: Double
    let rotate: Double
    let xAxis: Double
    let yAxis: Double
    
    var description: String {
        """
        preset: \(preset)
        curve : \(curve)
        force: \(string(from: force))
        duration: \(string(from: duration))
        rotate: \(string(from: rotate))
        x: \(string(from: xAxis))
        y: \(string(from: yAxis))
        """
    }
    
    static var randomAnimation: Animation {
        Animation(
            preset: DataStore.shared.preset.randomElement()?.rawValue ?? "",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "",
            force: Double.random(in: 1...5),
            duration: Double.random(in: 2...4),
            rotate: Double.random(in: 1...3),
            xAxis: Double.random(in: 1...100),
            yAxis: Double.random(in: 1...100)
        )
    }
    
    private func string(from number: Double) -> String {
        String(format: "%.2f", number)
    }
}
