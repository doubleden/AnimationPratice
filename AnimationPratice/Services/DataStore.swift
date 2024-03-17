//
//  DataStore.swift
//  AnimationPratice
//
//  Created by Denis Denisov on 11/3/24.
//
import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    let preset = AnimationPreset.allCases
    let curves = AnimationCurve.allCases

    private init() {}
}
