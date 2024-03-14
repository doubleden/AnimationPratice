//
//  Animation.swift
//  AnimationPratice
//
//  Created by Denis Denisov on 11/3/24.
//

struct Animation {
    let preset: String
    let curve: String
    
    let force: Double
    let duration: Double
    let rotate: Double
    let xAxis: Double
    let yAxis: Double
    
    static func getRandomAnimation() -> Animation {
        
        let data = DataStore.shared
        
        let randomPreset = data.preset.shuffled()
        let randomCurves = data.curves.shuffled()
        
        let randomAnimation = Animation(
            preset: randomPreset.first ?? "",
            curve: randomCurves.first ?? "",
            force: Double.random(in: 1...5),
            duration: Double.random(in: 1...3),
            rotate: Double.random(in: 1...20),
            xAxis: Double.random(in: -100...100),
            yAxis: Double.random(in: -100...100)
        )
        
        return randomAnimation
    }
}
