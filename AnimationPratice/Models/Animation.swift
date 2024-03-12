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
    let delay: Double
    
    static func getRandomAnimation() -> Animation {
        
        let data = DataStore.shared
        
        let randomPreset = data.preset.shuffled()
        let randomCurves = data.curves.shuffled()
        
        let randomAnimation = Animation(
            preset: randomPreset.first ?? "",
            curve: randomCurves.first ?? "",
            force: data.force,
            duration: data.duration,
            delay: data.delay
        )
        
        return randomAnimation
    }
}
