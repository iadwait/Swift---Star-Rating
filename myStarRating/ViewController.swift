//
//  ViewController.swift
//  myStarRating
//
//  Created by Adwait Barkale on 19/11/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var btnStar1: UIButton!
    @IBOutlet weak var btnStar2: UIButton!
    @IBOutlet weak var btnStar3: UIButton!
    @IBOutlet weak var btnStar4: UIButton!
    @IBOutlet weak var btnStar5: UIButton!
    
    @IBOutlet weak var lblRatedResult: UILabel!
    
    
    var RatingValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStarRated(howMuch: 0)
    }
    
    
    @IBAction func btnStar1Tapped(_ sender: UIButton) {
        setStarRated(howMuch: 1)
        updateRatingResult(ratedValue: 1)
    }
    
    @IBAction func btnStar2Tapped(_ sender: UIButton) {
        setStarRated(howMuch: 2)
        updateRatingResult(ratedValue: 2)
    }
    
    @IBAction func btnStar3Tapped(_ sender: UIButton) {
        setStarRated(howMuch: 3)
        updateRatingResult(ratedValue: 3)
    }
    
    @IBAction func btnStar4Tapped(_ sender: UIButton) {
        setStarRated(howMuch: 4)
        updateRatingResult(ratedValue: 4)
    }
    
    @IBAction func btnStar5Tapped(_ sender: UIButton) {
        setStarRated(howMuch: 5)
        updateRatingResult(ratedValue: 5)
    }
    
    func setStarRated(howMuch: Int)
    {
        switch howMuch {
        case 1:
            RatingValue = 1
            btnStar1.setImage(UIImage(named: "star11"), for: .normal)
            btnStar2.setImage(UIImage(named: "star00"), for: .normal)
            btnStar3.setImage(UIImage(named: "star00"), for: .normal)
            btnStar4.setImage(UIImage(named: "star00"), for: .normal)
            btnStar5.setImage(UIImage(named: "star00"), for: .normal)
        case 2:
            RatingValue = 2
            btnStar1.setImage(UIImage(named: "star11"), for: .normal)
            btnStar2.setImage(UIImage(named: "star11"), for: .normal)
            btnStar3.setImage(UIImage(named: "star00"), for: .normal)
            btnStar4.setImage(UIImage(named: "star00"), for: .normal)
            btnStar5.setImage(UIImage(named: "star00"), for: .normal)
        case 3:
            RatingValue = 3
            btnStar1.setImage(UIImage(named: "star11"), for: .normal)
            btnStar2.setImage(UIImage(named: "star11"), for: .normal)
            btnStar3.setImage(UIImage(named: "star11"), for: .normal)
            btnStar4.setImage(UIImage(named: "star00"), for: .normal)
            btnStar5.setImage(UIImage(named: "star00"), for: .normal)
        case 4:
            RatingValue = 4
            btnStar1.setImage(UIImage(named: "star11"), for: .normal)
            btnStar2.setImage(UIImage(named: "star11"), for: .normal)
            btnStar3.setImage(UIImage(named: "star11"), for: .normal)
            btnStar4.setImage(UIImage(named: "star11"), for: .normal)
            btnStar5.setImage(UIImage(named: "star00"), for: .normal)
            
        case 5:
            RatingValue = 5
            btnStar1.setImage(UIImage(named: "star11"), for: .normal)
            btnStar2.setImage(UIImage(named: "star11"), for: .normal)
            btnStar3.setImage(UIImage(named: "star11"), for: .normal)
            btnStar4.setImage(UIImage(named: "star11"), for: .normal)
            btnStar5.setImage(UIImage(named: "star11"), for: .normal)
        default:
            print("No Rating")
        }
    }
    
    func updateRatingResult(ratedValue: Int)
    {
        switch ratedValue {
        case 1:
            lblRatedResult.text = "Very Poor"
        case 2:
            lblRatedResult.text = "Poor"
        case 3:
            lblRatedResult.text = "Average"
        case 4:
            lblRatedResult.text = "Good"
        case 5:
            lblRatedResult.text = "Very Good"
        default:
            lblRatedResult.text = "Please Give Star Rating"
        }
    }
    
}

