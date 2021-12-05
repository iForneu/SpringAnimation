//
//  Animation.swift
//  SpringAnimation
//
//  Created by Kirill Korotaev on 05.12.2021.
//

struct Animation {
    
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        preset: \(name)
        curxe: \(curve)
        force: \(String(format: "%.0.02f", force))
        duration: \(String(format: "%.0.02f", duration))
        delay: \(String(format: "%.0.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Float.random(in: 1...2),
            duration: Float.random(in: 1...2),
            delay: 0.3)
    }
}
