//
//  DataManager.swift
//  SpringAnimation
//
//  Created by Kirill Korotaev on 05.12.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations: [Spring.AnimationPreset] = [
        .fadeIn,
        .fadeInDown,
        .fadeInLeft,
        .fadeInRight,
        .fadeOut,
        .fadeOutIn,
        .fall,
        .flash,
        .flipX,
        .flipY,
        .morph,
        .pop,
        .shake,
        .slideUp,
        .slideDown,
        .slideLeft,
        .slideRight,
        .squeeze,
        .squeezeUp,
        .squeezeDown,
        .squeezeLeft,
        .squeezeRight,
        .swing,
        .zoomIn,
        .zoomOut,
        .wobble
    ]
    
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
