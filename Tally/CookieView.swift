//
//  CookieView.swift
//  Tally
//
//  Created by David Granger on 2/16/23.
//

import UIKit

var numberOfTimesCookiePressed: Int = 0

class CookieView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        cookieName.text = cookieNameFromPreviousPage
    }
    @IBAction func cookiePressed(_ sender: UIButton) {
        numberOfTimesCookiePressed += (cookieInterval)
        cookiePressCount.text = "You pressed the cookie \(numberOfTimesCookiePressed) times!"
        let animation = CABasicAnimation(keyPath: "transform.scale")
        animation.duration = 0.1 // The duration of the animation
        animation.repeatCount = 1 // The number of times to repeat the animation
        animation.autoreverses = true // Reverse the animation after it completes
        animation.fromValue = 1 // The starting scale value
        animation.toValue = 1.1 //ending scale value
        cookieImage.layer.add(animation, forKey: "breathing")
    }
    
    
    @IBOutlet weak var cookieImage: UIImageView!
    @IBOutlet weak var cookiePressCount: UILabel!
    @IBOutlet weak var cookieName: UILabel!
}
