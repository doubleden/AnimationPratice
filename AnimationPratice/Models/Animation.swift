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
    let scaleX: Double
    let xAxis: Double
    let yAxis: Double
    
    static func getRandomAnimation() -> Animation {
        
        let data = DataStore()
        
        let randomPreset = data.preset.shuffled()
        let randomCurves = data.curves.shuffled()
        
        let randomAnimation = Animation(
            preset: randomPreset.first ?? "",
            curve: randomCurves.first ?? "",
            force: data.force,
            duration: data.duration,
            scaleX: data.scaleX,
            xAxis: data.xAxis,
            yAxis: data.yAxis
        )
        
        return randomAnimation
    }
}
