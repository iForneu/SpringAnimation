//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Kirill Korotaev on 05.12.2021.
//

import Spring

class AnimationViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!
    
    //MARK: - Private properties
    private var animation = Animation.getRandomAnimation()
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
    }

    //MARK: - IB Actions
    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.curve = animation.curve
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}

