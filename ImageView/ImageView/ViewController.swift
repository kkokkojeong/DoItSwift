//
//  ViewController.swift
//  ImageView
//
//  Created by 정석철 on 2021/05/14.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    @IBOutlet var buttonResize: UIButton!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var switchImage: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        imageView.image = imgOn
    }

    @IBAction func buttonResizeImage(_ sender: UIButton) {
        let scale: CGFloat = 2.0
        var newWidth: CGFloat, newHeight: CGFloat
        
        if (isZoom) {
            newWidth = imageView.frame.width / scale
            newHeight = imageView.frame.height / scale
            
            buttonResize.setTitle("확대", for: .normal)
        } else {
            newWidth = imageView.frame.width * scale
            newHeight = imageView.frame.height * scale
            
            buttonResize.setTitle("축소", for: .normal)
        }
        
        imageView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
        
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imageView.image = imgOn
        } else {
            imageView.image = imgOff
        }
    }
}

