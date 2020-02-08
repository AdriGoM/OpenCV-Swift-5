//
//  ViewController.swift
//  OpenCV Face Detection
//
//  Created by Marcos Castaneda on 2/15/17.
//  Copyright © 2017 Marcos Castaneda. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var feedbackLabel: UILabel!
    @IBOutlet weak var versionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var checkFaceButton: UIButton!
    @IBOutlet weak var toGrayButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        versionLabel.text = OpenCVWrapper.getOpenCVVersion()
        feedbackLabel.text = "Try to find a face"
        checkFaceButton.layer.cornerRadius = 20
        toGrayButton.layer.cornerRadius = 20 
    }

    @IBAction func checkButtonPressed(_ sender: UIButton) {
        classifyImage()
    }
    
    @IBAction func toGrayPressed(_ sender: UIButton) {
        toGray()
    }
    
    
    func classifyImage() {
        let image = OpenCVWrapper.classifyImage(imageView.image!)

        if (true) {
            imageView.image = image
            feedbackLabel.text = "Face found!"
            //feedbackLabel.textColor = UIColor(red: 0, green: 180/255, blue: 0, alpha: 1)
        } else {
            feedbackLabel.text = "Nothing found"
            //feedbackLabel.textColor = UIColor.red
        }
    }
    
    func toGray() {
        let image = OpenCVWrapper.convert(toGrayscale: imageView.image!)

        imageView.image = image
        
    }
}
